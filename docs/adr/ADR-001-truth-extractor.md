# ADR-001 — Extend, Don't Replace, the Truth Extractor
- date: 2026-09-10
- context: SYNC-TRUTH needed provenance JSONs + per-member checksums.
  External tree-sitter/codegraph WASM proposed but absent + unreviewed.
- decision: Extend `extract.py`/`gen_components.py` (line-anchored
  `#Event`/`#DesignerProperty`/`Public Sub`) with normalized checksums.
- alternatives: adopt tree-sitter-b4x grammar (rejected: second parser =
  second truth source; declarations require parens anyway).
- affects: [SYNC-TRUTH-TOOL, extract.py, gen_components.py]

# ADR-002 — Remediation Counters Keyed by (gate, scope)
- date: 2026-09-10
- context: Global-per-gate counter blocks unrelated future work.
- decision: `(gate, scope-id)` keying in `.agent/STATE.md`
  (GATE-STATE-MACHINE.md §3); pass resets that pair to 0; 4th same-pair
  failure escalates.
- affects: [CONTRACT-SCHEMA, GATE-STATE-MACHINE, STATE.md template]

# ADR-003 — Generated Manifests, VCS Retention, No Pruning
- date: 2026-09-10
- context: `contract.index.json` + `application-manifest.json` duplicate
  markdown truth unless generated; history unbounded.
- decision: Both always generated (DECISION-001/003); timestamped priors
  retained in VCS, never pruned (DECISION-004). Storage later = new ADR.
- affects: [verify-contract.ps1, build-manifest.ps1]
