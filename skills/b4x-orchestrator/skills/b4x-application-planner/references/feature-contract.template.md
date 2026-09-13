# Feature Contract: <FEATURE-ID> <NAME>
<!-- Emits contract/features/<feature>.md per docs/contracts/CONTRACT-SCHEMA.md §4.7 -->

---
id: <FEATURE-###>
status: DRAFT
version: 1
last-updated: <ISO date>
depends-on: [<REQ-###>]
---

## FEATURE-002: <name>
- implements: [REQ-001]
- screens: [SCREEN-003]
- rules: [RULE-004]
- state-model: IDLE | LOADING | READY | EMPTY | ERROR | SUBMITTING | SUCCESS | UNAUTHORIZED | OFFLINE
- status: OPEN | DRAFT | APPROVED

## Purpose

## Actors

## Preconditions

## Main Flow

1.
2.
3.

## Alternative Flows

## Business Rules

| Rule ID | Rule |
|---|---|

## Data

### Reads

### Writes

### External calls
(source + provenance per contract/data-contract.md; PocketBase needs
approval — Documented-only, negative-knowledge.md §2)

## Screens

| Screen ID | Purpose |
|---|---|
- note: IDs in this table must match SCREEN-### in contract/screens/.

## State Machine

```text
IDLE
  ↓
LOADING
  ├── READY
  ├── EMPTY
  └── ERROR
```

## Errors

| Error | User-visible behavior | Recovery |
|---|---|---|

## Acceptance Tests

| Test ID | Expected result |
|---|---|

## Traceability

| Requirement | Rule | Code area | Test |
|---|---|---|---|
