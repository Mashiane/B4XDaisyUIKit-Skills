<#
.SYNOPSIS
    Select an ADB device and report basic Android device details.
.PARAMETER Action
    List, Size, Model, Version, or Top.
.PARAMETER DeviceId
    A serial from `adb devices -l`. Required when more than one device is ready.
#>
param(
    [ValidateSet("List", "Size", "Model", "Version", "Top")]
    [string]$Action = "List",
    [string]$DeviceId = ""
)

$ErrorActionPreference = "Stop"

function Resolve-Adb {
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

$adb = Resolve-Adb
$deviceLines = @(& $adb devices -l 2>&1 | Where-Object { $_ -match '^\S+\s+(device|offline|unauthorized)\b' })
if ($LASTEXITCODE -ne 0) { throw "adb devices failed: $($deviceLines -join ' ')" }

if ($Action -eq "List") {
    if ($deviceLines.Count -eq 0) { Write-Output "No ADB devices found." }
    else { $deviceLines | ForEach-Object { Write-Output $_ } }
    exit 0
}

$ready = @($deviceLines | Where-Object { $_ -match '^\S+\s+device(?:\s|$)' })
if ($DeviceId) {
    $selected = $ready | Where-Object { $_ -match ('^' + [regex]::Escape($DeviceId) + '\s') } | Select-Object -First 1
    if (-not $selected) { throw "Device '$DeviceId' is not in the ready state. Run device-info.ps1 List to inspect adb devices." }
} elseif ($ready.Count -eq 1) {
    $selected = $ready[0]
} elseif ($ready.Count -gt 1) {
    throw "Multiple devices are ready. Re-run with -DeviceId <serial> to choose one."
} else {
    throw "No ready Android device is connected. Run device-info.ps1 List to inspect device state."
}

$serial = ($selected -split '\s+')[0]
Write-Output "Device: $serial"
switch ($Action) {
    "Size" {
        & $adb -s $serial shell wm size
        if ($LASTEXITCODE -ne 0) { throw "Could not read device screen size." }
    }
    "Model" {
        & $adb -s $serial shell getprop ro.product.manufacturer
        & $adb -s $serial shell getprop ro.product.model
        if ($LASTEXITCODE -ne 0) { throw "Could not read device model." }
    }
    "Version" {
        & $adb -s $serial shell getprop ro.build.version.release
        & $adb -s $serial shell getprop ro.build.version.sdk
        if ($LASTEXITCODE -ne 0) { throw "Could not read Android version." }
    }
    "Top" {
        & $adb -s $serial shell dumpsys activity activities |
            Select-String -Pattern 'mResumedActivity|topResumedActivity' | Select-Object -First 5
        if ($LASTEXITCODE -ne 0) { throw "Could not read the foreground activity." }
    }
}
