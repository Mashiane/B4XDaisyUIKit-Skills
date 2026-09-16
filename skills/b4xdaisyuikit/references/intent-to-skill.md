# intent-to-skill — deterministic task → skill resolution

Deterministic first: keyword match against `skills-registry.json` keywords/triggers → filter by platform + status (exclude deprecated unless explicitly requested) → resolve `depends` transitively → order by authority (domain first) → emit selected + rejected-with-reason. No embeddings. This file is the human-readable form of that rule; the registry is the machine-readable form.

## Resolution table

| Task keywords | Selected IDs | Why | Rejected + reason |
|---|---|---|---|
| new app, greenfield, scaffold, project file, B4XMainPage | b4x-project-bootstrap, b4xdaisyuikit, b4x-verify | shell first, then composition, then gate | b4x-regression (no existing behavior to protect) |
| login screen, auth flow, form validation | b4x-application-planner, b4xdaisyuikit, b4x-verify | auth touches requirements + contract before composition | b4x-project-bootstrap (not greenfield) |
| navigation shell, navdock, multi-page app, back behavior | b4x-application-planner, b4xdaisyuikit, b4x-project-bootstrap, b4x-verify | shell structure + composition + gate | b4x-regression (greenfield, nothing to regress) |
| plan app, feature planning, requirements, architecture | b4x-application-planner (+ orchestrator for full build) | contract set before code; no contract = no gen | b4x-feature-engineer (no contract yet), bootstrap (plan before shell) |
| implement feature, vertical slice, connect screen | b4x-feature-engineer, b4xdaisyuikit, b4x-verify | slice needs domain + gate | bootstrap (not greenfield), orchestrator (single feature, not release) |
| compose UI, screen, form, dashboard, navbar, modal, DaisyUI native | b4xdaisyuikit, b4x-verify | domain generation + conformance gate | generic styling skill (platform mismatch; authority 6 loses to 2) |
| verify, conformance, invented API, module wiring, before build | b4x-verify | static gate before compile | — (gate never skipped; failed gate blocks) |
| release, ship app, end-to-end, full app, screen contract | b4x-orchestrator + all depends | thin sequencer owns G0-G8 for multi-scope release | single-component shortcut (release requires full gate chain) |
| change existing app, fix, regression, impact | b4x-regression, b4x-verify | baseline → impact → targeted + smoke | bootstrap (not greenfield), planner (unless contract changes) |

## Rules

1. `b4x-verify` is selected for every code-producing task. Verification is not optional.
2. `b4x-orchestrator` only for multi-scope release work; single screens/features resolve without it.
3. Domain (authority 2) wins over generic skills on any conflict; cite the winning source.
4. Unknown component name → answer "not in manifest" + cite manifest lookup. Never generate.
5. `status: deprecated` skills are excluded unless the task explicitly names them; `replaced_by` is suggested instead.

## Diagnostic format (emit with every selection)

```text
Task: <one line>
Selected: <id> — Reason: <rule/dependency>
Rejected: <id> — Reason: <platform mismatch | not greenfield | no contract yet | authority loses | deprecated>
Evidence: <registry entries + manifest hits cited>
```
