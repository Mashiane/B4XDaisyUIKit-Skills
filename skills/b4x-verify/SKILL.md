---
name: b4x-verify
description: Use when validating a generated B4XDaisyUIKit user interface app before build (conformance / compile-readiness / static layout gate) OR when running a post-build visual UX review of rendered Android screens against Nielsen heuristics, Material Design, and WCAG 2.2 AA.
metadata:
  category: technique
  triggers: verify app, conformance check, invented api, module wiring, NumberOfModules, before build, before install, gate, coverage, user interface, development, user experience, tailwindcss, native, android, ios, desktop, ux review, ui review, screenshot review, visual review, mobile ux review, accessibility audit, post-build review
---

## Truth and Accuracy — Apply in Every Response

You are committed to truth and accuracy above everything else, including being helpful. A wrong answer delivered confidently is worse than no answer. Follow these 7 rules in every response:

1. **UNCERTAINTY**: If you are not fully certain about something, say so clearly. Use phrases like "I am not certain, but..." or "You may want to verify this...". Never state guesses as facts.
2. **SOURCES**: Do not invent paper titles, author names, URLs, or book references. If you cannot name a real, verifiable source, say "I do not have a verified source for this."
3. **STATISTICS**: Flag any number you are not 100 percent confident in. Say "approximately" and recommend I verify it from a primary source.
4. **RECENT EVENTS**: Remind me when a topic may have changed since your knowledge cutoff. Do not present outdated info as current.
5. **PEOPLE and QUOTES**: Never attribute a quote to a real person unless you are certain they said it. If unsure, say "I cannot confirm this quote is accurate."
6. **CODE and TECHNICAL**: Never invent function names, library methods, or API syntax. If unsure a function exists, tell me to verify it in the current docs.
7. **LOGIC GAPS**: Do not fill missing context with assumptions. If something is unclear, ask a clarifying question before answering.

If a response would require breaking any of these rules, choose honesty over helpfulness every time.

---

# B4X Verify

The gate between composition and build. Catches the two failure modes that
silently break a generated B4XDaisyUIKit app: invented component APIs, and
unwired page modules.

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

## The Quality Inspector Gate (Four Checks)

Run the checker from the app folder:

```powershell
pwsh -File <skill>/references/verify-conformance.ps1 -AppFolder C:\b4a\workspace\<AppName>
```

Exit 0 = pass, 1 = fail.

1. **Conformance.** Every `B4XDaisy*` type referenced in the app's `.bas` files must exist in `component-manifest.md`. Catches invented APIs and misspelled component names.

2. **Documented-only.** Flags use of components marked `Documented-only` (per manifest rule: requires explicit user approval before introducing).

3. **Compile-readiness.** Catches `.b4a` project file and module wiring defects before invoking `B4ABuilder`:
   - Every `ModuleN=<Name>` has a matching `<Name>.bas` file; `NumberOfModules` matches the count; `B4XMainPage` is present.
   - One `FileGroupN=Default Group` per `FileN`, and `NumberOfFiles` matches.
   - Every `FileN` exists in `Files\`.
   - `#AdditionalRes` target folder exists.
   - The `.b4a` first line is `Build1=` and every `.bas` first line is `B4A=true`.

4. **Static Layout & UX Quality Gate.** Inspects code patterns against mandatory runtime rules and Definition of Done:
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
2. **If Compile-Readiness Fails**: Adjust `.b4a` `ModuleN` entries, bump `NumberOfModules`, or fix file headers.
3. **If Static Layout Fails**: Add `pageScroll.AutoFit` to the end of the page render routine or fix `navbar.BringToFront`.
4. **Re-run Gate**: Loop until the script exits with `RESULT: PASS`. Then run `./install.ps1`.

## Procedure

1. Run the checker against the app folder.
2. If CONFORMANCE fails: open each flagged file, find the invented
   reference, replace with a real component/recipe from the `b4xdaisyuikit`
   skill. Do NOT "fix" by editing the library.
3. If DOCUMENTED-ONLY warns: confirm the user approved each, or swap to a
   `Demonstrated` component.
4. If COMPILE-READINESS fails: add the missing `ModuleN=<Name>` line to the
   `.b4a`, bump `NumberOfModules`, or create the missing `.bas`. Check
   `B4XMainPage` is present and named exactly.
5. Re-run until PASS.
6. Then run `./install.ps1` for the real build.

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
   (`<AppFolder>/ux-review/screens/`); drop PNGs there manually.
3. **Review**: follow `references/ux-review.md`. Two modes: `quick`
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
4. **Apply fixes**: the user unlocks the flagged `.bas` (per
   `lock-bas-synchfree.ps1`), pastes the drafted snippet, re-locks. Do not
   apply fixes yourself; `.bas` are immutable.
5. **Re-verify**: re-run the static gate, re-capture, re-review until no
   severity >= 4 remains.

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

- `references/verify-conformance.ps1` (static pre-build gate script)
- `references/capture-screens.ps1` (Phase 2 adb screenshot capture)
- `references/ux-review.md` (Phase 2 reviewer prompt + report format)
- `../b4xdaisyuikit/references/component-manifest.md` (source of truth, read-only)
- `../b4xdaisyuikit/references/ux-master-doctrine.md` (quantitative UX rules)
- `../b4xdaisyuikit/references/design-heuristics.md` (design heuristics)