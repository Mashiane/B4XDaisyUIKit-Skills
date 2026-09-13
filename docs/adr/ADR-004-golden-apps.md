# ADR-004 — Golden Applications

- date: 2026-09-11
- status: Accepted
- context: The audit (Appendix B) recommends 5–10 canonical applications for eval Layers 6–8.
- decision: Create golden-app scaffolding under `gold-apps/` — per app: `requirements/requirements.md` (the only agent-visible input), `contract/` (application, navigation, domain-model, data-contract, business-rules, acceptance-tests, `features/`, `screens/`), `expected-screens/`, `tests/`, and `gold-build/` (reference manifest snapshots + logs).
- affects: [gold-apps/*, eval/cases/]

## Consequences

- First golden app: `gold-apps/stock-taking` (scaffold: requirements + contract + tests).
- `expected-screens/` and `gold-build/` are filled only from a real reference
  build — never fabricated (Constitution Art II.3: unknown = OPEN).
- Eval Layers 6–8 (application behavior, change management, agent recovery)
  and regression benchmarks compare generated apps against these specs
  instead of ad-hoc prompts.
- A golden app contract must pass the G0 gate
  (`skills/b4x-verify/references/verify-contract.ps1`) before it is used as
  eval truth; FEATURE/SCREEN files must be APPROVED before generation.
