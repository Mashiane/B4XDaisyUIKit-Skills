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

## Implementation order

1. Verify feature, application, domain, data, screen, and acceptance contracts.
2. Implement or reuse domain rules and validation.
3. Implement the established repository/service pattern.
4. Define states such as `IDLE`, `LOADING`, `READY`, `EMPTY`, `ERROR`, `SUBMITTING`, `SUCCESS`, `UNAUTHORIZED`, and `OFFLINE` as applicable.
5. Generate screens through the `b4xdaisyuikit` manifest and verified recipes.
6. Wire events as `event → validation → operation → state transition → UI update`.
7. Apply navigation from `contract/navigation.md`.
8. Add failure detection, user recovery, and appropriate logging.
9. Run acceptance, static verification, build, runtime, and regression checks required by the risk.

Use [feature-implementation-checklist.md](../b4x-orchestrator/skills/b4x-feature-engineer/references/feature-implementation-checklist.md) and [state-machine.template.md](../b4x-orchestrator/skills/b4x-feature-engineer/references/state-machine.template.md). Maintain traceability in the form `REQ → FEATURE → RULE → SCREEN → COMPONENT → CODE → TEST`.

