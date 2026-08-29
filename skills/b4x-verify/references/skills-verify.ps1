<#
.SYNOPSIS
    Skills <-> Source drift gate for B4XDaisyUIKit.
.DESCRIPTION
    Ground truth: B4A/B4XDaisy*.bas + B4A/B4XPage*.bas -> .b4xlib -> skills.
    Some B4XDaisy helpers are internal building blocks used inside other
    components (not directly in B4XPage demos) - counts may not tally 1:1.
    This gate tolerates that by design.
#>
param(
    [string]$RepoRoot = "",
    [string]$SkillsRoot = "",
    [string]$B4ASource = ""
)
$ErrorActionPreference = "Stop"
$exitCode = 0
function Fail($msg) { Write-Host "FAIL: $msg" -ForegroundColor Red; $script:exitCode = 1 }
function Warn($msg) { Write-Host "WARN: $msg" -ForegroundColor Yellow }
function Pass($msg) { Write-Host "PASS: $msg" -ForegroundColor Green }
function Info($msg) { Write-Host $msg -ForegroundColor Gray }

if ([string]::IsNullOrWhiteSpace($RepoRoot)) {
    $RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..\..\..")).Path
}
if ([string]::IsNullOrWhiteSpace($SkillsRoot)) { $SkillsRoot = Join-Path $RepoRoot "b4xdaisyuikit-skills" }
if ([string]::IsNullOrWhiteSpace($B4ASource))  { $B4ASource  = Join-Path $RepoRoot "B4A" }

$manifest = Join-Path $SkillsRoot "skills\b4xdaisyuikit\references\component-manifest.md"
$compDir  = Join-Path $SkillsRoot "skills\b4xdaisyuikit\components"
$rulesPath = Join-Path $SkillsRoot "skills\b4xdaisyuikit\references\rules-enforcer.md"

foreach ($p in @($B4ASource, $manifest, $compDir)) {
    if (-not (Test-Path $p)) { Fail "path not found: $p"; exit $exitCode }
}

Write-Host ""
Write-Host "=== SKILLS-VERIFY  (Source -> Skills drift gate) ===" -ForegroundColor Cyan
Info "RepoRoot : $RepoRoot"
Info "B4A      : $B4ASource"
Info "Manifest : $manifest"
Info "CompDir  : $compDir"
Write-Host ""

function Get-SourceFacts($basPath) {
    $t = Get-Content $basPath -Raw -ErrorAction Stop
    $props  = @([regex]::Matches($t, '#DesignerProperty:\s*Key:\s*(\w+)') | ForEach-Object { $_.Groups[1].Value })
    $events = @([regex]::Matches($t, '#Event:\s*(\w+)') | ForEach-Object { $_.Groups[1].Value })
    $methods = @([regex]::Matches($t, '(?m)^\s*Public Sub (\w+)\s*\(') | ForEach-Object { $_.Groups[1].Value })
    $initSig = $null
    $m = [regex]::Match($t, 'Public Sub Initialize\(([^)]*)\)')
    if ($m.Success) { $initSig = $m.Groups[1].Value.Trim() }
    return [PSCustomObject]@{ Props=$props; Events=$events; Methods=$methods; InitSig=$initSig; Raw=$t }
}

$srcFiles = @(Get-ChildItem -Path $B4ASource -Filter "B4XDaisy*.bas" -File)
$srcFacts = @{}
foreach ($f in $srcFiles) { $srcFacts[$f.BaseName] = Get-SourceFacts $f.FullName }

$demoFiles = @(Get-ChildItem -Path $B4ASource -Filter "B4XPage*.bas" -File)
$demoText = ""
foreach ($d in $demoFiles) { $demoText += (Get-Content $d.FullName -Raw) + "`n" }

# Also collect internal component usage (helpers used inside other components)
$compText = ""
foreach ($f in $srcFiles) { $compText += $srcFacts[$f.BaseName].Raw + "`n" }

# Helper / internal building blocks - expected Documented-only even if used internally
$helpers = @("B4XDaisyApp","B4XDaisyBoxModel","B4XDaisyButtonPlaceManager","B4XDaisyBoomPathManager","B4XDaisyPiecePlaceManager","B4XDaisyFlexItem","B4XDaisyFlexLayout","B4XDaisyFlexPanel","B4XDaisyGrid","B4XDaisyCardActions","B4XDaisyCardBody","B4XDaisyCardTitle","B4XDaisyCollapseContent","B4XDaisyCollapseTitle","B4XDaisyCountdownItem","B4XDaisyChatBubble","B4XDaisySweetAlertIcon","B4XDaisyPocketBase")
# Mode-alias md files that map to a host class, not standalone
$modeAliases = @{ "link"="B4XDaisyText"; "mask"="B4XDaisyAvatar"; "skeleton"="B4XDaisyDivision"; "textarea"="B4XDaisyInput"; "pdf-view"="B4XDaisyPDFView"; "otp"="B4XDaisyOTP" }

Info "Source: $($srcFiles.Count) B4XDaisy*.bas, $($demoFiles.Count) B4XPage*.bas (helpers known: $($helpers.Count))"

# --- 1. MANIFEST FRESHNESS & COUNTS ---
Write-Host ""
Write-Host "--- 1. Manifest freshness & counts ---" -ForegroundColor Cyan
$manifestText = Get-Content $manifest -Raw
$manifestTime = $null
if ($manifestText -match 'Generated:\s*([0-9]{4}-[0-9]{2}-[0-9]{2})') {
    try { $manifestTime = [datetime]::Parse($Matches[1]) } catch {}
}
if ($null -eq $manifestTime) {
    Warn "manifest has no parseable Generated: date"
} else {
    $newestSrc = ($srcFiles | Sort-Object LastWriteTime -Descending | Select-Object -First 1).LastWriteTime.Date
    if ($newestSrc -gt $manifestTime.Date) {
        $cnt = @($srcFiles | Where-Object { $_.LastWriteTime.Date -gt $manifestTime.Date }).Count
        Fail "manifest Generated $($manifestTime.ToString('yyyy-MM-dd')) older than newest B4A/*.bas $($newestSrc.ToString('yyyy-MM-dd')) - $cnt file(s) newer. Regenerate manifest."
        $newer = $srcFiles | Where-Object { $_.LastWriteTime.Date -gt $manifestTime.Date } | Sort-Object LastWriteTime -Descending | Select-Object -First 8
        foreach ($n in $newer) { Info ("  newer: " + $n.Name + "  " + $n.LastWriteTime.ToString('yyyy-MM-dd HH:mm')) }
    } else {
        Pass ("manifest date " + $manifestTime.ToString('yyyy-MM-dd') + " >= newest source")
    }
}

$shotModules = -1; $shotDemos = -1; $shotDemo = -1; $shotDocOnly = -1
if ($manifestText -match 'B4XDaisy source modules found:\s*(\d+)') { $shotModules = [int]$Matches[1] }
if ($manifestText -match 'B4XPage demos scanned:\s*(\d+)')       { $shotDemos   = [int]$Matches[1] }
if ($manifestText -match 'Demonstrated components:\s*(\d+)')      { $shotDemo    = [int]$Matches[1] }
if ($manifestText -match 'Documented-only components:\s*(\d+)')  { $shotDocOnly = [int]$Matches[1] }

# Counts tolerate helpers - warn not fail if off by helpers/banned count
if ($shotModules -ne $srcFiles.Count) { Warn "Snapshot modules $shotModules != disk $($srcFiles.Count) (helpers/banned may explain diff - verify)" } else { Pass "Snapshot modules $shotModules matches disk" }
if ($shotDemos -ne $demoFiles.Count)  { Fail "Snapshot demos $shotDemos != disk $($demoFiles.Count)" } else { Pass "Snapshot demos $shotDemos matches disk" }

$indexRows = @([regex]::Matches($manifestText, '(?m)^\|\s*(B4XDaisy\w+)\s*\|\s*(Demonstrated|Documented-only)'))
$idxDemo    = @($indexRows | Where-Object { $_.Groups[2].Value -eq "Demonstrated" }).Count
$idxDocOnly = @($indexRows | Where-Object { $_.Groups[2].Value -eq "Documented-only" }).Count
Info "Support Index: $idxDemo Demonstrated, $idxDocOnly Documented-only"
if ($shotDemo -ne -1 -and $idxDemo -ne $shotDemo) { Warn "Snapshot Demonstrated $shotDemo != Support Index $idxDemo" }
if ($shotDocOnly -ne -1 -and $idxDocOnly -ne $shotDocOnly) { Warn "Snapshot Documented-only $shotDocOnly != Support Index $idxDocOnly" }

# --- 2. MANIFEST <-> SOURCE existence ---
Write-Host ""
Write-Host "--- 2. Manifest <-> Source ---" -ForegroundColor Cyan
$manifestComps = @([regex]::Matches($manifestText, '(?m)^\|\s*(B4XDaisy\w+)\s*\|') | ForEach-Object { $_.Groups[1].Value })
$missingOnDisk = @($manifestComps | Where-Object { -not $srcFacts.ContainsKey($_) })
$missingInManifest = @($srcFacts.Keys | Where-Object { $_ -notin $manifestComps })
if ($missingOnDisk.Count -gt 0) { Fail "manifest lists $($missingOnDisk.Count) absent on disk: $($missingOnDisk -join ', ')" } else { Pass "every manifest component exists on disk" }
if ($missingInManifest.Count -gt 0) { Warn "disk has $($missingInManifest.Count) not in manifest (likely helpers): $($missingInManifest -join ', ')" } else { Pass "every disk component is in manifest" }

# --- 3. DEMO STATUS <-> SOURCE (helpers tolerated) ---
Write-Host ""
Write-Host "--- 3. Demo status <-> B4XPage references ---" -ForegroundColor Cyan
$statusErrors = @()
$statusWarns = @()
foreach ($r in $indexRows) {
    $comp = $r.Groups[1].Value
    $status = $r.Groups[2].Value
    if ($comp -in @("B4XDaisyFlexItem","B4XDaisyFlexLayout","B4XDaisyFlexPanel","B4XDaisyGrid")) { continue }
    $refCount = ([regex]::Matches($demoText, [regex]::Escape($comp))).Count
    $isInDemo = $refCount -gt 0
    # also check if used inside other components (internal helper use)
    $isInternal = ([regex]::Matches($compText, [regex]::Escape($comp))).Count -gt 1  # >1 because file itself defines it
    if ($status -eq "Demonstrated" -and -not $isInDemo) {
        if ($comp -in $helpers -and $isInternal) {
            $statusWarns += "$comp Demonstrated but only internal use (helper) - ok, but consider Documented-only"
        } else {
            $statusErrors += "$comp marked Demonstrated but zero B4XPage*.bas reference"
        }
    }
    if ($status -eq "Documented-only" -and $isInDemo) {
        if ($comp -in $helpers) {
            $statusWarns += "$comp Documented-only but found $refCount demo refs - helper now directly demoed, consider promoting"
        } else {
            $statusErrors += "$comp marked Documented-only but found $refCount demo refs - promote to Demonstrated"
        }
    }
}
if ($statusErrors.Count -gt 0) { foreach ($e in $statusErrors) { Fail $e } } else { Pass "Demonstrated labels match demo refs (helpers tolerated)" }
foreach ($w in ($statusWarns | Select-Object -First 8)) { Warn $w }

# --- 4. COMPONENTS/*.md <-> SOURCE ---
Write-Host ""
Write-Host "--- 4. components/*.md <-> Source ---" -ForegroundColor Cyan
$mdFiles = @(Get-ChildItem -Path $compDir -Filter "*.md" -File)
Info "Checking $($mdFiles.Count) md files"
$mdErrors = @()
$mdWarns = @()

foreach ($md in $mdFiles) {
    $base = $md.BaseName
    $text = Get-Content $md.FullName -Raw
    $class = $null
    if ($text -match 'Class`:\s*`?(B4XDaisy\w+)`?') { $class = $Matches[1] }
    elseif ($text -match 'B4XDaisy\w+') { $class = ([regex]::Match($text, 'B4XDaisy\w+')).Value }

    if ($modeAliases.ContainsKey($base)) {
        $expected = $modeAliases[$base]
        if ($class -and $class -ne $expected) { $mdWarns += "$($md.Name): mode-alias should map to $expected but declares $class" }
        continue
    }

    if (-not $class -or -not $srcFacts.ContainsKey($class)) {
        $found = $false
        foreach ($k in $srcFacts.Keys) {
            $kebab = ($k -replace 'B4XDaisy','' -replace '([a-z0-9])([A-Z])','$1-$2').ToLower()
            if ($kebab -eq $base) { $class = $k; $found = $true; break }
        }
        if (-not $found) { $mdErrors += "$($md.Name): cannot resolve to any B4A/B4XDaisy*.bas (declared $class)"; continue }
    }

    $facts = $srcFacts[$class]
    if ($null -eq $facts) { continue }

    $mentionedProps = @([regex]::Matches($text, '\.(\w+)\s*=') | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique)
    $mentionedCalls = @([regex]::Matches($text, '\.(\w+)\s*\(') | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique)
    $allMentioned = @($mentionedProps + $mentionedCalls | Sort-Object -Unique)

    foreach ($tok in $allMentioned) {
        if ($tok -in @("Initialize","AddToParent","AddItem","AddItemBasic","AddItemWithVariant","Refresh","BringToFront","SetLayoutAnimated","GetComputedHeight","DesignerCreateView","Base_Resize","UpdateTheme","Clear","AutoFit","Show","ShowAsync","Close","Validate","SetAvatarMask")) { continue }
        $exists = ($tok -in $facts.Props) -or ($tok -in $facts.Methods) -or ($tok -in $facts.Events)
        if ($tok -eq "Tag" -and "setTag" -in $facts.Methods) { $exists = $true }
        if ($tok -eq "Visible" -and "setVisible" -in $facts.Methods) { $exists = $true }
        if (-not $exists) {
            if (("set" + $tok) -in $facts.Methods) { $exists = $true }
            elseif (("get" + $tok) -in $facts.Methods) { $exists = $true }
            elseif ($tok.ToLower() -in ($facts.Props | ForEach-Object { $_.ToLower() })) { $exists = $true }
        }
        if (-not $exists) {
            # filter obvious non-prop noise (SingleLine is Input prop, check host)
            $mdErrors += ($md.Name + " (" + $class + "): invented ." + $tok + " not in source")
        }
    }

    # SweetAlert param order check - use plain string search to avoid PS escape hell
    if ($class -eq "B4XDaisySweetAlert") {
        if ($text.Contains('Initialize(Me, "swal", Root)') -or $text.Contains("Initialize(Me, 'swal', Root)")) {
            $mdErrors += ($md.Name + ": SweetAlert Initialize inverted - source is (Me, Root, swal), md has (Me, swal, Root)")
        }
    }
}

if ($mdErrors.Count -gt 0) {
    foreach ($e in ($mdErrors | Sort-Object | Select-Object -First 30)) { Fail $e }
    if ($mdErrors.Count -gt 30) { Info ("... and " + ($mdErrors.Count - 30) + " more") }
} else {
    Pass "no hallucinated props/methods in components/*.md"
}
foreach ($w in ($mdWarns | Select-Object -First 6)) { Warn $w }

# --- 5. RULES-ENFORCER <-> SOURCE ---
Write-Host ""
Write-Host "--- 5. rules-enforcer.md <-> Source ---" -ForegroundColor Cyan
if (Test-Path $rulesPath) {
    $rulesText = Get-Content $rulesPath -Raw
    if ($rulesText.Contains("Direction") -and $rulesText.Contains("RULE-MOUNT-002")) {
        # more precise: check if RULE-MOUNT-002 line still lists the old trio
        if ($rulesText -match 'RULE-MOUNT-002.*Direction') {
            Fail "rules-enforcer RULE-MOUNT-002 still claims Direction/AlignHorizontal/Boxed - source has Orientation/Shadow/Rounded (Stat)"
        }
    } else { Pass "RULE-MOUNT-002 no longer claims invented Stat props" }

    if ($rulesText.Contains("AddHomeTab") -or $rulesText.Contains("AddSearchTab")) {
        Fail "rules-enforcer RULE-MOUNT-003 still claims AddHomeTab/AddSearchTab - source has AddItem (Dock)"
    } else { Pass "RULE-MOUNT-003 no longer claims invented Dock methods" }

    if ($rulesText.Contains('Initialize(Me, "swal", Root)')) {
        Fail "rules-enforcer RULE-MOUNT-006 inverted SweetAlert sig (Me, swal, Root) - source is (Me, Root, swal)"
    } else { Pass "RULE-MOUNT-006 SweetAlert sig correct" }
} else {
    Warn "rules-enforcer.md not found - skipping"
}

# --- 6. .b4xlib freshness (WARN) ---
Write-Host ""
Write-Host "--- 6. .b4xlib freshness (WARN) ---" -ForegroundColor Cyan
$b4xlibs = @(Get-ChildItem -Path $RepoRoot -Filter "*.b4xlib" -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*\Objects\*" })
if ($b4xlibs.Count -eq 0) {
    Warn "no .b4xlib found under repo - cannot verify lib freshness"
} else {
    $newestLib = $b4xlibs | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    $newestSrc2 = ($srcFiles | Sort-Object LastWriteTime -Descending | Select-Object -First 1).LastWriteTime
    Info ("newest .b4xlib: " + $newestLib.FullName + "  " + $newestLib.LastWriteTime.ToString('yyyy-MM-dd HH:mm'))
    if ($newestLib.LastWriteTime -lt $newestSrc2) {
        Warn (".b4xlib older than newest B4A/*.bas (" + $newestSrc2.ToString('yyyy-MM-dd HH:mm') + ") - rebuild lib")
    } else {
        Pass ".b4xlib fresh vs source"
    }
}

Write-Host ""
if ($exitCode -eq 0) { Write-Host "RESULT: PASS - skills match source" -ForegroundColor Green }
else { Write-Host "RESULT: FAIL - fix drift above, then re-run" -ForegroundColor Red }
Write-Host "Hint: helpers are building blocks - Documented-only + internal use is expected, not a mismatch." -ForegroundColor Gray
exit $exitCode
