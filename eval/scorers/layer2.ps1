# Layer 2 - Negative-knowledge guardrails
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Manifest.ps1')
. (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) '..\lib\Scoring.ps1')
# Greps every markdown file under skills/ for banned patterns. The bans are
# defined in cases/negative-knowledge/bans.md as `id :: regex :: severity :: reason`.
# Severity: hard -> fail; warn -> warn; smell -> count only.

function Invoke-Layer2 {
    param(
        [hashtable]$Config,
        [string]$SkillRoot,
        [string]$ScriptDir
    )
    $cfg = $Config.negative_knowledge
    $bansFile = $cfg.bans_file
    if (-not (Test-Path $bansFile)) {
        return (New-LayerResult -Layer "Layer 2: Negative-knowledge" -Status 'error' -Score 0 -Detail "bans file not found: $bansFile")
    }

    # Parse bans file
    $bans = @()
    Get-Content $bansFile | ForEach-Object {
        $line = $_
        if ($line -match '^\s*#' -or $line -match '^\s*$') { return }
        if ($line -match '^(?<id>\S+)\s*::\s*(?<pattern>.+?)\s*::\s*(?<sev>\S+)\s*::\s*(?<reason>.+)$') {
            $bans += [pscustomobject]@{
                Id      = $Matches['id']
                Pattern = $Matches['pattern']
                Severity = $Matches['sev']
                Reason  = $Matches['reason']
            }
        }
    }

    # Scan only recipe files (chapters/ + components/) where the bans
    # represent actual code examples, not the meta SKILL.md docs that
    # necessarily mention banned concepts to forbid them.
    $violations = @()
    $scanRoots = @(
        (Join-Path $SkillRoot 'skills/b4xdaisyuikit/chapters'),
        (Join-Path $SkillRoot 'skills/b4xdaisyuikit/components')
    )
    $files = @()
    foreach ($root in $scanRoots) {
        if (Test-Path $root) {
            $files += Get-ChildItem -Path $root -Filter '*.md' -Recurse
        }
    }
    foreach ($f in $files) {
        $txt = Get-Content $f.FullName -Raw
        foreach ($b in $bans) {
            $regex = $b.Pattern
            # Special handling: pipe chars in patterns are literal in the .md file
            $hits = [regex]::Matches($txt, $regex)
            foreach ($h in $hits) {
                $lineNo = ($txt.Substring(0, $h.Index) -split "`n").Count
                $violations += [pscustomobject]@{
                    Id       = $b.Id
                    Severity = $b.Severity
                    File     = $f.FullName.Substring($SkillRoot.Length).TrimStart('\','/')
                    Line     = $lineNo
                    Reason   = $b.Reason
                    Match    = $h.Value.Substring(0, [Math]::Min(80, $h.Value.Length))
                }
            }
        }
    }

    # Tally
    $hard = ($violations | Where-Object Severity -eq 'hard').Count
    $warn = ($violations | Where-Object Severity -eq 'warn').Count
    $smell = ($violations | Where-Object Severity -eq 'smell').Count
    $total = $hard + $warn + $smell

    # Status: any hard = fail; any warn = warn; only smell = pass
    $status = 'pass'
    if ($hard -gt 0) { $status = 'fail' }
    elseif ($warn -gt 0) { $status = 'warn' }

    $detail = "scanned $($files.Count) files, $total violations ($hard hard, $warn warn, $smell smell)"

    $checks = @()
    if ($total -eq 0) {
        $checks += [pscustomobject]@{ Status='pass'; Name='negative-knowledge'; Detail='no violations found' }
    } else {
        # Group by id for the report
        $byId = $violations | Group-Object Id
        foreach ($g in $byId) {
            $firstSev = ($g.Group | Select-Object -First 1).Severity
            $glyph = switch ($firstSev) { 'hard' {'FAIL'} 'warn' {'WARN'} default {'SMELL'} }
            $checks += [pscustomobject]@{
                Status  = switch ($firstSev) { 'hard' {'fail'} 'warn' {'warn'} default {'pass'} }
                Name    = "ban: $($g.Name) ($($g.Count) hits, $firstSev)"
                Detail  = ($g.Group | Select-Object -First 3 | ForEach-Object { "$($_.File):$($_.Line) - $($_.Match)" }) -join ' | '
            }
        }
    }

    # Score: 1.0 if no hard, 0.5 per hard, 0.1 per warn
    $raw = 1.0 - ($hard * 0.5) - ($warn * 0.1)
    $score = [math]::Max(0.0, [math]::Min(1.0, $raw))
    if ($total -eq 0) { $score = 1.0 }

    return (New-LayerResult -Layer "Layer 2: Negative-knowledge" -Status $status -Score $score -Detail $detail -Checks $checks)
}