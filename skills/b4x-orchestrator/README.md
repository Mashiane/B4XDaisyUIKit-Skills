# B4XDaisyUIKit Agentic Application Engineering Skills

This package contains the application-engineering skills that extend B4XDaisyUIKit-Skills from UI generation toward controlled application delivery.

## Included

### 1. b4x-application-planner

Converts natural-language application requirements into explicit contracts:

- application
- features
- user journeys
- domain model
- data requirements
- business rules
- navigation
- screen contracts
- acceptance tests
- implementation plan

### 2. b4x-feature-engineer

Implements features as vertical slices:

```text
Requirement
→ Contract
→ Domain
→ Data
→ Business Rules
→ State
→ UI
→ Navigation
→ Tests
```

### 3. b4x-regression

Safely modifies existing applications through:

```text
Baseline
→ Impact Analysis
→ Change
→ Targeted Tests
→ Regression
→ Build
→ Runtime
→ Traceability
```

## Integration with the existing B4XDaisyUIKit-Skills project

These skills are intentionally additive and are installed as top-level skills.

They sit above the existing:

- `b4xdaisyuikit`
- `b4x-project-bootstrap`
- `b4x-verify`
- `b4x-orchestrator`

The intended architecture is:

```text
USER PROMPT
    ↓
b4x-application-planner
    ↓
APPLICATION / FEATURE CONTRACTS
    ↓
b4x-feature-engineer
    ↓
B4XDaisyUIKit + B4X IMPLEMENTATION
    ↓
b4x-verify / build / runtime checks
    ↓
b4x-regression
    ↓
RELEASE
```

## Installation

The canonical skill directories are already top-level under `skills/`:

```text
skills/
  b4x-application-planner/
  b4x-feature-engineer/
  b4x-regression/
```

Do not place skill copies below `b4x-orchestrator/skills/`. Nested copies are not reliably discovered by skill loaders. Exception: `b4x-orchestrator/skills/*/references/` holds the canonical contract templates linked from the top-level planner/engineer/regression skills — do not move or duplicate them without updating those links.

## Important design principle

These skills deliberately do not contain duplicate B4XDaisyUIKit API knowledge.

The existing B4XDaisyUIKit manifest and verified component specifications remain the source of truth for component APIs.

Likewise, backend APIs and application business rules must come from the application's contracts, not from guesses made by the agent.

## Orchestrated application workflow

```text
APPLICATION CONTRACT
→ ARCHITECTURE
→ FEATURE PLAN
→ DOMAIN / DATA CONTRACT
→ SCREEN CONTRACTS
→ IMPLEMENTATION
→ STATIC VERIFICATION
→ BUILD
→ RUNTIME TEST
→ USER-JOURNEY TEST
→ VISUAL REVIEW
→ REGRESSION
→ TRACEABILITY
→ RELEASE
```

`b4x-orchestrator` is responsible for enforcing this sequence. The planner owns contracts, the feature engineer owns vertical-slice implementation, and regression owns impact analysis and release evidence.
