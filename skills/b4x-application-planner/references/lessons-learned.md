# Lessons Learned — Application Engineering

## Screen Contracts Are Non-Negotiable

**Rule**: RULE-SETUP-004 — Every screen must have a contract file at `<AppFolder>/contract/<ScreenId>.md` before generation. The orchestrator G0 gate blocks generation if missing.

**Why**: Without a screen contract, the planner cannot classify requirements, map screens to features, or produce acceptance tests. The gate is mechanical — not agent discretion.

**Signal**: DaisyUIKitL4App investigation confirmed G0-stall with no contract folder; 7-screen DemoStockTake confirmed contracts enable the full G0→G8 flow.

## Rule Trace Citations Are Mandatory

**Rule**: Every generated B4X file must cite relevant RULE-* IDs. Minimum set: `RULE-SETUP-004, RULE-LAYOUT-001, RULE-LAYOUT-003, RULE-INTERACT-001, RULE-STATE-001, RULE-CODE-002, RULE-ANTI-002`

**Why**: The engineering constitution (Art IX) requires rule trace for conformance verification. Missing citations cause G2/G3 gate failures.

**Signal**: Both B4XMainPage.bas and B4XPageDashboard.bas had 0 RULE-* citations; DaisyUIKitL4App needs citations embedded in the skill.

## Verification Loop Is Always-On

**Rule**: Run `pre-scan.ps1` → `verify-conformance.ps1` → `build-watch.ps1` as a unit. No screen generation proceeds past G0 without all three executing cleanly.

**Why**: The gate state machine (GATE-STATE-MACHINE.md §19) makes G3 (15 conformance checks) and G4 (compilation exit 0) mandatory before any runtime or UX review.

**Signal**: DaisyUIKitL4App had no verification loop execution; DemoStockTake had build-watch.ps1 evidence from prior sessions.

## Component Coverage Minimum

**Rule**: Generated apps must demonstrate ≥10 distinct B4XDaisyUIKit demonstrated components across screens. Do not accept <5 demonstrated components per app.

**Why**: The b4xdaisyuikit skill has ~86 demonstrated components; under-use indicates incomplete application engineering, not a design choice.

**Signal**: DaisyUIKitL4App used only 4/86 components; expansion to P1/P2/P3 roadmap is required.

---

*Never invent B4XDaisyUIKit APIs. Preserve existing architecture unless contract authorizes change. Every critical requirement maps to an acceptance test. Treat the library as immutable infrastructure.*