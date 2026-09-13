<#
.SYNOPSIS
    Release-only security checks for a B4A application.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [string]$ApprovedPermissionsPath = ""
)

$ErrorActionPreference = "Stop"
$app = (Resolve-Path -LiteralPath $AppFolder -ErrorAction Stop).Path
$project = Get-ChildItem -LiteralPath $app -Filter "*.b4a" -File | Select-Object -First 1
if (-not $project) { Write-Host "FAIL: no .b4a project file found" -ForegroundColor Red; exit 1 }

$sourceFiles = @($project.FullName) + @(Get-ChildItem -LiteralPath $app -Filter "*.bas" -File -Recurse | ForEach-Object FullName)
$combined = ($sourceFiles | ForEach-Object { Get-Content -LiteralPath $_ -Raw }) -join "`n"
$failures = New-Object System.Collections.Generic.List[string]

if ($combined -match '(?i)android:debuggable["'']?\s*,\s*["'']true') { [void]$failures.Add("android:debuggable is true") }
if ($combined -match '(?i)Core\.NetworkClearText') { [void]$failures.Add("Core.NetworkClearText is enabled") }
if ($combined -match '(?i)(?:api[_-]?key|secret|access[_-]?token)\s*=\s*["''][^"'']{12,}["'']') { [void]$failures.Add("literal provider credential detected in source") }

if ([string]::IsNullOrWhiteSpace($ApprovedPermissionsPath)) { $ApprovedPermissionsPath = Join-Path $app "approved-permissions.json" }
$approved = @()
if (Test-Path -LiteralPath $ApprovedPermissionsPath) {
    try {
        $approved = @(Get-Content -LiteralPath $ApprovedPermissionsPath -Raw | ConvertFrom-Json)
        if ($approved -and $approved[0].GetType().Name -ne "String") { throw "expected a JSON string array" }
    } catch { [void]$failures.Add("approved-permissions.json is not a JSON string array") }
}

$sensitive = @(
    "android.permission.CAMERA",
    "android.permission.RECORD_AUDIO",
    "android.permission.ACCESS_FINE_LOCATION",
    "android.permission.ACCESS_COARSE_LOCATION",
    "android.permission.ACCESS_MOCK_LOCATION",
    "android.permission.FOREGROUND_SERVICE"
)
foreach ($permission in $sensitive) {
    if ($combined -match [regex]::Escape($permission) -and ($approved -notcontains $permission)) { [void]$failures.Add("permission requires explicit approval: $permission") }
}

if ($failures.Count -gt 0) {
    Write-Host "RESULT: FAIL" -ForegroundColor Red
    $failures | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "RESULT: PASS - production hardening checks passed" -ForegroundColor Green
exit 0
