<#
.SYNOPSIS
    Synchronizes skills-registry.json directly from SKILL.md frontmatters, file counts, and plugin.json.
.DESCRIPTION
    Ensures skills-registry.json is never stale by:
    1. Scanning all skills/*/SKILL.md to ensure 100% registration (no orphans).
    2. Extracting name, triggers (keywords), and category from frontmatter.
    3. Dynamically computing exact counts for b4xdaisyuikit (components, chapters, references).
    4. Syncing the canonical package version across all skill entries.
    5. Preserving architectural governance fields (authority, depends, recommends, risk, status, platforms).
.EXAMPLE
    pwsh -File tools/sync-skills-registry.ps1
#>
[CmdletBinding()]
param(
    [string]$RepoRoot = '',
    [string]$Version = ''
)

$ErrorActionPreference = 'Stop'
if (-not $RepoRoot) { $RepoRoot = Split-Path -Parent $PSScriptRoot }
if (-not $RepoRoot) { $RepoRoot = (Get-Location).Path }

$regPath = Join-Path $RepoRoot 'skills-registry.json'
$pluginPath = Join-Path $RepoRoot 'plugin.json'
$skillsDir = Join-Path $RepoRoot 'skills'

if (-not (Test-Path $regPath)) { throw "skills-registry.json not found at $regPath" }
if (-not (Test-Path $skillsDir)) { throw "skills directory not found at $skillsDir" }

# 1. Determine Target Version
if ([string]::IsNullOrWhiteSpace($Version)) {
    if (Test-Path $pluginPath) {
        $pObj = Get-Content -LiteralPath $pluginPath -Raw -Encoding UTF8 | ConvertFrom-Json
        $Version = $pObj.version
    } else {
        $Version = "1.0.0"
    }
}
$Version = $Version.TrimStart('v')

# 2. Count Physical Assets
$compCount = (Get-ChildItem -Path (Join-Path $skillsDir 'b4xdaisyuikit\components\*.md') -File).Count
$chapCount = (Get-ChildItem -Path (Join-Path $skillsDir 'b4xdaisyuikit\chapters\*.md') -File).Count
$refCount  = (Get-ChildItem -Path (Join-Path $skillsDir 'b4xdaisyuikit\references\*.md') -File).Count

Write-Host "==> Physical Asset Inventory:" -ForegroundColor Cyan
Write-Host "    Version:     $Version" -ForegroundColor Gray
Write-Host "    Components:  $compCount" -ForegroundColor Gray
Write-Host "    Cookbooks:   $chapCount" -ForegroundColor Gray
Write-Host "    References:  $refCount" -ForegroundColor Gray

# 3. Read Existing Registry to Preserve Governance Metadata
$existingReg = Get-Content -LiteralPath $regPath -Raw -Encoding UTF8 | ConvertFrom-Json
$registryMap = @{}
if ($existingReg -and $existingReg.skills) {
    foreach ($s in $existingReg.skills) {
        $registryMap[$s.id] = $s
    }
}

# 4. Helper to Parse SKILL.md Frontmatter
function Get-SkillFrontmatter {
    param([string]$FilePath)
    $lines = Get-Content -LiteralPath $FilePath -Encoding UTF8
    $inFm = $false
    $name = ''
    $description = ''
    $triggers = New-Object Collections.Generic.List[string]
    $category = ''

    $maxLines = [Math]::Min($lines.Count, 40)
    for ($i = 0; $i -lt $maxLines; $i++) {
        $line = $lines[$i]
        if ($line.Trim() -eq '---') {
            if (-not $inFm) { $inFm = $true; continue }
            else { break }
        }
        if ($inFm) {
            if ($line -match '^name:\s*(.+)$') { 
                $name = $Matches[1].Trim() 
            }
            elseif ($line -match '^description:\s*(.+)$') { 
                $description = $Matches[1].Trim() 
            }
            elseif ($line -match '^\s*category:\s*(.+)$') { 
                $category = $Matches[1].Trim() 
            }
            elseif ($line -match '^\s*triggers:\s*(.+)$') {
                $raw = $Matches[1].Trim()
                foreach ($t in ($raw -split ',')) {
                    $item = $t.Trim()
                    if ($item -ne '' -and -not $triggers.Contains($item)) {
                        $triggers.Add($item)
                    }
                }
            }
        }
    }
    return [PSCustomObject]@{
        Name        = $name
        Description = $description
        Category    = $category
        Triggers    = $triggers.ToArray()
    }
}

function To-PreservedArray($inputVal) {
    $list = New-Object Collections.Generic.List[string]
    if ($null -ne $inputVal) {
        if ($inputVal -is [System.Collections.IDictionary]) {
            # empty hashtable or map from bad serialization
        } else {
            foreach ($item in @($inputVal)) {
                if ($null -ne $item -and [string]$item -ne '') {
                    $s = [string]$item
                    if (-not $list.Contains($s)) { $list.Add($s) }
                }
            }
        }
    }
    return , [string[]]$list.ToArray()
}

# 5. Known Governance Seed Data (if clean rebuild needed)
$knownGovernance = @{
    'b4xdaisyuikit' = @{ authority = 2; category = 'domain'; depends = @(); recommends = @('b4x-verify'); risk = 'code-generation'; status = 'stable' }
    'b4x-orchestrator' = @{ authority = 4; category = 'orchestration'; depends = @('b4x-application-planner', 'b4x-feature-engineer', 'b4x-project-bootstrap', 'b4xdaisyuikit', 'b4x-verify', 'b4x-regression'); recommends = @(); risk = 'file-mutation'; status = 'stable' }
    'b4x-verify' = @{ authority = 4; category = 'verification'; depends = @('b4xdaisyuikit'); recommends = @(); risk = 'file-mutation'; status = 'stable' }
    'b4x-project-bootstrap' = @{ authority = 4; category = 'scaffolding'; depends = @(); recommends = @('b4xdaisyuikit', 'b4x-verify'); risk = 'file-mutation'; status = 'stable' }
    'b4x-application-planner' = @{ authority = 4; category = 'planning'; depends = @(); recommends = @(); risk = 'safe'; status = 'stable' }
    'b4x-feature-engineer' = @{ authority = 4; category = 'implementation'; depends = @('b4x-application-planner', 'b4xdaisyuikit'); recommends = @('b4x-verify'); risk = 'code-generation'; status = 'stable' }
    'b4x-regression' = @{ authority = 4; category = 'quality'; depends = @('b4x-verify'); recommends = @(); risk = 'safe'; status = 'stable' }
    'sd5-book-to-skill' = @{ authority = 3; category = 'tooling'; depends = @(); recommends = @(); risk = 'shell'; status = 'stable' }
}

# 6. Scan All Skills on Disk and Build Updated Skill List
$skillFiles = Get-ChildItem -Path $skillsDir -Recurse -Filter 'SKILL.md' -File
$updatedSkills = New-Object Collections.Generic.List[Object]

foreach ($sf in $skillFiles) {
    $skillId = $sf.Directory.Name
    $fm = Get-SkillFrontmatter -FilePath $sf.FullName
    
    $existing = $null
    if ($registryMap.ContainsKey($skillId)) {
        $existing = $registryMap[$skillId]
    }
    $gov = $null
    if ($knownGovernance.ContainsKey($skillId)) {
        $gov = $knownGovernance[$skillId]
    }

    $entryPath = "skills/$skillId/SKILL.md"

    # Merge keywords
    $kwList = New-Object Collections.Generic.List[string]
    if ($existing -and $existing.keywords) {
        foreach ($kw in (To-PreservedArray $existing.keywords)) {
            if (-not $kwList.Contains($kw)) { $kwList.Add($kw) }
        }
    }
    foreach ($trig in $fm.Triggers) {
        if (-not $kwList.Contains($trig)) { $kwList.Add($trig) }
    }

    # Description
    $description = $fm.Description
    if ($skillId -eq 'b4xdaisyuikit') {
        $description = "Native Android UI/UX composition from B4XDaisyUIKit ($compCount components, $chapCount chapters, $refCount references)."
    } elseif ([string]::IsNullOrWhiteSpace($description) -and $existing) {
        $description = $existing.description
    }

    # Governance fields resolution
    $authority = 4
    if ($gov -and $null -ne $gov.authority) { $authority = $gov.authority }
    elseif ($existing -and $null -ne $existing.authority) { $authority = [int]$existing.authority }

    $category = 'domain'
    if ($gov -and $gov.category) { $category = $gov.category }
    elseif ($existing -and $existing.category) { $category = $existing.category }
    elseif ($fm.Category) { $category = $fm.Category }

    $depends = @()
    if ($gov -and $gov.depends) { $depends = $gov.depends }
    elseif ($existing -and $existing.depends) { $depends = $existing.depends }

    $recommends = @()
    if ($gov -and $gov.recommends) { $recommends = $gov.recommends }
    elseif ($existing -and $existing.recommends) { $recommends = $existing.recommends }

    $risk = 'code-generation'
    if ($gov -and $gov.risk) { $risk = $gov.risk }
    elseif ($existing -and $existing.risk) { $risk = $existing.risk }

    $status = 'stable'
    if ($gov -and $gov.status) { $status = $gov.status }
    elseif ($existing -and $existing.status) { $status = $existing.status }

    $platforms = @('b4a')
    if ($existing -and $existing.platforms) { $platforms = $existing.platforms }

    $skillObj = [ordered]@{
        authority   = $authority
        category    = $category
        depends     = To-PreservedArray $depends
        description = $description
        entry       = $entryPath
        id          = $skillId
        keywords    = To-PreservedArray $kwList.ToArray()
        name        = if ($fm.Name) { $fm.Name } elseif ($existing) { $existing.name } else { $skillId }
        platforms   = To-PreservedArray $platforms
        recommends  = To-PreservedArray $recommends
        risk        = $risk
        status      = $status
        version     = $Version
    }

    $updatedSkills.Add($skillObj)
    Write-Host "    [+] Synced skill: $skillId (v$Version, $($kwList.Count) triggers)" -ForegroundColor Gray
}

# 7. Assemble Final Registry
$finalRegistry = [ordered]@{
    "`$schema"    = "https://json-schema.org/draft/2020-12/schema"
    description = "Machine-readable skill registry for B4XDaisyUIKit-Skills. Authority scale mirrors ENGINEERING-CONSTITUTION.md Art I (0 repo rules highest, 6 generic lowest)."
    skills      = @($updatedSkills.ToArray())
}

$jsonText = ConvertTo-Json -InputObject $finalRegistry -Depth 10 -Compress
Set-Content -LiteralPath $regPath -Value $jsonText -Encoding UTF8 -NoNewline

Write-Host "==> Successfully synchronized $regPath ($($updatedSkills.Count) skills)" -ForegroundColor Green
