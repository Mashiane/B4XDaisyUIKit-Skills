# Codex Project Brief: Framework-Specific Skills

## Objective

Build a reliable set of Codex skills for the user's web framework and source code. Skills should teach framework-specific workflows from verified source, examples, templates, and tests. Do not infer or invent APIs. Start with a read-only audit, then agree on the skill map and validation gates before editing.

## Context from the conversation

- The user has an existing B4X/DaisyUIKit skills project with an established methodology for source-backed component guidance, app/page templates, verification gates, and evaluation cases.
- The B4XDaisyUIKit library in the current workspace is a **native Android/B4X component library**, not a web framework. Treat it as a reference for skill engineering methodology unless the user confirms it is the target framework.
- The user is especially interested in reliable form behavior: IME/keyboard action handling, Enter-to-next-field navigation, focus order/tab order, and reusable form templates. These behaviors should become explicit skill guidance and gates where the target framework supports them.
- Prior third-party skill repositories were installed to the user-level Codex skills folder. They are reference material only; the new project should be grounded in the target framework's own sources.

## Folders to link to the new Codex project

| Folder | Role |
|---|---|
| `C:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills` | Existing skills repository: methodology, skill structure, templates, verification, and eval harness. |
| `C:\b4a\workspace\0SithasoDaisyUIKit\B4A` | B4XDaisyUIKit source and demos; reference only if the user wants to use this library as the target or as a comparison. |
| `C:\b4a\workspace\0KuzaMobilityLatest` | App-level reference for the IME and keyboard behavior the user has tested and likes. Inspect relevant forms/pages as evidence; the user's positive test result takes precedence over any conflicting historical regression report. |
| **Target web-framework source folder or repository** | Required input for the new skill set. Add the exact path/URL when known; it has not been identified in this conversation. |

Keep the new project focused on these sources. The user-level skills directory (`C:\Users\User\.codex\skills`) now contains hundreds of unrelated third-party skills and should not be linked wholesale unless needed.

## Audit-first workflow

1. Inventory the target framework's source, docs, examples, templates, build scripts, and tests. Check for `AGENTS.md` and a `.codegraph/` index first; if CodeGraph is present, query it before grep/search or code reads.
2. Establish source-of-truth precedence and capture an API/provenance map: public API, lifecycle, component creation, events, layout, routing/state, styling, form behavior, and build/test process.
3. Compare official examples and real applications. Separate verified framework patterns from demo-only structure and application-specific conventions.
4. Identify common workflows and failure modes, including keyboard/focus/form behavior. Record platform and input-type exceptions rather than applying Enter-to-next indiscriminately.
5. Propose a small, modular skill taxonomy with clear triggers and progressive disclosure. Put long API details and recipes in referenced files; add deterministic scripts/templates only where they improve repeatability.
6. Build one high-value vertical slice first (likely project/page setup plus a representative form workflow), then validate it against real examples and evaluation cases.
7. Add hard gates for API accuracy, keyboard/focus traversal, validation behavior, accessibility, build readiness, and generated-output structure as supported by the framework.
8. Expand the skill set only after the first slice passes review. Keep changes in the skills repository and do not modify the framework or reference app unless explicitly requested.

## Existing B4XDaisyUIKit references

- Main skill: `C:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills\skills\b4xdaisyuikit\SKILL.md`
- Project/page bootstrap skill and templates: `C:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills\skills\b4x-project-bootstrap`
- Verification skill and gates: `C:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills\skills\b4x-verify`
- Existing IME gate: `C:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills\skills\b4x-verify\references\verify-ime-forms.ps1`
- Framework input component and demo: `C:\b4a\workspace\0SithasoDaisyUIKit\B4A\B4XDaisyInput.bas` and `C:\b4a\workspace\0SithasoDaisyUIKit\B4A\B4XPageInput.bas`

## First-session deliverables

- A source map with canonical files and evidence links.
- A framework capability and API matrix, including unsupported or undocumented areas.
- A skill taxonomy and the first skill's trigger, workflow, references, and validation gates.
- An implementation plan that distinguishes what can be automated from what needs human/device/browser verification.

## Open input

Provide the exact target web-framework repository/path (and any preferred real app or example project). Until then, the existing B4XDaisyUIKit and Kuza Mobility folders are available as methodology and behavior references, not assumed to be the new web-framework target.
