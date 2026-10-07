<#
.SYNOPSIS
    Return a compact Android UI hierarchy snapshot, find a node, or wait for one.
.PARAMETER Action
    Snapshot, Find, or Wait.
.PARAMETER SelectorType
    Text, Description, or ResourceId; used by Find and Wait.
#>
param(
    [ValidateSet('Snapshot', 'Find', 'Wait')][string]$Action = 'Snapshot',
    [ValidateSet('Text', 'Description', 'ResourceId')][string]$SelectorType = 'Text',
    [string]$Value = '',
    [ValidateSet('Exact', 'Contains')][string]$Match = 'Exact',
    [string]$DeviceId = '',
    [ValidateRange(1, 60)][int]$TimeoutSec = 15,
    [ValidateRange(100, 5000)][int]$PollMs = 500,
    [switch]$IncludeAll
)

$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'adb-ui-common.ps1')

try {
    if ($Action -in @('Find', 'Wait') -and -not $Value) { throw 'Find and Wait require -Value.' }
    $adb = Resolve-AdbPath
    $serial = Resolve-ReadyDevice -AdbPath $adb -DeviceId $DeviceId
    $selector = [pscustomobject]@{ type = $SelectorType.ToLowerInvariant(); value = $Value; match = $Match.ToLowerInvariant() }
    if ($Action -eq 'Wait') {
        $waitResult = Wait-ForUiNode -AdbPath $adb -Serial $serial -Selector $selector -TimeoutSec $TimeoutSec -PollMs $PollMs
        $result = [ordered]@{ ok = $waitResult.found; action = 'wait'; device = $serial; selector = $selector; elapsedMs = $waitResult.elapsedMs; matches = $waitResult.matches; snapshotAt = $waitResult.snapshot.capturedAt }
    } else {
        $snapshot = Get-UiSnapshot -AdbPath $adb -Serial $serial -IncludeAll:$IncludeAll
        if ($Action -eq 'Find') {
            $matches = @(Find-UiNodes -Snapshot $snapshot -Selector $selector)
            $result = [ordered]@{ ok = ($matches.Count -gt 0); action = 'find'; device = $serial; selector = $selector; count = $matches.Count; matches = $matches; snapshotAt = $snapshot.capturedAt }
        } else {
            $result = [ordered]@{ ok = $true; action = 'snapshot'; device = $serial; nodeCount = $snapshot.nodeCount; nodes = $snapshot.nodes; note = $snapshot.note; snapshotAt = $snapshot.capturedAt }
        }
    }
    $result | ConvertTo-Json -Depth 10
    if (-not $result.ok) { exit 1 }
} catch {
    [ordered]@{ ok = $false; action = $Action.ToLowerInvariant(); device = $DeviceId; error = $_.Exception.Message } | ConvertTo-Json -Depth 6
    exit 2
}
