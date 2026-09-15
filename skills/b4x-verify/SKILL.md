---
name: b4x-verify
description: Use when validating a generated B4XDaisyUIKit user interface app before build (conformance / compile-readiness / static layout gate) OR when running a post-build visual UX review of rendered Android screens against Nielsen heuristics, Material Design, and WCAG 2.2 AA.
metadata:
  category: technique
  triggers: verify app, conformance check, invented api, module wiring, NumberOfModules, before build, before install, gate, coverage, user interface, development, user experience, tailwindcss, native, android, ux review, ui review, screenshot review, visual review, mobile ux review, accessibility audit, post-build review
---


See [truth-and-accuracy.md](../b4xdaisyuikit/references/truth-and-accuracy.md) — applies to every response.

---

# B4X Verify

The gate between composition and build. Catches the two failure modes that
silently break a generated B4XDaisyUIKit app: invented component APIs, and
unwired page modules.

## Full Pipeline (shift-left)

```text
G0 contract       ->  verify-contract.ps1 (schema gate; build-manifest.ps1
                      regenerates application-manifest.json)  ->
Stage 5 generate  ->  pre-scan.ps1  ->  verify-conformance.ps1  ->
  ./install.ps1  (auto-runs build-watch.ps1 after launch)  ->
  capture-screens.ps1  ->  ux-review.md (consumes BUILD-WATCH report)
```

- **verify-contract.ps1** (this skill): G0 contract-schema gate
  (docs/contracts/CONTRACT-SCHEMA.md §6). Validates `contract/*.md` +
  `.agent` state mechanically before any generation: sections, defined IDs,
  OPEN dependencies, critical REQ→TEST, screen parentage, provenance.
  Exit 1 = do not generate.
- **build-manifest.ps1** (this skill): regenerates
  `application-manifest.json` (+ timestamped prior) from `contract/`,
  source modules, and `component-provenance.json`
  (docs/architecture/MANIFEST-GENERATOR.md). Never hand-edit the manifest.
- **pre-scan.ps1** (this skill): fast negative-knowledge grep. Catches the bans
  the conformance gate does not (web tech, Flex/Grid, Parent.AddView, broken
  validator, documented-only misuse). Advisory + hard-fail on clear bans. Run
  before verify-conformance.ps1 so the gate confirms rather than discovers.
- **verify-conformance.ps1** (this skill): authoritative pre-build gate
  (conformance, documented-only, compile-readiness, static layout). Exit 1 = do
  not build.
- **build-watch.ps1** (b4x-project-bootstrap skill, auto-run by install.ps1):
  build-stage runtime gate. Evidences the UX-review items a screenshot cannot
  prove (crash/ClassNotFound, touch-target dp, TalkBack labels, startup time,
  jank). Writes `ux-review/BUILD-WATCH-<YYYYMMDD>.md`.
- **capture-screens.ps1** + **ux-review.md** (this skill): post-build visual
  review. Reads the BUILD-WATCH report and marks its verified items as
  **Verified at build** instead of Verification Required.

## When to Use

- After composing app pages with the `b4xdaisyuikit` skill, before
  `./install.ps1`.
- A page compiles standalone but the build omits it (module not wired).
- Suspecting a referenced component method/property does not actually exist.
- Final check before declaring a generated app done.

## When NOT to Use

- Composing pages (use `b4xdaisyuikit`).
- Scaffolding the shell (use `b4x-project-bootstrap`).
- The library source itself (immutable; out of scope).

## The Quality Inspector Gate (Five Checks)

Run the checker from the app folder:

```powershell
pwsh -File <skill>/references/verify-conformance.ps1 -AppFolder C:\b4a\workspace\<AppName>
```

Exit 0 = pass, 1 = fail.

1. **Component conformance.** Every `B4XDaisy*` type referenced in the app's `.bas` files must exist in `component-manifest.md`. Catches invented APIs and misspelled component names.

2. **API-member conformance.** Every member called on a declared B4XDaisy component variable must exist in the generated API corpus.

3. **Documented-only.** Flags use of components marked `Documented-only` (per manifest rule: requires explicit user approval before introducing).

4. **Compile-readiness.** Catches `.b4a` project file and module wiring defects before invoking `B4ABuilder`:
   - Every `ModuleN=<Name>` has a matching `<Name>.bas` file; `NumberOfModules` matches the count; `B4XMainPage` is present.
   - One `FileGroupN=Default Group` per `FileN`, and `NumberOfFiles` matches.
   - Every `FileN` exists in `Files\`.
   - `#AdditionalRes` target folder exists.
   - The `.b4a` first line is `Build1=` and every `.bas` first line is `B4A=true`.

5. **Static Layout & UX Quality Gate.** Inspects code patterns against mandatory runtime rules and Definition of Done:
   - Verifies that any file referencing `B4XDaisyPageScroll` calls `.AutoFit` at the end of rendering (`RULE-LAYOUT-003`).
   - Verifies that `navbar.BringToFront` is called directly, rejecting `.getView.BringToFront` anti-patterns (`RULE-INTERACT-001`).
   - Verifies that structured error logging is present (detects empty `Catch` blocks, `RULE-CODE-002`).
   - Warns if touch-drag gesture components (`ColorWheel`, `Range`, `DualRange`, `Carousel`) are nested in scroll containers without `DisallowParentIntercept` (`RULE-INTERACT-002`).

---

## Automated Inspection & Repair Loop

```text
┌────────────────────────┐
│  Run verify script     │ ◄──────────┐
└───────────┬────────────┘            │
            │                         │
      Pass or Fail?                   │
            │                         │
     ┌──────┴──────┐                  │
     ▼             ▼                  │
   PASS          FAIL                 │
     │             │                  │
     │     ┌───────┴───────────────┐  │
     │     │ Execute Targeted Fix  │  │
     │     │ (Re-read rule/spec)   │  │
     │     └───────┬───────────────┘  │
     │             │                  │
     │             └──────────────────┘
     ▼
Launch ./install.ps1
```

1. **If Conformance Fails**: Locate the flagged token in the `.bas` file. Replace it with a verified method or component from `component-manifest.md` and `components/<name>.md`.
2. **If API-member or Compile-Readiness Fails**: Replace the member with an API from the generated corpus, or adjust `.b4a` `ModuleN` entries, bump `NumberOfModules`, or fix file headers.
3. **If Static Layout Fails**: Add `pageScroll.AutoFit` to the end of the page render routine or fix `navbar.BringToFront`.
4. **Re-run Gate (cap 3 per scope, then escalate):** track attempts in `.agent/STATE.md` as `remediation-loop-count: {<gate>: {<scope-id>: <n>}}` (scope = feature/screen ID per GATE-STATE-MACHINE §2; a global-per-gate counter is wrong). Each re-evaluation appends a new `GATE-INSTANCE` node — never overwrite. Pass resets that `(gate, scope)` counter to 0. On the 4th failure of the same `(gate, scope)`: halt, do NOT attempt again, do NOT run `./install.ps1`, and escalate to the human with failing gate, scope, all prior `GATE-INSTANCE` refs, and the specific unresolved question (Constitution Art X, GATE-STATE-MACHINE §3). Await human decision recorded in DECISIONS.md.

## Testing Pyramid (70 / 20 / 10, B4X-adapted)

Static gates prove the app is wired; tests prove it behaves. Three tiers:

1. **Unit (70%)** — pure logic: validation subs, formatters, state mappers, coordinate math. Isolate from views/HttpJob (pass Maps/Lists in, assert out). Target: every validation + mapper sub covered.
2. **Integration (20%)** — SQLite round-trips (in-memory or scratch DB) and HttpJob calls against staging with recorded fixtures. Verifies cache + remote coordination and the §9.2 retry paths (force timeout once, assert backoff + fallback).
3. **E2E (10%)** — critical journeys only (login, core action, checkout): `build-watch.ps1` (crash/ANR, touch dp, TalkBack, startup, jank) + `capture-screens.ps1` + `ux-review.md`. Run on a real device before release; smoke subset on every PR.

Rules: hermetic tests (no shared mutable state), factories over copy-paste fixtures, one failing-before/passing-after test per bug fix (root-cause proof).

## Procedure

1. **Pre-scan first** (advisory, catches bans the gate does not):
   ```powershell
   pwsh -File <skill>/references/pre-scan.ps1 -AppFolder C:\b4a\workspace\<AppName>
   ```
   Fix any FAIL (web tech, Flex/Grid, Parent.AddView) and review WARN (direct
   sizing, broken validator, documented-only) before running the gate.
2. Run the conformance checker against the app folder.
3. If CONFORMANCE fails: open each flagged file, find the invented
   reference, replace with a real component/recipe from the `b4xdaisyuikit`
   skill. Do NOT "fix" by editing the library.
4. If DOCUMENTED-ONLY warns: confirm the user approved each, or swap to a
   `Demonstrated` component.
5. If API-member or COMPILE-READINESS fails: replace the invalid member, or add the missing `ModuleN=<Name>` line to the
   `.b4a`, bump `NumberOfModules`, or create the missing `.bas`. Check
   `B4XMainPage` is present and named exactly.
6. Re-run until PASS subject to the same cap-3 per `(gate, scope)` rule as step 4 of the Repair Loop above (counter in `.agent/STATE.md`, new `GATE-INSTANCE` per attempt, escalate — never a 4th attempt — per Constitution Art X).
7. Then run `./install.ps1` for the real build ONLY on PASS or human override recorded in DECISIONS.md. install.ps1 auto-runs
   build-watch.ps1 after launch; read its `ux-review/BUILD-WATCH-*.md` output
   before the post-build visual review.

## Red flags (STOP)

| Thought | Reality |
|---------|---------|
| "The checker is wrong, this method exists" | Manifest is mechanically extracted from the packaged library. If it is not there, it does not exist. Do not override. |
| "I'll add the method to the library .bas" | `B4A/*.bas` are immutable. Compose differently. |
| "ModuleN wiring is cosmetic" | Unwired pages are silently omitted from the build. Non-negotiable. |
| "NumberOfModules off by one is fine" | It is not. The IDE/build trusts the count. Fix it. |
| "Coverage must pass too" | Coverage is a judgment call, not scriptable. Done during composition. |

## Phase 2 — Visual UX Review (Post-Build)

The static gate above runs **before** `./install.ps1`. Phase 2 runs **after**
the app builds, installs, and launches on a device or emulator. It reviews
what the user actually sees on the rendered screen, not the source. Source
review cannot catch low-contrast text, cramped touch targets, a missing
empty state, or a primary action buried below the fold.

### When to Use

- After `./install.ps1` succeeds and the app launches.
- Before declaring a generated screen shippable.
- When a screen "looks off" but passes the static gate.

### When NOT to Use

- Before build (use the static gate above).
- Without a rendered screenshot. A review from source alone is guessing.

### Procedure

1. **Build + install**: `./install.ps1` (builds + installs to device/emulator).
2. **Capture screenshots** (auto, adb):
   ```powershell
   pwsh -File <skill>/references/capture-screens.ps1 -AppFolder C:\b4a\workspace\<AppName> -Label "LoginPage"
   ```
   Navigate the app to the next screen, re-run with a new `-Label`. With no
   device attached, the script prints the fallback folder
   (`<AppFolder>/ux-review/screens/`); drop PNGs there manually. Manually
   dropped PNGs are unverified evidence — G6 stays OPEN until provenance
   (adb capture or human DECISION accepting the shots) is recorded.
3. **Read the build-stage report first**: open
   `<AppFolder>/ux-review/BUILD-WATCH-<YYYYMMDD>.md` (auto-generated by
   build-watch.ps1 during install). Mark its **Verified at build** items
   (crash-free, touch-target dp, TalkBack labels, startup time, jank) as
   verified in the UX review, not Verification Required. Carry its warnings
   and errors into the Issue Register.
4. **Review**: follow `references/ux-review.md`. Two modes: `quick`
   (7-category UX pass) for fast iteration, `full` (14-category audit before
   ship: Visual UI, Visual Hierarchy, UX Heuristics, Material/Android,
   Accessibility, Touch Targets, Form Usability, Information Architecture,
   Error Prevention, Perceived Performance, Dark Mode, Tablet/Foldable,
   Design System/DaisyUI consistency, Conversion). Every finding carries
   severity 1-5 **and** Priority Now/Next/Later, Confidence High/Medium/Low,
   and Verification Required where a screenshot cannot prove the issue (dp
   sizes, TalkBack, contrast ratios, runtime performance). Produce a report
   at `<AppFolder>/ux-review/UX-REVIEW-<YYYYMMDD>.md` with the Issue Register
   (Problem, Evidence, Why It Matters, Recommendation, Expected Impact,
   Screenshot Location file+area, drafted B4X fix ticket), Summary Sections
   (Top 5/10, Quick Wins, Accessibility Blockers, Runtime Verification
   Checklist, Performance Perception Risks, Strengths, Design Consistency
   Risks), Flow Assessment (multi-screen), and Final Assessment (Release
   Readiness tier).
5. **Apply fixes**: the user unlocks the flagged app-authored page `.bas` (orchestrator/human unlock flow with existing tooling), pastes the drafted snippet, re-locks. Do not edit `B4A/B4XDaisy*.bas` library source; app-authored page `.bas` remain agent-editable pre-release per Constitution Art II.5.
6. **Re-verify (cap 3 per `(gate, scope)`, then escalate):** re-run the static gate, re-capture, re-review until no severity >= 4 remains, subject to the same cap-3 per `(G6, screen)` rule as the Repair Loop above (counter in `.agent/STATE.md`, new `GATE-INSTANCE` per attempt, escalate — never a 4th attempt — per Constitution Art X).

### Output Contract

- Report path: `<AppFolder>/ux-review/UX-REVIEW-<YYYYMMDD>.md`.
- Mode (`quick` or `full`) stated at the top.
- Every finding distinguishes observed vs inferred vs runtime-verification
  (Confidence + Verification Required). No claiming dp sizes, TalkBack,
  contrast ratios, or performance from a screenshot.
- Every finding cites a screenshot path that exists in
  `<AppFolder>/ux-review/screens/` and a rule ID from the doctrine refs.
- Every fix ticket names a real property from `component-manifest.md` or the
  component's `.md` spec. If a property is uncertain, the ticket says so and
  leaves a comment instead of code (Verification Required: Yes).
- Do not invent problems to appear thorough; do not confuse preference with
  defect.

## References

- `references/verify-contract.ps1` (G0 contract-schema gate per docs/contracts/CONTRACT-SCHEMA.md §6)
- `references/build-contract-index.ps1` (contract.index.json generator per CONTRACT-SCHEMA.md DECISION-001; run before verify-contract.ps1)
- `references/build-manifest.ps1` (application-manifest.json generator + gate evidence write-back per docs/architecture/MANIFEST-GENERATOR.md)
- `references/pre-scan.ps1` (fast negative-knowledge pre-scan, run before the gate)
- `references/verify-conformance.ps1` (static pre-build gate script)
- `references/production-hardening.md` and `references/verify-production-hardening.ps1` (release-only security gate)
- `references/capture-screens.ps1` (Phase 2 adb screenshot capture)
- `references/ux-review.md` (Phase 2 reviewer prompt + report format)
- `../b4x-project-bootstrap/references/build-watch.template.ps1` (build-stage runtime gate; dropped as `build-watch.ps1` and auto-run by `install.ps1`; writes `ux-review/BUILD-WATCH-<YYYYMMDD>.md` consumed by Phase 2)
- `../b4xdaisyuikit/references/component-manifest.md` (source of truth, read-only)
- `../b4xdaisyuikit/references/ux-master-doctrine.md` (quantitative UX rules)
- `../b4xdaisyuikit/references/design-heuristics.md` (design heuristics)
