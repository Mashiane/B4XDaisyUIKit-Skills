# TRUTH SYNCHRONIZATION TOOL — `sync-truth`
### B4XDaisyUIKit Application Engineering System — v2

**Status:** v1.0-adopted — companion to `ENGINEERING-CONSTITUTION.md`
(Art I, VI), `docs/contracts/CONTRACT-SCHEMA.md`,
`docs/architecture/TRACEABILITY-AND-MANIFEST.md`,
`docs/architecture/GATE-STATE-MACHINE.md`.
**Purpose:** Define the tooling that inspects the actual library and
generates/validates Level-3 truth — the only mechanism permitted to
write the component manifest and provenance artifacts.

## 1. Position

Deterministic bridge: Level 0 (library source `B4A/B4XDaisy*.bas`) +
Level 1 (packaged `.b4xlib` API surface) → Level 3 (manifest +
provenance). Only writer of `component-manifest.md`,
`component-api.json`, `component-events.json`,
`component-properties.json`, `component-provenance.json`. Same
discipline as `contract.index.json` (DECISION-001) and
`application-manifest.json` (DECISION-003): **generated, never
hand-authored, never hand-patched**.

## 2. Extend `extract.py` / `gen_components.py` — No Second Parser

The B4X extractor already exists:
`skills/sd5-book-to-skill/scripts/extract.py` (`#Event`,
`#DesignerProperty`, `Public Sub`, public fields, demo-usage scan →
`work/components.json`) + `gen_components.py` (rewrites
`api-cheat-sheet.md`, updates `component-manifest.md`, patches
`components/*.md` API sections, writes `work/api-diff.md`).
`sync-truth` extends these scripts; it does **not** stand up a parallel
parser (e.g. external `tree-sitter-b4x`/`codegraph` WASM, which is not
present in this repo and unreviewed). Two parsers disagreeing about a
`.bas` file would itself be truth drift — the failure DECISION-001/003
exist to prevent. Declarations always require parentheses in B4X, so
the existing line-anchored extraction covers the declaration surface
the manifest promises.

## 3. Inputs

- Library source tree (`B4A/B4XDaisy*.bas`, one file per component).
- Previous `sync-truth` output set, for diffing.
- Level-4 specs + Level-5 recipes referencing `COMPONENT-*` IDs.
- `SKILL.md` files referencing components.
- Registry of known apps' `application-manifest.json` (§6 cross-ref).

## 4. Extraction Algorithm (per `B4XDaisy*.bas`)

1. `Public Sub` declarations + params + returns → methods.
2. `#DesignerProperty` members → designer props; other `Public`
   members → runtime props.
3. `Event` declarations + `RaiseEvent` sites → events.
4. Checksum over **normalized** form (comments/whitespace stripped) —
   comment-only edits must not register as drift.
5. Record `source-class`, `source-commit` (git SHA at scan),
   `library-version`, `scan-timestamp`.

## 5. Outputs

| File | Content |
|---|---|
| `component-manifest.md` | Human-readable index per component: methods/props/events + `verification-status` — generated, never hand-edited |
| `component-api.json` | Machine-readable method signatures per component |
| `component-events.json` | Machine-readable events per component |
| `component-properties.json` | Machine-readable designer + runtime props |
| `component-provenance.json` | Per component: `source-class`, `source-commit`, `library-version`, per-member `checksum`, `api/property/event/styling-verification-status`, demo pages, `last-verification-timestamp` (Constitution Art VI field set) |

## 6. Drift Detection — Per Member

Fresh extraction vs prior checksum, per **member** (one changed method
must not invalidate ten unrelated ones):

| Case | Result |
|---|---|
| Checksum unchanged | `confirmed`; timestamp still updates ("true as of scan") |
| Changed, extracted API/props/events identical | Internal refactor — commit/checksum update, stays `confirmed`, logged internal-revision, **no false alarm** |
| Changed AND member signature/props/events differ | Only *that member* → `stale` |
| File removed | Provenance `removed`; every ref an orphan (schema §6) resolved before dependent screens pass G2 |

## 7. Downstream Cross-Reference & Impact

Each `stale`/`removed` member produces a drift report over every known
`application-manifest.json`: `COMPONENT` refs `confirmed` at a
historical gate now stale. A `RELEASED` app does **not** retroactively
fail — its immutable `GATE-INSTANCE` snapshots stay valid evidence of
ship-time truth; it is *flagged for maintainer decision* (patch,
deprecate, accept). Only pre-`RELEASED` apps block: no G2 for affected
screens until re-confirm or visible human `DECISION` override (never
silent).

## 8. Trigger Cadence

- **Mandatory** on every library version bump.
- **Scheduled** (nightly/weekly CI) even without a bump — catches source
  committed ahead of a version tag.
- **On-demand** before a new app/feature: re-verify only on bump or
  manual trigger. No time-based age-out default (no invented threshold;
  library-release policy may add one later as its own DECISION).

## 9. Gate Integration

G2/G3 (per `GATE-STATE-MACHINE.md` §1) read
`component-provenance.json` per-member `verification-status` directly.
`stale`/`removed` blocks G2 for using screens — mechanical Art VI
drift detection gating, not reporting.

## 10. Worked Example

Lib 0.95→0.96; `B4XDaisyButton.bas` gains required param on
`SetRippleColor` (hypothetical — validate against real
`work/api-diff-v0.94-to-v0.95.md` + pending `Releases/v0.96/` before
use as fixture): checksum changes, API differs →
`component-provenance.json` marks only
`B4XDaisyButton.SetRippleColor → stale` (siblings stay `confirmed`).
Drift report lists every SCREEN using it (e.g. SCREEN-001 login if it
calls `SetRippleColor`; default-styling users unaffected). No G2 for
affected screens until spec/recipe updated + re-verified.