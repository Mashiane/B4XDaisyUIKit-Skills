# lib/Runner.ps1
# Pluggable agent runner interface. The harness ships a stub; users wire their own.
#
# A runner exposes one function:
#   Invoke-AgentRunner -Prompt <string> -SkillContext <string>
#                      [-Temperature <double>] [-MaxTokens <int>]
#     -> returns a string of generated code, OR throws on failure.
#
# To plug in a real runner, define that function in a file under
# eval/runners/<your-runner>.ps1 and update the runner.type in config.yaml.
# A reference implementation is provided below (commented out) for the
# Anthropic SDK path - uncomment and install the SDK to use it.

function Invoke-AgentRunner {
    param(
        [string]$Prompt,
        [string]$SkillContext = "",
        [double]$Temperature = 0.0,
        [int]$MaxTokens = 4096
    )
    $cfg = $script:RunnerConfig
    if (-not $cfg) { $cfg = @{ type = 'stub' } }

    switch ($cfg.type) {
        'stub' {
            return "[STUB RUNNER] Would have called agent with:`n$Prompt"
        }
        'claude-cli' {
            $claude = if ($cfg.claude_cli_path) { $cfg.claude_cli_path } else { 'claude' }
            $skillBlock = if ($SkillContext) { "Skill context:`n```$SkillContext```n`n" } else { '' }
            $full = "${skillBlock}User: $Prompt"
            $tmp = [System.IO.Path]::GetTempFileName()
            try {
                Set-Content -Path $tmp -Value $full -Encoding UTF8
                $out = & $claude --print --system-prompt $SkillContext --prompt $Prompt 2>&1
                return ($out -join "`n")
            } finally {
                Remove-Item $tmp -ErrorAction SilentlyContinue
            }
        }
        'anthropic-sdk' {
            # Reference: requires the Anthropic .NET SDK or the Python SDK
            # called via subprocess. See runners/anthropic-sdk.ps1 for a
            # complete implementation.
            throw "anthropic-sdk runner not yet wired. See runners/anthropic-sdk.ps1"
        }
        'custom' {
            if ($cfg.script -and (Test-Path $cfg.script)) {
                . $cfg.script
                return (Invoke-CustomRunner -Prompt $Prompt -SkillContext $SkillContext -Config $cfg)
            }
            throw "custom runner script not found: $($cfg.script)"
        }
        default {
            throw "Unknown runner type: $($cfg.type)"
        }
    }
}

function Set-RunnerConfig {
    param($Config) $script:RunnerConfig = $Config
}

# --- Reference runner: Anthropic SDK via Python subprocess ---
# Drop this into runners/anthropic-sdk.ps1 and set runner.type: "custom",
# runner.script: "runners/anthropic-sdk.ps1" in config.yaml.
#
# Requires: pip install anthropic, ANTHROPIC_API_KEY env var
# Sample implementation:
#
#   function Invoke-CustomRunner {
#       param($Prompt, $SkillContext, $Config)
#       $model = if ($Config.anthropic_model) { $Config.anthropic_model } else { 'claude-sonnet-4-5' }
#       $payload = @{
#           model    = $model
#           max_tokens = 4096
#           system   = $SkillContext
#           messages = @(@{ role = 'user'; content = $Prompt })
#       } | ConvertTo-Json -Depth 10
#       $resp = Invoke-RestMethod -Uri 'https://api.anthropic.com/v1/messages' `
#                                -Method POST `
#                                -Headers @{
#                                    'x-api-key'         = $env:ANTHROPIC_API_KEY
#                                    'anthropic-version' = '2023-06-01'
#                                    'content-type'      = 'application/json'
#                                } `
#                                -Body $payload
#       return ($resp.content | Where-Object { $_.type -eq 'text' } | ForEach-Object { $_.text }) -join "`n"
#   }