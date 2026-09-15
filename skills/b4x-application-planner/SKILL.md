---
name: b4x-application-planner
description: Plan a complete B4A application or substantial feature before implementation. Produces traceable application, feature, domain, data, navigation, screen, and acceptance contracts without inventing B4XDaisyUIKit or backend APIs. Enforces engineering constitution gates G0-G8 per GATE-STATE-MACHINE.md.
metadata:
  category: application-engineering
  triggers: build app, create application, mobile app, b4a app, b4x app, feature planning, application architecture, requirements
  gates: G0-Requirements, G1-Architecture, G2-Conformance, G3-Source, G4-Compile, G5-Runtime, G6-UX, G7-Regression, G8-Release
---

# B4X Application Planner

Use this skill before implementing a complete application, a major feature, or a substantial change. It is the planning gate above `b4xdaisyuikit`, `b4x-project-bootstrap`, `b4x-feature-engineer`, and `b4x-verify`.

## Required behavior

- Classify statements as `REQUIREMENT`, `CONSTRAINT`, `BUSINESS RULE`, `ASSUMPTION`, or `OPEN QUESTION`.
- Do not invent B4XDaisyUIKit APIs, backend endpoints, database fields, or permissions. Mark unresolved details `OPEN`.
- Preserve existing architecture unless the contract explicitly authorizes a change.
- Every critical requirement maps to an acceptance test.
- Every screen belongs to exactly one feature and user journey.
- Treat the B4XDaisyUIKit library as immutable application infrastructure.

## Required artifacts

Create or update the canonical contract set:

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

All contract files use the front matter and IDs defined by `docs/contracts/CONTRACT-SCHEMA.md`. Templates:
- application: [application-contract.template.md](../b4x-orchestrator/skills/b4x-application-planner/references/application-contract.template.md)
- feature: [feature-contract.template.md](../b4x-orchestrator/skills/b4x-application-planner/references/feature-contract.template.md)
- screen: [screen-contract.template.md](../b4x-orchestrator/references/screen-contract.template.md).

## Planning order

```text
requirements → actors → features → journeys → domain → data → navigation
→ screen contracts → acceptance tests → dependency-ordered implementation plan
```

For an existing project, inspect modules, current contracts, `.agent/STATE.md`, data/API boundaries, and known verification failures before changing the plan. Finish only when critical requirements are classified, dependencies are explicit, screens have parents, and acceptance tests cover the critical path.

