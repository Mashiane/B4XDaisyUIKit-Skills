<#
.SYNOPSIS
    Contract index generator (DECISION-001): contract/*.md -> contract.index.json.

.DESCRIPTION
    Implements docs/contracts/CONTRACT-SCHEMA.md section 8 DECISION-001:
    the index is mechanically generated from contract/*.md by a deterministic
    parser - never hand-maintained. If any contract file cannot be parsed
    cleanly (missing/malformed front matter per schema section 3), that is a
    schema violation: nothing is written and the script exits 1.

    Downstream: verify-contract.ps1 (G0 freshness check) and
    build-manifest.ps1 (Input 1 per docs/architecture/MANIFEST-GENERATOR.md).

.PARAMETER AppFolder
    Generated app folder containing contract/.

.EXAMPLE
    pwsh -File build-contract-index.ps1 -AppFolder C:\b4a\workspace\MyStore
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder
)

$ErrorActionPreference = "Stop"

function ConvertTo-IdList([string]$s) {
    $out = @()
    foreach ($m in [regex]::Matches($s, '\b(?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3}\b')) { $out += $m.Value }
    return ,@($out | Sort-Object -Unique)
}

$contractDir = Join-Path $AppFolder "contract"
if (-not (Test-Path $contractDir)) { Write-Host "FAIL: missing contract/" -ForegroundColor Red; exit 1 }
$files = Get-ChildItem -Path $contractDir -Filter "*.md" -Recurse -File -ErrorAction SilentlyContinue
if (@($files).Count -eq 0) { Write-Host "FAIL: no contract/*.md files" -ForegroundColor Red; exit 1 }

$errors = @()
$defined = New-Object System.Collections.Generic.HashSet[string]
$allFiles = @()
$featRows = @(); $screenRows = @(); $testRows = @(); $ruleRows = @(); $reqRows = @(); $compRows = @()
$edges = @()
$navEntry = ""; $navEdges = @()

foreach ($f in $files) {
    $text = [System.IO.File]::ReadAllText($f.FullName)
    $text = $text -replace '\r', ''
    $rel = $f.FullName.Substring($contractDir.Length + 1).Replace("\", "/")

    # --- front matter (schema section 3): mandatory for every contract file ---
    $fm = [regex]::Match($text, '(?s)\A---\s*\r?\n(.*?)\r?\n---\s*(?:\r?\n|$)')
    if (-not $fm.Success) { $errors += "$rel : missing/malformed front matter (schema section 3)"; continue }
    $fmText = $fm.Groups[1].Value
    $fmId    = [regex]::Match($fmText, '(?m)^id:\s*(.+?)\s*$')
    $fmSt    = [regex]::Match($fmText, '(?m)^status:\s*(.+?)\s*$')
    $fmVer   = [regex]::Match($fmText, '(?m)^version:\s*(.+?)\s*$')
    $fmDate  = [regex]::Match($fmText, '(?m)^last-updated:\s*(.+?)\s*$')
    $fmDep   = [regex]::Match($fmText, '(?m)^depends-on:\s*(.+?)\s*$')
    foreach ($pair in @(@("id", $fmId), @("status", $fmSt), @("version", $fmVer), @("last-updated", $fmDate), @("depends-on", $fmDep))) {
        if (-not $pair[1].Success) { $errors += "$rel : front matter missing '$($pair[0])' (schema section 3)" }
    }
    if (-not $fmId.Success) { continue }
    $fid = $fmId.Groups[1].Value.Trim()
    $deps = @(); if ($fmDep.Success) { $deps = ConvertTo-IdList $fmDep.Groups[1].Value }
    $status = if ($fmSt.Success) { $fmSt.Groups[1].Value.Trim() } else { "" }
    $ver = if ($fmVer.Success) { $fmVer.Groups[1].Value.Trim() } else { "" }
    $lupd = if ($fmDate.Success) { $fmDate.Groups[1].Value.Trim() } else { "" }
    [void]$defined.Add($fid)
    $allFiles += [pscustomobject]@{ path = "contract/$rel"; id = $fid; status = $status; version = $ver; last_updated = $lupd; depends_on = $deps }

    # --- defined IDs in body (schema section 2) ---
    foreach ($m in [regex]::Matches($text, '(?m)^#{1,6}\s*((?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3})(?=$|[\s:])')) { [void]$defined.Add($m.Groups[1].Value) }
    foreach ($m in [regex]::Matches($text, '(?m)^-\s*((?:REQ|FEATURE|RULE|SCREEN|TEST|DECISION)-\d{3})\s*:')) { [void]$defined.Add($m.Groups[1].Value) }

    # --- requirements (application.md, schema 4.1) ---
    if ($rel -eq "application.md") {
        foreach ($m in [regex]::Matches($text, '(?m)^-\s*(REQ-\d{3}):\s*([^\r\n]+)$')) {
            $stmt = $m.Groups[2].Value
            $prio = "standard"
            $pm = [regex]::Match($stmt, 'priority:\s*(critical|standard|nice-to-have)')
            if ($pm.Success) {
                $prio = $pm.Groups[1].Value
                $stmt = ($stmt.Substring(0, $pm.Index) + $stmt.Substring($pm.Index + $pm.Length)).Trim().TrimEnd('-').Trim()
            }
            $reqRows += [pscustomobject]@{ id = $m.Groups[1].Value; statement = $stmt.Trim(); priority = $prio }
        }
        if ($text -notmatch '## OPEN Items') { $errors += "application.md : missing section '## OPEN Items' (schema 4.1)" }
    }

    # --- features (features/*.md, schema 4.7) ---
    if ($f.Directory.Name -eq "features") {
        $h = [regex]::Match($text, '(?m)^##\s*(FEATURE-\d{3})\s*:\s*([^\r\n]+)')
        $impl = @(); $mm = [regex]::Match($text, '(?m)^-\s*implements:\s*\[([^\]]*)\]'); if ($mm.Success) { $impl = ConvertTo-IdList $mm.Groups[1].Value }
        $scr  = @(); $mm = [regex]::Match($text, '(?m)^-\s*screens:\s*\[([^\]]*)\]');     if ($mm.Success) { $scr  = ConvertTo-IdList $mm.Groups[1].Value }
        $rls  = @(); $mm = [regex]::Match($text, '(?m)^-\s*rules:\s*\[([^\]]*)\]');       if ($mm.Success) { $rls  = ConvertTo-IdList $mm.Groups[1].Value }
        $featRows += [pscustomobject]@{ id = $fid; name = if ($h.Success) { $h.Groups[2].Value.Trim() } else { "" }; status = $status; implements = $impl; screens = $scr; rules = $rls; file = "contract/$rel" }
        foreach ($r in $impl) { $edges += [pscustomobject]@{ from = $fid; type = "implements"; to = $r } }
        foreach ($r in $rls)  { $edges += [pscustomobject]@{ from = $r; type = "applies-to"; to = $fid } }
    }

    # --- screens (screens/*.md, schema 4.8) ---
    if ($f.Directory.Name -eq "screens") {
        $h = [regex]::Match($text, '(?m)^##\s*(SCREEN-\d{3})\s*:\s*([^\r\n]+)')
        $feat = ""; $mm = [regex]::Match($text, '(?m)^-\s*feature:\s*(FEATURE-\d{3})'); if ($mm.Success) { $feat = $mm.Groups[1].Value }
        $comps = @(); $provAll = $true
        foreach ($cm in [regex]::Matches($text, '(?m)^\s*-\s*(COMPONENT-[A-Za-z0-9_]+)([^\r\n]*)$')) {
            $flag = [regex]::Match($cm.Groups[2].Value, 'provenance-checked:\s*(yes|no)')
            if (-not $flag.Success) { $errors += "$rel : component $($cm.Groups[1].Value) missing 'provenance-checked: yes/no' flag (schema 4.8)"; continue }
            if ($flag.Groups[1].Value -eq "no") { $provAll = $false }
            $comps += $cm.Groups[1].Value
            $edges += [pscustomobject]@{ from = $fid; type = "uses"; to = $cm.Groups[1].Value }
        }
        $tst = @(); $mm = [regex]::Match($text, '(?m)^-\s*tests:\s*\[([^\]]*)\]'); if ($mm.Success) { $tst = ConvertTo-IdList $mm.Groups[1].Value }
        foreach ($t in $tst) { $edges += [pscustomobject]@{ from = $t; type = "covers"; to = $fid } }
        $navIn = @();  $mm = [regex]::Match($text, '(?m)^-\s*navigation-in:\s*\[([^\]]*)\]');  if ($mm.Success) { $navIn  = ConvertTo-IdList $mm.Groups[1].Value }
        $navOut = @(); $mm = [regex]::Match($text, '(?m)^-\s*navigation-out:\s*\[([^\]]*)\]'); if ($mm.Success) { $navOut = ConvertTo-IdList $mm.Groups[1].Value }
        if ($feat -ne "") { $edges += [pscustomobject]@{ from = $fid; type = "belongs-to"; to = $feat } }
        $screenRows += [pscustomobject]@{ id = $fid; name = if ($h.Success) { $h.Groups[2].Value.Trim() } else { "" }; status = $status; feature = $feat; components = @($comps | Sort-Object -Unique); provenance_checked = $provAll; tests = $tst; navigation_in = $navIn; navigation_out = $navOut; file = "contract/$rel" }
    }

    # --- tests (acceptance-tests.md, schema 4.6) ---
    if ($rel -eq "acceptance-tests.md") {
        foreach ($bm in [regex]::Matches($text, '(?ms)^##\s*(TEST-\d{3})(.*?)(?=^##\s|\z)')) {
            $tid = $bm.Groups[1].Value; [void]$defined.Add($tid)
            $vm = [regex]::Match($bm.Groups[2].Value, '(?m)^-\s*verifies:\s*([^\r\n]+)')
            $ver2 = @(); if ($vm.Success) { $ver2 = ConvertTo-IdList $vm.Groups[1].Value }
            $testRows += [pscustomobject]@{ id = $tid; verifies = $ver2; file = "contract/$rel" }
            foreach ($v in $ver2) { $edges += [pscustomobject]@{ from = $tid; type = "verifies"; to = $v } }
        }
    }

    # --- rules (business-rules.md, schema 4.5) ---
    if ($rel -eq "business-rules.md") {
        foreach ($bm in [regex]::Matches($text, '(?ms)^##\s*(RULE-\d{3})(.*?)(?=^##\s|\z)')) {
            $rid = $bm.Groups[1].Value; [void]$defined.Add($rid)
            $ap = @(); $mm = [regex]::Match($bm.Groups[2].Value, '(?m)^-\s*applies-to:\s*\[([^\]]*)\]'); if ($mm.Success) { $ap = ConvertTo-IdList $mm.Groups[1].Value }
            $sm = [regex]::Match($bm.Groups[2].Value, '(?m)^-\s*statement:\s*([^\r\n]+)')
            $ruleRows += [pscustomobject]@{ id = $rid; status = $status; statement = if ($sm.Success) { $sm.Groups[1].Value.Trim() } else { "" }; applies_to = $ap; file = "contract/$rel" }
        }
    }

    # --- navigation (navigation.md, schema 4.2) ---
    if ($rel -eq "navigation.md") {
        $em = [regex]::Match($text, '(?ms)## Entry Point\s*\r?\n(SCREEN-\d{3})')
        if ($em.Success) { $navEntry = $em.Groups[1].Value }
        foreach ($gm in [regex]::Matches($text, '(?m)^-\s*(SCREEN-\d{3})\s*(?:-->|->|\u2192)\s*(SCREEN-\d{3})(?:\s*\((?:on|when):\s*([^)]*)\))?')) {
            $navEdges += [pscustomobject]@{ from = $gm.Groups[1].Value; to = $gm.Groups[2].Value; on = $gm.Groups[3].Value.Trim() }
        }
    }

    # --- component registry (all COMPONENT refs with flags, schema 4.8) ---
    foreach ($cm in [regex]::Matches($text, 'COMPONENT-([A-Za-z0-9_]+)[^\r\n]*?provenance-checked:\s*(yes|no)')) {
        $cid = "COMPONENT-" + $cm.Groups[1].Value
        $existing = $compRows | Where-Object { $_.id -eq $cid } | Select-Object -First 1
        if (-not $existing) { $compRows += [pscustomobject]@{ id = $cid; provenance_checked = ($cm.Groups[2].Value -eq "yes") } }
    }
}

if ($errors.Count -gt 0) {
    Write-Host "RESULT: FAIL (contract index not written - DECISION-001 schema violations)" -ForegroundColor Red
    foreach ($e in $errors) { Write-Host "  - $e" -ForegroundColor Red }
    exit 1
}

$app = $allFiles | Where-Object { $_.id -eq "APPLICATION" } | Select-Object -First 1
$appId = ""; $appStatus = ""; $appVersion = ""; $appLupd = ""
if ($app) { $appId = $app.id; $appStatus = $app.status; $appVersion = $app.version; $appLupd = $app.last_updated }
$definedArr = @(); foreach ($d in $defined) { $definedArr += $d }
$definedArr = @($definedArr | Sort-Object -Unique)
$index = [ordered]@{}
$index["generated"]      = (Get-Date).ToUniversalTime().ToString("o")
$index["index-version"]  = 1
$index["application"]    = [ordered]@{ id = $appId; status = $appStatus; version = $appVersion; last_updated = $appLupd }
$index["files"]          = @($allFiles)
$index["defined-ids"]    = $definedArr
$index["requirements"]   = @($reqRows)
$index["features"]       = @($featRows)
$index["rules"]          = @($ruleRows)
$index["screens"]        = @($screenRows)
$index["tests"]          = @($testRows)
$index["components"]     = @($compRows)
$index["navigation"]     = [ordered]@{ entry = $navEntry; edges = @($navEdges) }
$index["edges"]          = $edges

$out = Join-Path $AppFolder "contract.index.json"
$index | ConvertTo-Json -Depth 8 | Set-Content $out -Encoding UTF8
Write-Host "Wrote $out ($(@($allFiles).Count) contract files, $(@($featRows).Count) features, $(@($screenRows).Count) screens, $(@($testRows).Count) tests)" -ForegroundColor Green
exit 0
