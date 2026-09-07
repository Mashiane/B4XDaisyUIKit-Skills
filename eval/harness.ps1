# B4XDaisyUIKit-Skills Evaluation Harness - orchestrator
# Loads config, runs each enabled layer, collects results, writes a markdown report.
#
# Usage:
#   pwsh -File harness.ps1 -Layers 1,2,5
#   pwsh -File harness.ps1 -All
#   pwsh -File harness.ps1 -Layers 3 -Config .\config\config.dev.yaml

[CmdletBinding()]
param(
    [string]$Layers = "1,2,5",
    [switch]$All,
    [string]$Config = "config.yaml"
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

if ($All) { $Layers = "1,2,3,4,5" }

# Normalize to int[]
$layerList = $Layers -split ',' | ForEach-Object { [int]$_.Trim() } | Where-Object { $_ -gt 0 }

# Resolve config
$cfgPath = if (Test-Path $Config) { $Config } else { Join-Path $ScriptDir $Config }
if (-not (Test-Path $cfgPath)) {
    Write-Error "Config not found: $cfgPath"
    exit 2
}

# Minimal YAML parser - config.yaml is hand-authored and uses simple key:value
# and 2-space indented lists. A full YAML parser is overkill here.
function Parse-SimpleYaml {
    param([string]$Path)
    $map = @{}
    $currentSection = $null
    $currentList = $null
    $listKey = $null
    Get-Content $Path | ForEach-Object {
        $line = $_
        if ($line -match '^\s*#' -or $line -match '^\s*$') { return }
        if ($line -match '^(?<key>[^:]+):\s*$') {
            $currentSection = $Matches['key'].Trim()
            $map[$currentSection] = @{}
            $currentList = $null
            return
        }
        if ($line -match '^(?<indent>\s+)(?<key>[^:]+):\s*(?<value>.*)$') {
            $indentLen = $Matches['indent'].Length
            $k = $Matches['key'].Trim()
            $v = $Matches['value'].Trim()
            # Strip surrounding quotes (YAML-style)
            if ($v -match '^"(.*)"$' -or $v -match "^'(.*)'$") { $v = $Matches[1] }
            # Strip inline comments after a value
            if ($v -match '^(.*?)\s+#.*$') { $v = $Matches[1].Trim() }
            if ($currentSection) {
                if ($v -eq '') {
                    $map[$currentSection][$k] = @{}
                    $currentList = $map[$currentSection][$k]
                    $listKey = $null
                } else {
                    $map[$currentSection][$k] = $v
                    $currentList = $null
                }
            }
            return
        }
        if ($line -match '^\s+-\s+(?<value>.+)$' -and $currentList) {
            $lv = $Matches['value'].Trim()
            if ($lv -match '^"(.*)"$' -or $lv -match "^'(.*)'$") { $lv = $Matches[1] }
            $currentList += @($lv)
        }
    }
    return $map
}

Write-Host "Loading config: $cfgPath"
$cfg = Parse-SimpleYaml $cfgPath

# Resolve skill root
$skillRoot = $cfg.skills.root
if (-not (Test-Path $skillRoot)) {
    $skillRoot = Join-Path $ScriptDir $skillRoot
}
$skillRoot = (Resolve-Path $skillRoot).Path
Write-Host "Skill root: $skillRoot"

# Load shared libs
. (Join-Path $ScriptDir 'lib\Manifest.ps1')
. (Join-Path $ScriptDir 'lib\Scoring.ps1')
. (Join-Path $ScriptDir 'lib\Runner.ps1')

$results = @()
$overallStart = Get-Date

foreach ($layerId in $layerList) {
    $scorerPath = Join-Path $ScriptDir "scorers/layer$($layerId).ps1"
    $label = "Layer $layerId"
    Write-Host ""
    Write-Host "=== $label ===" -ForegroundColor Cyan
    if (-not (Test-Path $scorerPath)) {
        Write-Warning "  scorer not found: $scorerPath - skipping"
        $results += [pscustomobject]@{
            Layer = $label
            Status = "skipped"
            Detail = "no scorer"
            Score = $null
            Duration = 0
        }
        continue
    }
    . $scorerPath
    $fn = "Invoke-Layer$layerId"
    $cmd = Get-Command $fn -ErrorAction SilentlyContinue
    if (-not $cmd) {
        Write-Warning "  function $fn not found - skipping"
        $results += [pscustomobject]@{
            Layer = $label
            Status = "skipped"
            Detail = "no function"
            Score = $null
            Duration = 0
        }
        continue
    }
    $sw = [System.Diagnostics.Stopwatch]::StartNew()
    try {
        $r = & $cmd -Config $cfg -SkillRoot $skillRoot -ScriptDir $ScriptDir
        $sw.Stop()
        $results += $r
        $color = switch ($r.Status) {
            'pass'   { 'Green'  }
            'warn'   { 'Yellow' }
            'fail'   { 'Red'    }
            default  { 'Gray'   }
        }
        Write-Host ("  status={0}  score={1}  elapsed={2}s" -f $r.Status, $r.Score, [int]$sw.Elapsed.TotalSeconds) -ForegroundColor $color
    } catch {
        $sw.Stop()
        Write-Warning "  FAILED: $_"
        $results += [pscustomobject]@{
            Layer = $label
            Status = "error"
            Detail = $_.Exception.Message
            Score = $null
            Duration = [int]$sw.Elapsed.TotalSeconds
        }
    }
}

# Write report
$reportDir = Join-Path $ScriptDir ($cfg.reporting.output_dir)
if (-not (Test-Path $reportDir)) { New-Item -ItemType Directory -Path $reportDir | Out-Null }
$ts = Get-Date -Format "yyyyMMdd-HHmmss"
$reportPath = Join-Path $reportDir (($cfg.reporting.filename_pattern) -replace '\{timestamp\}', $ts)
. (Join-Path $ScriptDir 'lib\Report.ps1')
Write-EvalReport -Path $reportPath -Results $results -Config $cfg -SkillRoot $skillRoot -StartedAt $overallStart

if ($cfg.reporting.write_latest_copy) {
    Copy-Item $reportPath (Join-Path $reportDir 'latest.md') -Force
}

Write-Host ""
Write-Host "Report: $reportPath" -ForegroundColor Green

# Exit code
$hasFail = $results | Where-Object { $_.Status -eq 'fail' -or $_.Status -eq 'error' }
if ($hasFail) { exit 1 } else { exit 0 }