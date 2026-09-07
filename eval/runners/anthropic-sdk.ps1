# Reference runner: Anthropic Python SDK via subprocess
# Drop this into your config to wire Layer 3+4 to a real LLM:
#
#   layers:
#     component_synthesis:
#       runner:
#         type: custom
#         script: runners/anthropic-sdk.ps1
#         anthropic_model: claude-sonnet-4-5
#
# Requires:
#   - $env:ANTHROPIC_API_KEY set
#   - `anthropic` Python package: pip install anthropic

function Invoke-CustomRunner {
    param(
        [string]$Prompt,
        [string]$SkillContext,
        [hashtable]$Config
    )
    $model = if ($Config.anthropic_model) { $Config.anthropic_model } else { 'claude-sonnet-4-5' }
    if (-not $env:ANTHROPIC_API_KEY) {
        throw "ANTHROPIC_API_KEY not set"
    }

    $payload = @{
        model      = $model
        max_tokens = 4096
        system     = $SkillContext
        messages   = @(@{ role = 'user'; content = $Prompt })
    } | ConvertTo-Json -Depth 10

    $resp = Invoke-RestMethod -Uri 'https://api.anthropic.com/v1/messages' `
                              -Method POST `
                              -Headers @{
                                  'x-api-key'         = $env:ANTHROPIC_API_KEY
                                  'anthropic-version' = '2023-06-01'
                                  'content-type'      = 'application/json'
                              } `
                              -Body $payload
    return ($resp.content | Where-Object { $_.type -eq 'text' } | ForEach-Object { $_.text }) -join "`n"
}