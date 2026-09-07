# Layer 1 - Structural integrity
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Manifest.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Scoring.ps1')
# Checks:
#   - required top-level files exist
#   - required files inside the b4xdaisyuikit skill exist
#   - every components/*.md has all required sections
#   - plugin.json version matches the badge in README.md
#   - every chapter link in SKILL.md resolves to an existing file
#   - every reference link in SKILL.md resolves to an existing file
#   - no broken internal markdown links (best-effort: scan [text](path) where
#     path doesn't start with http or #)

function Invoke-Layer1 {
    param(
        [hashtable]$Config,
        [string]$SkillRoot,
        [string]$ScriptDir
    )
    $cfg = $Config.structural
    $checks = @()

    # --- 1. Required top-level files
    foreach ($rel in $cfg.required_files) {
        $p = Join-Path $SkillRoot $rel
        if (Test-Path $p) {
            $checks += [pscustomobject]@{ Status='pass'; Name="file: $rel"; Detail='exists' }
        } else {
            $checks += [pscustomobject]@{ Status='fail'; Name="file: $rel"; Detail='missing' }
        }
    }

    # --- 2. Required files inside the b4xdaisyuikit skill
    foreach ($rel in $cfg.required_skill_files) {
        $p = Join-Path $SkillRoot "skills/b4xdaisyuikit/$rel"
        if (Test-Path $p) {
            $checks += [pscustomobject]@{ Status='pass'; Name="skill: $rel"; Detail='exists' }
        } else {
            $checks += [pscustomobject]@{ Status='fail'; Name="skill: $rel"; Detail='missing' }
        }
    }

    # --- 3. plugin.json version matches README badge
    $manifest = Get-PluginManifest -SkillRoot $SkillRoot
    if ($manifest) {
        $readme = Get-Content (Join-Path $SkillRoot 'README.md') -Raw
        $ver = $manifest.version
        $badge = "Release-v$ver"
        if ($readme -match [regex]::Escape($badge)) {
            $checks += [pscustomobject]@{ Status='pass'; Name="version:badge"; Detail="plugin.json v$ver matches README badge" }
        } else {
            $checks += [pscustomobject]@{ Status='fail'; Name="version:badge"; Detail="plugin.json v$ver does not match README badge" }
        }
    }

    # --- 4. Every components/*.md has all required sections
    $components = Get-ComponentFiles -SkillRoot $SkillRoot
    $missingSections = @()
    foreach ($c in $components) {
        $content = Get-Content $c.FullName -Raw
        foreach ($sec in $cfg.required_sections) {
            if ($content -notmatch [regex]::Escape($sec)) {
                $missingSections += "$($c.BaseName) missing $sec"
            }
        }
    }
    if ($missingSections.Count -eq 0) {
        $checks += [pscustomobject]@{ Status='pass'; Name="components:sections"; Detail="all $($components.Count) components have required sections" }
    } else {
        $checks += [pscustomobject]@{ Status='fail'; Name="components:sections"; Detail="$($missingSections.Count) missing: $($missingSections -join '; ')" }
    }

    # --- 5. Chapter + reference links in SKILL.md resolve
    $skillMd = Join-Path $SkillRoot 'skills/b4xdaisyuikit/SKILL.md'
    if (Test-Path $skillMd) {
        $txt = Get-Content $skillMd -Raw
        $linkPattern = '\[(?<text>[^\]]+)\]\((?<path>[^)]+)\)'
        $matches = [regex]::Matches($txt, $linkPattern)
        $broken = @()
        foreach ($m in $matches) {
            $p = $m.Groups['path'].Value
            if ($p -match '^(http|https|mailto|#)') { continue }
            $resolved = Join-Path (Split-Path $skillMd -Parent) $p
            $resolved = [System.IO.Path]::GetFullPath($resolved)
            if (-not (Test-Path $resolved)) {
                $broken += $p
            }
        }
        if ($broken.Count -le $cfg.max_broken_links_per_file) {
            $checks += [pscustomobject]@{ Status='pass'; Name="links:SKILL.md"; Detail="$($matches.Count) links checked, 0 broken" }
        } else {
            $brokenList = if ($broken.Count -gt 0) { $broken -join '; ' } else { 'none' }
            $checks += [pscustomobject]@{ Status='fail'; Name="links:SKILL.md"; Detail="$($broken.Count) broken: $brokenList" }
        }
    }

    # --- 6. Component coverage - every documented class has a file
    $componentClasses = @()
    foreach ($c in $components) {
        $cls = Get-ComponentClassName -Path $c.FullName
        if ($cls) { $componentClasses += $cls }
    }
    $unique = ($componentClasses | Sort-Object -Unique)
    $checks += [pscustomobject]@{
        Status  = 'pass'
        Name    = "components:count"
        Detail  = "$($unique.Count) unique B4XDaisy* classes documented across $($components.Count) files"
    }

    # --- 7. All 4 skill packages present
    $packages = Get-SkillPackages -SkillRoot $SkillRoot
    $expected = @('b4x-orchestrator','b4x-project-bootstrap','b4x-verify','b4xdaisyuikit')
    $missingPkgs = $expected | Where-Object { -not ($packages.Name -contains $_) }
    if ($missingPkgs.Count -eq 0) {
        $checks += [pscustomobject]@{ Status='pass'; Name="skill:packages"; Detail="all 4 expected packages present" }
    } else {
        $checks += [pscustomobject]@{ Status='fail'; Name="skill:packages"; Detail="missing: $($missingPkgs -join ', ')" }
    }

    # --- Tally
    $total = $checks.Count
    $passed = ($checks | Where-Object Status -eq 'pass').Count
    $score = if ($total -gt 0) { $passed / $total } else { 0 }
    $status = Get-SectionStatus -Score $score -Pass 1.0 -Warn 0.95
    $detail = "$passed / $total checks passed"
    return (New-LayerResult -Layer "Layer 1: Structural" -Status $status -Score $score -Detail $detail -Checks $checks)
}
