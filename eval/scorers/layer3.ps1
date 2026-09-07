# Layer 3 - Component synthesis
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Manifest.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Scoring.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Runner.ps1')
# For each fixture: load the component's skill file, build a prompt that
# includes the skill context + the user's request, call the agent runner,
# then score the result against the rubric.
#
# Rubric scoring is structural (regex checks on the generated code) plus an
# optional LLM-as-judge pass. The structural scoring runs even when the
# runner is stubbed, so you can dry-run the harness end-to-end.

function Invoke-Layer3 {
    param(
        [hashtable]$Config,
        [string]$SkillRoot,
        [string]$ScriptDir
    )
    $cfg = $Config.component_synthesis
    if (-not $cfg.enabled) {
        return (New-LayerResult -Layer "Layer 3: Component synthesis" -Status 'skipped' -Score $null -Detail 'disabled in config')
    }

    $fixtureDir = Join-Path $ScriptDir $cfg.fixtures_dir
    if (-not (Test-Path $fixtureDir)) {
        return (New-LayerResult -Layer "Layer 3: Component synthesis" -Status 'error' -Score 0 -Detail "fixtures dir not found: $fixtureDir")
    }

    $fixtures = Get-ChildItem -Path $fixtureDir -Filter '*.json' | Sort-Object Name
    if ($fixtures.Count -eq 0) {
        return (New-LayerResult -Layer "Layer 3: Component synthesis" -Status 'error' -Score 0 -Detail 'no fixtures found')
    }
    $sampleSize = [Math]::Min($cfg.sample_size, $fixtures.Count)
    $picked = $fixtures | Get-Random -Count $sampleSize

    Set-RunnerConfig -Config $cfg.runner

    $checks = @()
    $totalScore = 0.0
    foreach ($fix in $picked) {
        $fx = Get-Content $fix.FullName -Raw | ConvertFrom-Json
        $componentFile = Join-Path $SkillRoot "skills/b4xdaisyuikit/components/$($fx.id).md"
        $skillContext = if (Test-Path $componentFile) { Get-Content $componentFile -Raw } else { '' }
        $prompt = $fx.prompt
        $output = Invoke-AgentRunner -Prompt $prompt -SkillContext $skillContext

        # Structural scoring: did the output hit the expected signatures
        # and avoid the banned ones?
        $hits = 0
        $expected = @($fx.expected_signatures)
        $banned = @($fx.must_not_contain)
        $totalChecks = $expected.Count + $banned.Count
        foreach ($sig in $expected) {
            if ($output -match $sig) { $hits++ }
        }
        foreach ($bad in $banned) {
            if ($output -notmatch $bad) { $hits++ }
        }
        $structural = if ($totalChecks -gt 0) { $hits / $totalChecks } else { 1.0 }

        $checks += [pscustomobject]@{
            Status = if ($structural -ge 0.8) { 'pass' } elseif ($structural -ge 0.5) { 'warn' } else { 'fail' }
            Name   = "fixture: $($fx.id)"
            Detail = "structural=$('{0:P0}' -f $structural) (runner=$($cfg.runner.type))"
        }
        $totalScore += $structural
    }

    $score = if ($picked.Count -gt 0) { $totalScore / $picked.Count } else { 0 }
    $status = if ($score -ge $cfg.pass_threshold) { 'pass' } elseif ($score -ge ($cfg.pass_threshold - 0.15)) { 'warn' } else { 'fail' }
    $detail = "$($picked.Count) fixtures graded, structural avg = $([math]::Round($score,2))"
    return (New-LayerResult -Layer "Layer 3: Component synthesis" -Status $status -Score $score -Detail $detail -Checks $checks)
}