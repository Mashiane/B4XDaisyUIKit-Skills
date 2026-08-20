<#
.SYNOPSIS
    Conformance + coverage + compile-readiness + UX quality gate for a generated B4XDaisyUIKit app.

.DESCRIPTION
    Four deep checks against the frozen component manifest and UX Master Doctrine:
      1. CONFORMANCE  - every B4XDaisy* type referenced in the app's .bas files
                         exists in component-manifest.md. Reports invented APIs.
      2. DOCUMENTED-ONLY - flags use of components the manifest marks Documented-only
                         (per manifest rule 3: do not introduce unless user-approved).
      3. COMPILE-READINESS - every ModuleN= name in the .b4a has a matching .bas,
                         and NumberOfModules matches the count. B4XMainPage present.
      4. UX & QUALITY GATE - verifies AutoFit, BringToFront, non-empty Catch logging,
                         and touch conflict handling on gesture components.

    Exit code 0 = pass, 1 = fail. Fail = do not ship.

.PARAMETER AppFolder
    The generated app folder (contains <AppName>.b4a + B4XMainPage.bas + page .bas).

.PARAMETER Manifest
    Path to component-manifest.md. Defaults to the sibling b4xdaisyuikit skill manifest.

.EXAMPLE
    ./verify-conformance.ps1 -AppFolder C:\b4a\workspace\MyStore
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [string]$Manifest = ""
)

$ErrorActionPreference = "Stop"
$exitCode = 0

if ([string]::IsNullOrWhiteSpace($Manifest)) {
    $Manifest = Join-Path $PSScriptRoot "..\..\b4xdaisyuikit\references\component-manifest.md"
}
if (-not (Test-Path $Manifest)) {
    Write-Host "ERROR: manifest not found: $Manifest" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $AppFolder)) {
    Write-Host "ERROR: app folder not found: $AppFolder" -ForegroundColor Red
    exit 1
}

$manifestText = Get-Content $Manifest -Raw

# --- Known = every B4XDaisy* token declared anywhere in the manifest and component specs
#     (components, result types, enums, manager types).
$known = New-Object System.Collections.Generic.HashSet[string]
foreach ($m in [regex]::Matches($manifestText, 'B4XDaisy[A-Za-z0-9_]+')) {
    [void]$known.Add($m.Value)
}
$compDir = Join-Path (Split-Path $Manifest) "..\components"
if (Test-Path $compDir) {
    foreach ($cf in (Get-ChildItem -Path $compDir -Filter "*.md")) {
        $cText = Get-Content $cf.FullName -Raw
        foreach ($m in [regex]::Matches($cText, 'B4XDaisy[A-Za-z0-9_]+')) {
            [void]$known.Add($m.Value)
        }
    }
}

# --- Documented-only set = Support index status column (components only) ---
$docOnly = New-Object System.Collections.Generic.HashSet[string]
foreach ($line in ($manifestText -split "`n")) {
    if ($line -match '^\|\s*(B4XDaisy[A-Za-z0-9_]+)\s*\|\s*Documented-only\s*\|') {
        [void]$docOnly.Add($Matches[1])
    }
}

Write-Host "Manifest known B4XDaisy* tokens: $($known.Count) ($($docOnly.Count) Documented-only components)" -ForegroundColor Gray

# --- Collect app .bas files ---
$basFiles = Get-ChildItem -Path $AppFolder -Filter "*.bas" -File -ErrorAction SilentlyContinue
if ($basFiles.Count -eq 0) {
    Write-Host "ERROR: no .bas files in $AppFolder" -ForegroundColor Red
    exit 1
}

# --- CONFORMANCE + DOCUMENTED-ONLY: scan As B4XDaisy* refs ---
$referenced = New-Object System.Collections.Generic.HashSet[string]
$refByFile = @{}
foreach ($f in $basFiles) {
    $text = Get-Content $f.FullName -Raw
    $matches = [regex]::Matches($text, 'B4XDaisy[A-Za-z0-9_]+')
    foreach ($m in $matches) {
        [void]$referenced.Add($m.Value)
        if (-not $refByFile.ContainsKey($m.Value)) { $refByFile[$m.Value] = @() }
        $refByFile[$m.Value] += $f.Name
    }
}

Write-Host ""
Write-Host "=== CONFORMANCE (invented APIs) ===" -ForegroundColor Cyan
$invented = @()
foreach ($r in ($referenced | Sort-Object)) {
    if (-not $known.Contains($r)) { $invented += $r }
}
if ($invented.Count -eq 0) {
    Write-Host "PASS: all $($referenced.Count) referenced components exist in manifest" -ForegroundColor Green
} else {
    $exitCode = 1
    Write-Host "FAIL: $($invented.Count) referenced component(s) NOT in manifest:" -ForegroundColor Red
    foreach ($i in $invented) { Write-Host "  - $i  (in: $($refByFile[$i] -join ', '))" -ForegroundColor Red }
}

Write-Host ""
Write-Host "=== DOCUMENTED-ONLY usage ===" -ForegroundColor Cyan
$docUsed = @()
foreach ($r in ($referenced | Sort-Object)) {
    if ($docOnly.Contains($r)) { $docUsed += $r }
}
if ($docUsed.Count -eq 0) {
    Write-Host "PASS: no Documented-only components used" -ForegroundColor Green
} else {
    Write-Host "WARN: $($docUsed.Count) Documented-only component(s) used (manifest rule 3: needs explicit user approval):" -ForegroundColor Yellow
    foreach ($d in $docUsed) { Write-Host "  - $d  (in: $($refByFile[$d] -join ', '))" -ForegroundColor Yellow }
}

# --- COMPILE-READINESS: project file + module wiring + file groups + headers ---
$b4a = Get-ChildItem -Path $AppFolder -Filter "*.b4a" -File -ErrorAction SilentlyContinue | Select-Object -First 1
Write-Host ""
Write-Host "=== COMPILE-READINESS (project file) ===" -ForegroundColor Cyan
if ($null -eq $b4a) {
    $exitCode = 1
    Write-Host "FAIL: no .b4a project file in $AppFolder" -ForegroundColor Red
    exit $exitCode
}
$b4aText = Get-Content $b4a.FullName -Raw

$problems = @()

# .b4a design-text header must be the first content (Build1= on line 1, no
# leading comment block). B4ABuilder throws KeyNotFoundException otherwise.
$b4aFirst = (Get-Content $b4a.FullName -TotalCount 1).TrimStart([char]0xFEFF).Trim()
if ($b4aFirst -notlike "Build1=*") {
    $problems += ".b4a first line is '$b4aFirst' but must be 'Build1=...' (no comment/blank before the design-text header)"
}

# ModuleN wiring
$moduleNames = @()
foreach ($m in [regex]::Matches($b4aText, '(?m)^Module\d+=(.+)$')) { $moduleNames += $m.Groups[1].Value.Trim() }
$numModules = -1
if ($b4aText -match '(?m)^NumberOfModules=(\d+)') { $numModules = [int]$Matches[1] }
if ($moduleNames.Count -eq 0) { $problems += "no ModuleN= lines found" }
if ($numModules -ge 0 -and $numModules -ne $moduleNames.Count) {
    $problems += "NumberOfModules=$numModules but $($moduleNames.Count) ModuleN lines"
}
if ($moduleNames -notcontains "B4XMainPage") {
    $problems += "B4XMainPage not listed as a ModuleN (B4XPages requires it)"
}
foreach ($mn in $moduleNames) {
    $basPath = Join-Path $AppFolder "$mn.bas"
    if (-not (Test-Path $basPath)) { $problems += "module '$mn' has no matching $mn.bas" }
}

# FileN + FileGroupN: one group per file, each file present in Files/
$fileNames = @()
foreach ($m in [regex]::Matches($b4aText, '(?m)^File(\d+)=(.+)$')) { $fileNames += [PSCustomObject]@{ N=[int]$m.Groups[1].Value; Name=$m.Groups[2].Value.Trim() } }
$fileGroupCount = ([regex]::Matches($b4aText, '(?m)^FileGroup\d+=' )).Count
$numFiles = -1
if ($b4aText -match '(?m)^NumberOfFiles=(\d+)') { $numFiles = [int]$Matches[1] }
if ($numFiles -ge 0 -and $numFiles -ne $fileNames.Count) {
    $problems += "NumberOfFiles=$numFiles but $($fileNames.Count) FileN lines"
}
if ($fileGroupCount -ne $fileNames.Count) {
    $problems += "$($fileNames.Count) FileN lines but $fileGroupCount FileGroupN lines (need exactly one FileGroupN=Default Group per FileN, else KeyNotFound)"
}
$filesDir = Join-Path $AppFolder "Files"
foreach ($f in $fileNames) {
    if (-not (Test-Path (Join-Path $filesDir $f.Name))) { $problems += "File$($f.N)=$($f.Name) not found in Files\" }
}

# #AdditionalRes target must exist (template uses project-local 'res')
foreach ($m in [regex]::Matches($b4aText, '(?m)^\s*#AdditionalRes:\s*(.+)$')) {
    $resRel = $m.Groups[1].Value.Trim()
    $resPath = Join-Path $AppFolder $resRel
    if (-not (Test-Path $resPath)) { $problems += "#AdditionalRes: $resRel not found ($resPath)" }
}

# Each .bas design-text header must start with B4A=true on line 1
foreach ($f in $basFiles) {
    $first = (Get-Content $f.FullName -TotalCount 1)
    if ($null -ne $first) {
        $first = $first.TrimStart([char]0xFEFF).Trim()
        if ($first -ne "B4A=true") {
            $problems += "$($f.Name) first line is '$first' but must be 'B4A=true' (no comment/blank before the design-text header)"
        }
    }
}

if ($problems.Count -eq 0) {
    Write-Host "PASS: project file wiring and headers valid" -ForegroundColor Green
} else {
    $exitCode = 1
    Write-Host "FAIL: compile readiness problem(s):" -ForegroundColor Red
    foreach ($p in $problems) { Write-Host "  - $p" -ForegroundColor Red }
}

# --- STATIC LAYOUT & UX QUALITY GATE ---
Write-Host ""
Write-Host "=== STATIC LAYOUT & UX QUALITY GATE ===" -ForegroundColor Cyan
$layoutProblems = @()
$warnings = @()
foreach ($f in $basFiles) {
    $text = Get-Content $f.FullName -Raw
    
    # Check 1: AutoFit called if B4XDaisyPageScroll is referenced
    if ($text -match 'B4XDaisyPageScroll' -or $text -match '\bpageScroll\b') {
        if ($text -notmatch '(?i)\.AutoFit\b') {
            $layoutProblems += "$($f.Name) uses B4XDaisyPageScroll but never calls .AutoFit (RULE-LAYOUT-003: required at end of scroll rendering)"
        }
    }
    
    # Check 2: navbar.getView.BringToFront anti-pattern
    if ($text -match '(?i)\.getView\.BringToFront') {
        $layoutProblems += "$($f.Name) calls .getView.BringToFront (RULE-INTERACT-001: call .BringToFront directly on the component)"
    }
    # Check 3: Empty Catch block detection (RULE-CODE-002)
    if ($text -match '(?m)^\s*Catch\s*[\r\n]+\s*End\s*Try') {
        $warnings += "$($f.Name) has empty Catch block(s) without structured logging (RULE-CODE-002: log with LastException.Message)"
    }
    
    # Check 4: Gesture components without touch interception protection (RULE-INTERACT-002)
    $hasGestureComp = ($text -match 'B4XDaisyColorWheel' -or $text -match 'B4XDaisyRange' -or $text -match 'B4XDaisyDualRange' -or $text -match 'B4XDaisyCarousel')
    $hasScrollContainer = ($text -match 'B4XDaisyPageScroll' -or $text -match 'ScrollView' -or $text -match 'HorizontalScrollView')
    if ($hasGestureComp -and $hasScrollContainer) {
        if ($text -notmatch 'DisallowParentIntercept' -and $text -notmatch 'requestDisallowInterceptTouchEvent') {
            $warnings += "$($f.Name) embeds gesture/range components inside a scroll container without DisallowParentIntercept (RULE-INTERACT-002)"
        }
    }
}

if ($layoutProblems.Count -eq 0) {
    Write-Host "PASS: static layout rules (AutoFit, BringToFront) satisfied" -ForegroundColor Green
} else {
    $exitCode = 1
    Write-Host "FAIL: static layout violation(s):" -ForegroundColor Red
    foreach ($lp in $layoutProblems) { Write-Host "  - $lp" -ForegroundColor Red }
}

if ($warnings.Count -gt 0) {
    Write-Host "WARN: Quality & UX advisory warning(s):" -ForegroundColor Yellow
    foreach ($w in $warnings) { Write-Host "  - $w" -ForegroundColor Yellow }
}

# --- SUMMARY RESULT ---
if ($problems.Count -eq 0 -and $layoutProblems.Count -eq 0 -and $invented.Count -eq 0) {
    Write-Host ""
    Write-Host "RESULT: PASS (all conformance, compile-readiness, and UX layout checks passed)" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "RESULT: FAIL (fix errors above before ./install.ps1)" -ForegroundColor Red
}
}
exit $exitCode