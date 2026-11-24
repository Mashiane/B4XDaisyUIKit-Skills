<#
.SYNOPSIS
    Constraint ratchet and floor guard for B4XDaisyUIKit-Skills.
.DESCRIPTION
    Enforces CONSTRAINTS.md mechanically:
      - required sections exist and exceptions have an unexpired date;
      - component count in skills/b4xdaisyuikit/components meets floor (>= 108);
      - reference guide count meets floor (>= 20);
      - domain chapter count meets floor (>= 9);
      - formalized negative knowledge rules (NEG-*) are present (>= 50);
      - tools/validate-skills.ps1 passes with 0 errors.

    Exit codes: 0 = PASS, 1 = FAIL, 2 = bad arguments.
.PARAMETER Root
    Repository root. Defaults to the parent of tools/.
.PARAMETER Strict
    Treat warnings as failures. Use for release packaging.
.PARAMETER Json
    Emit the result as JSON.
#>
param(
    [string]$Root = (Split-Path -Parent $PSScriptRoot),
    [switch]$Strict,
    [switch]$Json
)

$ErrorActionPreference = "Stop"

$passes = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]
$failures = New-Object System.Collections.Generic.List[string]

function Add-Pass([string]$Message) { $script:passes.Add($Message) }
function Add-Warn([string]$Message) { $script:warnings.Add($Message) }
function Add-Fail([string]$Message) { $script:failures.Add($Message) }

function Read-Text([string]$Path) {
    if (Test-Path -LiteralPath $Path -PathType Leaf) {
        return [System.IO.File]::ReadAllText($Path)
    }
    return ""
}

# ----------------------------------------------------------------------------
# 1. CONSTRAINTS.md Structure & Exceptions Check
# ----------------------------------------------------------------------------
$constraintsPath = Join-Path $Root "CONSTRAINTS.md"
if (-not (Test-Path -LiteralPath $constraintsPath -PathType Leaf)) {
    Add-Fail "CONSTRAINTS.md is missing from repository root ($constraintsPath)"
    $constraintText = ""
} else {
    $constraintText = Read-Text $constraintsPath
    $required = @(
        "## Floor (always enforced, no exception)",
        "## Enforced with numbers",
        "## Measured, not yet enforced",
        "## Exceptions",
        "## Verification"
    )
    $missingSections = @($required | Where-Object { $constraintText -notmatch [regex]::Escape($_) })
    if ($missingSections.Count -gt 0) {
        Add-Fail ("CONSTRAINTS.md missing required sections: " + ($missingSections -join ", "))
    } else {
        Add-Pass "CONSTRAINTS.md has all required sections"
    }
}

# Check exceptions table for expired waivers
$today = (Get-Date).Date
foreach ($line in ($constraintText -split "`n")) {
    if ($line -notmatch '^\|\s*(C-\d+)\s*\|') { continue }
    $exceptionId = $Matches[1]
    $dateMatch = [regex]::Match($line, '\b(\d{4}-\d{2}-\d{2})\b')
    if (-not $dateMatch.Success) {
        Add-Warn ("Exception $exceptionId has no expiry date")
        continue
    }
    $expiry = [datetime]::ParseExact($dateMatch.Groups[1].Value, 'yyyy-MM-dd', $null)
    if ($expiry -lt $today) {
        Add-Fail ("Exception $exceptionId expired on $($dateMatch.Groups[1].Value)")
    } else {
        Add-Pass ("Exception $exceptionId active until $($dateMatch.Groups[1].Value)")
    }
}

# ----------------------------------------------------------------------------
# 2. Metric Floors (Numbers Ratchet)
# ----------------------------------------------------------------------------
$skillsDir = Join-Path $Root "skills\b4xdaisyuikit"

# Components count floor (>= 108)
$compsPath = Join-Path $skillsDir "components"
if (Test-Path $compsPath) {
    $compCount = (Get-ChildItem -Path $compsPath -Filter "*.md" -File).Count
    if ($compCount -lt 108) {
        Add-Fail "Component count ($compCount) below floor (108)"
    } else {
        Add-Pass "Component count ($compCount) satisfies floor (>= 108)"
    }
} else {
    Add-Fail "Components folder not found: $compsPath"
}

# References count floor (>= 20)
$refsPath = Join-Path $skillsDir "references"
if (Test-Path $refsPath) {
    $refCount = (Get-ChildItem -Path $refsPath -Filter "*.md" -File).Count
    if ($refCount -lt 20) {
        Add-Fail "Reference guides count ($refCount) below floor (20)"
    } else {
        Add-Pass "Reference guides count ($refCount) satisfies floor (>= 20)"
    }
} else {
    Add-Fail "References folder not found: $refsPath"
}

# Chapters count floor (>= 9)
$chapsPath = Join-Path $skillsDir "chapters"
if (Test-Path $chapsPath) {
    $chapCount = (Get-ChildItem -Path $chapsPath -Filter "*.md" -File).Count
    if ($chapCount -lt 9) {
        Add-Fail "Domain chapters count ($chapCount) below floor (9)"
    } else {
        Add-Pass "Domain chapters count ($chapCount) satisfies floor (>= 9)"
    }
} else {
    Add-Fail "Chapters folder not found: $chapsPath"
}

# Negative Knowledge rules count floor (>= 50)
$negPath = Join-Path $refsPath "negative-knowledge.md"
if (Test-Path $negPath) {
    $negText = Read-Text $negPath
    $negMatches = [regex]::Matches($negText, '(?mi)^###\s*NEG-\d+')
    if ($negMatches.Count -lt 50) {
        Add-Fail "Formalized negative knowledge rules count ($($negMatches.Count)) below floor (50)"
    } else {
        Add-Pass "Negative knowledge rules count ($($negMatches.Count)) satisfies floor (>= 50)"
    }
} else {
    Add-Fail "negative-knowledge.md not found at: $negPath"
}

# Anti-Slop and Design-Quality references check
$antiSlopPath = Join-Path $refsPath "anti-slop.md"
$dqpPath = Join-Path $refsPath "design-quality-playbook.md"
if (Test-Path $antiSlopPath) {
    Add-Pass "anti-slop.md reference is present"
} else {
    Add-Fail "anti-slop.md reference is missing"
}
if (Test-Path $dqpPath) {
    Add-Pass "design-quality-playbook.md reference is present"
} else {
    Add-Fail "design-quality-playbook.md reference is missing"
}

# Default Traps and Parity Benchmark references check
$trapsPath = Join-Path $refsPath "component-default-traps.md"
$parityPath = Join-Path $refsPath "daisyui-parity-benchmark.md"
if (Test-Path $trapsPath) {
    Add-Pass "component-default-traps.md reference is present"
} else {
    Add-Fail "component-default-traps.md reference is missing"
}
if (Test-Path $parityPath) {
    Add-Pass "daisyui-parity-benchmark.md reference is present"
} else {
    Add-Fail "daisyui-parity-benchmark.md reference is missing"
}

# ----------------------------------------------------------------------------
# 3. Validation Tooling Execution
# ----------------------------------------------------------------------------
$validatorScript = Join-Path $Root "tools\validate-skills.ps1"
if (Test-Path $validatorScript) {
    $valOutput = & powershell -NoProfile -ExecutionPolicy Bypass -File $validatorScript 2>&1
    $valCode = $LASTEXITCODE
    if ($valCode -ne 0) {
        Add-Fail "validate-skills.ps1 failed with exit code $valCode"
    } else {
        Add-Pass "validate-skills.ps1 passed with 0 errors"
    }
} else {
    Add-Warn "validate-skills.ps1 not found in tools/"
}

# ----------------------------------------------------------------------------
# 4. Result Synthesis & Exit Code
# ----------------------------------------------------------------------------
$isPass = ($failures.Count -eq 0)
if ($Strict -and $warnings.Count -gt 0) {
    $isPass = $false
}

if ($Json) {
    [PSCustomObject]@{
        passed = $isPass
        passes = $passes
        warnings = $warnings
        failures = $failures
    } | ConvertTo-Json -Depth 4
} else {
    Write-Host ""
    Write-Host "=== B4XDAISYUIKIT-SKILLS CONSTRAINT RATCHET REPORT ===" -ForegroundColor Cyan
    foreach ($p in $passes) {
        Write-Host "  [PASS] $p" -ForegroundColor Green
    }
    foreach ($w in $warnings) {
        Write-Host "  [WARN] $w" -ForegroundColor Yellow
    }
    foreach ($f in $failures) {
        Write-Host "  [FAIL] $f" -ForegroundColor Red
    }
    Write-Host ""
    if ($isPass) {
        Write-Host "RESULT: ALL CONSTRAINTS SATISFIED" -ForegroundColor Green
    } else {
        Write-Host "RESULT: CONSTRAINTS FAILED ($($failures.Count) failure(s))" -ForegroundColor Red
    }
}

if ($isPass) { exit 0 } else { exit 1 }
