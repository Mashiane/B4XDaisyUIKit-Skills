# lib/Manifest.ps1
# Reads the skill suite's plugin.json, lists component / chapter / reference files,
# and (optionally) scrapes the B4XDaisyUIKit lib for class + method names.

function Get-PluginManifest {
    param([string]$SkillRoot)
    $p = Join-Path $SkillRoot 'plugin.json'
    if (-not (Test-Path $p)) { return $null }
    return (Get-Content $p -Raw | ConvertFrom-Json)
}

function Get-ComponentFiles {
    param([string]$SkillRoot)
    $d = Join-Path $SkillRoot 'skills/b4xdaisyuikit/components'
    if (-not (Test-Path $d)) { return @() }
    return Get-ChildItem -Path $d -Filter '*.md' | Sort-Object Name
}

function Get-ChapterFiles {
    param([string]$SkillRoot)
    $d = Join-Path $SkillRoot 'skills/b4xdaisyuikit/chapters'
    if (-not (Test-Path $d)) { return @() }
    return Get-ChildItem -Path $d -Filter '*.md' | Sort-Object Name
}

function Get-ReferenceFiles {
    param([string]$SkillRoot)
    $d = Join-Path $SkillRoot 'skills/b4xdaisyuikit/references'
    if (-not (Test-Path $d)) { return @() }
    return Get-ChildItem -Path $d -Filter '*.md' | Sort-Object Name
}

function Get-SkillPackages {
    param([string]$SkillRoot)
    $d = Join-Path $SkillRoot 'skills'
    if (-not (Test-Path $d)) { return @() }
    return Get-ChildItem -Path $d -Directory | Sort-Object Name
}

function Get-ComponentClassName {
    # Each component file starts with "# <name> (`B4XDaisy<Name>`)"
    param([string]$Path)
    $firstLines = Get-Content $Path -TotalCount 5
    foreach ($l in $firstLines) {
        if ($l -match '`B4XDaisy([A-Za-z0-9]+)`') {
            return "B4XDaisy$($Matches[1])"
        }
    }
    return $null
}

function Get-LibClassNames {
    # Scrapes the B4XDaisyUIKit lib source folder for "Sub ClassGlobals ... B4XDaisy<X>"
    # and "Public Sub <Name>" declarations. Returns object array of
    # @{ Class = "B4XDaisyButton"; Methods = @("Initialize","AddToParent",...) }.
    param([string]$LibRoot)
    if (-not $LibRoot -or -not (Test-Path $LibRoot)) { return @() }
    $out = @()
    $basFiles = Get-ChildItem -Path $LibRoot -Filter 'B4XDaisy*.bas' -Recurse -ErrorAction SilentlyContinue
    foreach ($f in $basFiles) {
        $className = $f.BaseName
        # crude: collect Public Sub / Public Sub <Name>( patterns
        $methods = @()
        Get-Content $f.FullName | ForEach-Object {
            if ($_ -match '^\s*Public\s+Sub\s+([A-Za-z_][A-Za-z0-9_]*)') {
                $methods += $Matches[1]
            } elseif ($_ -match '^\s*Public\s+Sub\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(') {
                $methods += $Matches[1]
            }
        }
        $methods = $methods | Sort-Object -Unique
        $out += [pscustomobject]@{
            Class   = $className
            Methods = $methods
            Source  = $f.FullName
        }
    }
    return $out
}