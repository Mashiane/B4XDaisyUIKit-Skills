---
name: b4x-application-planner
description: Use when a user asks an AI coding agent to plan or generate a complete B4A/B4X mobile application, major feature, or substantial application change. Converts natural-language requirements into an explicit application contract, features, user journeys, domain entities, data requirements, business rules, navigation, screen contracts, acceptance tests, and an implementation plan. Does not invent B4XDaisyUIKit APIs.
metadata:
  category: application-engineering
  triggers: build app, create application, mobile app, b4a app, b4x app, feature planning, application architecture, requirements
---

# B4X Application Planner

## Mission

Transform a natural-language application request into a coherent, testable application specification before implementation begins.

This skill is the application-level planning layer above `b4xdaisyuikit`, `b4x-project-bootstrap`, and `b4x-verify`.

## Non-negotiable rules

1. Do not invent B4XDaisyUIKit methods, properties, events, enums, constructors, or component behavior.
2. Do not invent backend endpoints or database fields. Mark unresolved information as `OPEN`.
3. Do not silently turn assumptions into requirements.
4. Separate requirements, business rules, implementation decisions, and assumptions.
5. Every feature must have at least one user journey or explicit reason why it is non-user-facing.
6. Every critical requirement must map to an acceptance test.
7. Every screen must belong to a feature and a user journey.
8. Prefer the smallest architecture that satisfies the requirements.
9. Preserve existing application architecture when extending an existing project unless a documented architectural change is approved.
10. Treat the B4XDaisyUIKit library as immutable application infrastructure.

## Inputs

The agent may receive:

- a new application request;
- a feature request;
- an existing project;
- a design/mockup;
- backend requirements;
- a database schema;
- an API description;
- constraints such as offline support, authentication, GPS, camera, notifications, or permissions.

## Required outputs

Create or update:

```text
.agent/
  PLAN.md
  STATE.md
  DECISIONS.md

contract/
  application.md
  navigation.md
  domain-model.md
  data-contract.md
  business-rules.md
  acceptance-tests.md

contract/features/
  <feature>.md

contract/screens/
  <screen>.md
```

For small changes, only create the contracts required by the change, but do not omit a required contract merely to save work.

## Planning sequence

### Step 1 — Extract requirements

Classify each statement as:

- REQUIREMENT
- CONSTRAINT
- BUSINESS RULE
- ASSUMPTION
- OPEN QUESTION

Do not merge these categories.

### Step 2 — Identify actors and roles

For each actor define:

- identity;
- role;
- permissions;
- primary goals;
- restrictions.

### Step 3 — Define features

A feature must state:

- ID;
- name;
- purpose;
- actors;
- preconditions;
- business rules;
- data dependencies;
- screens;
- success criteria;
- failure conditions.

### Step 4 — Define user journeys

Use:

```text
JOURNEY-ID
Actor
Goal
Preconditions
Steps
Expected result
Failure paths
Acceptance criteria
```

### Step 5 — Define the domain model

Identify entities, value objects, enums, relationships, validation rules, and ownership.

Do not choose database field names unless they are known.

### Step 6 — Define data requirements

Record:

- local persistence;
- remote persistence;
- API dependencies;
- synchronization;
- authentication;
- caching;
- offline behavior;
- error mapping.

Unknown details become `OPEN`.

### Step 7 — Define navigation

Navigation is derived from journeys, not invented independently per screen.

### Step 8 — Define screen contracts

Each screen contract must contain:

- purpose;
- entry conditions;
- exit actions;
- components required;
- view states;
- actions/events;
- validation;
- data dependencies;
- accessibility considerations;
- acceptance criteria.

Use the existing B4XDaisyUIKit Screen Contract conventions where present.

### Step 9 — Define acceptance tests

Every critical requirement receives an acceptance-test ID.

### Step 10 — Produce implementation plan

Order work by dependency:

```text
project/bootstrap
→ domain
→ data
→ services
→ navigation
→ screens
→ integration
→ tests
→ verification
```

## Existing-project mode

Before planning a change:

1. Inspect project/module structure.
2. Inspect existing contracts and `.agent/` state.
3. Identify architectural patterns already in use.
4. Build an impact summary.
5. Preserve unrelated functionality.
6. Update contracts before implementation.

## Completion gate

Planning is complete only when:

- no critical requirement is unclassified;
- all critical features have journeys;
- all critical requirements have acceptance tests;
- screens map to features;
- unresolved assumptions are explicitly marked;
- implementation dependencies are ordered;
- existing-project changes have an impact scope.

## Companion skills

Use with:

- `b4xdaisyuikit`
- `b4x-project-bootstrap`
- `b4x-feature-engineer`
- `b4x-regression`
- `b4x-verify`
