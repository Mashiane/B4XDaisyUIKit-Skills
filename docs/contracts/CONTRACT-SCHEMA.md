# APPLICATION CONTRACT SCHEMA
### B4XDaisyUIKit Application Engineering System — v2

**Status:** v1.0-adopted — companion to `ENGINEERING-CONSTITUTION.md`.
**Purpose:** Exact shape of every contract artifact so `b4x-verify`
checks a contract mechanically, not just reads it generatively.

## 1. Principle

A contract file is a **structured document with mandatory sections and
IDs**: scripts confirm sections present, IDs unique, references resolve,
`OPEN` items visible, downstream tooling (manifest, traceability)
generated from it rather than re-typed. Narrative welcome *inside*
sections — schema constrains structure, not prose.

## 2. ID Conventions

| Prefix | Refers to | Defined in | Format |
|---|---|---|---|
| `REQ-###` | Requirement | `contract/application.md` | `REQ-001` |
| `FEATURE-###` | Feature | `contract/features/<feature>.md` | `FEATURE-002` |
| `RULE-###` | Business rule | `contract/business-rules.md` | `RULE-004` |
| `SCREEN-###` | Screen | `contract/screens/<screen>.md` | `SCREEN-003` |
| `COMPONENT-<Name>` | B4XDaisyUIKit component | Level-3 manifest (external) | `COMPONENT-B4XDaisyButton` |
| `TEST-###` | Acceptance test | `contract/acceptance-tests.md` | `TEST-008` |
| `DECISION-###` | Recorded decision | `.agent/DECISIONS.md` | `DECISION-012` |

Rules: IDs never reused (deletion recorded as decision); single counter
per prefix per app tracked in `.agent/STATE.md`; dangling reference =
**schema violation**. `COMPONENT-<Name>` normalizes to manifest class
`B4XDaisy<Name>` both ways (contract checker strips/adds the prefix;
`.bas` scanners grep `B4XDaisy[A-Za-z0-9_]+`).

## 3. Common Front Matter

Every file under `contract/` (not `.agent/`) opens with:

```yaml
---
id: <own ID, e.g. FEATURE-002>
status: OPEN | DRAFT | APPROVED
version: <integer, bump on any approved change>
last-updated: <ISO date>
depends-on: [<IDs assumed already resolved>]
---
```

`status: OPEN` = known-incomplete, must not ground generation.
`verify-contract` blocks generation against any `FEATURE`/`SCREEN`
file not `APPROVED`.

## 4. Per-File Schema

### 4.1 `contract/application.md`

```markdown
## Purpose
<one paragraph>

## Actors & Roles
- <role>: <what they can do>

## Requirements
- REQ-001: <statement> — priority: <critical|standard|nice-to-have>

## Non-Functional Requirements
- <performance, offline, accessibility floor, etc.>

## Constraints
- <platform, backend, library-version constraints>

## OPEN Items
- <anything unresolved — must not silently disappear>
```

Validation: every `critical` REQ appears in ≥1 `acceptance-tests.md`
entry (Constitution Art II.6).

### 4.2 `contract/navigation.md`

```markdown
## Entry Point
SCREEN-001

## Screen Graph
- SCREEN-001 → SCREEN-002 (on: <action>)

## Deep Links
- <link pattern> → SCREEN-<id>
```

Validation: every referenced SCREEN has a `contract/screens/` file;
no screen unreachable from entry unless marked `deep-link-only`.

### 4.3 `contract/domain-model.md`

```markdown
## Entity: <Name>
- fields:
  - <field>: <type> — <required|optional> — provenance: <confirmed|OPEN>
- relationships:
  - <to another entity>
- invariants:
  - <must always hold>
```

Validation: `provenance: OPEN` field cannot be referenced from an
`APPROVED` feature/screen file.

### 4.4 `contract/data-contract.md`

```markdown
## Endpoint / Table: <name>
- source: <PocketBase | MySQL | SQLite | REST endpoint>
- fields: <link to domain-model fields>
- provenance: confirmed | OPEN
- approval: <required if PocketBase — Documented-only per
  negative-knowledge.md §2: no SSE/SubscribeToCollection, no
  offline/sync, no JWT refresh, Base64 uploads ~5MB limit,
  no transactions, no schema migration from app>
- last verified: <date>
```

Validation: never invented — every endpoint/field traces to Level 0–2
or is `OPEN`.

### 4.5 `contract/business-rules.md`

```markdown
## RULE-004
- statement: <testable condition>
- applies-to: [FEATURE-002, SCREEN-003]
- enforcement-point: validation | service | domain | UI-only (discouraged)
- rationale: <why>
```

Validation: `UI-only` flagged for review — rules must not live only in
click handlers.

### 4.6 `contract/acceptance-tests.md`

```markdown
## TEST-008
- verifies: REQ-001, RULE-004
- given: <precondition>
- when: <action>
- then: <expected outcome>
- verification-method: manual | automated | gate-evidence
```

Validation: every TEST verifies ≥1 REQ/RULE; orphans flagged.

### 4.7 `contract/features/<feature>.md`

```markdown
## FEATURE-002: <name>
- implements: [REQ-001]
- screens: [SCREEN-003]
- rules: [RULE-004]
- state-model: IDLE | LOADING | READY | EMPTY | ERROR | SUBMITTING | SUCCESS | UNAUTHORIZED | OFFLINE
- status: OPEN | DRAFT | APPROVED
```

### 4.8 `contract/screens/<screen>.md`

```markdown
## SCREEN-003: <name>
- feature: FEATURE-002
- journey: <which user journey>
- components:
  - COMPONENT-B4XDaisyButton — usage: <what for> — provenance-checked: yes/no
- navigation-in: [SCREEN-001]
- navigation-out: [SCREEN-001, SCREEN-004]
- states-handled: [LOADING, EMPTY, ERROR]
- tests: [TEST-008]
```

Validation: every component in Level-3 manifest with
`provenance-checked: yes` before `APPROVED`. Screen without parent
FEATURE = schema violation (Constitution Art IV).

## 5. `.agent/` Files (process state, not contract)

### `.agent/STATE.md`
```markdown
current-lifecycle-state: <Art VII state>
id-counters: {REQ: 3, FEATURE: 2, RULE: 4, SCREEN: 3, TEST: 8, DECISION: 12}
open-gates: [G3, G4]
remediation-loop-count:
  G3:
    FEATURE-002: 1
```
Loop counts keyed by **(gate, scope-id)** — see
`docs/architecture/GATE-STATE-MACHINE.md` §3. A global-per-gate
counter would wrongly block unrelated future work at that gate.

### `.agent/PLAN.md`
Free-form plan in requirement → feature → screen order. Must reference
only existing IDs. Not schema-validated.

### `.agent/DECISIONS.md`
```markdown
## DECISION-012
- date: <ISO date>
- context: <prompt>
- decision: <what>
- alternatives-considered: <optional>
- affects: [FEATURE-002]
```

## 6. Validation Summary (`verify-contract` checks)

1. Required sections present per file type.
2. Every referenced ID resolves to a real artifact.
3. No `APPROVED` file references an `OPEN` dependency.
4. Every critical REQ has ≥1 TEST.
5. Every SCREEN has exactly one parent FEATURE.
6. Every component ref has manifest-confirmed provenance.
7. No orphan TEST. 8. `UI-only` RULE surfaced as review flag.

Failing contract = **not eligible for generation** (mechanical
"no contract = no generation", Constitution Art IV).

## 7. Worked Example (single feature)

```text
contract/application.md    → REQ-001: "User can log in"
contract/features/login.md → FEATURE-001 implements REQ-001, screens [SCREEN-001]
contract/screens/login.md  → SCREEN-001, feature FEATURE-001,
                              components [COMPONENT-B4XDaisyInput, COMPONENT-B4XDaisyButton]
contract/business-rules.md → RULE-001 "Password 8+ chars", enforcement validation
contract/acceptance-tests.md → TEST-001 verifies REQ-001 + RULE-001
```

Every arrow is a reference `verify-contract` walks — nothing depends on
agent memory.

## 8. Resolved Decisions

### DECISION-001: `contract.index.json` is generated, never hand-maintained
Two artifacts describing the same truth = drift risk (Art VI at library
level, recreated at contract level). The index is mechanically generated
from `contract/*.md` by a deterministic parser; if a file cannot be
parsed cleanly that is itself a schema violation blocking generation.
Consequence: front matter + headers stay fixed (§3–§4).

### DECISION-002: a DECISION records rationale, never supersedes APPROVED content
A decision changing REQ/RULE/FEATURE/SCREEN content must bump that
file's version with cross-reference. Implementation choices inside
approved scope need no bump. `DECISIONS.md` is a rationale log, never a
side-channel past a closed gate (Art II.8).
