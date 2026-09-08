---
name: b4x-feature-engineer
description: Use when implementing a B4A/B4X application feature from a feature contract. Connects domain logic, data access, services, state, navigation, B4XDaisyUIKit screens, validation, errors, and acceptance tests. Designed for agentic implementation with explicit traceability and controlled changes.
metadata:
  category: application-engineering
  triggers: implement feature, add feature, build feature, b4x feature, connect screen, CRUD feature, backend integration
---

# B4X Feature Engineer

## Mission

Implement a feature as a coherent vertical slice rather than generating disconnected screens.

The expected slice is:

```text
Requirement
 ↓
Feature Contract
 ↓
Business Rules
 ↓
Domain
 ↓
Data / Repository
 ↓
Service
 ↓
View State
 ↓
B4XDaisyUIKit UI
 ↓
Navigation
 ↓
Acceptance Test
```

## Hard rules

1. Read the feature contract before coding.
2. Read the application contract and existing architecture before introducing patterns.
3. Never invent B4XDaisyUIKit APIs.
4. Never modify the B4XDaisyUIKit library source as a feature implementation shortcut.
5. Do not invent backend contracts.
6. Do not put business rules only in click handlers.
7. Keep validation/business logic separable from rendering.
8. Keep network/data failures visible to the state layer.
9. Preserve existing navigation and application conventions.
10. Every changed requirement must have traceability to implementation and test.
11. Do not declare success solely because the project compiles.

## Implementation order

### 1. Contract check

Verify:

- feature ID;
- requirements;
- business rules;
- domain dependencies;
- data dependencies;
- screens;
- acceptance tests.

If a critical contract is missing, stop and report the missing contract rather than guessing.

### 2. Domain

Implement or reuse:

- entities;
- enums;
- value objects;
- validation;
- pure business logic where practical.

### 3. Data layer

Implement the project's established data pattern.

Examples may include:

```text
Repository
Service
PocketBase REST
SQLite
HttpJob
```

Use only APIs actually available in the project/library documentation.

### 4. State

Define feature state explicitly.

Minimum recommended states:

```text
IDLE
LOADING
READY
EMPTY
ERROR
SUBMITTING
SUCCESS
UNAUTHORIZED
OFFLINE
```

### 5. UI

Use the existing B4XDaisyUIKit workflow:

```text
screen contract
→ architecture
→ intent-to-component
→ component manifest
→ exact API
→ implementation
→ verify
```

Do not choose components by remembered names when the manifest is available.

### 6. Events

For every event define:

```text
event
→ validation
→ business operation
→ state transition
→ UI update
```

Avoid embedding large business workflows directly inside UI event handlers.

### 7. Navigation

Navigation must match the application navigation contract.

Do not create alternate routes merely because they are convenient for implementation.

### 8. Error handling

Every remote/data operation needs:

- failure detection;
- state transition;
- user-visible feedback where appropriate;
- retry or recovery strategy where possible;
- logging appropriate to the project.

Never swallow errors silently.

### 9. Acceptance tests

Implement or update tests corresponding to the feature contract.

## Vertical-slice completion gate

A feature is complete only when:

```text
CONTRACT         PASS
DOMAIN           PASS
DATA             PASS
BUSINESS RULES   PASS
UI               PASS
NAVIGATION       PASS
ERROR STATES     PASS
ACCEPTANCE TESTS PASS
STATIC VERIFY    PASS
BUILD            PASS
```

Runtime testing and regression testing are handled by companion skills but must not be skipped for release work.

## Traceability format

Maintain:

```text
REQ-xxx
  → FEATURE-xxx
  → RULE-xxx
  → SCREEN-xxx
  → CODE:<module/sub>
  → TEST-xxx
```

## Existing feature changes

When modifying an existing feature:

1. Read its contract.
2. Read `.agent/STATE.md`.
3. Run or inspect the current verification baseline.
4. Determine affected modules.
5. Make the smallest safe change.
6. Update contracts.
7. Run targeted tests.
8. Run regression analysis.

## Anti-patterns

### Screen-first implementation

Bad:

```text
Create screen
→ make fake data
→ connect backend later
```

Preferred:

```text
contract
→ data/domain
→ state
→ screen
→ integration
→ test
```

### Hidden business logic

Bad:

```text
Button_Click
    calculate everything
    save everything
    navigate
```

Preferred:

```text
Button_Click
    validate
    invoke feature operation
    react to state
```

### API invention

If an API is not verified:

```text
OPEN: API signature required
```

Do not fabricate it.

## Deliverables

At completion update:

```text
.agent/STATE.md
contract/features/<feature>.md
contract/screens/<screen>.md
```

and the traceability matrix.
