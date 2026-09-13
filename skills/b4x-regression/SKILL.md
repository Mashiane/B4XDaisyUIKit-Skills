---
name: b4x-regression
description: Safely change an existing B4A/B4X application by establishing a baseline, analyzing impact, running targeted and critical-journey regression checks, and producing release evidence.
metadata:
  category: quality-engineering
  triggers: regression, modify existing app, change feature, refactor, bug fix, verify change, prevent breakage
---

# B4X Regression Engineer

Use this skill for changes to an existing application. A failed regression gate blocks release.

## Required loop

```text
baseline → impact analysis → scoped change → targeted tests
→ critical journeys → static verification → build → runtime smoke
→ visual review → traceability → release decision
```

Record the baseline build, static status, known failures, critical journeys, affected screens, and version/commit identifier. Inspect direct and transitive dependencies, navigation, persistence, APIs, assets, configuration, and tests. Classify artifacts as `DIRECT`, `DEPENDENT`, `TRANSITIVE`, or `UNRELATED`.

Create `.agent/impact-analysis.md` with risk and tests for each affected artifact. Always run changed-feature tests, dependent tests, critical smoke journeys, conformance verification, and the build. Add broader regression according to risk.

For bug fixes, reproduce before fixing. For schema changes, document migration and compatibility. For authentication, authorization, persistence, destructive operations, synchronization, or financial logic, require runtime evidence in addition to compilation.

Produce `.agent/REGRESSION.md` containing baseline, impact, tests, failures, pre-existing failures, runtime/visual evidence, and the final release decision. Use [impact-analysis.template.md](../b4x-orchestrator/skills/b4x-regression/references/impact-analysis.template.md) and [regression-report.template.md](../b4x-orchestrator/skills/b4x-regression/references/regression-report.template.md).

