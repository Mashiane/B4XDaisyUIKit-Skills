# Screen Contract: <SCREEN-ID> <NAME>
<!-- Canonical application contract. Stored at contract/screens/<screen>.md. Emits per docs/contracts/CONTRACT-SCHEMA.md §4.8. Sole canonical copy (nested mirror removed 2026-09-15, see DECISIONS.md). -->

---
id: <SCREEN-###>
status: DRAFT
version: 1
last-updated: <ISO date>
depends-on: [<FEATURE-###>]
---

## SCREEN-003: <name>
- feature: FEATURE-002
- journey: <user journey ID or name>
- navigation-in: [SCREEN-001]
- navigation-out: [SCREEN-004]
- components:
  - COMPONENT-B4XDaisyButton — usage: <what for> — provenance-checked: yes/no
- states-handled: [LOADING, POPULATED, EMPTY, ERROR]
- tests: [TEST-008]

## Purpose

## Feature

<FEATURE-###> — must match exactly one parent feature (schema §6.5).

## User Journey

## User Goal

## Entry Conditions

## Exit Conditions

## Information Hierarchy

List components in mount order. Every component must exist in the Level-3 manifest.
Only verified B4XDaisyUIKit APIs. COMPONENT-<Name> normalizes to manifest class
B4XDaisy<Name> (schema §2). `provenance-checked: yes` required before APPROVED.

| # | Component | Props / Variant | API source |
|---|---|---|---|

## Navigation & Architecture

- Page architecture: `ARCH-01` through `ARCH-10` from `page-architectures.md`.
- Route and back behavior:
- Entry and exit points:

## Actions / Events

| Action | Source | Expected effect |
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

## Validation

## Data Dependencies

## Accessibility

- Touch targets are at least 48dip where interactive.
- Interactive views have text or a content description.
- Contrast and runtime-only claims are verified through build and UX evidence.

## Acceptance Criteria

- [ ] `pre-scan.ps1` passes.
- [ ] `verify-conformance.ps1` passes.
- [ ] Build and build-watch pass.
- [ ] Required screenshots exist.
- [ ] UX review has no severity 4 or 5 findings.

## Visual Review Criteria

## Rule Trace

`RULE-SETUP-004, RULE-LAYOUT-001, RULE-LAYOUT-003, RULE-INTERACT-001, RULE-STATE-001, RULE-CODE-002`
