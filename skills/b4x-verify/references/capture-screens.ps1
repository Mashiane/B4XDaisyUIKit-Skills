<#
.SYNOPSIS
    Capture Android screenshots for the post-build UX review.

.DESCRIPTION
    Phase 2 of b4x-verify: get rendered screens onto disk so a visual UX
    review can run on what the user actually sees, not the source.

    Auto path: use adb to screencap the currently-connected device/emulator,
    pull the PNG to <AppFolder>/ux-review/screens/<Label>-<n>.png.
    Fallback path: if no device is attached, print a clear message and
    leave it to the user to drop PNGs into <AppFolder>/ux-review/screens/.

    Navigation across B4XPages is manual and app-specific; this script does
    NOT try to drive the UI. Launch is best-effort. Between captures, the
    user navigates the app; each call captures the current screen.

.PARAMETER AppFolder
    The generated app folder. Screenshots go to <AppFolder>/ux-review/screens/.

.PARAMETER Label
    Name for this capture (e.g. the B4XPage name). Default: "screen".

.PARAMETER Package
    Optional app package to launch before capturing. If omitted, the
    current foreground screen is captured as-is.

.PARAMETER Activity
    Optional launcher activity (e.g. ".main"). Default ".main". Only used
    with -Package.

.PARAMETER Count
    Number of screenshots to take in this call. Default 1. With Count > 1,
    a -DelaySec pause separates each so the user can navigate.

.PARAMETER DelaySec
    Seconds between captures when Count > 1. Default 5.

.PARAMETER DeviceId
    Optional adb -s device id. If omitted, the first device is used.

.EXAMPLE
    pwsh -File capture-screens.ps1 -AppFolder C:\b4a\workspace\MyStore -Label "LoginPage"
    # Launch app, capture the home/login screen, save one PNG.

.EXAMPLE
    pwsh -File capture-screens.ps1 -AppFolder C:\b4a\workspace\MyStore -Count 4 -DelaySec 6
    # Capture 4 screens 6s apart; navigate the app between each.

.NOTES
    Does not build or install. Run ./install.ps1 first.
    No device = fallback message, exit 0 (not a failure; review still runs on
    user-provided PNGs).
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [string]$Label = "screen",
    [string]$Package = "",
    [string]$Activity = ".main",
    [int]$Count = 1,
    [int]$DelaySec = 5,
    [string]$DeviceId = ""
)

$ErrorActionPreference = "Stop"

# --- resolve adb ---
function Resolve-Adb {
    $candidates = @()
    if ($env:ANDROID_HOME) { $candidates += Join-Path $env:ANDROID_HOME "platform-tools\adb.exe" }
    if ($env:ANDROID_SDK_ROOT) { $candidates += Join-Path $env:ANDROID_SDK_ROOT "platform-tools\adb.exe" }
    $candidates += "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
    $candidates += "adb.exe"
    foreach ($c in $candidates) {
        $resolved = $c
        if ($c -eq "adb.exe") { $resolved = (Get-Command adb.exe -ErrorAction SilentlyContinue).Source }
        if ($resolved -and (Test-Path $resolved)) { return $resolved }
    }
    return $null
}

$adb = Resolve-Adb
if (-not $adb) {
    Write-Host ""
    Write-Host "UX-REVIEW CAPTURE: no adb / no device detected." -ForegroundColor Yellow
    Write-Host "Fallback: drop PNG screenshots into:" -ForegroundColor Yellow
    Write-Host "  $AppFolder\ux-review\screens\" -ForegroundColor White
    Write-Host "Then run the visual UX review pass (references/ux-review.md)." -ForegroundColor Yellow
    Write-Host "(./install.ps1 must have built+installed the app for the screenshots to be meaningful.)" -ForegroundColor Gray
    exit 0
}

# --- pick a device ---
$deviceArgs = @()
if ($DeviceId) { $deviceArgs = @("-s", $DeviceId) }
else {
    $lines = & $adb devices 2>&1 | Select-String "device$"
    if (-not $lines) {
        Write-Host ""
        Write-Host "UX-REVIEW CAPTURE: no device attached to adb." -ForegroundColor Yellow
        Write-Host "Fallback: drop PNG screenshots into:" -ForegroundColor Yellow
        Write-Host "  $AppFolder\ux-review\screens\" -ForegroundColor White
        Write-Host "Then run the visual UX review pass (references/ux-review.md)." -ForegroundColor Yellow
        exit 0
    }
    $first = ($lines[0] -split "`t")[0]
    $deviceArgs = @("-s", $first)
}

# --- prep output dir ---
$outDir = Join-Path $AppFolder "ux-review\screens"
if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir -Force | Out-Null }

# --- optional launch ---
if ($Package) {
    $component = if ($Activity -match "^\.") { "$Package$Activity" } else { "$Package/$Activity" }
    Write-Host "Launching $component ..." -ForegroundColor Gray
    & $adb @deviceArgs shell am start -n $component 2>&1 | Out-Null
    Start-Sleep -Seconds 3
}

# --- capture loop ---
for ($i = 1; $i -le $Count; $i++) {
    if ($i -gt 1 -and $DelaySec -gt 0) {
        Write-Host "Waiting ${DelaySec}s (navigate the app now)..." -ForegroundColor Gray
        Start-Sleep -Seconds $DelaySec
    }
    $devicePath = "/sdcard/ux_review_$([System.Guid]::NewGuid().ToString('N').Substring(0,8)).png"
    & $adb @deviceArgs shell screencap -p $devicePath 2>&1 | Out-Null
    $suffix = if ($Count -gt 1) { "-$i" } else { "" }
    $file = "$Label$suffix.png"
    $localPath = Join-Path $outDir $file
    & $adb @deviceArgs pull $devicePath "$localPath" 2>&1 | Out-Null
    & $adb @deviceArgs shell "rm -f $devicePath" 2>&1 | Out-Null
    if (Test-Path $localPath) {
        Write-Host "CAPTURED: $localPath" -ForegroundColor Green
    } else {
        Write-Host "FAILED to capture (screencap/pull error). Is the screen unlocked?" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Screenshots ready in: $outDir" -ForegroundColor Cyan
Write-Host "Next: run the visual UX review pass (references/ux-review.md)." -ForegroundColor Cyan