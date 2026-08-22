<#
.SYNOPSIS
    Real-time ADB Logcat Crash Sniffer & Source Line Pinpointer for B4A Apps.

.DESCRIPTION
    Monitors or dumps Android logcat logs via ADB, specifically filtering for
    B4A runtime errors, unhandled exceptions, and AndroidRuntime fatal crashes.
    When a crash occurs, it extracts the exact B4A module name, line number,
    and Java stack trace, and displays the matching .bas source code context.

    Features:
      1. Pinpoints "Error occurred on line: <LineNumber> (<ModuleName>)" from B4A runtime.
      2. Maps errors directly to <AppFolder>/<ModuleName>.bas with contextual source view.
      3. Captures FATAL AndroidRuntime crashes and ClassNotFound / NullPointer exceptions.
      4. Supports one-shot dump (-Dump) or real-time continuous listening (-Follow).
      5. Generates <AppFolder>/ux-review/CRASH-REPORT-<timestamp>.md when errors are detected.

.PARAMETER AppFolder
    The B4A app folder containing .bas source files.

.PARAMETER Package
    Optional app package name to filter logcat by process ID / package.

.PARAMETER Follow
    Switch. If specified, streams logcat continuously in real time. Default is one-shot dump.

.PARAMETER Clear
    Switch. If specified, clears the logcat buffer before listening.

.PARAMETER DeviceId
    Optional adb -s device id.
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [string]$Package = "",
    [switch]$Follow,
    [switch]$Clear,
    [string]$DeviceId = ""
)

$ErrorActionPreference = "Continue"

# --- resolve adb ---
function Resolve-Adb {
    $candidates = @()
    if ($env:ANDROID_HOME) { $candidates += Join-Path $env:ANDROID_HOME "platform-tools\adb.exe" }
    if ($env:ANDROID_SDK_ROOT) { $candidates += Join-Path $env:ANDROID_SDK_ROOT "platform-tools\adb.exe" }
    $candidates += "C:\b4a\sdk\platform-tools\adb.exe"
    $candidates += "C:\Program Files\Anywhere Software\B4A\Platforms\android-sdk\platform-tools\adb.exe"
    $candidates += "C:\Android\android-sdk\platform-tools\adb.exe"
    $candidates += "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
    $candidates += "C:\LDPlayer\LDPlayer9\adb.exe"
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
    Write-Host "ERROR: adb executable not found in PATH or standard SDK locations." -ForegroundColor Red
    exit 1
}

# --- pick device ---
$deviceArgs = @()
if ($DeviceId) {
    $deviceArgs = @("-s", $DeviceId)
} else {
    $lines = & $adb devices 2>&1 | Select-String "device$"
    if (-not $lines) {
        Write-Host "ERROR: No Android device or emulator connected via ADB." -ForegroundColor Red
        exit 1
    }
    $first = ($lines[0] -split "`t")[0]
    $deviceArgs = @("-s", $first)
}

if ($Clear) {
    Write-Host "Clearing logcat buffer..." -ForegroundColor Gray
    & $adb @deviceArgs logcat -c 2>&1 | Out-Null
}

function Show-SourceContext {
    param(
        [string]$AppPath,
        [string]$ModuleName,
        [int]$LineNumber
    )

    if (-not (Test-Path $AppPath)) { return }
    $modName = $ModuleName.Trim()
    if ($modName -match "^(b4x)?(.*)$") {
        $baseName = $Matches[2]
    } else {
        $baseName = $modName
    }

    $candidates = Get-ChildItem -Path $AppPath -Filter "*.bas" -File -Recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.BaseName -like "*$baseName*" -or $_.Name -like "*$modName*" }

    if ($candidates -and $candidates.Count -gt 0) {
        $targetFile = $candidates[0].FullName
        Write-Host "  --> Source: $targetFile (Line $LineNumber)" -ForegroundColor Cyan
        $allLines = Get-Content $targetFile
        $start = [Math]::Max(1, $LineNumber - 3)
        $end = [Math]::Min($allLines.Count, $LineNumber + 3)

        for ($idx = $start; $idx -le $end; $idx++) {
            $lineContent = $allLines[$idx - 1]
            if ($idx -eq $LineNumber) {
                Write-Host ("  >>> {0,4}: {1}" -f $idx, $lineContent) -ForegroundColor Red
            } else {
                Write-Host ("      {0,4}: {1}" -f $idx, $lineContent) -ForegroundColor DarkGray
            }
        }
    }
}

function Process-CrashLog {
    param([string]$RawLog)

    $hasCrash = $false
    $reportLines = @()
    $reportLines += "# B4A ADB Crash & Runtime Sniffer Report"
    $reportLines += "Date: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    $reportLines += ""

    # Check for B4A specific line errors: "Error occurred on line: 123 (b4xmainpage)"
    $b4aLineMatches = [regex]::Matches($RawLog, '(?i)Error occurred on line:\s*(\d+)\s*\(([^)]+)\)')
    foreach ($m in $b4aLineMatches) {
        $hasCrash = $true
        $lineNum = [int]$m.Groups[1].Value
        $module = $m.Groups[2].Value
        Write-Host ""
        Write-Host "==================================================================" -ForegroundColor Red
        Write-Host " [CRASH DETECTED] B4A Runtime Exception in Module: $module" -ForegroundColor Red
        Write-Host " Line Number: $lineNum" -ForegroundColor Yellow
        Write-Host "==================================================================" -ForegroundColor Red

        Show-SourceContext -AppPath $AppFolder -ModuleName $module -LineNumber $lineNum
        $reportLines += "## B4A Exception in $module (Line $lineNum)"
        $reportLines += "```text"
        $reportLines += $m.Value
        $reportLines += "```"
    }

    # Check for AndroidRuntime FATAL exceptions
    if ($RawLog -match '(?s)FATAL EXCEPTION:.*?(Process:.*?)(?=\n\n|\n\d{2}-\d{2}|\Z)') {
        $hasCrash = $true
        $crashBlock = $Matches[0]
        Write-Host ""
        Write-Host "------------------------------------------------------------------" -ForegroundColor Red
        Write-Host " [FATAL EXCEPTION] AndroidRuntime Crash:" -ForegroundColor Red
        Write-Host $crashBlock -ForegroundColor DarkYellow
        Write-Host "------------------------------------------------------------------" -ForegroundColor Red
        $reportLines += "## AndroidRuntime FATAL EXCEPTION"
        $reportLines += "```text"
        $reportLines += $crashBlock
        $reportLines += "```"
    }

    if ($hasCrash) {
        $outDir = Join-Path $AppFolder "ux-review"
        if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir -Force | Out-Null }
        $reportFile = Join-Path $outDir "CRASH-REPORT-$((Get-Date).ToString('yyyyMMdd-HHmmss')).md"
        $reportLines | Out-File -FilePath $reportFile -Encoding utf8
        Write-Host ""
        Write-Host "Crash report saved to: $reportFile" -ForegroundColor Yellow
        return $true
    }

    return $false
}

Write-Host "=== B4A ADB Logcat Sniffer ===" -ForegroundColor Cyan
Write-Host "App Folder: $AppFolder" -ForegroundColor Gray

if ($Follow) {
    Write-Host "Listening live for B4A exceptions (Press Ctrl+C to stop)..." -ForegroundColor Green
    & $adb @deviceArgs logcat -v time B4A:V AndroidRuntime:E *:S | ForEach-Object {
        $line = $_
        if ($line -match "Error occurred on line:|FATAL EXCEPTION|AndroidRuntime") {
            Write-Host $line -ForegroundColor Red
            if ($line -match '(?i)Error occurred on line:\s*(\d+)\s*\(([^)]+)\)') {
                Show-SourceContext -AppPath $AppFolder -ModuleName $Matches[2] -LineNumber ([int]$Matches[1])
            }
        } elseif ($line -match "B4A") {
            Write-Host $line -ForegroundColor White
        }
    }
} else {
    Write-Host "Dumping logcat buffer for recent B4A runtime exceptions..." -ForegroundColor Gray
    $log = & $adb @deviceArgs logcat -d -v time 2>&1 | Out-String
    $crashed = Process-CrashLog -RawLog $log
    if (-not $crashed) {
        Write-Host "PASS: No B4A runtime crashes or fatal exceptions detected in logcat buffer." -ForegroundColor Green
        exit 0
    } else {
        exit 1
    }
}
