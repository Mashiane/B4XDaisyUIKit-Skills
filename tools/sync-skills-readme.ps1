<#
.SYNOPSIS
    Synchronizes README.md with skills-registry.json, intent-to-skill.md, and the physical skill inventory.
.DESCRIPTION
    Ensures that README.md always accurately reflects:
    1. Exact component count (skills/b4xdaisyuikit/components/*.md)
    2. Exact chapter/cookbook count (skills/b4xdaisyuikit/chapters/*.md)
    3. Exact reference count (skills/b4xdaisyuikit/references/*.md)
    4. Exact skill suite registry matrix (skills-registry.json)
    5. Deterministic intent routing table (intent-to-skill.md)
    6. Badges and version strings
.EXAMPLE
    pwsh -File tools/sync-skills-readme.ps1
#>
[CmdletBinding()]
param(
    [string]$RepoRoot = '',
    [string]$Version = ''
)

$ErrorActionPreference = 'Stop'
if (-not $RepoRoot) { $RepoRoot = Split-Path -Parent $PSScriptRoot }
if (-not $RepoRoot) { $RepoRoot = (Get-Location).Path }

$readmePath = Join-Path $RepoRoot 'README.md'
$regPath = Join-Path $RepoRoot 'skills-registry.json'
$pluginPath = Join-Path $RepoRoot 'plugin.json'
$intentPath = Join-Path $RepoRoot 'skills\b4xdaisyuikit\references\intent-to-skill.md'

if (-not (Test-Path $readmePath)) { throw "README.md not found at $readmePath" }
if (-not (Test-Path $regPath)) { throw "skills-registry.json not found at $regPath" }

# 1. Gather Metrics from File System
$components = Get-ChildItem -Path (Join-Path $RepoRoot 'skills\b4xdaisyuikit\components\*.md') -File
$chapters   = Get-ChildItem -Path (Join-Path $RepoRoot 'skills\b4xdaisyuikit\chapters\*.md') -File
$references = Get-ChildItem -Path (Join-Path $RepoRoot 'skills\b4xdaisyuikit\references\*.md') -File

$componentCount = $components.Count
$chapterCount   = $chapters.Count
$referenceCount = $references.Count

$reg = Get-Content -LiteralPath $regPath -Raw -Encoding UTF8 | ConvertFrom-Json
$skillsCount = @($reg.skills).Count

# Determine Version
if ([string]::IsNullOrWhiteSpace($Version)) {
    if (Test-Path $pluginPath) {
        $pObj = Get-Content -LiteralPath $pluginPath -Raw -Encoding UTF8 | ConvertFrom-Json
        $Version = $pObj.version
    } else {
        $Version = $reg.skills[0].version
    }
}
$Version = $Version.TrimStart('v')

Write-Host "==> Synchronizing README.md metrics:" -ForegroundColor Cyan
Write-Host "    Version:     $Version" -ForegroundColor Gray
Write-Host "    Skills:      $skillsCount modules" -ForegroundColor Gray
Write-Host "    Components:  $componentCount native components" -ForegroundColor Gray
Write-Host "    Cookbooks:   $chapterCount domain cookbooks" -ForegroundColor Gray
Write-Host "    References:  $referenceCount doctrine references" -ForegroundColor Gray

# 2. Build Skills Registry Matrix Markdown
$matrixSb = New-Object System.Text.StringBuilder
[void]$matrixSb.AppendLine('| Skill | Authority | Category | When to Use (Triggers) | Core Objective & Output |')
[void]$matrixSb.AppendLine('| :--- | :---: | :---: | :--- | :--- |')

foreach ($s in $reg.skills) {
    $authStr = "L$($s.authority)"
    $triggers = ($s.keywords[0..4] -join ', ')
    if ($s.keywords.Count -gt 5) { $triggers += '...' }
    $desc = $s.description -replace '\|', '/'
    $lineText = "| **`{0}`** | `{1}` | `{2}` | {3} | {4} |" -f $s.id, $authStr, $s.category, $triggers, $desc
    [void]$matrixSb.AppendLine($lineText)
}
$skillsMatrixMarkdown = $matrixSb.ToString().TrimEnd()

# 3. Build Intent & Task Router Table from intent-to-skill.md
$routerSb = New-Object System.Text.StringBuilder
[void]$routerSb.AppendLine('| User Intent / Task Keywords | Recommended Starting Skills | Why This Order? | Rejected / Why Not? |')
[void]$routerSb.AppendLine('| :--- | :--- | :--- | :--- |')

if (Test-Path $intentPath) {
    foreach ($line in (Get-Content -LiteralPath $intentPath -Encoding UTF8)) {
        if ($line -match '^\|(.+)\|$') {
            $cells = ($line.Trim('|') -split '\|').ForEach({ $_.Trim() })
            if ($cells[0] -eq 'Task keywords' -or $cells[0] -match '^-+$') { continue }
            if ($cells.Count -ge 4) {
                $terms = $cells[0]
                $sel   = $cells[1]
                $why   = $cells[2]
                $rej   = $cells[3]
                [void]$routerSb.AppendLine("| **$terms** | `$sel` | $why | $rej |")
            }
        }
    }
}
$routerMatrixMarkdown = $routerSb.ToString().TrimEnd()

# 4. Read README.md and Perform In-Place Replacements
$readmeContent = Get-Content -LiteralPath $readmePath -Raw -Encoding UTF8

# Update Badges
$readmeContent = $readmeContent -replace '(\[!\[GitHub Release\]\(https://img\.shields\.io/badge/Release-v)[0-9\.]+(-blue\.svg\))', "`${1}$Version`$2"
$readmeContent = $readmeContent -replace '(\[!\[Library Parity\]\(https://img\.shields\.io/badge/Components-)[0-9]+(_(?:Classes|Components)-brightgreen\.svg\))', "`${1}$($componentCount)_Components-brightgreen.svg)"
$readmeContent = $readmeContent -replace '(\[!\[Skills Suite\]\(https://img\.shields\.io/badge/Skills-)[0-9]+(_Modules-purple\.svg\))', "`${1}$($skillsCount)_Modules-purple.svg)"

# Update text references to component count & skills count if present
$readmeContent = $readmeContent -replace '\b[0-9]+ Self-Contained Component Skill Files\b', "$componentCount Self-Contained Component Skill Files"
$readmeContent = $readmeContent -replace '\bacross [0-9]+ native component classes\b', "across $componentCount native component classes"
$readmeContent = $readmeContent -replace '\b\([0-9]+ components, [0-9]+ chapters, [0-9]+ references\)\b', "($componentCount components, $chapterCount chapters, $referenceCount references)"

# Replace or inject Skills Matrix between demarcation comments
if ($readmeContent -match '<!-- AUTOGEN_SKILLS_START -->[\s\S]*?<!-- AUTOGEN_SKILLS_END -->') {
    $readmeContent = $readmeContent -replace '<!-- AUTOGEN_SKILLS_START -->[\s\S]*?<!-- AUTOGEN_SKILLS_END -->', "<!-- AUTOGEN_SKILLS_START -->`n$skillsMatrixMarkdown`n<!-- AUTOGEN_SKILLS_END -->"
}

# Replace or inject Intent Router between demarcation comments
if ($readmeContent -match '<!-- AUTOGEN_ROUTER_START -->[\s\S]*?<!-- AUTOGEN_ROUTER_END -->') {
    $readmeContent = $readmeContent -replace '<!-- AUTOGEN_ROUTER_START -->[\s\S]*?<!-- AUTOGEN_ROUTER_END -->', "<!-- AUTOGEN_ROUTER_START -->`n$routerMatrixMarkdown`n<!-- AUTOGEN_ROUTER_END -->"
}

Set-Content -LiteralPath $readmePath -Value $readmeContent -Encoding UTF8 -NoNewline
Write-Host "==> Successfully synchronized $readmePath" -ForegroundColor Green
