---
name: b4x-feature-engineer
description: Implement a B4A application feature as a traceable vertical slice from contract through domain, data, state, native UI, navigation, errors, acceptance tests, and verification.
metadata:
  category: application-engineering
  triggers: implement feature, add feature, build feature, b4x feature, connect screen, CRUD feature, backend integration
---

# B4X Feature Engineer

Implement features as coherent vertical slices. Read the application and feature contracts before coding, and stop when a critical contract or API is missing instead of guessing.

## Slice

```text
requirement → feature contract → business rules → domain → data/repository
→ service → view state → B4XDaisyUIKit UI → navigation → acceptance test
```

## Hard rules

- Never invent B4XDaisyUIKit methods, properties, events, backend contracts, or database fields.
- Never modify the B4XDaisyUIKit library source.
- Keep business rules out of large UI event handlers.
- Make data failures visible through explicit state transitions.
- Preserve existing navigation and application conventions.
- Every changed requirement maps to implementation and test evidence.
- Do not declare success from compilation alone.

## Conditional Reconnaissance

For an existing app, inspect its current implementation before coding when the feature crosses pages or modules, changes a shared service/repository/navigation pattern, integrates with an unfamiliar area, or has no clear analogous implementation. Use this lightweight pass to learn the local conventions; it is not a new gate or a separate deliverable.

1. Find the closest implemented feature or screen and inspect its relevant page, service/repository, state handling, and navigation.
2. Trace only the affected path from the user action through validation and operation to the resulting state and UI update.
3. Identify the files and shared behaviors likely to change. Check that the observed implementation agrees with the approved contracts; record any real discrepancy in the existing plan/contract and resolve it before coding.
4. Reuse the established patterns unless the approved feature contract calls for a change. If a material behavior or integration detail cannot be established from contracts or code, mark it `OPEN` and ask only the necessary question.

Skip this pass for greenfield work already governed by the application plan and bootstrap templates, well-scoped edits whose affected code and conventions are clear, and isolated B4XDaisyUIKit composition covered by the component manifest and verified recipes. Do not create a separate reconnaissance report; when `b4x-regression` applies, use its impact analysis as the canonical change-impact record. Do not require parallel agents or multiple architecture proposals by default.

## Implementation order

1. Verify feature, application, domain, data, screen, and acceptance contracts.
2. Perform conditional reconnaissance for an existing app when the triggers above apply; otherwise proceed.
3. Implement or reuse domain rules and validation.
4. Implement the established repository/service pattern.
5. Define states such as `IDLE`, `LOADING`, `READY`, `EMPTY`, `ERROR`, `SUBMITTING`, `SUCCESS`, `UNAUTHORIZED`, and `OFFLINE` as applicable.
6. Generate screens through the `b4xdaisyuikit` manifest and verified recipes.
7. Wire events as `event → validation → operation → state transition → UI update`.
8. Apply navigation from `contract/navigation.md`.
9. Add failure detection, user recovery, and appropriate logging.
10. Run acceptance, static verification, build, runtime, and regression checks required by the risk.

Use [feature-implementation-checklist.md](../b4x-orchestrator/skills/b4x-feature-engineer/references/feature-implementation-checklist.md) and [state-machine.template.md](../b4x-orchestrator/skills/b4x-feature-engineer/references/state-machine.template.md). Maintain traceability in the form `REQ → FEATURE → RULE → SCREEN → COMPONENT → CODE → TEST`.

