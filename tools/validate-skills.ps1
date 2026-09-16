<# Validates B4XDaisyUIKit-Skills repo health: registry schema, deps/cycles, reference targets, skill lint.
Usage: pwsh -File tools/validate-skills.ps1
Exit 1 on errors; WARNs advisory. #>
[CmdletBinding()] param([string]$RepoRoot = '')
if (-not $RepoRoot) { $RepoRoot = Split-Path -Parent $PSScriptRoot }
if (-not $RepoRoot) { $RepoRoot = (Get-Location).Path }
$RepoRoot = (Resolve-Path $RepoRoot).Path.TrimEnd('\', '/')
$ErrorActionPreference = 'Stop'
$errors = New-Object Collections.Generic.List[string]
$warns  = New-Object Collections.Generic.List[string]
function Fail([string]$m) { $errors.Add($m) }
function Warn([string]$m) { $warns.Add($m) }

$regPath = Join-Path $RepoRoot 'skills-registry.json'
if (-not (Test-Path -LiteralPath $regPath)) { Fail('missing skills-registry.json'); }
$reg = $null
try { $reg = Get-Content -LiteralPath $regPath -Raw | ConvertFrom-Json } catch { Fail("registry JSON parse: $_") }
$validCats = @('domain','orchestration','planning','implementation','verification','scaffolding','quality','tooling')
$validStatus = @('draft','experimental','verified','stable','deprecated','retired')
$validRisk = @('safe','code-generation','file-mutation','shell','network','destructive')
$ids = @{}
if ($reg -and $reg.skills) {
  foreach ($s in $reg.skills) {
    if (-not $s.id -or $s.id -cnotmatch '^[a-z0-9][a-z0-9-]*$') { Fail("bad id: $($s.id)"); continue }
    if ($ids.ContainsKey($s.id)) { Fail("duplicate id: $($s.id)") } else { $ids[$s.id] = $s }
    if (-not $s.entry) { Fail("$($s.id): missing entry") }
    elseif (-not (Test-Path -LiteralPath (Join-Path $RepoRoot ($s.entry -replace '/','\')))) { Fail("$($s.id): entry not found: $($s.entry)") }
    if ($s.category -notin $validCats) { Fail("$($s.id): unknown category $($s.category)") }
    if ($s.status -notin $validStatus) { Fail("$($s.id): unknown status $($s.status)") }
    if ($s.risk -notin $validRisk) { Fail("$($s.id): unknown risk $($s.risk)") }
    if (-not $s.version) { Fail("$($s.id): missing version") }
    if ($null -eq $s.authority -or $s.authority -lt 0 -or $s.authority -gt 6) { Fail("$($s.id): authority must be 0-6") }
    if (-not $s.keywords -or @($s.keywords).Count -eq 0) { Warn("$($s.id): no keywords") }
    if (-not $s.description) { Fail("$($s.id): missing description") }
  }
  foreach ($s in $reg.skills) {
    foreach ($d in @($s.depends)) { if (-not $ids.ContainsKey($d)) { Fail("$($s.id): unresolved dep $d") }; if ($d -eq $s.id) { Fail("$($s.id): self-dep") } }
    foreach ($d in @($s.recommends)) { if (-not $ids.ContainsKey($d)) { Warn("$($s.id): unresolved recommend $d") } }
  }
  # cycle detection (DFS over depends)
  $state = @{}
  function Visit($id, $stack) {
    $state[$id] = 1
    foreach ($d in @($ids[$id].depends)) {
      if ($state[$d] -eq 1) { Fail("dependency cycle: $($stack + @($d) -join ' -> ')"); return }
      if (-not $state.ContainsKey($d)) { Visit $d ($stack + @($d)) }
    }
    $state[$id] = 2
  }
  foreach ($id in $ids.Keys) { if (-not $state.ContainsKey($id)) { Visit $id @($id) } }
}

# reference validation: every relative .md/.ps1 link target must exist (skills/ scope)
$mdFiles = Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'skills') -Recurse -Filter '*.md' -File
foreach ($f in $mdFiles) {
  $text = Get-Content -LiteralPath $f.FullName -Raw
  foreach ($m in [regex]::Matches($text, '\]\(([^)#:]+\.(?:md|ps1|json|bas|b4a))[^)]*\)')) {
    $rel = $m.Groups[1].Value -replace '/','\'
    if ([IO.Path]::IsPathRooted($rel)) { continue }
    $target = Join-Path $f.DirectoryName $rel
    if (-not (Test-Path -LiteralPath $target)) { Fail("broken ref: $($f.FullName.Replace($RepoRoot,'')) -> $($m.Groups[1].Value)") }
  }
}

# skill lint & registration check
$registeredEntries = @{}
if ($reg -and $reg.skills) {
    foreach ($s in $reg.skills) { $registeredEntries[($s.entry -replace '\\','/').ToLower()] = $s.id }
}

foreach ($f in (Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'skills') -Recurse -Filter 'SKILL.md' -File)) {
  $rel = $f.FullName.Substring($RepoRoot.Length).TrimStart('\','/').Replace('\','/').ToLower()
  if (-not $registeredEntries.ContainsKey($rel)) { Fail("unregistered skill on disk: $rel not in skills-registry.json") }
  $lines = (Get-Content -LiteralPath $f.FullName).Count
  if ($lines -gt 300) { Warn("oversize SKILL.md ($lines lines): $($f.FullName.Replace($RepoRoot,''))") }
  $head = (Get-Content -LiteralPath $f.FullName -TotalCount 12) -join "`n"
  if ($head -notmatch 'name:' -or $head -notmatch 'description:') { Fail("missing frontmatter name/description: $($f.FullName)") }
}
# truth-block duplication note (full 7-rule block only; tailored 1-line variants exempt)
$truthHits = 0
foreach ($sf in ($mdFiles | Where-Object { $_.Name -eq 'SKILL.md' })) {
  if (Select-String -LiteralPath $sf.FullName -Pattern 'LOGIC GAPS' -SimpleMatch -Quiet) { $truthHits++ }
}
if ($truthHits -gt 1) { Warn("truth block duplicated in $truthHits SKILL.md files; extract to shared ref (AUDIT Sec.9)") }
# oversize references
foreach ($f in (Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'skills') -Recurse -File | Where-Object { $_.Length -gt 400KB })) { Warn("oversize file ($([math]::Round($f.Length/1KB)) KB): $($f.FullName.Replace($RepoRoot,''))") }
# supply-chain scan (advisory WARN only; first-party repo)
$scanPatterns = @('invoke (the )?skills? before any response','even a 1% chance','you must invoke the skill')
foreach ($f in $mdFiles) {
  $t = Get-Content -LiteralPath $f.FullName -Raw
  foreach ($p in $scanPatterns) { if ($t -match "(?i)$p") { Warn("scan pattern '$p' in $($f.FullName.Replace($RepoRoot,''))") } }
}

Write-Host "validate-skills: $($errors.Count) error(s), $($warns.Count) warning(s)"
foreach ($w in $warns) { Write-Host "WARN: $w" }
foreach ($e in $errors) { Write-Host "ERROR: $e" }
if ($errors.Count -gt 0) { exit 1 } else { exit 0 }
