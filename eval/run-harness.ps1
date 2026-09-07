# Thin wrapper - calls harness.ps1 with all default layers
[CmdletBinding()]
param(
    [int[]]$Layers = @(1, 2, 5),
    [switch]$All,
    [string]$Config = "config.yaml"
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
& (Join-Path $ScriptDir 'harness.ps1') @PSBoundParameters