<#
.SYNOPSIS
    Discovery consistency: intent-to-skill table <-> registry <-> golden tasks.
.DESCRIPTION
    1. Every Selected ID in intent-to-skill.md resolves in skills-registry.json
       (external/banned patterns in Rejected need only a reason).
    2. Every golden task's expected set equals one table row's selected set
       ("X + all depends" expands via registry depends[]).
    3. Every Task-keywords term is reachable: substring-match against a
       selected skill's registry keywords (either direction, case-insensitive).
    Exit 1 on any failure.
#>
param()
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$reg = Get-Content -LiteralPath (Join-Path $root 'skills-registry.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$byId = @{}; foreach ($s in $reg.skills) { $byId[$s.id] = $s }
$errors = @(); $warns = @()

$tablePath = Join-Path $root 'skills/b4xdaisyuikit/references/intent-to-skill.md'
$rows = @()
foreach ($line in (Get-Content -LiteralPath $tablePath -Encoding UTF8)) {
  if ($line -match '^\|(.+)\|$') {
    $cells = ($line.Trim('|') -split '\|').ForEach({ $_.Trim() })
    if ($cells[0] -eq 'Task keywords' -or $cells[0] -match '^-+$') { continue }
    if ($cells.Count -ge 4) { $rows += [pscustomobject]@{ Terms = $cells[0]; Selected = $cells[1]; Rejected = $cells[3] } }
  }
}
function Expand-Selected([string]$sel) {
  $clean = $sel -replace '\([^)]*\)',''
  $ids = @()
  foreach ($part in ($clean -split ',')) {
    $p = $part.Trim()
    if ($p -match '^(\S+)\s*\+\s*all depends$') {
      $base = $Matches[1]; $ids += $base
      if ($byId.ContainsKey($base)) { $ids += $byId[$base].depends }
    } elseif ($p -match '^(\S+)$') { $ids += $Matches[1] }
  }
  return $ids
}
$rowSets = @()
foreach ($r in $rows) {
  $ids = Expand-Selected $r.Selected
  foreach ($id in $ids) { if (-not $byId.ContainsKey($id)) { $errors += "intent table selects unknown id: $id" } }
  $rowSets += [pscustomobject]@{ Terms = $r.Terms; Ids = @($ids | Sort-Object -Unique) }
  foreach ($term in ($r.Terms -split ',')) {
    $t = $term.Trim().ToLower()
    $hit = $false
    foreach ($id in $ids) {
      if (-not $byId.ContainsKey($id)) { continue }
      foreach ($kw in $byId[$id].keywords) {
        $k = $kw.ToLower()
        if ($k.Contains($t) -or $t.Contains($k)) { $hit = $true; break }
      }
      if ($hit) { break }
    }
    if (-not $hit) { $errors += "unreachable term '$($term.Trim())' in row [$($r.Terms)]" }
  }
  if ($r.Rejected -notmatch '\S+\s+\(') { $warns += "rejected entry without reason: $($r.Rejected)" }
}
$golden = Get-ChildItem -LiteralPath (Join-Path $root 'eval/golden') -Filter '*.md' -File | Where-Object { $_.Name -notlike 'probe-*' }
foreach ($g in $golden) {
  $text = Get-Content -LiteralPath $g.FullName -Raw -Encoding UTF8
  if ($text -notmatch 'Expected selected IDs \(order-insensitive\): (.+)') { $errors += "$($g.Name): expected-IDs line missing"; continue }
  $exp = @(Expand-Selected $Matches[1] | Sort-Object -Unique)
  foreach ($id in $exp) { if (-not $byId.ContainsKey($id)) { $errors += "$($g.Name): unknown expected id $id" } }
  $matched = $false
  foreach ($rs in $rowSets) { if ((Compare-Object $exp $rs.Ids).Count -eq 0) { $matched = $true; break } }
  if (-not $matched) { $errors += "$($g.Name): expected set [$($exp -join ', ')] matches no intent-table row" }
}
foreach ($p in (Get-ChildItem -LiteralPath (Join-Path $root 'eval/golden') -Filter 'probe-*.md' -File)) {
  $t = Get-Content -LiteralPath $p.FullName -Raw -Encoding UTF8
  if ($t -notmatch 'not in manifest') { $errors += "$($p.Name): probe must require 'not in manifest' refusal" }
}
Write-Host "discovery-check: $($rows.Count) table rows, $($golden.Count) golden tasks, $($errors.Count) error(s), $($warns.Count) warning(s)"
foreach ($w in $warns) { Write-Host "WARN: $w" }
foreach ($e in $errors) { Write-Host "ERROR: $e" }
if ($errors.Count -gt 0) { exit 1 } else { exit 0 }
