# Manifest Generator — `contract.index.json` → `application-manifest.json`
### B4XDaisyUIKit Application Engineering System — v2

**Status:** v1.0 spec — implements `docs/architecture/TRACEABILITY-AND-MANIFEST.md` §5–§6 (DECISION-003/004).
**Tools:** `skills/b4x-verify/references/build-contract-index.ps1 -AppFolder <app>`
(Input 1, DECISION-001) → `skills/b4x-verify/references/build-manifest.ps1
-AppFolder <app> [-ContractVersion <v>] [-Gate G0..G8 -GateResult PASS|FAIL
-Scope <id>] [-EvidencePath <path> -EvidenceType <type>] [-LifecycleState <state>]`.
Never hand-edited (schema violation); regenerated at every gate attempt (before = snapshot, after = result + evidence); priors retained timestamped / in VCS.

## Inputs
1. `contract.index.json` — generated from `contract/*.md` (DECISION-001; parse front matter + §4 sections + IDs).
2. Source scan — `.bas` files: path, `ModuleN=` linkage, sha256, `realizes` edges (SCREEN/FEATURE via contract code areas), `uses` edges (grep `B4XDaisy[A-Za-z0-9_]+`, normalize `COMPONENT-*` both ways).
3. Level-3 provenance — `component-provenance.json`: per-component `library-version`, `verification-status`, `used-by` screens.
4. Build output — `.b4a` first line (`Build1=`), each `.bas` first line (`B4A=true`), `NumberOfModules`/`NumberOfFiles` counts, last build status + log path. NOTE: `.b4a` and `.bas` first lines recorded **separately** (different files, RULE-SETUP-002/003).
5. Gate evidence — per-gate status/closed-at/evidence refs + `GATE-INSTANCE` nodes (immutable, new node per re-run) + `(gate, scope)` loop counters from `.agent/STATE.md`.

## Output
`application-manifest.json` per traceability §5 schema (application / features / screens / components / source-modules / tests / build / gates / evidence / edges) + timestamped priors `application-manifest.<ISO>.json`. Powers §3 queries: orphans, coverage (% + failing REQ list), impact (bumped node → re-verify set), regression targeting (changed CODE → covering TESTs for G7).
