# TRACEABILITY MODEL & APPLICATION MANIFEST
### B4XDaisyUIKit Application Engineering System — v2

**Status:** v1.0-adopted — companion to `ENGINEERING-CONSTITUTION.md`
(Art V, VI) and `docs/contracts/CONTRACT-SCHEMA.md`.
**Purpose:** Traceability graph representation + `application-manifest.json`
shape — the machine-readable index connecting contract ↔ source ↔ build
↔ runtime ↔ evidence.

## 1. Relation to `contract.index.json`

| Artifact | Scope | Inputs |
|---|---|---|
| `contract.index.json` | Contract layer only (DECISION-001) | `contract/*.md` |
| `application-manifest.json` | Full index: contract + source + build + runtime + evidence | contract index + source scan + build output + gate evidence |

Manifest is a superset generated *from* the index, not a replacement.
Same rule one level up: **always generated, never hand-authored**
(DECISION-003, §6).

## 2. The Traceability Graph

Chain `REQ → FEATURE → RULE → SCREEN → COMPONENT → CODE → TEST` is a
simplified path through a **graph**: a component serves many screens, a
rule spans features, a test verifies several rules. Edge list, not tree.

Node types: `REQ FEATURE RULE SCREEN COMPONENT CODE DECISION
GATE-INSTANCE EVIDENCE TEST`. (`CODE` = module/sub path, e.g.
`CODE:LoginPage.bas#BtnLogin_Click`, greppable. `GATE-INSTANCE` never
edited — re-runs create new nodes.)

| Edge | Meaning |
|---|---|
| `implements` | FEATURE implements REQ |
| `applies-to` | RULE applies to FEATURE/SCREEN |
| `belongs-to` | SCREEN belongs to FEATURE |
| `uses` | SCREEN/CODE uses COMPONENT |
| `realizes` | CODE realizes SCREEN/FEATURE |
| `verifies` | TEST verifies REQ/RULE |
| `covers` | TEST covers SCREEN/FEATURE |
| `evaluates` | GATE-INSTANCE evaluates FEATURE/SCREEN/CODE |
| `produces` | GATE-INSTANCE produces EVIDENCE |
| `affects` | DECISION affects FEATURE/RULE/SCREEN |

```json
{"edges": [
  {"from": "FEATURE-001", "type": "implements", "to": "REQ-001"},
  {"from": "SCREEN-001", "type": "belongs-to", "to": "FEATURE-001"},
  {"from": "SCREEN-001", "type": "uses", "to": "COMPONENT-B4XDaisyButton"},
  {"from": "TEST-001", "type": "verifies", "to": "REQ-001"}]}
```

The edge list lives inside `application-manifest.json` (§5) — no
separate file.

## 3. Derived Analyses (mechanical graph queries, never eyeballed)

- **Orphan detection** — CODE w/o incoming `realizes`, SCREEN w/o
  `belongs-to`, TEST w/o `verifies`, COMPONENT w/o `uses`. Schema
  violations, surfaced by ID.
- **Requirement coverage** — per critical REQ: path
  `REQ ← implements ← FEATURE ← realizes ← CODE` exists AND ≥1 TEST
  verifies it with pass? Report % *and* the failing REQ list.
- **Impact analysis** — version-bumped node (e.g. RULE-004): walk
  `applies-to`/`verifies` both directions → full FEATURE/SCREEN/CODE/TEST
  re-verify set before next gate closes.
- **Regression targeting** — changed CODE files → `realizes` →
  SCREEN/FEATURE → covering TESTs. Only those re-run (G7 targeted, not
  full re-run).

## 4. Node Identity Rules

Contract nodes exist per CONTRACT-SCHEMA; CODE nodes are real file
paths; EVIDENCE nodes are real paths/URIs (build logs, screenshots,
test output). `COMPONENT-<Name>` normalizes to manifest
`B4XDaisy<Name>` (see schema §2).

## 5. `application-manifest.json` Schema

```json
{"application": {"id": "app-<slug>", "name": "<name>",
  "contract-version": "<contract.index.json version>",
  "lifecycle-state": "IMPLEMENTED", "generated-at": "<ISO>",
  "generator-version": "<tool version>"},
 "features": [{"id": "FEATURE-001", "status": "APPROVED",
  "screens": ["SCREEN-001"], "rules": ["RULE-001"]}],
 "screens": [{"id": "SCREEN-001", "feature": "FEATURE-001",
  "components": ["COMPONENT-B4XDaisyInput", "COMPONENT-B4XDaisyButton"],
  "code": ["CODE:LoginPage.bas"], "tests": ["TEST-001"]}],
 "components": [{"id": "COMPONENT-B4XDaisyButton", "library-version": "0.95",
  "verification-status": "confirmed", "used-by": ["SCREEN-001"]}],
 "source-modules": [{"path": "LoginPage.bas", "realizes": ["SCREEN-001"],
  "checksum": "<sha256>", "last-modified": "<ISO>"}],
 "tests": [{"id": "TEST-001", "verifies": ["REQ-001", "RULE-001"],
  "last-run": "<ISO>", "result": "pass", "evidence": "EVIDENCE-014"}],
 "build": {"b4a-first-line": "Build1=Default,<pkg>",
  "bas-first-line": "B4A=true", "NumberOfModules": 6,
  "NumberOfFiles": 2, "last-build-status": "success",
  "evidence": "EVIDENCE-011"},
 "gates": {"G0": {"status": "closed", "closed-at": "<ISO>",
  "evidence": "EVIDENCE-002"},
  "G3": {"status": "open", "remediation-loop-count": {"SCREEN-001": 1}}},
 "evidence": [
  {"id": "EVIDENCE-011", "type": "build-log",
   "path": "evidence/build-2026-09-09.log", "produced-by-gate": "G4"},
  {"id": "EVIDENCE-014", "type": "test-result",
   "path": "evidence/test-001.json", "produced-by-gate": "G7"}],
 "edges": [
  {"from": "FEATURE-001", "type": "implements", "to": "REQ-001"},
  {"from": "SCREEN-001", "type": "belongs-to", "to": "FEATURE-001"}]}
```

Derivation (all mechanical): features/screens ← contract.index.json;
components ← Level-3 manifest × contract usage; source-modules ← fs
scan + checksum; tests/build/gates/evidence ← runner/build/gate output,
never agent narrative. NOTE: `build` records `.b4a` line 1 (`Build1=`)
and `.bas` line 1 (`B4A=true`) **separately** — they are different files
with different required first lines (RULE-SETUP-002/003).

## 6. Generation & Regeneration (DECISION-003)

Regenerated at every gate-transition attempt — before evaluation
(snapshot) and after (result + evidence). Never hand-edited; manual
edit = schema violation (as DECISION-001). Priors retained timestamped
(`application-manifest.<ISO>.json`) or in VCS — never overwritten.
Reconstructs "what was true when built" for G8 audit. Source-module
`checksum` + component `verification-status`/`library-version` feed
drift detection (Constitution Art VI).

## 7. Worked Example — G4 for login

G4 closes → manifest gains `gates.G4 closed + EVIDENCE-011 (build-log)`.
Impact query on bumped RULE-001 walks `applies-to` → FEATURE-001 →
`belongs-to` → SCREEN-001 → `verifies` → TEST-001: exactly that set
re-verifies, nothing over/under-scoped.

## 8. DECISION-004: retention via VCS, no pruning

Every timestamped snapshot retained indefinitely in version control,
committed per gate attempt, never auto-pruned. Matches "evidence
durable" (Art II.10). Storage growth later = new decision, not a
default designed around today.
