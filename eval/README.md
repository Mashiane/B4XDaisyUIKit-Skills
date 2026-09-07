# B4XDaisyUIKit-Skills Evaluation Harness

A 5-layer test harness that measures how well a given version of the
`b4xdaisyuikit` skill suite will perform when consumed by an AI coding agent.

## Layers

| # | Layer | Speed | Cost | CI? |
| - | ----- | ----- | ---- | --- |
| 1 | Structural integrity     | < 5 s     | free  | every commit |
| 2 | Negative-knowledge rules | < 5 s     | free  | every commit |
| 3 | Component synthesis      | ~10 min   | $$$   | nightly |
| 4 | End-to-end recipes       | ~1 hr     | $$$$  | weekly |
| 5 | Drift detection          | < 30 s    | free  | when lib changes |

Layers 3 and 4 ship with a pluggable agent runner interface. The runner is
**left empty by design** — wire your own (claude-code CLI, Anthropic SDK,
internal API) and the harness will consume it.

## Quick start

```powershell
# Run all deterministic layers (1, 2, 5) — fast
.\run-harness.ps1 -Layers 1,2,5

# Run everything (requires agent runner wired in)
.\run-harness.ps1 -All

# Single layer, with custom config
.\run-harness.ps1 -Layers 3 -Config .\config\config.dev.yaml
```

Reports are written to `reports/<timestamp>.md`.

## Layout

```
eval/
  README.md                     this file
  config.yaml                   thresholds, sample sizes, paths
  run-harness.ps1               entry point
  harness.ps1                   orchestrator (loads layers, writes report)
  lib/
    Runner.ps1                  pluggable agent runner interface
    Scoring.ps1                 shared scoring helpers
    Manifest.ps1                parses plugin.json, lib manifest, component list
  cases/
    structural/                 layer 1 cases
    negative-knowledge/         layer 2 cases (banned APIs, trap patterns)
    component-synthesis/        layer 3 fixtures (component -> prompt + gold)
    e2e-recipes/                layer 4 fixtures (chapter -> scenario + gold)
    drift/                      layer 5 fixtures (lib -> expected skill coverage)
  scorers/
    structural.ps1
    negative-knowledge.ps1
    component-synthesis.ps1     uses pluggable runner
    e2e-recipes.ps1             uses pluggable runner
    drift.ps1
  gold/                         gold outputs for layer 3+4
  reports/                      generated reports, one per run
```