# Orchestrator Runbook — Exact Steps + Gates

One app folder `<AppFolder>` per run. Folder name must match `.b4a` file name.

## Prereqs
- B4A at `C:\Program Files\Anywhere Software\B4A\`
- `adb` resolvable (same candidates as `install.ps1`)
- Device/emulator connected for gates 5-7 (otherwise fallback: manual PNG drop, gates 6-7 still require PNG)

## Runbook

### Gate 0 — Contract
```powershell
$app = "C:\b4a\workspace\MyApp"
# v2 app contract first (G0), then per-screen contracts
pwsh -File skills/b4x-verify/references/build-contract-index.ps1 -AppFolder $app
# DECISION-001: contract.index.json is generated, never hand-maintained.
# FAIL (unparseable front matter / malformed contract) -> fix contract files, re-run.
pwsh -File skills/b4x-verify/references/verify-contract.ps1 -AppFolder $app
# G0 FAIL (index missing/stale; schema §6: sections, IDs, OPEN, critical REQ→TEST, parentage, provenance) → fix contracts, re-run
pwsh -File skills/b4x-verify/references/build-manifest.ps1 -AppFolder $app -Gate G0 -GateResult PASS -Scope whole-app -EvidencePath contract.index.json -EvidenceType contract-index
# manifest write-back closes G0 and snapshots evidence (traceability §5-6)
```

> **PowerShell note:** `pwsh` = PowerShell 7+. On hosts with only Windows
> PowerShell 5.1, substitute `powershell -NoProfile -ExecutionPolicy Bypass`
> (all gate scripts run unchanged on both).

```powershell
# per screen (e.g. login, dashboard, stock_take)
Copy-Item skills/b4x-orchestrator/references/screen-contract.template.md $app/contract/login.md
# fill all acceptance checkboxes, component table, architecture id
if (-not (Test-Path $app/contract/login.md)) { Write-Host "FAIL: missing contract"; exit 1 }
```

### Gate 1 — Bootstrap (greenfield only)
```powershell
# follow b4x-project-bootstrap/references/bootstrap-workflow.md steps 1-8
# quick wiring check before generation:
pwsh -File skills/b4x-verify/references/verify-conformance.ps1 -AppFolder $app
# expect FAIL on missing pages → create pages next
```

### Gates 2-4 — Generate → Pre-scan → Verify
```powershell
# generate pages via b4xdaisyuikit (agent does, citing RULE-* IDs)
# then:
pwsh -File skills/b4x-verify/references/pre-scan.ps1 -AppFolder $app
# FAIL (HTML/Flex) → fix .bas, re-run

pwsh -File skills/b4x-verify/references/verify-conformance.ps1 -AppFolder $app
# FAIL (invented API / wiring / AutoFit) → fix, re-run until PASS
# WARNs are advisory; do not block but review
```

### Gate 5 — Build + Build-Watch
```powershell
Set-Location $app
./install.ps1
# auto-runs build-watch.ps1 → writes ux-review/BUILD-WATCH-<YYYYMMDD>.md
# check:
Get-Content $app/ux-review/BUILD-WATCH-*.md
# if Errors section has entries → exit 1 (crash/ClassNotFound/ResourceNotFound)
```

### Gate 6 — Capture
```powershell
pwsh -File skills/b4x-verify/references/capture-screens.ps1 -AppFolder $app -Label login
pwsh -File skills/b4x-verify/references/capture-screens.ps1 -AppFolder $app -Label dashboard
# ... one per screen in contract
# fallback: if "no device" message, manually drop PNGs into $app/ux-review/screens/
if (-not (Test-Path $app/ux-review/screens/*.png)) { Write-Host "FAIL: no screenshots"; exit 1 }
```

### Gate 7 — Visual Review
- Run `skills/b4x-verify/references/ux-review.md` `full` mode over every PNG + the latest `BUILD-WATCH-*.md`.
- Output `ux-review/UX-REVIEW-<YYYYMMDD>.md`.
- Ship blocker: any `Severity: 4/5` or `Errors:` in BUILD-WATCH.
- Cite `Verified at build` for touch-target / TalkBack / startup / jank items that BUILD-WATCH evidences.

### Loop — Remediation (cap 3 per `(gate, scope)`)
```
while (severity≥4 -or BUILD-WATCH Errors) -and (loop < 3) {
  draft Fix Ticket per ux-review.md:326 (file, sub, approx line, manifest property, 3-8 line snippet)
  user unlocks flagged .bas (lock-bas-synchfree.ps1), applies, re-locks
  re-run: verify-conformance → install → build-watch → capture → ux-review
  record in .agent/STATE.md remediation-loop-count: {<gate>: {<scope-id>: <n>}}; append new GATE-INSTANCE (never overwrite); reset to 0 on pass
  loop++
}
# 4th failure of same (gate, scope): halt, escalate per Constitution Art X — no 4th attempt.
if (severity≥4) { "Escalate to human, do not ship"; exit 1 }
```

### Gate 8 — Regression (G7) + Release (G8)
```powershell
# impact analysis + targeted tests + regression report (b4x-regression skill writes .agent/REGRESSION.md)
Test-Path $app/.agent/REGRESSION.md
```

### Release Check
```powershell
# all must exist + last UX-REVIEW Release Readiness = Ready or Ready with Minor Fixes
Test-Path $app/contract/*.md
Test-Path $app/ux-review/BUILD-WATCH-*.md
Test-Path $app/ux-review/screens/*.png
Test-Path $app/ux-review/UX-REVIEW-*.md
Select-String "Release Readiness: Ready" $app/ux-review/UX-REVIEW-*.md
Select-String "RESULT: PASS" (verify-conformance log)
# check BUILD-WATCH Errors: "- (none)"
```

## Strict Mode
Add `-Strict` to `verify-conformance.ps1` future flag to promote Hungarian/Clear/dip WARN→FAIL (Phase 2). Orchestrator default is advisory for those; strict is opt-in per team.

## Failure Table (orchestrator enforces)
| Bypass attempt | Gate that blocks | Exit |
|---|---|---|
| Skip contract | Gate 0 | 1 |
| Skip pre-scan | Gate 3 hard fail on next verify | 1 |
| Invented API | Gate 4 FAIL | 1 |
| Build passed but crash | Gate 5 BUILD-WATCH Errors | 1 |
| Screenshot proves 48dp | Gate 7 — must cite Verified at build, not screenshot | review fails |
| Mark resolved without re-test | Loop re-runs gates → still FAIL | 1 |
