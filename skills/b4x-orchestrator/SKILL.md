---
name: b4x-orchestrator
description: Thin orchestration layer for First-Time-Right delivery. Enforces contract → generate → pre-scan → verify-conformance → build → build-watch → capture → ux-review → remediation loop with hard exit codes. Use when building a complete app, releasing a screen, or needing a release-blocking gate instead of advisory checks.
metadata:
  category: technique
  triggers: orchestrate, release gate, first-time-right, ship app, build full app, end-to-end, screen contract, closed loop
---

## Truth and Accuracy — Apply in Every Response
You are committed to truth and accuracy above everything else. Never invent APIs, paper titles, or URLs. Flag uncertainty with "I am not certain" + verification step.

---

# B4X Orchestrator — First-Time-Right Thin Layer

One skill, ~150 lines of logic, zero new knowledge. It only sequences the 3 existing skills and treats their scripts as hard gates (`L5`). No duplication of `creative-director`, `page-architectures`, or `component-manifest`.

```
USER REQUIREMENT
  ↓
SCREEN CONTRACT (references/screen-contract.template.md)  — L5 gate
  ↓
b4x-project-bootstrap (if greenfield)                      — L5 gate
  ↓
b4xdaisyuikit  Stage 2-5 (generate pages)                  — L2→L4 via verify
  ↓
pre-scan.ps1         — L4 hard fail on web-tech / Flex/Grid
  ↓
verify-conformance.ps1 — L5 hard fail on invented API / wiring / AutoFit
  ↓
./install.ps1        — L5 hard fail on build
  ↓
build-watch.ps1      — L4 evidence (crash/ClassNotFound/ResourceNotFound=dFAIL, touch/jank=WARN)
  ↓
capture-screens.ps1  — L3 evidence (PNG must exist)
  ↓
ux-review.md (full)  — L5 hard fail if severity ≥4 or BUILD-WATCH Errors
  ↓
REMEDIATION LOOP     — L6 (fix → re-verify → re-capture → re-review, cap 3)
  ↓
RELEASE BUNDLE (PASS)
```

## When to Use
- "Build a stock-taking app / store / full app"
- "Ship this screen" / "release gate" / "first-time-right"
- Any multi-page flow that must close the loop without manual gate-jumping.

## When NOT to Use
- Single-component question (use `b4xdaisyuikit` directly)
- Greenfield scaffold only (use `b4x-project-bootstrap`)

## Procedure (hard gates, not advice)

### 0. Contract Gate (L5)
```powershell
# per screen, before any generation
Test-Path <AppFolder>/contract/<ScreenId>.md  # must exist, filled from template
# orchestrator does: Get-Content, check 9 Acceptance checkboxes are ticked
```
Missing or unchecked → `exit 1` (do not generate).

### 1. Bootstrap (if new app)
Follow `b4x-project-bootstrap/references/bootstrap-workflow.md` steps 1-8 exactly. Verify `ModuleN=` + `NumberOfModules` immediately (fail fast).

### 2. Generation
Invoke `b4xdaisyuikit` Stage 2-5 per screen. Cite `RULE-*` IDs in reasoning trace. Every component must exist in `component-manifest.md:Manifest` or its `components/<name>.md`.

### 3. Pre-Scan (L4)
```powershell
pwsh -File skills/b4x-verify/references/pre-scan.ps1 -AppFolder <AppFolder>
# FAIL → fix bans (HTML, Flex/Grid) → re-run. Do not proceed to verify-conformance.
```

### 4. Verify-Conformance (L5)
```powershell
pwsh -File skills/b4x-verify/references/verify-conformance.ps1 -AppFolder <AppFolder>
# FAIL on invented API / wiring / AutoFit / BringToFront → fix → loop. WARNs are advisory.
```

### 5. Build + Build-Watch (L5/L4)
```powershell
./install.ps1  # cleans Objects, calls B4ABuilder, installs, launches, auto-runs build-watch.ps1
# build-watch writes ux-review/BUILD-WATCH-<YYYYMMDD>.md
# exit 1 if logcat has FATAL/ANR/ClassNotFound/Resources.NotFound → do not capture
```

### 6. Capture (L3 evidence)
```powershell
pwsh -File skills/b4x-verify/references/capture-screens.ps1 -AppFolder <AppFolder> -Label <ScreenId>
# fallback: user drops PNG into ux-review/screens/ OR if running headless without attached ADB device, verify-conformance.ps1 evaluates static layout XML hierarchy tree.
```

### 7. Visual Review (L5)
Run `b4x-verify/references/ux-review.md` `full` mode over `ux-review/screens/*.png` + `BUILD-WATCH-*.md`.
- Mark `Verified at build` items from BUILD-WATCH, not `Verification Required`.
- Cap severity at 5. Ship blocker = `severity≥4`.
- Every finding carries `Rule:` + `Fix Ticket` (draft, NOT applied — `.bas` are locked).

### 8. Remediation Loop (L6, cap 3)
```
detect (ux-review severity≥4 or build-watch Errors)
  → diagnose (rule ID)
  → create fix ticket (manifest property only)
  → apply (unlock → paste → re-lock per lock-bas-synchfree.ps1)
  → rebuild → re-verify → re-capture → re-audit
```
Each loop re-runs gates 3-7. If `severity≥4` persists after 3 loops → human escalation, do not ship.

### 9. Release Bundle
```
<AppFolder>/contract/<ScreenId>.md
<AppFolder>/ux-review/BUILD-WATCH-<date>.md
<AppFolder>/ux-review/screens/*.png
<AppFolder>/ux-review/UX-REVIEW-<date>.md
verify-conformance.log (PASS)
```
All four must exist, last audit `Ready` / `Ready with Minor Fixes`, 0 `severity≥4`, 0 BUILD-WATCH Errors.

## Red Flags (STOP → exit 1)
| Thought | Reality |
|---|---|
| "Contract is optional" | No. `L5` gate. No contract → no generate. |
| "Pre-scan WARN is fine, skip it" | No. `WARN` before `verify` — fix bans first. |
| "Build passed, skip build-watch" | No. Screenshots cannot prove 48dp or TalkBack. |
| "Screenshot proves 48dp" | No. Only `build-watch.ps1` evidences it (`Verified at build`). |
| "I'll apply fix tickets myself" | No. Draft only. User unlocks `.bas`, agent re-verifies. |
| "One good screen proves the flow" | No. Capture every screen in contract, review flow assessment. |

## References
- `references/screen-contract.template.md` (contract gate, L5)
- `references/runbook.md` (step-by-step with exact pwsh lines)
- `../b4x-project-bootstrap/references/bootstrap-workflow.md` (steps 1-8)
- `../b4xdaisyuikit/references/component-manifest.md` (source of truth)
- `../b4x-verify/references/pre-scan.ps1` (L4) / `verify-conformance.ps1` (L5) / `ux-review.md` (L5) / `capture-screens.ps1` (L3)
- `../b4x-project-bootstrap/references/build-watch.template.ps1` (L4) / `install.template.ps1` (L5)

## Non-Goals
- No new component knowledge. No new design doctrine. No replacement of `b4xdaisyuikit` or `b4x-verify`.
- Keep `ponytail:` principle: deletion over addition. This skill deletes bypass paths, not adds complexity.
