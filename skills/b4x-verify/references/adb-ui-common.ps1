# Shared ADB and UI-hierarchy helpers for ui-inspect.ps1 and navigate.ps1.

function Resolve-AdbPath {
    $candidates = @()
    if ($env:ANDROID_HOME) { $candidates += Join-Path $env:ANDROID_HOME "platform-tools\adb.exe" }
    if ($env:ANDROID_SDK_ROOT) { $candidates += Join-Path $env:ANDROID_SDK_ROOT "platform-tools\adb.exe" }
    $candidates += "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
    $command = Get-Command adb.exe -ErrorAction SilentlyContinue
    if ($command) { $candidates += $command.Source }
    foreach ($candidate in $candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate)) { return $candidate }
    }
    throw "adb.exe was not found. Set ANDROID_HOME/ANDROID_SDK_ROOT or add platform-tools to PATH."
}

function Resolve-ReadyDevice {
    param([string]$AdbPath, [string]$DeviceId = "")
    $lines = @(& $AdbPath devices -l 2>&1 | Where-Object { $_ -match '^\S+\s+device(?:\s|$)' })
    if ($LASTEXITCODE -ne 0) { throw "adb devices failed: $($lines -join ' ')" }
    if ($DeviceId) {
        $row = $lines | Where-Object { ($_ -split '\s+')[0] -eq $DeviceId } | Select-Object -First 1
        if (-not $row) { throw "Device '$DeviceId' is not ready. Run device-info.ps1 -Action List." }
        return $DeviceId
    }
    if ($lines.Count -eq 1) { return ($lines[0] -split '\s+')[0] }
    if ($lines.Count -gt 1) { throw "Multiple devices are ready. Supply -DeviceId <serial>." }
    throw "No ready Android device is connected. Run device-info.ps1 -Action List."
}

function Get-UiSnapshot {
    param([string]$AdbPath, [string]$Serial, [switch]$IncludeAll)
    $token = [guid]::NewGuid().ToString('N')
    $remotePath = "/sdcard/b4x-ui-$token.xml"
    $localPath = Join-Path ([IO.Path]::GetTempPath()) "b4x-ui-$token.xml"
    try {
        $dumpOutput = @(& $AdbPath -s $Serial shell uiautomator dump $remotePath 2>&1)
        if ($LASTEXITCODE -ne 0) { throw "uiautomator dump failed: $($dumpOutput -join ' ')" }
        $pullOutput = @(& $AdbPath -s $Serial pull $remotePath $localPath 2>&1)
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $localPath)) {
            throw "Could not pull the UI hierarchy: $($pullOutput -join ' ')"
        }

        $document = [xml](Get-Content -LiteralPath $localPath -Raw)
        $nodes = @()
        foreach ($element in $document.SelectNodes('//node')) {
            $text = $element.GetAttribute('text')
            $description = $element.GetAttribute('content-desc')
            $resourceId = $element.GetAttribute('resource-id')
            $clickable = $element.GetAttribute('clickable') -eq 'true'
            $longClickable = $element.GetAttribute('long-clickable') -eq 'true'
            $scrollable = $element.GetAttribute('scrollable') -eq 'true'
            $visibleAttr = $element.GetAttribute('visible-to-user')
            $visibleToUser = -not $visibleAttr -or $visibleAttr -eq 'true'
            if (-not $visibleToUser) { continue }
            $boundsText = $element.GetAttribute('bounds')
            if (-not $IncludeAll -and -not ($clickable -or $longClickable -or $scrollable -or $text -or $description -or $resourceId)) { continue }
            $bounds = $null
            $center = $null
            if ($boundsText -match '^\[(\d+),(\d+)\]\[(\d+),(\d+)\]$') {
                $left, $top, $right, $bottom = [int]$Matches[1], [int]$Matches[2], [int]$Matches[3], [int]$Matches[4]
                $bounds = @($left, $top, $right, $bottom)
                $center = @([int](($left + $right) / 2), [int](($top + $bottom) / 2))
            }
            $nodes += [pscustomobject][ordered]@{
                class = $element.GetAttribute('class')
                text = $text
                description = $description
                resourceId = $resourceId
                package = $element.GetAttribute('package')
                bounds = $bounds
                center = $center
                clickable = $clickable
                longClickable = $longClickable
                scrollable = $scrollable
                enabled = $element.GetAttribute('enabled') -eq 'true'
                visibleToUser = $visibleToUser
                checkable = $element.GetAttribute('checkable') -eq 'true'
                checked = $element.GetAttribute('checked') -eq 'true'
                selected = $element.GetAttribute('selected') -eq 'true'
            }
        }
        return [pscustomobject][ordered]@{
            capturedAt = [DateTime]::UtcNow.ToString('o')
            device = $Serial
            nodeCount = $nodes.Count
            nodes = @($nodes)
            note = if ($nodes.Count -eq 0) { 'No labeled or interactive nodes were exposed; inspect the screenshot for canvas-rendered UI.' } else { $null }
        }
    }
    finally {
        if (Test-Path -LiteralPath $localPath) { Remove-Item -LiteralPath $localPath -Force -ErrorAction SilentlyContinue }
        & $AdbPath -s $Serial shell rm -f $remotePath 2>&1 | Out-Null
    }
}

function Find-UiNodes {
    param($Snapshot, $Selector)
    $property = switch -Exact ($Selector.type) {
        'text' { 'text' }
        'description' { 'description' }
        'resourceId' { 'resourceId' }
        default { throw "Selector type must be text, description, or resourceId." }
    }
    $value = [string]$Selector.value
    if (-not $value) { throw "Selector value cannot be empty." }
    $matchMode = if ($Selector.match) { [string]$Selector.match } else { 'exact' }
    if ($matchMode -notin @('exact', 'contains')) { throw "Selector match must be exact or contains." }
    return @($Snapshot.nodes | Where-Object {
        $candidate = [string]$_.$property
        if ($matchMode -eq 'exact') { [string]::Equals($candidate, $value, [StringComparison]::OrdinalIgnoreCase) }
        else { $candidate.IndexOf($value, [StringComparison]::OrdinalIgnoreCase) -ge 0 }
    })
}

function Wait-ForUiNode {
    param([string]$AdbPath, [string]$Serial, $Selector, [int]$TimeoutSec = 15, [int]$PollMs = 500)
    $timer = [Diagnostics.Stopwatch]::StartNew()
    do {
        $snapshot = Get-UiSnapshot -AdbPath $AdbPath -Serial $Serial
        $matches = @(Find-UiNodes -Snapshot $snapshot -Selector $Selector)
        if ($matches.Count -gt 0) {
            $timer.Stop()
            return [pscustomobject][ordered]@{ found = $true; elapsedMs = $timer.ElapsedMilliseconds; snapshot = $snapshot; matches = $matches }
        }
        if ($timer.Elapsed.TotalSeconds -ge $TimeoutSec) { break }
        Start-Sleep -Milliseconds $PollMs
    } while ($true)
    $timer.Stop()
    return [pscustomobject][ordered]@{ found = $false; elapsedMs = $timer.ElapsedMilliseconds; snapshot = $snapshot; matches = @() }
}
