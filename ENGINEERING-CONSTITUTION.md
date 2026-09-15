# ENGINEERING CONSTITUTION
### B4XDaisyUIKit Application Engineering System

**Status:** v1.0-adopted. Governs all AI agents, skills, tooling
that generate, modify, verify, or release B4A apps on B4XDaisyUIKit.
**Scope:** B4A Android only. `B4XView`/`XUI` being cross-platform does
not make the component library cross-platform. Not B4J/BANano/MDC.
**Source:** Adopted from Draft v0.1 (2026-09-09). Amend per Art XI.

> Generative agents produce claims. Deterministic tooling produces evidence.

## Article I — Source-of-Truth Hierarchy

Truth flows downward. A lower level may never be overridden by a higher one.

| Level | Source | Authority |
|---|---|---|
| **0** | Actual library implementation (`B4A/B4XDaisy*.bas`) | Absolute |
| **1** | Packaged `.b4xlib` / extracted API surface | Authoritative interface |
| **2** | Verified demos (`B4A/B4XPage*.bas`) | Working proof of usage |
| **3** | Machine-generated manifest + provenance JSONs | Authoritative machine-readable |
| **4** | Component specs (`skills/b4xdaisyuikit/components/*.md`) | Derived, not original |
| **5** | Recipes and doctrine (`chapters/`, `references/`) | Guidance for agents |
| **6** | AI reasoning | Interpretation only |

**Rule:** Level 6 must never override Levels 0–3. On conflict the agent
is wrong until re-inspection of Level 0–1 proves otherwise. Only
`sync-truth` tooling (`docs/architecture/SYNC-TRUTH-TOOL.md`) may write
Level 3 — never hand-edits, never agent prose.

## Article II — Non-Negotiable Rules

1. The executable implementation outranks AI knowledge, training data,
   and prior conversation, in that order.
2. An unverified API, method, property, or event must never be generated
   or documented as if it were confirmed fact.
3. An unresolved requirement must be marked `OPEN` — never silently
   become an assumption.
4. Compilation success is necessary but never sufficient for correctness.
5. Library source is immutable to app-building agents. No agent may edit
   it to make an application work.
6. Every requirement must trace to an implementation and a verification
   artifact — no orphans, no untraceable code.
7. No release without evidence (runtime + UX + regression).
8. Failed gates cannot be bypassed, suppressed, or downgraded by an agent.
9. Changes must preserve unrelated functionality — no silent regressions.
10. Evidence must be produced by deterministic tooling wherever one can
    produce it instead of the agent's own claims.

## Article III — Artifact Types

Five types. Never conflate them; no artifact may claim a type it is not.

- **Knowledge** — what an agent knows/believes. Never authoritative alone.
- **Specification** — what the contract says to build. Intent, not impl fact.
- **Implementation** — what was generated. A claim until verified.
- **Evidence** — what deterministic tooling demonstrates (build logs,
  screenshots, test results, manifest diffs). Only type that closes a gate.
- **Decision** — why a choice was made, for future audit.

## Article IV — The Application Contract

No app, feature, or screen without a contract. **No contract = no gen.**

Canonical artifacts (planner templates must emit exactly these names):

```text
.agent/PLAN.md
.agent/STATE.md
.agent/DECISIONS.md
contract/application.md
contract/navigation.md
contract/domain-model.md
contract/data-contract.md
contract/business-rules.md
contract/acceptance-tests.md
contract/features/<feature>.md
contract/screens/<screen>.md
```

Rules: keep requirements / rules / decisions / assumptions distinct;
every critical requirement maps to ≥1 acceptance test; every screen
belongs to exactly one feature and one journey; contract changes need
impact analysis first; smallest sufficient architecture; preserve
existing architecture unless the contract authorizes change.

## Article V — Traceability

Every consequential artifact carries an ID, chained forward:

```text
REQ → FEATURE → RULE → SCREEN → COMPONENT → CODE → TEST
```

E.g. `REQ-001 → FEATURE-002 → RULE-004 → SCREEN-003 →
COMPONENT-B4XDaisyButton → CODE:MainPage.bas → TEST-008`

Enables: impact analysis, orphan detection, coverage reporting,
regression targeting, release auditing. Broken/missing chain =
unverified, however produced.

## Article VI — Component Provenance

Every component spec records at minimum: source class + source commit,
library version, per-member API/property/event/styling status, demo
pages, last verification timestamp. Written only by `sync-truth`
tooling (`docs/architecture/SYNC-TRUTH-TOOL.md`). A `stale`/`removed`
member blocks G2 for affected screens until re-confirmed or a visible
human `DECISION` accepts the risk.

## Article VII — Lifecycle State Machine

Strict order. No skips; no self-reported later state without its gate.

```text
DISCOVERED → PLANNED → CONTRACTED → BOOTSTRAPPED → IMPLEMENTED
  → STATIC-VERIFIED → BUILT → RUNTIME-VERIFIED → UX-VERIFIED
  → REGRESSION-VERIFIED → RELEASE-CANDIDATE → RELEASED
```

## Article VIII — Quality Gates

`RELEASE = G0 AND G1 AND G2 AND G3 AND G4 AND G5 AND G6 AND G7 AND G8`

| Gate | Name | Closes when |
|---|---|---|
| **G0** | Requirements integrity | Explicit, consistent, traceable requirements |
| **G1** | Architecture | Structure + data flows conform to contract |
| **G2** | UI conformance | Real components, verified APIs + layout doctrine |
| **G3** | Source integrity | Structural/policy rules (pre-scan + verify) |
| **G4** | Compilation | B4A project compiles |
| **G5** | Runtime | Launches; required behavior verified |
| **G6** | UX | Screenshots + build-watch evidence reviewed |
| **G7** | Regression | Existing behavior intact |
| **G8** | Release | Package contains all required evidence |

Scope/skill/evidence/remediation wiring: `docs/architecture/GATE-STATE-MACHINE.md`.
Runbook Gates 0–7 ↔ G0–G8 mapping there is normative.
**Failed gate blocks. Remediation capped at 3 loops per (gate, scope).**

## Article IX — Verification Discipline

Deterministic, not generative. Flag uncertainty; never invent APIs,
sources, or B4X syntax — even to fill a gap. Flag uncertain stats.
Gaps become `OPEN` items or escalations, never silent assumptions.
Runtime-only claims (dp, TalkBack, contrast, perf) must never be
inferred from a screenshot. UX fix tickets cite real manifest/component
properties only.

## Article X — Escalation

Max 3 remediation loops per (gate, scope), then mandatory human
escalation with: failing gate, scope, all prior `GATE-INSTANCE`
evidence, the specific unresolved question. No bar-lowering, no
marking failure as pass, no reinterpreting a contract to erase failure.

## Article XI — Amendment

This constitution is itself a contract artifact. Changes need stated
rationale + `DECISIONS.md` entry, and never retroactively reinterpret
gates already closed under a prior version.
