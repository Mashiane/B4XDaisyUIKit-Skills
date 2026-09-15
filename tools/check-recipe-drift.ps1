<#
.SYNOPSIS
    Recipe-vs-manifest drift check: prose recipes must not name components outside the generated API truth.
.DESCRIPTION
    Extracts B4XDaisy* tokens from hand-maintained prose (chapters/, references/*.md,
    SKILL.md files; generated components/*.md and *.json excluded) and verifies each
    against the generated truth (component-api/events/properties/provenance JSONs).
    Unknown token = FAIL (potential invented API in a recipe). Negative mentions
    ("ships no B4XDaisyX") assert absence and are skipped. Manifest classes never
    referenced = informational only.
    Exit 1 on unknown tokens, 0 otherwise.
#>
param()
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$skill = Join-Path $root 'skills/b4xdaisyuikit'
$apiPath = Join-Path $skill 'references/component-api.json'
$known = @{}
foreach ($jf in @('component-api.json','component-events.json','component-properties.json','component-provenance.json')) {
  $jt = Get-Content -LiteralPath (Join-Path $skill "references/$jf") -Raw -Encoding UTF8
  foreach ($m in ([regex]'B4XDaisy[A-Za-z0-9]+').Matches($jt)) { $known[$m.Value] = $true }
}
# Allowlist (earned, with evidence):
# - B4XDaisyUIKitDemo: demo app .b4a file name cited as template source in app-scaffolds.md:19, not API.
$allow = @('B4XDaisyUIKit','B4XDaisyUIKitDemo','B4XDaisyFlexItem','B4XDaisyFlexLayout','B4XDaisyFlexPanel','B4XDaisyGrid')
$files = @()
$files += Get-ChildItem -LiteralPath (Join-Path $skill 'chapters') -Filter '*.md' -File
$files += Get-ChildItem -LiteralPath (Join-Path $skill 'references') -Filter '*.md' -File | Where-Object { $_.Name -notin @('component-manifest.md','api-cheat-sheet.md') }
$files += Get-ChildItem -LiteralPath (Join-Path $root 'skills') -Recurse -Filter 'SKILL.md' -File
$unknown = @{}; $seen = @{}
foreach ($f in $files) {
  $lines = Get-Content -LiteralPath $f.FullName -Encoding UTF8
  foreach ($line in $lines) {
    foreach ($m in ([regex]'B4XDaisy[A-Za-z0-9]+').Matches($line)) {
      $tok = $m.Value; $seen[$tok] = $true
      # Negative mention asserts absence — not a usage claim:
      # "no B4XDaisyX", "never invent a B4XDaisyX", "B4XDaisyX does not exist".
      if ($line -match "(?i)\bno\s+$tok" -or ($line -match "(?i)never invent" -and $line -match [regex]::Escape($tok)) -or ($line -match [regex]::Escape($tok) + "(?i)\s+does not exist")) { continue }
      if (-not $known.ContainsKey($tok) -and $allow -notcontains $tok) {
        $key = "$($f.FullName.Replace($root,'')) :: $tok"
        $unknown[$key] = $true
      }
    }
  }
}
$unref = @($known.Keys | Where-Object { -not $seen.ContainsKey($_) })
Write-Host "drift-check: $($seen.Count) component tokens seen, $($unref.Count) manifest classes unreferenced (info), $($unknown.Count) unknown token(s)"
foreach ($u in ($unknown.Keys | Sort-Object)) { Write-Host "UNKNOWN: $u" }
if ($unref.Count -gt 0) { Write-Host "UNREFERENCED (info): $($unref -join ', ')" }
if ($unknown.Count -gt 0) { exit 1 } else { exit 0 }
