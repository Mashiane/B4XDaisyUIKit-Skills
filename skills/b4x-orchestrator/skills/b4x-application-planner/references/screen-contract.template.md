# Screen Contract: <SCREEN-ID> <NAME>
<!-- Emits contract/screens/<screen>.md per docs/contracts/CONTRACT-SCHEMA.md §4.8 -->

---
id: <SCREEN-###>
status: DRAFT
version: 1
last-updated: <ISO date>
depends-on: [<FEATURE-###>]
---

## SCREEN-003: <name>
- feature: FEATURE-002
- journey: <which user journey>
- components:
  - COMPONENT-B4XDaisyButton — usage: <what for> — provenance-checked: yes/no
- navigation-in: [SCREEN-001]
- navigation-out: [SCREEN-001, SCREEN-004]
- states-handled: [LOADING, EMPTY, ERROR]
- tests: [TEST-008]

## Purpose

## Feature
<FEATURE-###> — must match exactly one parent feature (schema §6.5).

## User Journey

## Entry Conditions

## Exit Conditions

## Information Hierarchy

## Components

Only verified B4XDaisyUIKit APIs. COMPONENT-<Name> normalizes to
manifest class B4XDaisy<Name> (schema §2). `provenance-checked: yes`
required before APPROVED.

| Component | Purpose | API source |
|---|---|---|

## States

- [ ] Initial
- [ ] Loading
- [ ] Populated
- [ ] Empty
- [ ] Error
- [ ] Retry
- [ ] Submitting
- [ ] Success
- [ ] Unauthorized
- [ ] Offline

## Actions / Events

| Action | Source | Expected effect |
|---|---|---|

## Validation

## Data Dependencies

## Accessibility

## Acceptance Criteria

## Visual Review Criteria
