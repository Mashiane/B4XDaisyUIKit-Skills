<#
.SYNOPSIS
    Fast negative-knowledge pre-scan for generated B4XDaisyUIKit .bas files.

.DESCRIPTION
    Runs BEFORE verify-conformance.ps1. Catches the bans that the conformance
    gate does NOT check (the negative-knowledge list), so they are fixed before
    the authoritative gate runs. Cheap grep pass, no manifest parsing.

    ERROR (exit 1) = unambiguous rule violations:
      1. Web tech in .bas      - <html, class=, tailwind, <div, <css, style=, <script
      2. Flex/Grid layout ban  - B4XDaisyFlexPanel, B4XDaisyFlexLayout, B4XDaisyGrid

    WARN (exit 0, advisory) = likely bugs to review:
      3. Parent.AddView        - .AddView( present; confirm not mounting a B4XDaisy
                                  component (native panels legitimately use AddView)
      4. Direct sizing         - .Width = N / .Height = N on components (RULE-MOUNT)
      5. Broken validator      - ValidateRequiredControls / ValidateControls(List)
      6. Documented-only used  - ChatBubble, CardActions, CardBody, CardTitle,
                                  CollapseContent, CollapseTitle (need user approval)

    B4XDaisy*.bas (library source) is skipped; scan targets app-authored pages.

    This is advisory shift-left. verify-conformance.ps1 remains the gate.

.PARAMETER AppFolder
    The generated app folder (contains B4XMainPage.bas + page .bas).

.EXAMPLE
    ./pre-scan.ps1 -AppFolder C:\b4a\workspace\MyStore
#>

param(
    [Parameter(Mandatory = $true)][string]$AppFolder
)

$ErrorActionPreference = "Stop"
$exitCode = 0

if (-not (Test-Path $AppFolder)) {
    Write-Host "ERROR: app folder not found: $AppFolder" -ForegroundColor Red
    exit 1
}

$basFiles = Get-ChildItem -Path $AppFolder -Filter "*.bas" -File -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -notlike 'B4XDaisy*.bas' }
if ($basFiles.Count -eq 0) {
    Write-Host "ERROR: no app .bas files in $AppFolder (B4XDaisy*.bas library source is skipped)" -ForegroundColor Red
    exit 1
}

$errors = @()
$warnings = @()

# Documented-only components (negative-knowledge section 4) - need explicit user approval.
$docOnly = @(
    'B4XDaisyChatBubble',
    'B4XDaisyCardActions',
    'B4XDaisyCardBody',
    'B4XDaisyCardTitle',
    'B4XDaisyCollapseContent',
    'B4XDaisyCollapseTitle'
)

foreach ($f in $basFiles) {
    $text = Get-Content $f.FullName -Raw
    $name = $f.Name

    # 1. Web tech ban - native B4X only, no HTML/CSS/Tailwind/WebView.
    #    FAIL on actual HTML tags (a real HTML emit). B4XDaisy's .Style property
    #    (soft/outline/dash) and the words class/tailwind in comments are NOT
    #    web tech, so they are excluded from FAIL.
    if ($text -match '<\s*/?(html|head|body|div|span|script|style|css|table|tr|td|th|button|input|form|img|nav|section|header|footer|ul|ol|li|label|p|h[1-6])\b') {
        $errors += "$name : HTML tag detected - native B4X only, no HTML/CSS/Tailwind/WebView"
    }
    if ($text -match '(?<![\w.])class\s*=\s*["'']') {
        $warnings += "$name : class= attribute syntax found - review, could be an HTML class string (native B4X uses token setters, not class=)"
    }

    # 2. Flex/Grid layout ban - never factored into verified examples.
    if ($text -match 'B4XDaisyFlexPanel|B4XDaisyFlexLayout|B4XDaisyGrid') {
        $errors += "$name : banned layout container (FlexPanel/FlexLayout/Grid) - use PageScroll + coordinate arithmetic"
    }

    # 3. Parent.AddView - mounting B4XDaisy components must use .AddToParent.
    # Native panels legitimately call .AddView for non-B4XDaisy views, so this
    # is a WARN for review, not a hard fail.
    if ($text -match '\.AddView\s*\(') {
        $warnings += "$name : .AddView(...) found - confirm it is not mounting a B4XDaisy component (use component.AddToParent)"
    }

    # 4. Direct sizing on components (RULE-MOUNT) - use setWidth/setHeight tokens.
    $directSize = [regex]::Matches($text, '(?mi)\.\s*(Width|Height)\s*=\s*\d')
    if ($directSize.Count -gt 0) {
        $warnings += "$name : $($directSize.Count) direct .Width/.Height = N assignment(s) - confirm not on a B4XDaisy component (use setWidth/setHeight)"
    }

    # 5. Broken validator - ValidateRequiredControls throws + non-short-circuit And.
    if ($text -match 'ValidateRequiredControls|ValidateControls\s*\(') {
        $warnings += "$name : ValidateRequiredControls/ValidateControls(List) is broken - use per-component Validate() + branch"
    }

    # 6. Documented-only components used without approval.
    foreach ($d in $docOnly) {
        if ($text -match $d) {
            $warnings += "$name : $d is Documented-only - needs explicit user approval before use"
        }
    }
}

# --- Report ---
Write-Host ""
Write-Host "=== PRE-SCAN (negative-knowledge bans) ===" -ForegroundColor Cyan

if ($errors.Count -eq 0) {
    Write-Host "PASS: no unambiguous ban violations" -ForegroundColor Green
} else {
    $exitCode = 1
    Write-Host "FAIL: $($errors.Count) ban violation(s):" -ForegroundColor Red
    foreach ($e in $errors) { Write-Host "  - $e" -ForegroundColor Red }
}

if ($warnings.Count -gt 0) {
    Write-Host "WARN: $($warnings.Count) advisory finding(s) (review before verify-conformance):" -ForegroundColor Yellow
    foreach ($w in $warnings) { Write-Host "  - $w" -ForegroundColor Yellow }
}

if ($errors.Count -eq 0 -and $warnings.Count -eq 0) {
    Write-Host "RESULT: CLEAN (no bans, no advisories)" -ForegroundColor Green
} elseif ($errors.Count -eq 0) {
    Write-Host "RESULT: WARN (advisories only, fix if real before verify-conformance)" -ForegroundColor Yellow
} else {
    Write-Host "RESULT: FAIL (fix ban violations, then pre-scan again, then verify-conformance)" -ForegroundColor Red
}
exit $exitCode