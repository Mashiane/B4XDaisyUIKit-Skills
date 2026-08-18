---
name: b4x-verify
description: Use when validating a generated B4XDaisyUIKit user interface app before build, when checking that no invented component APIs were used, when confirming page modules are wired into the project file, or when running the conformance / coverage / compile-readiness quality gate before ./install.ps1.
metadata:
  category: technique
  triggers: verify app, conformance check, invented api, module wiring, NumberOfModules, before build, before install, gate, coverage, user interface, development, user experience, tailwindcss, native, android, ios, desktop
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

4. **Static Layout & Lifecycle.** Inspects code patterns against mandatory runtime rules:
   - Verifies that any file referencing `B4XDaisyPageScroll` calls `.AutoFit` at the end of rendering (`RULE-LAYOUT-003`).
   - Verifies that `navbar.BringToFront` is called directly, rejecting `.getView.BringToFront` anti-patterns (`RULE-INTERACT-001`).

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

## References

- `references/verify-conformance.ps1` (the gate script)
- `../b4xdaisyuikit/references/component-manifest.md` (source of truth, read-only)