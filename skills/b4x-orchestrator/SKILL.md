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

One thin sequencing skill. It invokes the top-level `b4x-application-planner`, `b4x-feature-engineer`, `b4xdaisyuikit`, `b4x-project-bootstrap`, `b4x-verify`, and `b4x-regression` skills without duplicating their knowledge.

```text
USER REQUIREMENT
  ↓
APPLICATION CONTRACT (G0: build-contract-index.ps1 + verify-contract.ps1 — L5 gate)
  ↓
ARCHITECTURE + FEATURE PLAN (`b4x-application-planner`) — G1 contract gate
  ↓
FEATURE IMPLEMENTATION (`b4x-feature-engineer`) — vertical slice
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
  ↓ G6
b4x-regression (G7: impact analysis → targeted tests → report) — L5 gate
  ↓
verify-production-hardening.ps1 (G8: release-only security gate)
  ↓
REMEDIATION LOOP     — L6 (fix → re-verify → re-capture → re-review, cap 3 per (gate, scope) per GATE-STATE-MACHINE.md §3)
  ↓
RELEASE BUNDLE (PASS: contract + BUILD-WATCH + PNGs + UX-REVIEW + regression report + PASS logs — G8)
```

v2 gate mapping (normative detail in `docs/architecture/GATE-STATE-MACHINE.md` §1–§2): G0→contract index + verification, G1→architecture/navigation/data contracts, G2→feature implementation with component provenance, G3→pre-scan+verify-conformance, G4→install exit 0, G5→build-watch launch/scenarios, G6→capture+ux-review, G7→regression, G8→release bundle. Constitution: `ENGINEERING-CONSTITUTION.md`.

## When to Use
- "Build a stock-taking app / store / full app"
- "Ship this screen" / "release gate" / "first-time-right"
- Any multi-page flow that must close the loop without manual gate-jumping.

## When NOT to Use
- Single-component question (use `b4xdaisyuikit` directly)
- Greenfield scaffold only (use `b4x-project-bootstrap`)

## Procedure (hard gates, not advice)

### 0. Application Contract Gate (G0, L5)
```powershell
pwsh -File <skill>/../b4x-verify/references/build-contract-index.ps1 -AppFolder <AppFolder>
pwsh -File <skill>/../b4x-verify/references/verify-contract.ps1 -AppFolder <AppFolder>
# Contract files must use contract/application.md and contract/screens/*.md.
# A failed index or verification blocks planning and generation.
```
Missing, malformed, stale, OPEN-dependent, or unapproved → `exit 1` (do not generate).

### 1. Architecture and Feature Plan (G1)
Run `b4x-application-planner`. Confirm that requirements, navigation, domain, data, business rules, feature contracts, screen contracts, and critical acceptance tests exist. For an existing app, record impact before implementation.

### 2. Feature Implementation (G2)
Run `b4x-feature-engineer` for each feature as a vertical slice. Update `.agent/STATE.md` and trace `REQ → FEATURE → RULE → SCREEN → COMPONENT → CODE → TEST`.

### 3. Bootstrap (if new app)
Follow `b4x-project-bootstrap/references/bootstrap-workflow.md` steps 1-8 exactly. Verify `ModuleN=` + `NumberOfModules` immediately (fail fast).

### 4. Generation
Invoke `b4xdaisyuikit` Stage 2-5 per screen. Cite `RULE-*` IDs in reasoning trace. Every component must exist in `component-manifest.md:Manifest` or its `components/<name>.md`.

### 5. Pre-Scan (L4)
```powershell
pwsh -File skills/b4x-verify/references/pre-scan.ps1 -AppFolder <AppFolder>
# FAIL → fix bans (HTML, Flex/Grid) → re-run. Do not proceed to verify-conformance.
```

### 6. Verify-Conformance (L5)
```powershell
pwsh -File skills/b4x-verify/references/verify-conformance.ps1 -AppFolder <AppFolder>
# FAIL on invented API / wiring / AutoFit / BringToFront → fix → loop. WARNs are advisory.
```

### 7. Build + Build-Watch (L5/L4)
```powershell
./install.ps1  # cleans Objects, calls B4ABuilder, installs, launches, auto-runs build-watch.ps1
# build-watch writes ux-review/BUILD-WATCH-<YYYYMMDD>.md
# exit 1 if logcat has FATAL/ANR/ClassNotFound/Resources.NotFound → do not capture
```

### 8. Capture (L3 evidence)
```powershell
pwsh -File skills/b4x-verify/references/capture-screens.ps1 -AppFolder <AppFolder> -Label <ScreenId>
# fallback: user drops PNG into ux-review/screens/. With no device attached, capture is blocked — mark G6 OPEN, never PASS on manual drop alone.
```

### 9. Visual Review (L5)
Run `b4x-verify/references/ux-review.md` `full` mode over `ux-review/screens/*.png` + `BUILD-WATCH-*.md`.
- Mark `Verified at build` items from BUILD-WATCH, not `Verification Required`.
- Cap severity at 5. Ship blocker = `severity≥4`.
- Every finding carries `Rule:` + `Fix Ticket` (draft, NOT applied — `.bas` are locked).

### 10. Regression (G7)
Run `b4x-regression` after the feature and UX gates. Produce `.agent/impact-analysis.md` and `.agent/REGRESSION.md`. A failed critical journey, build, static gate, or security check blocks release.

### 11. Remediation Loop (L6, cap 3)
```
detect (ux-review severity≥4 or build-watch Errors)
  → diagnose (rule ID)
  → create fix ticket (manifest property only)
   → apply (orchestrator/human unlock flow with existing tooling → paste → re-lock per b4x-verify Procedure Phase 2 step 5)
  → rebuild → re-verify → re-capture → re-audit
```
Each loop re-runs gates 3-7. Count per `(gate, scope-id)` in `.agent/STATE.md` as `remediation-loop-count: {<gate>: {<scope-id>: <n>}}` (scope per GATE-STATE-MACHINE §2; never a global-per-gate counter). Each re-evaluation appends a new `GATE-INSTANCE` node (never overwrite); pass resets that `(gate, scope)` counter to 0. If `severity≥4` persists after 3 loops → human escalation, do not ship.

### 12. Release Bundle
```
pwsh -File skills/b4x-verify/references/verify-production-hardening.ps1 -AppFolder <AppFolder> *> <AppFolder>/production-hardening.log

<AppFolder>/contract/screens/<screen>.md
<AppFolder>/contract.index.json
<AppFolder>/ux-review/BUILD-WATCH-<date>.md
<AppFolder>/ux-review/screens/*.png
<AppFolder>/ux-review/UX-REVIEW-<date>.md
<AppFolder>/.agent/REGRESSION.md
<AppFolder>/production-hardening.log
verify-conformance.log (PASS)
```
All listed evidence must exist, the hardening gate must pass, the last audit must be `Ready` / `Ready with Minor Fixes`, with 0 `severity≥4` and 0 BUILD-WATCH Errors.

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
- `references/screen-contract.template.md` (canonical screen contract template)
- `../b4x-application-planner/SKILL.md` (requirements and contract planning)
- `../b4x-feature-engineer/SKILL.md` (vertical-slice implementation)
- `../b4x-regression/SKILL.md` (impact and release regression)
- `references/runbook.md` (step-by-step with exact pwsh lines)
- `../b4x-project-bootstrap/references/bootstrap-workflow.md` (steps 1-8)
- `../b4xdaisyuikit/references/component-manifest.md` (source of truth)
- `../b4x-verify/references/pre-scan.ps1` (L4) / `verify-conformance.ps1` (L5) / `ux-review.md` (L5) / `capture-screens.ps1` (L3)
- `../b4x-project-bootstrap/references/build-watch.template.ps1` (L4) / `install.template.ps1` (L5)

## Non-Goals
- No new component knowledge. No new design doctrine. No replacement of `b4xdaisyuikit` or `b4x-verify`.
- Keep `ponytail:` principle: deletion over addition. This skill deletes bypass paths, not adds complexity.
