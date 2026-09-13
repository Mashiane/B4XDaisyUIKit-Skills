# ADR-003 — Generated Manifests, VCS Retention, No Pruning
- date: 2026-09-10
- context: `contract.index.json` + `application-manifest.json` duplicate
  markdown truth unless generated; history unbounded.
- decision: Both always generated (DECISION-001/003); timestamped priors
  retained in VCS, never pruned (DECISION-004). Storage later = new ADR.
- affects: [verify-contract.ps1, build-manifest.ps1]
- date: 2026-09-10
- context: `contract.index.json` + `application-manifest.json` duplicate
  markdown truth unless generated; history unbounded.
- decision: Both always generated (DECISION-001/003); timestamped priors
  retained in VCS, never pruned (DECISION-004). Storage later = new ADR.
- affects: [verify-contract.ps1, build-manifest.ps1]
