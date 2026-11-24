<#
.SYNOPSIS
    Verifies B4XDaisyInput form navigation contracts and runtime IME evidence.
.DESCRIPTION
    Static phase checks that every form module is mapped to its screen contract,
    each input has an explicit IME action, and the app/page keyboard hooks exist.
    Runtime phase additionally requires passing or justified out-of-scope device
    results for IME actions, viewport behavior, hardware Tab, and TalkBack.
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$AppFolder,
    [ValidateSet('Static', 'Runtime')][string]$Phase = 'Static'
)

$ErrorActionPreference = 'Stop'
$issues = [System.Collections.Generic.List[string]]::new()

function Add-Issue([string]$Message) {
    $script:issues.Add($Message)
}

if (-not (Test-Path -LiteralPath $AppFolder -PathType Container)) {
    Write-Host "FAIL: app folder not found: $AppFolder" -ForegroundColor Red
    exit 1
}
$AppFolder = (Resolve-Path -LiteralPath $AppFolder).Path
$appRootPrefix = $AppFolder.TrimEnd([System.IO.Path]::DirectorySeparatorChar, [System.IO.Path]::AltDirectorySeparatorChar) + [System.IO.Path]::DirectorySeparatorChar
$reportPath = Join-Path $AppFolder 'ux-review\IME-VERIFICATION.json'

$pageFiles = @(Get-ChildItem -LiteralPath $AppFolder -Filter '*.bas' -File -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -notlike 'B4XDaisy*.bas' })
$formPages = @()
foreach ($file in $pageFiles) {
    $source = Get-Content -LiteralPath $file.FullName -Raw
    $globalsMatch = [regex]::Match($source, '(?is)Sub\s+Class_Globals(?<body>.*?)End\s+Sub')
    if ($globalsMatch.Success -and $globalsMatch.Groups['body'].Value -match '(?i)\bAs\s+B4XDaisyInput\b') {
        $formPages += [pscustomobject]@{ Module = $file.BaseName; File = $file; Source = $source }
    }
}

Write-Host "IME form gate ($Phase) — $AppFolder" -ForegroundColor Cyan
if ($formPages.Count -eq 0) {
    Write-Host 'PASS: no app-authored B4XDaisyInput form modules were found.' -ForegroundColor Green
    exit 0
}

if (-not (Test-Path -LiteralPath $reportPath -PathType Leaf)) {
    Add-Issue "Missing $reportPath. Copy references/IME-VERIFICATION.template.json and complete one entry per form."
} else {
    try {
        $report = Get-Content -LiteralPath $reportPath -Raw | ConvertFrom-Json
    } catch {
        Add-Issue "IME verification report is not valid JSON: $($_.Exception.Message)"
    }
}

$forms = @()
if ($null -ne $report) { $forms = @($report.forms) }
$formModules = @($formPages | ForEach-Object { $_.Module })
$reportModules = @($forms | ForEach-Object { [string]$_.module })
foreach ($duplicate in @($reportModules | Group-Object | Where-Object Count -gt 1)) {
    Add-Issue "IME report contains duplicate form module '$($duplicate.Name)' entries."
}

foreach ($module in $formModules) {
    if ($reportModules -notcontains $module) {
        Add-Issue "Form module $module is missing from IME-VERIFICATION.json."
    }
}
foreach ($module in $reportModules) {
    if ($formModules -notcontains $module) {
        Add-Issue "Report entry '$module' does not match an app-authored form module."
    }
}

$supportedImeActions = @('normal', 'actionNext', 'actionGo', 'actionSearch', 'actionSend', 'actionDone', 'actionNone')
foreach ($formPage in $formPages) {
    $module = $formPage.Module
    $entry = $forms | Where-Object { [string]$_.module -eq $module } | Select-Object -First 1
    $source = $formPage.Source
    $contract = $null
    $contractPath = $null
    $focusSection = $null
    Write-Host "  Checking $module ..." -ForegroundColor Gray

    $enterHandlers = [regex]::Matches($source, '(?is)(?:Private\s+|Public\s+)?Sub\s+\w+_EnterPressed\s*\([^)]*\)(?<body>.*?)End\s+Sub')
    if ($source -notmatch '(?i)\b\w+_FocusChanged\s*\(') {
        Add-Issue "$module has B4XDaisyInput but no FocusChanged handler."
    }
    if ($source -notmatch '(?i)\bIME_HeightChanged\s*\(') {
        Add-Issue "$module has B4XDaisyInput but no page IME_HeightChanged handler."
    }
    if ($source -notmatch '(?i)\b\w+\.getEditText\b') {
        Add-Issue "$module does not use B4XDaisyInput.getEditText for native editor visibility handling."
    }

    $globalsMatch = [regex]::Match($source, '(?is)Sub\s+Class_Globals(?<body>.*?)End\s+Sub')
    $declaredInputNames = @()
    if ($globalsMatch.Success) {
        $declaredInputNames = @([regex]::Matches($globalsMatch.Groups['body'].Value, '(?im)^\s*(?:Private|Public)\s+(\w+)\s+As\s+B4XDaisyInput\b') | ForEach-Object { $_.Groups[1].Value })
    }

    if ($null -eq $entry) { continue }
    $contractRelative = [string]$entry.screenContract
    if ([string]::IsNullOrWhiteSpace($contractRelative)) {
        Add-Issue "$module has no screenContract path in the IME report."
    } else {
        $contractPath = [System.IO.Path]::GetFullPath((Join-Path $AppFolder $contractRelative))
        if (-not $contractPath.StartsWith($appRootPrefix, [System.StringComparison]::OrdinalIgnoreCase)) {
            Add-Issue "$module screenContract path escapes the app folder."
        } elseif (-not (Test-Path -LiteralPath $contractPath -PathType Leaf)) {
            Add-Issue "$module screen contract not found: $contractRelative"
        } else {
            $contract = Get-Content -LiteralPath $contractPath -Raw
            if ($contract -notmatch '(?im)^##\s+Form Keyboard\s*&\s*Focus Order\s*$') {
                Add-Issue "$contractRelative is missing the Form Keyboard & Focus Order section."
            } else {
                $sectionMatch = [regex]::Match($contract, '(?ims)^##\s+Form Keyboard\s*&\s*Focus Order\s*\r?\n(?<body>.*?)(?=^##\s|\z)')
                if ($sectionMatch.Success) {
                    $focusSection = $sectionMatch.Groups['body'].Value
                    foreach ($requiredTerm in @('Hardware Tab target', 'IME viewport behavior', 'TalkBack focus behavior')) {
                        if ($focusSection -notmatch [regex]::Escape($requiredTerm)) {
                            Add-Issue "$contractRelative focus-order section is missing '$requiredTerm'."
                        }
                    }
                }
            }
        }
    }

    $fields = @($entry.fields)
    if ($fields.Count -eq 0) { Add-Issue "$module has no input mappings in the IME report." }
    foreach ($duplicate in @($fields | ForEach-Object { [string]$_.name } | Group-Object | Where-Object Count -gt 1)) {
        Add-Issue "$module IME report contains duplicate input '$($duplicate.Name)' entries."
    }
    $requiresEnterHandler = @($fields | Where-Object { [string]$_.enterTarget -notmatch '^(?i:NEWLINE)$' }).Count -gt 0
    if ($requiresEnterHandler -and $enterHandlers.Count -eq 0) {
        Add-Issue "$module has non-multiline form actions but no EnterPressed handler."
    }
    foreach ($declaredName in $declaredInputNames) {
        if (@($fields | Where-Object { [string]$_.name -ieq $declaredName }).Count -eq 0) {
            Add-Issue "$module input '$declaredName' is declared in Class_Globals but missing from the IME report."
        }
    }
    foreach ($field in $fields) {
        $name = [string]$field.name
        if ($declaredInputNames -notcontains $name) {
            Add-Issue "$module report input '$name' is not declared in Class_Globals."
        }
    }
    foreach ($field in $fields) {
        $name = [string]$field.name
        $eventName = [string]$field.eventName
        $action = [string]$field.imeAction
        $target = [string]$field.enterTarget
        if ([string]::IsNullOrWhiteSpace($name) -or $name -match '^<.*>$') {
            Add-Issue "$module contains an unfinished input name in its IME report."
            continue
        }
        if ($source -notmatch ("(?i)\b" + [regex]::Escape($name) + "\s+As\s+B4XDaisyInput\b")) {
            Add-Issue "$module report input '$name' is not declared as B4XDaisyInput."
        }
        if ([string]::IsNullOrWhiteSpace($eventName) -or $eventName -match '^<.*>$') {
            Add-Issue "$module.$name has no Initialize eventName in the IME report."
        } else {
            $initializePattern = '(?i)\bInitialize\s*\(\s*Me\s*,\s*["'']' + [regex]::Escape($eventName) + '["'']\s*\)'
            if ($source -notmatch $initializePattern) {
                Add-Issue "$module does not initialize an input with eventName '$eventName'."
            }
            $focusHandlerPattern = '(?i)\b' + [regex]::Escape($eventName + '_FocusChanged') + '\s*\('
            if ($source -notmatch $focusHandlerPattern) {
                Add-Issue "$module has no $eventName`_FocusChanged handler for '$name'."
            }
        }
        if ($supportedImeActions -notcontains $action) {
            Add-Issue "$module.$name has unsupported or missing IME action '$action'."
        }
        $actionPattern = '(?i)\b' + [regex]::Escape($name) + '\.ImeOptions\s*=\s*["'']' + [regex]::Escape($action) + '["'']'
        if ($action -and $source -notmatch $actionPattern) {
            Add-Issue "$module.$name does not assign ImeOptions = '$action' in source."
        }
        if ([string]::IsNullOrWhiteSpace($target) -or $target -match '^<.*>$') {
            Add-Issue "$module.$name has no explicit Enter target/action."
        } elseif ($target -notmatch '^(?i:NEWLINE)$' -and $eventName -and $eventName -notmatch '^<.*>$') {
            $eventHandlerPattern = '(?is)(?:Private\s+|Public\s+)?Sub\s+' + [regex]::Escape($eventName + '_EnterPressed') + '\s*\([^)]*\)(?<body>.*?)End\s+Sub'
            $eventHandler = [regex]::Match($source, $eventHandlerPattern)
            if (-not $eventHandler.Success) {
                Add-Issue "$module has no $eventName`_EnterPressed handler for '$name'."
            } else {
                $handlerBody = $eventHandler.Groups['body'].Value
                if ($eventName -ine $name -and $handlerBody -notmatch ('(?i)\b' + [regex]::Escape($name) + '\b')) {
                    Add-Issue "$module.$eventName`_EnterPressed does not dispatch on input '$name'."
                }
                if ($handlerBody -notmatch ('(?i)' + [regex]::Escape($target))) {
                    Add-Issue "$module.$eventName`_EnterPressed does not reference target/action '$target' for '$name'."
                }
            }
        }
        if ($null -ne $focusSection) {
            if ($focusSection -notmatch [regex]::Escape($name)) {
                Add-Issue "$contractRelative does not record input '$name' in its focus-order section."
            }
            if ($focusSection -notmatch [regex]::Escape($action)) {
                Add-Issue "$contractRelative does not record IME action '$action' for '$name'."
            }
            if ($target -and $focusSection -notmatch [regex]::Escape($target)) {
                Add-Issue "$contractRelative does not record Enter target '$target' for '$name'."
            }
        }
    }

    if ($Phase -eq 'Runtime') {
        $runtime = $entry.runtime
        if ($null -eq $runtime) {
            Add-Issue "$module has no runtime verification results."
            continue
        }
        foreach ($property in @('imeActions', 'imeViewport', 'hardwareTab', 'talkBack')) {
            $status = [string]$runtime.$property
            if ($status -notin @('PASS', 'NOT_IN_SCOPE')) {
                Add-Issue "$module runtime check '$property' is '$status'; expected PASS or justified NOT_IN_SCOPE."
            }
            if ($status -eq 'NOT_IN_SCOPE' -and [string]::IsNullOrWhiteSpace([string]$runtime.notInScopeReason)) {
                Add-Issue "$module marks runtime checks NOT_IN_SCOPE without notInScopeReason."
            }
        }
        foreach ($property in @('deviceModel', 'androidVersion', 'keyboard', 'evidenceFile')) {
            if ([string]::IsNullOrWhiteSpace([string]$runtime.$property)) {
                Add-Issue "$module runtime result is missing '$property'."
            }
        }
        if (-not [string]::IsNullOrWhiteSpace([string]$runtime.evidenceFile)) {
            $evidencePath = [System.IO.Path]::GetFullPath((Join-Path $AppFolder ([string]$runtime.evidenceFile)))
            if (-not $evidencePath.StartsWith($appRootPrefix, [System.StringComparison]::OrdinalIgnoreCase)) {
                Add-Issue "$module evidenceFile path escapes the app folder."
            } elseif (-not (Test-Path -LiteralPath $evidencePath -PathType Leaf)) {
                Add-Issue "$module runtime evidence file not found: $($runtime.evidenceFile)"
            }
        }
    }
}

if ($formPages.Count -gt 0) {
    $projectFile = Get-ChildItem -LiteralPath $AppFolder -Filter '*.b4a' -File -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($null -eq $projectFile) {
        Add-Issue 'No .b4a project file found for the Activity-level IME dispatcher check.'
    } else {
        $project = Get-Content -LiteralPath $projectFile.FullName -Raw
        if ($project -notmatch '(?i)adjustResize') { Add-Issue "$($projectFile.Name) is missing android:windowSoftInputMode adjustResize." }
        if ($project -notmatch '(?i)AddHeightChangedEvent') { Add-Issue "$($projectFile.Name) does not register the Activity-level IME height event." }
        if ($project -notmatch '(?is)RaiseEvent\s*\([^\r\n]*IME_HeightChanged') { Add-Issue "$($projectFile.Name) does not dispatch IME_HeightChanged to the active page." }
    }
}

if ($issues.Count -gt 0) {
    Write-Host "FAIL: $($issues.Count) IME form gate issue(s):" -ForegroundColor Red
    foreach ($issue in $issues) { Write-Host "  - $issue" -ForegroundColor Red }
    Write-Host "RESULT: FAIL ($Phase)" -ForegroundColor Red
    exit 1
}

Write-Host "PASS: $($formPages.Count) form module(s) have complete $Phase IME gate evidence." -ForegroundColor Green
Write-Host "RESULT: PASS ($Phase)" -ForegroundColor Green
exit 0
