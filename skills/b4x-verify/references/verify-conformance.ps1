<#
.SYNOPSIS
    Conformance + API + coverage + compile-readiness + UX quality gate for a generated B4XDaisyUIKit app.

.DESCRIPTION
    Five checks against the frozen component manifest and the extracted API cheat sheet:
      1. CONFORMANCE  - every B4XDaisy* type referenced in the app's .bas files
                         exists in component-manifest.md. Reports invented APIs.
                         The manifest is the ONLY source of type existence; component
                         guides never expand the authoritative component universe.
      2. API MEMBERS  - every member invoked on a component-typed variable
                         (Dim x As B4XDaisy*) must exist in that component's extracted
                         API (api-cheat-sheet.md): method, property setter/getter,
                         public field, or declared event. Unknown members FAIL.
                         Standard B4A View members are allowlisted.
      3. DOCUMENTED-ONLY - use of components the manifest marks Documented-only
                         FAILS unless listed in <AppFolder>\approved-components.json.
      4. COMPILE-READINESS - every ModuleN= name in the .b4a has a matching .bas,
                         and NumberOfModules matches the count. B4XMainPage present.
      5. UX & QUALITY GATE - verifies AutoFit, BringToFront, non-empty Catch logging,
                         and touch conflict handling on gesture components.

    Exit code 0 = pass, 1 = fail. Fail = do not ship.

    NOTE: member scanning is regex-based over raw .bas text (comments included);
    commented-out member calls are scanned like real code.

.PARAMETER AppFolder
    The generated app folder (contains <AppName>.b4a + B4XMainPage.bas + page .bas).

.PARAMETER Manifest
    Path to component-manifest.md. Defaults to the sibling b4xdaisyuikit skill manifest.

.PARAMETER ApiCheatSheet
    Path to api-cheat-sheet.md (extracted library API). Defaults to the sibling
    references folder. If missing, API member verification is skipped with a warning.

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

# --- Known = every B4XDaisy* token declared in the MANIFEST ONLY.
# Component guides (.md) must never expand the authoritative component universe,
# otherwise prose mentions of retired/renamed components would become "valid".
$known = New-Object System.Collections.Generic.HashSet[string]
foreach ($m in [regex]::Matches($manifestText, 'B4XDaisy[A-Za-z0-9_]+')) {
    [void]$known.Add($m.Value)
}

# --- Documented-only set = Support index status column (components only) ---
$docOnly = New-Object System.Collections.Generic.HashSet[string]
foreach ($line in ($manifestText -split "`n")) {
    if ($line -match '^\|\s*(B4XDaisy[A-Za-z0-9_]+)\s*\|\s*Documented-only\s*\|') {
        [void]$docOnly.Add($Matches[1])
    }
}

Write-Host "Manifest known B4XDaisy* tokens: $($known.Count) ($($docOnly.Count) Documented-only components)" -ForegroundColor Gray

# --- API corpus: parse api-cheat-sheet.md into component -> member map.
# Only the extracted library API establishes member existence; documentation prose
# may explain an API but never establish that it exists.
$ApiCheatSheetPath = Join-Path (Split-Path $Manifest) "api-cheat-sheet.md"
$apiMembers = @{}      # component (lower) -> HashSet[lowercase member]
$apiEvents  = @{}      # component (lower) -> HashSet[lowercase event]
$apiStructs = @{}      # struct type (lower) -> HashSet[lowercase field names]
$apiMissing = $true
if (Test-Path $ApiCheatSheetPath) {
    $apiMissing = $false
    $cheat = Get-Content $ApiCheatSheetPath
    $currentComp = $null
    $section = ""
    foreach ($line in $cheat) {
        if ($line -match '^\s*##\s+(B4XDaisy[A-Za-z0-9_]+)\s*$') {
            $currentComp = $Matches[1].ToLowerInvariant()
            if (-not $apiMembers.ContainsKey($currentComp)) {
                $apiMembers[$currentComp] = New-Object System.Collections.Generic.HashSet[string]
                $apiEvents[$currentComp]  = New-Object System.Collections.Generic.HashSet[string]
            }
            $section = ""
            continue
        }
        if ($null -eq $currentComp) { continue }
        if ($line -match '^\s*###\s+(.+?)\s*$') { $section = $Matches[1]; continue }

        if ($line -match '^\s*[-|]\s*`([^`]+)`') {
            $decl = $Matches[1].Trim()
            if ($section -eq "Types") {
                # Struct declared inside the class: name + verbatim field names.
                $typeName = ($decl -split '\(')[0].Trim()
                [void]$known.Add($typeName)
                $fields = New-Object System.Collections.Generic.HashSet[string]
                if ($decl -match '\((.*)\)') {
                    foreach ($fp in ($Matches[1] -split ',')) {
                        $fn = ($fp -split '\s+As\s+')[0].Trim()
                        if ($fn) { [void]$fields.Add($fn.ToLowerInvariant()) }
                    }
                }
                $apiStructs[$typeName.ToLowerInvariant()] = $fields
            }
            elseif ($section -eq "Events") {
                $ev = ($decl -split '\(')[0].Trim()
                [void]$apiEvents[$currentComp].Add($ev.ToLowerInvariant())
                [void]$apiMembers[$currentComp].Add($ev.ToLowerInvariant())
            }
            elseif ($section -eq "Public Methods") {
                # Extraction quirk: "getHeightAs Int" / "ViewAs B4XView" merge the
                # member name with a trailing "As Type" when there are no parens.
                if ($decl -match '^([A-Za-z_][A-Za-z0-9_]*?)\s*(\(.*\))?( As .*)?$') {
                    $mName = $Matches[1]
                    if ($mName -and $mName.Trim() -ne "") {
                        [void]$apiMembers[$currentComp].Add($mName.ToLowerInvariant())
                    }
                }
            }
            elseif ($section -eq "Designer Properties") {
                # Property key K implies setter setK and getter getK.
                if ($decl -match '^[A-Za-z_][A-Za-z0-9_]*$') {
                    [void]$apiMembers[$currentComp].Add(("set" + $decl).ToLowerInvariant())
                    [void]$apiMembers[$currentComp].Add(("get" + $decl).ToLowerInvariant())
                }
            }
        }
    }
}

# Standard B4A/B4XView members usable on any view or object wrapper.
$builtinMembers = New-Object System.Collections.Generic.HashSet[string]
foreach ($m in @('left','top','width','height','visible','tag','enabled','color',
                 'background','backgroundcolor','requestfocus','bringtofront','sendtoback',
                 'removeview','setlayoutanimated','setcoloranimated','settextsizeanimated',
                 'invalidate','invalidate2','invalidate3','parent','snippet','padding')) {
    [void]$builtinMembers.Add($m)
}
# Standard events any view can raise regardless of declared #Event list.
$builtinEvents = New-Object System.Collections.Generic.HashSet[string]
foreach ($e in @('click','longclick','touch','focuschanged','valuechanged','checkedchange',
                 'textchanged','enterpressed','itemclick','keydown','keyup')) {
    [void]$builtinEvents.Add($e)
}

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
Write-Host "=== DOCUMENTED-ONLY usage (hard gate) ===" -ForegroundColor Cyan
$docUsed = @()
foreach ($r in ($referenced | Sort-Object)) {
    if ($docOnly.Contains($r)) { $docUsed += $r }
}
if ($docUsed.Count -eq 0) {
    Write-Host "PASS: no Documented-only components used" -ForegroundColor Green
} else {
    # Manifest rule 3: Documented-only components require explicit user approval.
    # Approval is recorded in <AppFolder>\approved-components.json (JSON array of
    # B4XDaisy* component names). Without approval this is a blocking FAIL.
    $approvedPath = Join-Path $AppFolder "approved-components.json"
    $approved = New-Object System.Collections.Generic.HashSet[string]
    if (Test-Path $approvedPath) {
        try {
            foreach ($a in (Get-Content $approvedPath -Raw | ConvertFrom-Json)) {
                [void]$approved.Add([string]$a)
            }
        } catch {
            $exitCode = 1
            Write-Host "FAIL: approved-components.json exists but is not a valid JSON string array: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
    $unapproved = @($docUsed | Where-Object { -not $approved.Contains($_) })
    if ($unapproved.Count -eq 0) {
        Write-Host "PASS: $($docUsed.Count) Documented-only component(s) used, all user-approved in approved-components.json:" -ForegroundColor Green
        foreach ($d in $docUsed) { Write-Host "  - $d  (in: $($refByFile[$d] -join ', '))" -ForegroundColor Green }
    } else {
        $exitCode = 1
        Write-Host "FAIL: $($unapproved.Count) Documented-only component(s) used without explicit user approval:" -ForegroundColor Red
        foreach ($d in $unapproved) { Write-Host "  - $d  (in: $($refByFile[$d] -join ', '))" -ForegroundColor Red }
        Write-Host "      Approval: add the component name(s) to $approvedPath" -ForegroundColor Red
    }
}

# --- API MEMBER VERIFICATION: member existence against the extracted library API ---
$apiProblems = @()
Write-Host ""
Write-Host "=== API MEMBERS (member-level verification vs extracted library API) ===" -ForegroundColor Cyan
if ($apiMissing) {
    Write-Host "WARN: api-cheat-sheet.md not found at $ApiCheatSheetPath" -ForegroundColor Yellow
    Write-Host "WARN: API member verification SKIPPED - this run must NOT be treated as API-verified" -ForegroundColor Yellow
} else {
    foreach ($f in $basFiles) {
        $text = Get-Content $f.FullName -Raw
        # Map variable name -> set of B4XDaisy component types declared in this file.
        # Union across scopes (Class_Globals + subs) only loosens acceptance, never tightens.
        $varTypes = @{}
        foreach ($dm in [regex]::Matches($text, '(?im)^\s*Dim\s+([A-Za-z_][A-Za-z0-9_]*)\s+As\s+(B4XDaisy[A-Za-z0-9_]*)')) {
            $v = $dm.Groups[1].Value.ToLowerInvariant()
            $t = $dm.Groups[2].Value.ToLowerInvariant()
            if (-not $varTypes.ContainsKey($v)) { $varTypes[$v] = New-Object System.Collections.Generic.HashSet[string] }
            [void]$varTypes[$v].Add($t)
        }
        if ($varTypes.Count -eq 0) { continue }

        # Member access: <var>.<member> must exist in the component's extracted API.
        # set<Name>/get<Name> count for property-style access; standard B4A View
        # members are allowlisted.
        foreach ($am in [regex]::Matches($text, '(?i)(?<![A-Za-z0-9_\.])([a-z_][a-z0-9_]*)\.([a-z_][a-z0-9_]*)')) {
            $v = $am.Groups[1].Value.ToLowerInvariant()
            if (-not $varTypes.ContainsKey($v)) { continue }
            $member = $am.Groups[2].Value.ToLowerInvariant()
            if ($builtinMembers.Contains($member)) { continue }
            $ok = $false
            foreach ($t in $varTypes[$v]) {
                if ($apiMembers.ContainsKey($t) -and
                    ($apiMembers[$t].Contains($member) -or
                     $apiMembers[$t].Contains("get$member") -or
                     $apiMembers[$t].Contains("set$member"))) { $ok = $true; break }
                if ($apiStructs.ContainsKey($t) -and $apiStructs[$t].Contains($member)) { $ok = $true; break }
            }
            if (-not $ok) {
                $apiProblems += "$($f.Name): '$($am.Groups[2].Value)' is not in the extracted API of [$($varTypes[$v] -join ', ')] (variable '$($am.Groups[1].Value)')"
            }
        }

        # Event handlers: Sub <var>_<EventName>( must reference a declared or standard event.
        foreach ($sm in [regex]::Matches($text, '(?im)^\s*(?:Private\s+|Public\s+)?Sub\s+([a-z_][a-z0-9_]*)_([A-Za-z0-9_]+)\s*\(')) {
            $v = $sm.Groups[1].Value.ToLowerInvariant()
            if (-not $varTypes.ContainsKey($v)) { continue }
            $ev = $sm.Groups[2].Value.ToLowerInvariant()
            if ($builtinEvents.Contains($ev)) { continue }
            $ok = $false
            foreach ($t in $varTypes[$v]) {
                if ($apiEvents.ContainsKey($t) -and $apiEvents[$t].Contains($ev)) { $ok = $true; break }
            }
            if (-not $ok) {
                $apiProblems += "$($f.Name): event handler Sub $($sm.Groups[1].Value)_$($sm.Groups[2].Value) handles an event not declared by [$($varTypes[$v] -join ', ')]"
            }
        }
    }
    if ($apiProblems.Count -eq 0) {
        Write-Host "PASS: all member calls on B4XDaisy* variables exist in the extracted API" -ForegroundColor Green
    } else {
        $exitCode = 1
        Write-Host "FAIL: $($apiProblems.Count) unknown API member(s)/event(s):" -ForegroundColor Red
        foreach ($p in $apiProblems) { Write-Host "  - $p" -ForegroundColor Red }
    }
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

    # Check 5: Hungarian prefix spot-check (RULE-CODE-001) -- advisory L3
    if ($text -match '(?m)^\s*Sub\s+\w+\s*\(\s*[A-Z][a-z]+ As ') {
        if ($text -match '(?m)Sub\s+\w+\s*\(\s*(sText|iLeft|bEnabled|vParent|mProps|lst\w+)\b') {
            # has at least one correctly prefixed param -> not warned
        } else {
            $warnings += "$($f.Name) params lack Hungarian prefixes (RULE-CODE-001: sText,iLeft,bEnabled,vParent,mProps,lstItems)"
        }
    }

    # Check 6: B4XDaisyPageScroll.Clear before render (RULE-LAYOUT-001) -- advisory
    if ($text -match 'B4XDaisyPageScroll' -and $text -match 'RenderPage|RenderContent') {
        if ($text -notmatch '\.Clear\b') {
            $warnings += "$($f.Name) renders scroll content but never calls .Clear (RULE-LAYOUT-001: Clear before re-render on resize)"
        }
    }

    # Check 7: Hardcoded px without dip (RULE-ANTI-003) -- advisory
    $pxHits = [regex]::Matches($text, '(?m)\b(Width|Height|Left|Top)\s*=\s*\d+\b(?!dip)')
    if ($pxHits.Count -gt 0) {
        # filter known non-B4XView numeric assigns (constants) -- keep warn light
        $warnings += "$($f.Name) has raw pixel assign without dip -- verify RULE-ANTI-003"
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
    Write-Host "WARN: Quality and UX advisory warning(s):" -ForegroundColor Yellow
    foreach ($w in $warnings) { Write-Host "  - $w" -ForegroundColor Yellow }
}

# --- SUMMARY RESULT ---
if ($problems.Count -eq 0 -and $layoutProblems.Count -eq 0 -and $invented.Count -eq 0 -and $apiProblems.Count -eq 0) {
    Write-Host ""
    Write-Host "RESULT: PASS (all conformance, API member, compile-readiness, and UX layout checks passed)" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "RESULT: FAIL (fix errors above before ./install.ps1)" -ForegroundColor Red
}
exit $exitCode