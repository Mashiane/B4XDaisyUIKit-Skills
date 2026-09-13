# GATE / STATE MACHINE WIRING
### B4XDaisyUIKit Application Engineering System — v2

**Status:** v1.0-adopted — companion to `ENGINEERING-CONSTITUTION.md`
(Art VII, VIII, X), `docs/contracts/CONTRACT-SCHEMA.md`,
`docs/architecture/TRACEABILITY-AND-MANIFEST.md`.
**Purpose:** Make lifecycle states and gates mechanical — which skill
closes each transition, what evidence closes each gate, gate scope,
and exact remediation-loop counting.

## 1. State → Gate → Producing Skill

| Transition | Closing gate | Producing skill/tool | Evidence |
|---|---|---|---|
| `DISCOVERED → PLANNED` | — (drafting) | `b4x-application-planner` | `.agent/PLAN.md` exists |
| `PLANNED → CONTRACTED` | **G0** Requirements | planner | `contract.index.json` validates (schema §6): critical REQ ≥1 TEST, no dangling refs |
| `CONTRACTED → BOOTSTRAPPED` | **G1** Architecture | `b4x-project-bootstrap` | skeleton screen/page files match `contract/navigation.md` graph 1:1 |
| `BOOTSTRAPPED → IMPLEMENTED` | **G2** UI conformance | `b4x-feature-engineer` | every `COMPONENT-*` in touched screens `provenance-checked: yes` vs Level-3 manifest |
| `IMPLEMENTED → STATIC-VERIFIED` | **G3** Source integrity | `b4x-verify` (pre-scan + verify-conformance) | 15 conformance checks pass (manifest conformance, ModuleN match, NumberOfModules, B4XMainPage name, FileGroupN/NumberOfFiles/FileN, Build1=/B4A=true, AutoFit, BringToFront, Catch logging, DisallowParentIntercept…) |
| `STATIC-VERIFIED → BUILT` | **G4** Compilation | `install.ps1` / `build-watch.ps1` | build log exit 0 |
| `BUILT → RUNTIME-VERIFIED` | **G5** Runtime | build-watch monitor | launch w/o crash; touched-screen acceptance scenarios execute |
| `RUNTIME-VERIFIED → UX-VERIFIED` | **G6** UX | `b4x-verify` (capture + ux-review) | screenshots vs quantified doctrine (Fitts, WCAG 2.2 AA); no runtime-from-screenshot claims (Constitution Art IX) |
| `UX-VERIFIED → REGRESSION-VERIFIED` | **G7** Regression | `b4x-regression` | every test in impact-analysis scope passes |
| `REGRESSION-VERIFIED → RELEASE-CANDIDATE` | — (bundling) | `b4x-orchestrator` | G0–G7 evidence collected |
| `RELEASE-CANDIDATE → RELEASED` | **G8** Release | `b4x-orchestrator` | bundle complete; manifest snapshot `RELEASED` |

## 2. Gate Scope (fixed, not agent judgment)

| Gate | Scope | Rationale |
|---|---|---|
| G0 | Whole contract | Integrity is whole-contract property |
| G1 | Whole contract structure | Bootstrap matches nav graph or not |
| G2 | Per feature/screen | Evaluated as each screen is implemented |
| G3 | Per feature/screen, then whole-app before G4 | Local + cross-cutting issues |
| G4 | Whole app | Compilation not partitionable |
| G5 | Whole app (or smoke subset for large apps) | Launch is whole-app property |
| G6 | Per screen touched by current work | No re-review of untouched screens |
| G7 | Traceability-targeted per impact analysis (§3 of traceability doc); widen to whole-app if shared COMPONENT touched | Targeted, not full re-test |
| G8 | Whole app | Release is all-gates property |

Runbook mapping (normative — use with `skills/b4x-orchestrator/references/runbook.md`):

| Runbook gate | v2 gate |
|---|---|
| Gate 0 Contract | G0 (contract.index.json validates) |
| Gate 1 Bootstrap | G1 (skeleton ↔ navigation.md 1:1) |
| Gates 2–4 Generate→Pre-scan→Verify | G2 (provenance) + G3 (15 checks) |
| Gate 5 Build+Watch | G4 (exit 0) + G5 (launch/scenarios) |
| Gate 6 Capture | G6 evidence input |
| Gate 7 Visual Review | G6 (0 severity ≥4) |
| Loop Remediation cap 3 | Art X per (gate, scope) |
| Release Check | G8 bundle checklist |

## 3. Remediation Loop — Precise Mechanics

One loop = (1) gate evaluated for a **scope** (app/contract/feature/
screen ID per §2) returns fail + evidence; (2) orchestrator invokes the
§1 skill for that gate with the failure evidence (not blank retry);
(3) skill changes; (4) gate re-evaluated for same scope → new
`GATE-INSTANCE` node (never overwrite — Constitution Art VI); (5) pass
→ counter for that `(gate, scope)` resets to 0; fail → increments.

Counters live in `.agent/STATE.md` keyed by `(gate, scope-id)`:

```yaml
remediation-loop-count:
  G3:
    FEATURE-002: 1
  G7:
    <whole-app>: 0
```

A global-per-gate counter is wrong: one feature's 3 failed G3 attempts
would block every future feature at G3. **4th failure of same
(gate, scope)** → orchestrator halts + escalates per Art X with gate,
scope, all 3 prior `GATE-INSTANCE` refs, the unresolved question.
No 4th attempt on agent judgment.

## 4. Worked Example — Login, end to end

Planner drafts REQ-001/RULE-001/TEST-001 → PLANNED (PLAN.md). Contract
validates → CONTRACTED (G0). Bootstrap stub matches nav graph →
BOOTSTRAPPED (G1). Feature-engineer implements FEATURE-001/SCREEN-001 →
IMPLEMENTED (G2). First verify fails (`FileN` missing) → stays
IMPLEMENTED, `GATE-INSTANCE-1`, `{G3:{SCREEN-001:1}}`. Fix + re-verify →
STATIC-VERIFIED, `GATE-INSTANCE-2`, counter reset. install/build-watch
clean → BUILT (G4). Launch + login flow → RUNTIME-VERIFIED (G5).
Screenshots reviewed → UX-VERIFIED (G6, SCREEN-001). Impact on RULE-001
→ TEST-001 passes → REGRESSION-VERIFIED (G7). Bundle → RELEASE-CANDIDATE.
Complete → RELEASED (G8).

## 5. Manifest Write-Back

Every §4 row regenerates `application-manifest.json` (traceability §6,
DECISION-003): `gates` entry added/updated, `lifecycle-state` advanced,
`evidence` appended. Manifest regeneration *is* the transition record —
never agent narration after the fact.
