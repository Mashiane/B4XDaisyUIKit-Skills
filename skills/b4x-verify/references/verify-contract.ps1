<#
.SYNOPSIS
    Contract-schema gate (G0): validates contract/*.md + .agent state mechanically.

.DESCRIPTION
    Implements docs/contracts/CONTRACT-SCHEMA.md section 6 (8 checks),
    plus check 0 (DECISION-001): contract.index.json present + fresh.
      1. Required sections present per file type.
      2. Every referenced ID resolves to a real artifact.
      3. No APPROVED file references an OPEN dependency.
      4. Every critical REQ has >=1 TEST.
      5. Every SCREEN has exactly one parent FEATURE.
      6. Every component ref has manifest-confirmed provenance.
      7. No orphan TEST (must verify something).
      8. enforcement-point UI-only RULE surfaced as review flag.

    Failing contract = not eligible for generation (Constitution Art IV).
    This script checks markdown contracts only. verify-conformance.ps1
    remains the .bas/.b4a gate (G3). Exit 0 = pass, 1 = fail.

.PARAMETER AppFolder
    Generated app folder containing contract/ + .agent/.

.PARAMETER Manifest
    Path to component-manifest.md (Level-3 truth for check 6).

.EXAMPLE
    pwsh -File verify-contract.ps1 -AppFolder C:\b4a\workspace\MyStore
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [string]$Manifest = ""
)

$ErrorActionPreference = "Stop"
$exitCode = 0
$errors = @()
$warnings = @()

if ([string]::IsNullOrWhiteSpace($Manifest)) {
    $Manifest = Join-Path $PSScriptRoot "..\..\b4xdaisyuikit\references\component-manifest.md"
}
$contractDir = Join-Path $AppFolder "contract"
$agentDir = Join-Path $AppFolder ".agent"

if (-not (Test-Path $contractDir)) { Write-Host "FAIL: missing contract/ (no contract = no generation)" -ForegroundColor Red; exit 1 }
# --- collect IDs ---
$allIds = New-Object System.Collections.Generic.HashSet[string]
$definedIds = New-Object System.Collections.Generic.HashSet[string]
$openIds = New-Object System.Collections.Generic.HashSet[string]
$criticalReqs = @()
$testVerifies = @{}
$screenParents = @{}
# DECISION-### are defined in .agent/DECISIONS.md (CONTRACT-SCHEMA.md section 2), not under contract/
$decisionsFile = Join-Path $agentDir "DECISIONS.md"
if (Test-Path $decisionsFile) {
    $dt = Get-Content $decisionsFile -Raw
    foreach ($m in [regex]::Matches($dt, '(?m)^id:\s*(DECISION-\d{3})\s*$')) { [void]$definedIds.Add($m.Groups[1].Value) }
    foreach ($m in [regex]::Matches($dt, '(?m)^#{1,6}\s*(DECISION-\d{3})(?=$|[\s:])')) { [void]$definedIds.Add($m.Groups[1].Value) }
    foreach ($m in [regex]::Matches($dt, '(?m)^-\s*(DECISION-\d{3})\s*:')) { [void]$definedIds.Add($m.Groups[1].Value) }
}
$files = Get-ChildItem -Path $contractDir -Filter "*.md" -Recurse -File -ErrorAction SilentlyContinue
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    foreach ($m in [regex]::Matches($text, '\b(REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3}\b')) { [void]$allIds.Add($m.Value) }
    # Definitions (CONTRACT-SCHEMA.md section 2): front-matter `id: X-###`, `## X-###` headings,
    # or `- X-###:` list entries. A mention anywhere else is only a reference.
    foreach ($m in [regex]::Matches($text, '(?m)^id:\s*((?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3})\s*$')) { [void]$definedIds.Add($m.Groups[1].Value) }
    foreach ($m in [regex]::Matches($text, '(?m)^#{1,6}\s*((?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3})(?=$|[\s:])')) { [void]$definedIds.Add($m.Groups[1].Value) }
    foreach ($m in [regex]::Matches($text, '(?m)^-\s*((?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3})\s*:')) { [void]$definedIds.Add($m.Groups[1].Value) }
    if ($text -match '(?m)^status:\s*OPEN\s*$') { foreach ($m in [regex]::Matches($text, '\b(REQ|FEATURE|RULE|SCREEN|TEST)-\d{3}\b')) { [void]$openIds.Add($m.Value) } }
    foreach ($m in [regex]::Matches($text, '(REQ-\d{3})[^\r\n]*priority:\s*critical')) { $criticalReqs += $m.Groups[1].Value }
    foreach ($m in [regex]::Matches($text, '(TEST-\d{3})[\s\S]{0,200}?verifies:\s*([^\r\n]+)')) {
        $testVerifies[$m.Groups[1].Value] = $m.Groups[2].Value
    }
    foreach ($m in [regex]::Matches($text, '(SCREEN-\d{3})[\s\S]{0,400}?feature:\s*(FEATURE-\d{3})')) {
        $sid = $m.Groups[1].Value; $fid = $m.Groups[2].Value
        if (-not $screenParents.ContainsKey($sid)) { $screenParents[$sid] = @() }
        $screenParents[$sid] += $fid
    }
}

# --- check 0: contract.index.json present + fresh (DECISION-001) ---
$indexFile = Join-Path $AppFolder "contract.index.json"
if (-not (Test-Path $indexFile)) {
    $errors += "contract.index.json missing - run build-contract-index.ps1 first (DECISION-001)"
} else {
    $newest = ($files | Measure-Object -Property LastWriteTimeUtc -Maximum).Maximum
    $idxTime = (Get-Item $indexFile).LastWriteTimeUtc
    if ($newest -and ($idxTime -lt $newest.AddSeconds(-2))) {
        $errors += "contract.index.json stale (contract/*.md newer than index) - re-run build-contract-index.ps1"
    }
}

# --- check 1: required sections ---
$required = @{
    "application.md"    = @("## Purpose", "## Requirements", "## OPEN Items")
    "navigation.md"     = @("## Entry Point", "## Screen Graph")
    "domain-model.md"   = @("## Entity:")
    "data-contract.md"  = @("## Endpoint")
    "business-rules.md" = @("## RULE-")
    "acceptance-tests.md" = @("## TEST-")
}
foreach ($key in $required.Keys) {
    $hit = $files | Where-Object { $_.Name -eq $key } | Select-Object -First 1
    if (-not $hit) { $errors += "missing contract/$key"; continue }
    $t = Get-Content $hit.FullName -Raw
    foreach ($s in $required[$key]) { if ($t -notmatch [regex]::Escape($s)) { $errors += "$key missing section $s" } }
}

# --- check 2: dangling refs (referenced but never defined) ---
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    foreach ($m in [regex]::Matches($text, '\b(REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3}\b')) {
        if (-not $definedIds.Contains($m.Value)) { $errors += "$($f.Name) references undefined $($m.Value)" }
    }
}

# --- check 4: critical REQ coverage ---
foreach ($r in ($criticalReqs | Sort-Object -Unique)) {
    $covered = $false
    foreach ($k in $testVerifies.Keys) { if ($testVerifies[$k] -match [regex]::Escape($r)) { $covered = $true; break } }
    if (-not $covered) { $errors += "critical $r has no TEST" }
}

# --- check 5: screen parentage ---
foreach ($sid in $screenParents.Keys) {
    $parents = $screenParents[$sid] | Sort-Object -Unique
    if ($parents.Count -ne 1) { $errors += "$sid has $($parents.Count) parent FEATUREs (need exactly 1)" }
}

# --- check 6: component provenance (normalize COMPONENT-X -> B4XDaisyX) ---
$manifestText = ""
if (Test-Path $Manifest) { $manifestText = Get-Content $Manifest -Raw }
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    foreach ($m in [regex]::Matches($text, 'COMPONENT-(B4XDaisy[A-Za-z0-9_]+|__[A-Za-z0-9_]+__|[A-Za-z0-9_]+)')) {
        $raw = $m.Groups[1].Value.Trim('_')
        $cls = if ($raw -match '^B4XDaisy') { $raw } else { "B4XDaisy$raw" }
        if ($manifestText -notmatch [regex]::Escape($cls)) { $errors += "$($f.Name) component $cls not in manifest" }
        if ($text -match [regex]::Escape($m.Value) + '[^\r\n]*provenance-checked:\s*no') { $errors += "$($f.Name) $($m.Value) provenance-checked: no (G2 blocked)" }
    }
}

# --- check 7: orphan TEST ---
foreach ($k in $testVerifies.Keys) {
    if ([string]::IsNullOrWhiteSpace($testVerifies[$k])) { $errors += "$k verifies nothing (orphan)" }
}

# --- check 8: UI-only RULE flag ---
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    if ($text -match 'enforcement-point:\s*UI-only') { $warnings += "$($f.Name): UI-only enforcement-point flagged for review (rules must not live only in click handlers)" }
}

# --- CONTRACT-SCHEMA.md section 3: FEATURE/SCREEN contracts must be APPROVED before generation ---
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    if ($text -match '(?m)^id:\s*(FEATURE|SCREEN)-\d{3}\s*$') {
        $sm = [regex]::Match($text, '(?m)^status:\s*(\S+)')
        $st = if ($sm.Success) { $sm.Groups[1].Value.Trim() } else { "(missing)" }
        if ($st -ne 'APPROVED') { $warnings += "$($f.Name): status $st - not APPROVED; must not ground generation (CONTRACT-SCHEMA.md section 3)" }
    }
}

# --- check 3: APPROVED -> OPEN ---
foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw
    if ($text -match 'status:\s*APPROVED') {
        foreach ($m in [regex]::Matches($text, '\b(REQ|FEATURE|RULE|SCREEN|TEST)-\d{3}\b')) {
            if ($openIds.Contains($m.Value)) { $errors += "$($f.Name) APPROVED but depends on OPEN $($m.Value)" }
        }
    }
}

if ($errors.Count -eq 0) { Write-Host "RESULT: PASS (contract schema G0)" -ForegroundColor Green }
else { $exitCode = 1; Write-Host "RESULT: FAIL" -ForegroundColor Red; foreach ($e in $errors) { Write-Host "  - $e" -ForegroundColor Red } }
foreach ($w in $warnings) { Write-Host "  ! $w" -ForegroundColor Yellow }
exit $exitCode

