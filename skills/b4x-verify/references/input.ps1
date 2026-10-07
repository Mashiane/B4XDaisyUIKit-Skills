<#
.SYNOPSIS
    Send a bounded tap, swipe, text entry, or common key event through ADB.
.PARAMETER Action
    Tap, Swipe, Text, or Key.
.PARAMETER DeviceId
    A serial from `adb devices -l`. Required when more than one device is ready.
#>
param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("Tap", "Swipe", "Text", "Key")]
    [string]$Action,
    [string]$DeviceId = "",
    [int]$X = -1,
    [int]$Y = -1,
    [int]$EndX = -1,
    [int]$EndY = -1,
    [ValidateRange(1, 10000)][int]$DurationMs = 300,
    [ValidateRange(0, 30)][int]$DelaySec = 0,
    [string]$Value = ""
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
$deviceRows = @(& $adb devices -l 2>&1 | Select-Object -Skip 1 | Where-Object { $_ -match '^\S+\s+device(?:\s|$)' })
if ($LASTEXITCODE -ne 0) { throw "adb devices failed." }
if ($DeviceId) {
    $row = $deviceRows | Where-Object { $_ -match ('^' + [regex]::Escape($DeviceId) + '\s') } | Select-Object -First 1
    if (-not $row) { throw "Device '$DeviceId' is not ready." }
} elseif ($deviceRows.Count -eq 1) {
    $row = $deviceRows[0]
} elseif ($deviceRows.Count -gt 1) {
    throw "Multiple devices are ready. Supply -DeviceId <serial>."
} else {
    throw "No ready Android device is connected."
}
$serial = ($row -split '\s+')[0]

$adbArgs = @("-s", $serial, "shell", "input")
switch ($Action) {
    "Tap" {
        if ($X -lt 0 -or $Y -lt 0) { throw "Tap requires non-negative -X and -Y coordinates." }
        $adbArgs += @("tap", "$X", "$Y")
    }
    "Swipe" {
        if ($X -lt 0 -or $Y -lt 0 -or $EndX -lt 0 -or $EndY -lt 0) { throw "Swipe requires non-negative -X, -Y, -EndX, and -EndY coordinates." }
        $adbArgs += @("swipe", "$X", "$Y", "$EndX", "$EndY", "$DurationMs")
    }
    "Text" {
        if (-not $Value -or $Value -notmatch '^[A-Za-z0-9 _.,@:/!?+()\-]*$') {
            throw "Text input accepts only letters, digits, spaces, and _ . , @ : / ! ? + ( ) -."
        }
        $adbText = $Value -replace ' ', '%s'
        $adbArgs += @("text", $adbText)
    }
    "Key" {
        $allowedKeys = @("KEYCODE_BACK", "KEYCODE_HOME", "KEYCODE_ENTER", "KEYCODE_DEL", "KEYCODE_TAB", "KEYCODE_MENU", "KEYCODE_DPAD_UP", "KEYCODE_DPAD_DOWN", "KEYCODE_DPAD_LEFT", "KEYCODE_DPAD_RIGHT")
        if ($Value -notin $allowedKeys) { throw "Key must be one of: $($allowedKeys -join ', ')" }
        $adbArgs += @("keyevent", $Value)
    }
}

if ($DelaySec -gt 0) { Start-Sleep -Seconds $DelaySec }
Write-Output "ADB input: $Action on $serial"
& $adb @adbArgs
if ($LASTEXITCODE -ne 0) { throw "ADB input failed (exit $LASTEXITCODE)." }
