---
name: b4x-regression
description: Use when an AI coding agent changes an existing B4A/B4X application and must determine impact, preserve unrelated behavior, run targeted regression checks, verify builds, and produce evidence that the change did not break existing functionality.
metadata:
  category: quality-engineering
  triggers: regression, modify existing app, change feature, impact analysis, refactor, bug fix, verify change, prevent breakage
---

# B4X Regression Engineer

## Mission

Make application changes safely by treating every modification as a controlled change to an existing system.

Core loop:

```text
BASELINE
  ↓
CHANGE REQUEST
  ↓
IMPACT ANALYSIS
  ↓
PLAN
  ↓
IMPLEMENT
  ↓
TARGETED TESTS
  ↓
REGRESSION TESTS
  ↓
BUILD
  ↓
RUNTIME SMOKE
  ↓
TRACEABILITY
  ↓
RELEASE / FAIL
```

## Non-negotiable rules

1. Establish a baseline before changing an existing application.
2. Never assume a change is isolated.
3. Inspect dependencies before editing.
4. Preserve unrelated behavior.
5. Do not fix unrelated problems during a scoped change unless required for the requested feature or explicitly approved.
6. Treat compilation as necessary but insufficient.
7. Critical user journeys must remain executable.
8. Update contracts when behavior changes.
9. Record architectural decisions when patterns change.
10. A failed regression gate blocks release.

## Baseline

Record:

```text
commit/version:
build:
static verification:
known failing tests:
critical journeys:
screens affected:
```

If a baseline test is already failing, record it before the change so it is not incorrectly attributed to the new change.

## Impact analysis

Inspect:

- changed files;
- importing modules;
- callers;
- navigation routes;
- domain entities;
- repositories/services;
- database schema;
- API contracts;
- screens;
- tests;
- assets;
- configuration.

Classify each as:

```text
DIRECT
DEPENDENT
TRANSITIVE
UNRELATED
```

## Change Impact Matrix

Create:

```text
.agent/impact-analysis.md
```

Example:

| Artifact | Relationship | Risk | Test |
|---|---|---|---|
| Product.bas | Direct | High | DOMAIN-001 |
| StockList.bas | Dependent | High | UI-004 |
| History.bas | Transitive | Medium | HIST-002 |
| Settings.bas | Unrelated | Low | SMOKE-001 |

## Risk levels

### Critical

- authentication;
- authorization;
- persistence;
- data migration;
- payment/financial logic;
- destructive operations;
- core user journey.

### High

- shared domain entity;
- shared service;
- navigation root;
- reusable component;
- synchronization.

### Medium

- feature-local logic;
- feature-local screen;
- reporting.

### Low

- isolated presentation styling;
- copy changes;
- non-functional documentation.

## Regression selection

Always run:

1. changed-feature tests;
2. directly dependent tests;
3. critical smoke journeys;
4. build/conformance verification.

Add broader regression tests according to risk.

## Change types

### Bug fix

Required:

```text
reproduce
→ test reproducer
→ fix
→ test
→ regression
```

### Feature addition

Required:

```text
contract
→ implementation
→ acceptance
→ regression
```

### Refactor

Required:

```text
baseline
→ dependency analysis
→ refactor
→ equivalence tests
→ regression
```

### Data/schema change

Required:

```text
schema impact
→ migration strategy
→ backward compatibility
→ repository/API impact
→ regression
```

## Runtime regression

Where runtime automation exists, verify:

- launch;
- authentication;
- critical navigation;
- changed feature;
- persistence;
- error recovery;
- back navigation.

Capture logs/screenshots for failures.

## Visual regression

For affected screens compare:

- hierarchy;
- spacing;
- component variants;
- semantic colors;
- clipping;
- overlap;
- keyboard behavior;
- empty/loading/error states.

Do not treat visual similarity as proof of functional correctness.

## Traceability

Every changed requirement must map to:

```text
Requirement
→ Feature
→ Business Rule
→ Implementation
→ Test
```

## Release gate

Release is blocked if any of these are true:

```text
compile failure
static conformance failure
invented/invalid API
critical journey failure
critical regression
unresolved data contract break
security-critical failure
```

Known pre-existing failures may remain only if explicitly recorded and unaffected.

## Regression report

Produce:

```text
.agent/REGRESSION.md
```

with:

- baseline;
- requested change;
- impact scope;
- tests run;
- results;
- failures;
- pre-existing failures;
- visual/runtime evidence;
- final decision.

## Repair loop

For failures:

```text
FAIL
 ↓
CLASSIFY
 ↓
LOCALIZE
 ↓
REPAIR
 ↓
TARGETED TEST
 ↓
FULL REQUIRED REGRESSION
```

Maximum autonomous remediation attempts should be controlled by the orchestrator. Never loop indefinitely.
