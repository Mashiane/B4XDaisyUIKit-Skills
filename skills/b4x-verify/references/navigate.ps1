<#
.SYNOPSIS
    Run a guarded JSON navigation plan against one Android device and save evidence.
.PARAMETER PlanPath
    JSON plan with named steps. Actions are limited to wait, tap, tapPoint, swipe, key, and type.
.PARAMETER EvidencePath
    Destination JSON report. Screenshots, when requested, are saved beside it.
#>
param(
    [Parameter(Mandatory = $true)][string]$PlanPath,
    [Parameter(Mandatory = $true)][string]$EvidencePath,
    [string]$DeviceId = '',
    [switch]$CaptureScreens
)

$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'adb-ui-common.ps1')

function Get-PropertyValue {
    param($Object, [string]$Name, $Default = $null)
    if ($null -eq $Object) { return $Default }
    $property = $Object.PSObject.Properties[$Name]
    if ($null -eq $property -or $null -eq $property.Value) { return $Default }
    return $property.Value
}

function Invoke-DeviceInput {
    param([string[]]$InputArgs)
    & $script:adb -s $script:serial shell input @InputArgs 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "ADB input failed for '$($InputArgs -join ' ')'." }
}

function Save-StepScreenshot {
    param([int]$Index)
    $directory = [IO.Path]::GetDirectoryName([IO.Path]::GetFullPath($EvidencePath))
    if (-not (Test-Path -LiteralPath $directory)) { New-Item -ItemType Directory -Path $directory -Force | Out-Null }
    $stem = [IO.Path]::GetFileNameWithoutExtension($EvidencePath)
    $file = Join-Path $directory ("{0}-step-{1:D2}.png" -f $stem, $Index)
    $remote = "/sdcard/b4x-screen-$([guid]::NewGuid().ToString('N')).png"
    & $script:adb -s $script:serial shell screencap -p $remote 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) { throw 'Could not capture screenshot.' }
    try {
        & $script:adb -s $script:serial pull $remote $file 2>&1 | Out-Null
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $file)) { throw 'Could not pull screenshot.' }
        return $file
    } finally {
        & $script:adb -s $script:serial shell rm -f $remote 2>&1 | Out-Null
    }
}

function Write-Evidence {
    param($Report)
    $folder = [IO.Path]::GetDirectoryName([IO.Path]::GetFullPath($EvidencePath))
    if (-not (Test-Path -LiteralPath $folder)) { New-Item -ItemType Directory -Path $folder -Force | Out-Null }
    $json = $Report | ConvertTo-Json -Depth 15
    [IO.File]::WriteAllText([IO.Path]::GetFullPath($EvidencePath), $json, [Text.UTF8Encoding]::new($false))
}

$report = [ordered]@{
    schemaVersion = 1
    plan = [IO.Path]::GetFullPath($PlanPath)
    startedAt = [DateTime]::UtcNow.ToString('o')
    device = $DeviceId
    ok = $false
    completedSteps = 0
    steps = @()
    error = $null
}

try {
    if (-not (Test-Path -LiteralPath $PlanPath -PathType Leaf)) { throw "Plan file not found: $PlanPath" }
    $plan = Get-Content -LiteralPath $PlanPath -Raw | ConvertFrom-Json
    if (-not $plan.steps -or $plan.steps.Count -eq 0) { throw 'Plan must contain a non-empty steps array.' }
    $report.planName = [string](Get-PropertyValue $plan 'name' ([IO.Path]::GetFileNameWithoutExtension($PlanPath)))
    $script:adb = Resolve-AdbPath
    $script:serial = Resolve-ReadyDevice -AdbPath $script:adb -DeviceId $DeviceId
    $report.device = $script:serial
    $stepIndex = 0

    foreach ($step in $plan.steps) {
        $stepIndex++
        $stepName = [string](Get-PropertyValue $step 'name' "Step $stepIndex")
        $action = ([string](Get-PropertyValue $step 'action' '')).ToLowerInvariant()
        $stepRecord = [ordered]@{ index = $stepIndex; name = $stepName; action = $action; startedAt = [DateTime]::UtcNow.ToString('o'); ok = $false }
        try {
            if ($action -notin @('wait', 'tap', 'tapPoint', 'swipe', 'key', 'type')) { throw "Unsupported action '$action'." }
            if ($action -ne 'wait' -and $null -eq $step.expect) { throw "Action '$action' requires an expect selector to verify the resulting screen." }
            $timeout = [int](Get-PropertyValue $step 'timeoutSec' 15)
            if ($timeout -lt 1 -or $timeout -gt 60) { throw 'timeoutSec must be between 1 and 60.' }
            $before = Get-UiSnapshot -AdbPath $script:adb -Serial $script:serial
            $stepRecord.beforeAt = $before.capturedAt
            $selector = Get-PropertyValue $step 'selector'
            if ($selector) { $stepRecord.selector = $selector }
            $stepRecord.beforeNodeCount = $before.nodeCount

            if ($action -eq 'wait') {
                if ($null -eq $selector) { throw 'wait requires a selector.' }
                $wait = Wait-ForUiNode -AdbPath $script:adb -Serial $script:serial -Selector $selector -TimeoutSec $timeout
                $stepRecord.matches = $wait.matches
                $stepRecord.elapsedMs = $wait.elapsedMs
                if (-not $wait.found) {
                    if ($CaptureScreens) { $stepRecord.screenshot = Save-StepScreenshot -Index $stepIndex }
                    throw "Timed out waiting for selector '$($selector.value)'."
                }
            } else {
                $expect = $step.expect
                if (@(Find-UiNodes -Snapshot $before -Selector $expect).Count -gt 0) {
                    throw "Expected-state selector '$($expect.value)' is already present before the action; choose a selector that proves the transition."
                }
                switch ($action) {
                    'tap' {
                        if ($null -eq $selector) { throw 'tap requires a selector.' }
                        $targets = @(Find-UiNodes -Snapshot $before -Selector $selector)
                        if ($targets.Count -ne 1) { throw "tap selector matched $($targets.Count) nodes; require exactly one. Use a resourceId or refine the selector." }
                        if ($null -eq $targets[0].center) { throw 'Matched node has no usable bounds.' }
                        if (-not $targets[0].enabled) { throw 'Matched node is disabled.' }
                        $stepRecord.target = $targets[0]
                        Invoke-DeviceInput -InputArgs @('tap', [string]$targets[0].center[0], [string]$targets[0].center[1])
                    }
                    'tapPoint' {
                        $point = @(Get-PropertyValue $step 'at' @())
                        if ($point.Count -ne 2 -or [int]$point[0] -lt 0 -or [int]$point[1] -lt 0) { throw 'tapPoint requires at: [x,y] with non-negative integer coordinates.' }
                        $stepRecord.point = $point
                        Invoke-DeviceInput -InputArgs @('tap', [string]$point[0], [string]$point[1])
                    }
                    'swipe' {
                        $from = @(Get-PropertyValue $step 'from' @())
                        $to = @(Get-PropertyValue $step 'to' @())
                        $duration = [int](Get-PropertyValue $step 'durationMs' 350)
                        if ($from.Count -ne 2 -or $to.Count -ne 2 -or $duration -lt 1 -or $duration -gt 10000) { throw 'swipe requires from:[x,y], to:[x,y], and durationMs 1..10000.' }
                        if (@($from + $to | Where-Object { [int]$_ -lt 0 }).Count -gt 0) { throw 'Swipe coordinates must be non-negative.' }
                        $stepRecord.from = $from; $stepRecord.to = $to; $stepRecord.durationMs = $duration
                        Invoke-DeviceInput -InputArgs @('swipe', [string]$from[0], [string]$from[1], [string]$to[0], [string]$to[1], [string]$duration)
                    }
                    'key' {
                        $keyValue = [string](Get-PropertyValue $step 'value' '')
                        $allowed = @('KEYCODE_BACK', 'KEYCODE_ENTER', 'KEYCODE_TAB', 'KEYCODE_DPAD_UP', 'KEYCODE_DPAD_DOWN', 'KEYCODE_DPAD_LEFT', 'KEYCODE_DPAD_RIGHT')
                        if ($keyValue -notin $allowed) { throw "key must be one of: $($allowed -join ', ')" }
                        $stepRecord.value = $keyValue
                        Invoke-DeviceInput -InputArgs @('keyevent', $keyValue)
                    }
                    'type' {
                        if ($null -eq $selector) { throw 'type requires a selector for the text field to focus.' }
                        $targets = @(Find-UiNodes -Snapshot $before -Selector $selector)
                        if ($targets.Count -ne 1 -or -not $targets[0].center) { throw "type selector must match exactly one visible node with bounds; matched $($targets.Count)." }
                        $textValue = [string](Get-PropertyValue $step 'value' '')
                        if (-not $textValue -or $textValue -notmatch '^[A-Za-z0-9 _.,@:/!?+()\-]*$') { throw 'type value is empty or contains unsupported characters.' }
                        Invoke-DeviceInput -InputArgs @('tap', [string]$targets[0].center[0], [string]$targets[0].center[1])
                        Invoke-DeviceInput -InputArgs @('text', ($textValue -replace ' ', '%s'))
                        $stepRecord.target = $targets[0]; $stepRecord.typedCharacterCount = $textValue.Length
                    }
                }

                $after = Wait-ForUiNode -AdbPath $script:adb -Serial $script:serial -Selector $expect -TimeoutSec $timeout
                $stepRecord.expect = $expect
                $stepRecord.afterMatches = $after.matches
                $stepRecord.afterNodeCount = $after.snapshot.nodeCount
                $stepRecord.elapsedMs = $after.elapsedMs
                if (-not $after.found) {
                    if ($CaptureScreens) { $stepRecord.screenshot = Save-StepScreenshot -Index $stepIndex }
                    throw "Expected selector '$($expect.value)' was not found after action."
                }
            }

            if ($CaptureScreens) { $stepRecord.screenshot = Save-StepScreenshot -Index $stepIndex }
            $stepRecord.ok = $true
            $stepRecord.finishedAt = [DateTime]::UtcNow.ToString('o')
            $report.completedSteps++
        } catch {
            $stepRecord.error = $_.Exception.Message
            $stepRecord.finishedAt = [DateTime]::UtcNow.ToString('o')
            $report.steps += [pscustomobject]$stepRecord
            throw "Step $stepIndex '$stepName' failed: $($_.Exception.Message)"
        }
        $report.steps += [pscustomobject]$stepRecord
        Write-Evidence -Report $report
    }
    $report.ok = $true
} catch {
    $report.error = $_.Exception.Message
} finally {
    $report.finishedAt = [DateTime]::UtcNow.ToString('o')
    try { Write-Evidence -Report $report } catch { $report.error = "Evidence write failed: $($_.Exception.Message)" }
}

$report | ConvertTo-Json -Depth 15
if (-not $report.ok) { exit 1 }
