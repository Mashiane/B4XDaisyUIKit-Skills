# lib/Scoring.ps1
# Shared scoring helpers. Layers return a single result object:
# @{ Layer, Status (pass|warn|fail|error|skipped), Score (0.0-1.0 or $null),
#    Detail (string), Checks (optional list of failing checks) }

function New-LayerResult {
    param(
        [string]$Layer,
        [string]$Status = 'pass',
        [double]$Score = 1.0,
        [string]$Detail = '',
        [object[]]$Checks = @()
    )
    return [pscustomobject]@{
        Layer    = $Layer
        Status   = $Status
        Score    = [math]::Round($Score, 4)
        Detail   = $Detail
        Checks   = $Checks
    }
}

function Get-SectionStatus {
    # Given a score and thresholds, return pass|warn|fail
    param(
        [double]$Score,
        [double]$Pass = 1.0,
        [double]$Warn = 0.80
    )
    if ($Score -ge $Pass) { return 'pass' }
    if ($Score -ge $Warn) { return 'warn' }
    return 'fail'
}

function Format-Percent {
    param([double]$Value)
    return ('{0:P1}' -f $Value)
}