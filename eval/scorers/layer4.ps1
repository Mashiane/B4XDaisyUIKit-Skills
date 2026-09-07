# Layer 4 - End-to-end recipes
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Manifest.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Scoring.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Runner.ps1')
# For each chapter fixture: load the chapter as skill context, send the
# prompt to the agent runner, then run a structural check on the output.
# If the fixture has compile:true and b4a_compile_cmd is set, also
# invoke the B4A compiler and record the result.

function Invoke-Layer4 {
    param(
        [hashtable]$Config,
        [string]$SkillRoot,
        [string]$ScriptDir
    )
    $cfg = $Config.e2e_recipes
    if (-not $cfg.enabled) {
        return (New-LayerResult -Layer "Layer 4: E2E recipes" -Status 'skipped' -Score $null -Detail 'disabled in config')
    }

    $fixtureDir = Join-Path $ScriptDir $cfg.fixtures_dir
    if (-not (Test-Path $fixtureDir)) {
        return (New-LayerResult -Layer "Layer 4: E2E recipes" -Status 'error' -Score 0 -Detail "fixtures dir not found: $fixtureDir")
    }

    $fixtures = Get-ChildItem -Path $fixtureDir -Filter '*.json' | Sort-Object Name
    if ($fixtures.Count -eq 0) {
        return (New-LayerResult -Layer "Layer 4: E2E recipes" -Status 'error' -Score 0 -Detail 'no fixtures found')
    }

    Set-RunnerConfig -Config $cfg.runner

    $checks = @()
    $totalScore = 0.0
    $scratch = Join-Path $ScriptDir "reports/_scratch_$(Get-Date -Format 'yyyyMMdd-HHmmss')"
    New-Item -ItemType Directory -Path $scratch -Force | Out-Null

    foreach ($fix in $fixtures) {
        $fx = Get-Content $fix.FullName -Raw | ConvertFrom-Json
        $chapterPath = Join-Path $SkillRoot "skills/b4xdaisyuikit/$($fx.chapter)"
        $skillContext = if (Test-Path $chapterPath) { Get-Content $chapterPath -Raw } else { '' }
        $output = Invoke-AgentRunner -Prompt $fx.prompt -SkillContext $skillContext

        # Write the generated B4XPage(s) to scratch
        $outFile = Join-Path $scratch ($fx.expected_files[0])
        Set-Content -Path $outFile -Value $output -Encoding UTF8

        # Structural scoring
        $hits = 0
        $total = 0
        foreach ($needle in @($fx.must_contain)) { $total++; if ($output -match $needle) { $hits++ } }
        foreach ($bad in @($fx.must_not_contain)) { $total++; if ($output -notmatch $bad) { $hits++ } }
        $structural = if ($total -gt 0) { $hits / $total } else { 1.0 }

        # Optional compile step
        $compileNote = ''
        if ($fx.compile -and $cfg.b4a_compile_cmd) {
            try {
                $rc = & $cfg.b4a_compile_cmd 2>&1
                $last = $LASTEXITCODE
                $compileNote = ", b4a exit=$last"
                if ($last -ne 0) { $structural = $structural * 0.5 }
            } catch {
                $compileNote = ", b4a failed: $($_.Exception.Message)"
                $structural = 0
            }
        } elseif ($fx.compile) {
            $compileNote = ", compile skipped (no b4a_compile_cmd)"
        }

        $checks += [pscustomobject]@{
            Status = if ($structural -ge $cfg.pass_threshold) { 'pass' } elseif ($structural -ge ($cfg.pass_threshold - 0.2)) { 'warn' } else { 'fail' }
            Name   = "recipe: $($fx.id)"
            Detail = "structural=$('{0:P0}' -f $structural)$compileNote (out: $outFile)"
        }
        $totalScore += $structural
    }

    $score = if ($fixtures.Count -gt 0) { $totalScore / $fixtures.Count } else { 0 }
    $status = if ($score -ge $cfg.pass_threshold) { 'pass' } elseif ($score -ge ($cfg.pass_threshold - 0.15)) { 'warn' } else { 'fail' }
    $detail = "$($fixtures.Count) recipes graded, scratch=$scratch"
    return (New-LayerResult -Layer "Layer 4: E2E recipes" -Status $status -Score $score -Detail $detail -Checks $checks)
}