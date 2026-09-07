# Layer 5 - Drift detection
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Manifest.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Scoring.ps1')
# Compares the B4XDaisyUIKit lib source against the skill's component docs.
# Flags:
#   - classes in the lib that have no skill file (missing doc)
#   - skill files for classes that no longer exist in the lib (orphan)
#   - components that document < staleness_threshold of the lib's public methods

function Invoke-Layer5 {
    param(
        [hashtable]$Config,
        [string]$SkillRoot,
        [string]$ScriptDir
    )
    $cfg = $Config.drift
    if (-not $cfg.enabled) {
        return (New-LayerResult -Layer "Layer 5: Drift" -Status 'skipped' -Score $null -Detail 'disabled in config')
    }

    $libRoot = $cfg.lib_source
    if (-not $libRoot) { $libRoot = Join-Path $SkillRoot $cfg.lib_source }
    $libRoot = if (Test-Path $libRoot) { (Resolve-Path $libRoot).Path } else { $null }
    if (-not $libRoot) {
        return (New-LayerResult -Layer "Layer 5: Drift" -Status 'skipped' -Score $null -Detail "lib source not found at: $($cfg.lib_source) - set layers.drift.lib_source in config")
    }

    $libClasses = Get-LibClassNames -LibRoot $libRoot
    $skillFiles = Get-ComponentFiles -SkillRoot $SkillRoot

    # Map skill files to class names
    $skillClassMap = @{}
    foreach ($f in $skillFiles) {
        $cls = Get-ComponentClassName -Path $f.FullName
        if ($cls) { $skillClassMap[$cls] = $f }
    }

    $libClassNames = $libClasses | ForEach-Object { $_.Class } | Sort-Object -Unique
    $skillClassNames = $skillClassMap.Keys | Sort-Object -Unique

    $missingDocs = $libClassNames | Where-Object { $skillClassNames -notcontains $_ }
    $orphanDocs  = $skillClassNames | Where-Object { $libClassNames -notcontains $_ }

    # Staleness: per-class, fraction of lib methods mentioned in the skill file
    $stale = @()
    foreach ($lib in $libClasses) {
        if (-not $skillClassMap.ContainsKey($lib.Class)) { continue }
        $skillFile = $skillClassMap[$lib.Class]
        $txt = Get-Content $skillFile.FullName -Raw
        $methodCount = $lib.Methods.Count
        if ($methodCount -eq 0) { continue }
        $mentioned = 0
        foreach ($m in $lib.Methods) {
            if ($txt -match "\b$([regex]::Escape($m))\b") { $mentioned++ }
        }
        $coverage = $mentioned / $methodCount
        if ($coverage -lt $cfg.staleness_threshold) {
            $stale += [pscustomobject]@{
                Class    = $lib.Class
                Coverage = $coverage
                Mentioned = $mentioned
                Total     = $methodCount
            }
        }
    }

    # Score: penalize missing docs hard, stale moderate, orphans soft
    $libCount = $libClassNames.Count
    $missing = $missingDocs.Count
    $orphan  = $orphanDocs.Count
    $staleCount = $stale.Count

    $score = 1.0
    if ($libCount -gt 0) {
        $score = 1.0 - (($missing / $libCount) * 0.5) - (($staleCount / $libCount) * 0.3) - ([Math]::Min(1, $orphan / 50) * 0.1)
    }
    $score = [Math]::Max(0.0, $score)

    $status = if ($missing -gt 0) { 'fail' } elseif ($staleCount -gt 0) { 'warn' } else { 'pass' }
    $detail = "lib=$($libCount) classes, skill=$($skillClassNames.Count) files, missing=$missing, orphan=$orphan, stale=$staleCount"

    $checks = @()
    $checks += [pscustomobject]@{ Status = if ($missing -eq 0) {'pass'} else {'fail'}; Name='drift:missing'; Detail="$missing lib classes without a skill file" }
    $checks += [pscustomobject]@{ Status = if ($orphan -eq 0) {'pass'} else {'warn'}; Name='drift:orphan'; Detail="$orphan skill files for classes no longer in lib" }
    $checks += [pscustomobject]@{ Status = if ($staleCount -eq 0) {'pass'} else {'warn'}; Name='drift:stale'; Detail="$staleCount components below staleness threshold ($($cfg.staleness_threshold))" }
    foreach ($s in ($stale | Select-Object -First 10)) {
        $checks += [pscustomobject]@{
            Status = 'warn'
            Name   = "stale: $($s.Class)"
            Detail = "$($s.Mentioned)/$($s.Total) methods mentioned ($('{0:P0}' -f $s.Coverage))"
        }
    }

    return (New-LayerResult -Layer "Layer 5: Drift" -Status $status -Score $score -Detail $detail -Checks $checks)
}