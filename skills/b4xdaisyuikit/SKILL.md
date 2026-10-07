---
name: b4xdaisyuikit
description: Use when composing native Android user interface (UI) and user experience (UX) for B4A from the B4XDaisyUIKit component library, when building forms, dashboards, navigation, modals, feedback, media, or data-display screens, when translating a DaisyUI / TailwindCSS web mock into native B4X views, or when wiring component properties, events, and validation. Produces only native B4X code; never HTML, CSS, Tailwind, or WebView.
metadata:
  category: technique
  triggers: b4xdaisy, b4x page, b4a screen, compose ui, daisyui native, form, dashboard, navbar, modal, sweetalert, component recipe, navscrolldock, validate controls, user interface, development, user experience, tailwindcss, native, android
---


## GitHub Repository

All published sources are in the public repository:
**[Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)**

| Folder | Contents | Browse |
|--------|----------|--------|
| [`B4XDaisyUIKit/`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/tree/main/B4XDaisyUIKit) | All component `.bas` source files (extracted from `B4XDaisyUIKit.b4xlib`) | Component implementation |
| [`B4A/`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/tree/main/B4A) | All `B4XPage*.bas` demo pages — inspect for API usage examples | Demo code |

Every component spec in `components/<name>.md` carries direct links:
- **Library Source** → the `.bas` implementation file in `B4XDaisyUIKit/`. **For reading/understanding only. Never add these files to a user project.**
- **Demo Reference** → a `B4XPage*.bas` file containing a textual reference to the component. Inspect it to confirm actual instantiation and usage before treating it as an example.

> [!CAUTION]
> **Never copy or add any `B4XDaisyXxx.bas` file to a user's project.**
> The component library is pre-compiled into `B4XDaisyUIKit.b4xlib`. Adding the raw `.bas` files alongside the `.b4xlib` will cause duplicate class errors and broken builds. The `Library Source` links in each component spec exist solely so AI agents can read the implementation — not to be copied into projects.
>
> **Demo source files (`B4XPage*.bas`) are also not for inclusion.** They are reference-only examples showing how to call component APIs. Generate new, app-specific `B4XPage*.bas` files instead.

See [truth-and-accuracy.md](references/truth-and-accuracy.md) — applies to every response.

---

# B4XDaisyUIKit — Native App Builder

B4XDaisyUIKit is a **native B4X custom-view library** for Android (B4A) with B4XPages. It takes visual and semantic inspiration from DaisyUI and Tailwind CSS, but it is not a web framework. Every component is a native Android view. No HTML, no CSS, no WebView.

## Project Structure — What Exists Where

### In a new or existing user project
A user's project starts as a standard B4A project. It contains:
- The user's own `B4XPage*.bas` files (named for their app, e.g. `B4XPageHome.bas`, `B4XPageSettings.bas`)
- `B4XMainPage.bas` — the app entry point (must be written or generated)
- The `B4XDaisyUIKit.b4xlib` library added via **Tools → Additional Libraries**
- An `Assets/Files/` folder containing SVG icon files

**PROHIBITED — do not add to user projects:** The `B4XDaisyUIKit` source `.bas` files (`B4XDaisyButton.bas`, `B4XDaisyInput.bas`, etc.) must never be placed in a user's project folder. They are pre-compiled inside the `.b4xlib`. Adding them causes duplicate class errors. Use them only for reading the implementation via the GitHub `Library Source` links.

**PERMITTED — read demo source for component API patterns only:** The demo pages (`B4XPageInput.bas`, `B4XPageNavbar.bas`, etc.) are published at [`B4A/`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/tree/main/B4A). When reading them, extract only **component instantiation, property assignments, and event wiring**. Ignore the demo's page structure, scaffold boilerplate, and lifecycle shape — those are demo-specific, not patterns to replicate. Page structure comes from the templates (see below).

### What you (the AI) do

**Templates are the structural source of truth.** Do not derive app or page structure from demo source.

- **App skeleton** — always generated from `B4XMainPage.template.bas` (via the `b4x-project-bootstrap` skill). It provides the proven shell: global loader, `SweetAlert`, `ShowPageWithLoader` / `ClosePageWithLoader`, animation check, and pin-to-home. Do not hand-write this.
- **Page files** — always generated from the page templates in `b4x-project-bootstrap/references/`:
  - `B4XPageNavDock.template.bas` — top-level pages with pinned navbar and bottom dock tabs
  - `B4XPageNavOnly.template.bas` — sub-pages with navbar and back button, no dock
  - `B4XPage.template.bas` — bare page for custom layouts
- **Component usage** — inspect the `Demo Reference` links in `components/<name>.md` for actual initialization, configuration, and event wiring. A listed reference is a text match, not proof that the demo instantiates or exercises the component. Extract only relevant component code; the surrounding demo page structure is not a template.

You write app-specific `B4XPage*.bas` files using the component APIs from [component-manifest.md](references/component-manifest.md), with page scaffolding drawn from the templates above and component patterns drawn from the demo source.

## Read Before Anything Else

If you are unfamiliar with B4X syntax, read **[b4x-primer.md](references/b4x-primer.md)** first. It teaches the B4X language constructs you will need: Sub declarations, variable types, event wiring, B4XPages lifecycle, Wait For/ResumableSub, and `dip` units.

For core interaction design, quantitative laws (Fitts, Hick, Miller), WCAG contrast, 4-state UI completeness, and Definition of Done, consult **[ux-master-doctrine.md](references/ux-master-doctrine.md)**.

For every component you use, consult **[component-manifest.md](references/component-manifest.md)**.

For exhaustive method signatures, properties, setter/getter parameters, return types, and event hooks across all library components, consult **[api-cheat-sheet.md](references/api-cheat-sheet.md)**. It is an auto-generated index of the packaged library (not ground truth itself); conflicts resolve to the `.b4xlib` via `component-api.json` + provenance. A Support index entry only means a demo text reference was found; inspect that demo and the component reference before relying on the usage pattern.

Before mounting any component, confirm its creation order in **[component-creation-patterns.md](references/component-creation-patterns.md)**. Most components use the default 3-step (`Initialize` → `AddToParent` → properties), but containers (`Stat`, `Dock`, `Timeline`, `Carousel`, `Accordion`) and `SweetAlert` deviate. The file lists every deviation with the B4XPage demo that proves it.

For semantic color naming, role definitions, theme tokens, and dynamic palette switching with `B4XDaisyVariants`, consult **[colors-and-themes.md](references/colors-and-themes.md)**.

---

## Recommended Companion Skills

To achieve production-grade design and complete full-stack functionality, pair this native UI component skill with the following official companion skills:

### 1. Design Intelligence & Aesthetics (UI/UX)
For visual styles, curated 160+ color palettes, accessible contrast ratios, font pairings, mobile thumb-zone ergonomics, and chart choices, consult the `ui-ux-pro-max` skill or [ux-master-doctrine.md](references/ux-master-doctrine.md).

### 2. Core Language & Backend Logic (B4X)
For core B4X language semantics, Resumable Subs / `Wait For`, SQLite database persistence, network calls (`HttpJob`), and native Android permissions/manifests, consult the `b4x-development` skill or [b4x-primer.md](references/b4x-primer.md).

---

## Scenario Chapters & Practical Guides

Deep, multi-component B4XPage recipes organized by real-world UI domain:
- **[ch01-dashboards.md](chapters/ch01-dashboards.md)**: Analytics dashboards, Stat metric tiles, progress and radial gauges, and data-visualization recipes (the kit has **no native chart component** — see ch01 recipe section).
- **[ch02-interactive-forms.md](chapters/ch02-interactive-forms.md)**: User profiles, multi-input forms, validation, and fieldsets.
- **[ch03-navigation.md](chapters/ch03-navigation.md)**: Top Navbars, Bottom Docks, Sliding Navigation Drawers (`B4XDaisyDrawer`), Collapsible Rails, Tree Menus, Breadcrumbs, and Tabs.
- **[ch04-feedback.md](chapters/ch04-feedback.md)**: Toast alerts, SweetAlert async confirmation & input dialogs (`B4XDaisySweetAlert`), Modals, Action Sheets, and Tooltips.
- **[ch05-media-cards.md](chapters/ch05-media-cards.md)**: Interactive cards, image galleries, and hero banners.
- **[ch06-data-display.md](chapters/ch06-data-display.md)**: Accordions, Collapses, Timelines, Step wizards, and Lists.
- **[ch07-onboarding-security.md](chapters/ch07-onboarding-security.md)**: Feature tours (`EnjoyHint`), 6-digit OTP verification, Drum wheel pickers, and radial boom buttons.
- **[ch08-dashboards-media-sliders.md](chapters/ch08-dashboards-media-sliders.md)**: Swipeable Carousels, KPI Dashboards, Before/After image diffs, and Aura glow highlights.
- **[ch09-backend-realtime.md](chapters/ch09-backend-realtime.md)**: `PocketBase` REST/RealTime CRUD, digital signature pads, photo attachments, and PDF document viewing.

---

## Component Status: Demo-referenced vs. Documented-only

The manifest classifies every component as one of two statuses:

- **Demo-referenced** — a demo source contains a textual reference to the component. Inspect the linked source and confirm the relevant API usage before relying on it as a demonstrated pattern.
- **Documented-only** — no demo source contains a textual reference. The API is extracted from the library source, but no demo reference was found; follow documented API constraints and approval rules for unsupported composition.

These statuses describe source references, not successful compilation, runtime behavior, or visual styling verification. Report those checks separately and only when performed.

Never invent a property, method, event, or enum value. If it is not in the manifest, it does not exist.

---

## Component Discovery Protocol

## Scope-Aware UI Composition Workflow

Choose the workflow by task size. For a bounded change to an existing screen, reuse the app's approved contracts, visual direction, and page architecture; inspect only the relevant rules and component references, then run the verification appropriate to the changed code. Do not create a second screen contract or repeat the full app pipeline just to compose or adjust a component.

Use the full sequence below for a new app, a substantial feature or screen, a navigation or architecture change, or release work. The application planner owns application and screen contracts; this skill confirms and follows the canonical contract rather than creating a duplicate. Use `b4x-orchestrator` for multi-scope or release-blocking delivery.

```text
STAGE 0: Confirm the canonical screen contract (planner owns contract/screens/<screen>.md; create for new scope or update when approved requirements change)
   ↓
STAGE 1: Setup & Environment Check (b4x-project-bootstrap)
   ↓
STAGE 2: Rules Enforcer (references/rules-enforcer.md) — cite RULE-* IDs in trace
   ↓
STAGE 3: Creative Director & Design Reasoning (references/creative-director.md)
   ↓
STAGE 4: Page Architecture Selection (references/page-architectures.md)
   ↓
STAGE 5: Component Syntax Retrieval (component-manifest.md & components/<name>.md)
   ↓
STAGE 6: Verify the changed UI (b4x-verify; orchestrator owns full downstream gates when selected)
```

> **Orchestrated mode:** `b4x-orchestrator` owns the full contract-to-release gate chain and remediation cap. Do not repeat its sequencing here.

---

### Stage 0: Planning & Contract (for the full workflow)
* Reuse the approved application and screen contracts. If a new screen or changed requirement needs a contract, have `b4x-application-planner` create or update the canonical `contract/screens/<screen>.md` before composition.
* This UI skill does not create a duplicate screen contract. A bounded composition change that does not change requirements or scope can proceed from the existing app context without adding a contract artifact.

### Stage 1: Setup & Environment Check
* For greenfield apps, invoke `b4x-project-bootstrap` to scaffold the shell (`B4XMainPage.bas`, `project.template.b4a`, `install.ps1`).
* For existing projects, inspect only the project wiring or page modules affected by the requested change; preserve established structure otherwise.

### Stage 2: Rules Enforcer
* Review and adhere to the non-negotiable constraints in **[rules-enforcer.md](references/rules-enforcer.md)** (each rule marked `L1-L5` with script link — `L4/L5` are hard gates in `b4x-verify`).
* Cite relevant rule IDs (e.g. `RULE-LAYOUT-003` for `AutoFit`, `RULE-INTERACT-001` for `navbar.BringToFront`, `RULE-SETUP-004` for module wiring) in your reasoning trace — orchestrator audits this trace.

### Stage 3: Creative Director & Design Direction
* Before selecting components, decide whether this screen should **inherit**, **extend**, or **replace** the app's established visual direction. Preserve existing product and brand decisions by default; replace them only when the request calls for a redesign.
* For a new or materially changed screen, record the direction in the existing canonical screen contract's `Visual Direction` section, following **[creative-director.md](references/creative-director.md)**. If no contract change is needed, use the established direction without creating a separate artifact. Cover the user's task and operating context, visual character, hierarchy and density, semantic theme roles, typography and spacing, component surface treatment, and interaction/motion where relevant.
* Translate the direction into semantic B4XDaisyUIKit tokens and manifest-verified native components. A visual idea is a design constraint, not permission to invent component APIs, bypass platform conventions, or use HTML/CSS/WebView.
* Ensure full state coverage (Loading, Populated, Empty, Error) and preserve the ergonomic, accessibility, and implementation rules in the UX doctrine and rules enforcer. When context needed to choose a direction is missing, ask only about that material gap; otherwise inherit the established system and proceed.

### Stage 4: Page Architect
* For a new page or structural change, select a proven native page model from **[page-architectures.md](references/page-architectures.md)** (e.g. `ARCH-01 NavScrollDock`, `ARCH-02 Auth/OTP`, `ARCH-03 Dashboard`, `ARCH-04 Form/CRUD`, `ARCH-05 Master-Detail`, `ARCH-06 Stock-Take`, `ARCH-07 Wizard`). For a bounded edit, preserve the existing page model.
* When converting existing designs, follow **[conversion-workflows.md](references/conversion-workflows.md)** (Web HTML / Figma / Screenshot $\rightarrow$ B4XDaisy).

### Stage 5: Component Syntax Expert
* Map the user's intent to components via **[intent-to-component.md](references/intent-to-component.md)** (intent → interaction pattern → component) before retrieving syntax.
* Retrieve exact constructor signatures, properties, events, and mount sequences:
  * Consult **[component-manifest.md](references/component-manifest.md)** for component status (Demo-referenced vs Documented-only); retrieve exact member signatures from **[api-cheat-sheet.md](references/api-cheat-sheet.md)** `## <Class>` sections and `component-api.json` (only use members recorded there).
  * Consult individual component specs in **`components/<name>.md`** (108 spec files covering 104 library modules; inspect the linked source before treating a Demo-referenced component as demonstrated).
  * Verify initialization order in **[component-creation-patterns.md](references/component-creation-patterns.md)** (watch for container deviations like `Stat`, `Dock`, `Timeline`, `Accordion`, `SweetAlert`).

### Stage 6: Quality Inspector & Repair Loop
* For code-producing UI work, use `b4x-verify` to validate the affected app code. Full build, runtime, capture, UX, regression, and release gates apply when required by the task scope or orchestrator; do not imply those gates passed if they were not run. The orchestrator owns the cap-3 repair loop for orchestrated work.
* The relevant static checks validate:
  1. Conformance (no invented APIs).
  2. Documented-only component approval.
  3. Compile-readiness (`.b4a` headers, module counts, file groups).
  4. Static layout integrity (`pageScroll.AutoFit`, `navbar.BringToFront`).
* If a check fails, fix the issue and re-run the affected check. Do not claim PASS until the required check passes.

---

## Pattern Reference Index

The feature → component → demo lookup table now lives in **[pattern-index.md](references/pattern-index.md)**. Use it during Stage 5: map the request to components, then read the matching sections in [component-manifest.md](references/component-manifest.md) and adapt the scaffold from [app-scaffolds.md](references/app-scaffolds.md). Demo names are API-usage evidence only — demo `.bas` files do not exist in user projects.


---

## Semantic Color & Theme Governance Rules

1. **100% Theme Agnostic (No Hardcoded Hex Integers)**: Always use semantic color tokens (`"primary"`, `"secondary"`, `"accent"`, `"neutral"`, `"info"`, `"success"`, `"warning"`, `"error"`, `"base-100"`, `"base-200"`, `"base-300"`, `"base-content"`). This allows the entire application to re-theme dynamically when calling `B4XDaisyVariants.SetActiveTheme("dark")`.
2. **Primary Color Sparingly**: Use the `"primary"` variant **once per screen** for the primary call-to-action (e.g. Submit / Confirm button). Use `"neutral"`, `"ghost"`, or `"default"` for secondary buttons and peripheral elements to maintain visual hierarchy.
3. **Foreground-Background Contrast Guarantee**: Never place dark text directly on a dark background. Match content semantics to container semantics (`base-content` on `base-100`, `primary-content` on `primary`).
4. **Default Variant Preference**: Always instantiate components with their default styling and size (`Size = "md"`) unless the user explicitly requested a compact (`"sm"`, `"xs"`) or prominent (`"lg"`, `"xl"`) layout.

---

## Native Composition Rules

1. **Always use `.AddToParent(Parent, Left, Top, Width, Height)`** to mount components. Never use `Parent.AddView(...)` directly for B4XDaisy components.
2. **Never set size via `.Width = N` or `.Height = N`**. Use the component's string-based sizing methods (`.setWidth("100%")`, `.setHeight("h-12")`). B4XDaisy sizes are computed at runtime via a token engine.
3. **Always host page content inside `B4XDaisyPageScroll`**. Mount `pageScroll` over the full page root and add all views to `pageScroll.Panel`.
4. **Stack components vertically** using the y-cursor accumulator (`y = y + component.GetComputedHeight + gap`). Do not use absolute coordinate guesses.
5. **Use semantic color tokens** (`"primary"`, `"secondary"`, `"accent"`, `"neutral"`, `"info"`, `"success"`, `"warning"`, `"error"`) as property values. Never hardcode hex colors in component variant setters.
6. **Call `pageScroll.AutoFit`** at the end of every `RenderPage` call to stretch the scroll container height to fit all content.
7. **Call `pageScroll.Clear`** at the start of every `RenderPage` call to wipe old views before re-rendering on resize.
8. **`B4XDaisyGrid`, `B4XDaisyFlexPanel`, and `B4XDaisyFlexLayout` are strictly prohibited for UI generation.** They have not been factored into verified project examples and must never be used.
9. **For side-by-side controls (e.g. Cancel + Submit buttons)**, calculate explicit X coordinates directly on `pnlHost` (`btnW = (maxW - gap) / 2`). Do not use any flex or grid containers.
10. **For collapsible panels**, use `B4XDaisyVariants.ShiftSiblingsBelow(view, delta, animMs)` to reflow siblings after height changes — never recompute coordinates manually.
11. **NEVER use `:` (colon) as a statement / code line separator in generated B4X code.** Always write each variable declaration, initialization, property assignment, or method call on its own individual line to maximize code readability and prevent syntax errors.

---

## DaisyUI Translation Rules

- Translate a web request into native semantic intent first: hierarchy, actions, fields, feedback, navigation, visual style.
- Select native B4XDaisy components with demonstrated APIs. Consult [daisyui-native-compatibility.md](references/daisyui-native-compatibility.md) for the full mapping table.
- Never emit HTML tags, CSS class names, Tailwind utility classes, `class=` strings, browser events, or JavaScript.
- Do not assume a DaisyUI modifier has a native equivalent. Report a partial mapping instead of fabricating one.
- Treat touch behavior, B4XPages lifecycle, `dip` sizing, scrolling, and Android input as native B4X concerns.

---

## Red Flags (STOP)

If you catch yourself thinking any of these, stop. You are rationalizing.

| Thought | Reality |
|---------|---------|
| "This setter probably exists on the component" | If it is not in [component-manifest.md](references/component-manifest.md), it does not exist. You are inventing it. |
| "I'll add the missing method to the library .bas" | `B4A/*.bas` are immutable. Compose with what exists, do not extend the library. |
| "Grid/FlexLayout will work for this layout" | Both are `Documented-only`; no demo reference was found. Do not use without explicit user approval. |
| "I'll just set `.Width` / `.Height` directly" | Banned on B4XDaisy components. Use the component's sizing setters or `AddToParent` with computed dims. |
| "This DaisyUI class has an obvious native equivalent" | Many do not. Report a partial mapping instead of fabricating one. |
| "A little HTML/CSS wrapper is fine here" | No. Native B4X only. No HTML, CSS, Tailwind, WebView, ever. |
| "ValidateRequiredControls(List) will validate the form" | It is broken (native TextView throw + non-short-circuit And). Use per-component `.Validate()` + branch. See [negative-knowledge.md](references/negative-knowledge.md). |
| "Using FlexPanel, FlexLayout, or Grid" | Strictly prohibited. None of these have been factored in verified examples. Use B4XDaisyPageScroll with coordinate arithmetic instead. |
| "I'll skip pageScroll.Clear / AutoFit, it re-renders fine" | Clear must be first in RenderPage, AutoFit last. Skipping causes stale views and wrong scroll height on resize. |
| "B4XPages will find my page even without ModuleN wiring" | No. Unwired pages are silently omitted from the build. See the `b4x-verify` skill. |

---

## Validation Checklist

Before delivering any output, verify every item:

- [ ] Every B4XDaisy class, property, method, and event exists in [component-manifest.md](references/component-manifest.md).
- [ ] For each component used, inspect its Demo Reference(s) when present and identify the component reference/API declarations consulted; a textual demo reference alone is not evidence of actual usage.
- [ ] All components are mounted with `.AddToParent`, not `Parent.AddView`.
- [ ] Each component's creation order matches [component-creation-patterns.md](references/component-creation-patterns.md) (default 3-step, or the documented deviation for containers / `SweetAlert`).
- [ ] No `.Width = N` or `.Height = N` direct assignments on B4XDaisy components.
- [ ] Page lifecycle follows a named B4XPage demo: `B4XPage_Created` → `pageScroll.Initialize` → `RenderPage`. `B4XPage_Resize` calls `pageScroll.Base_Resize` then `RenderPage`. `pageScroll.Clear` is first inside `RenderPage`. `pageScroll.AutoFit` is last.
- [ ] Output contains only native B4X code. No HTML, CSS, Tailwind, or browser logic.
- [ ] Event handler names and parameter signatures match the manifest exactly.
- [ ] All tokens (colors, sizes, variants) are values declared in [design-tokens.md](references/design-tokens.md) or [api-cheat-sheet.md](references/api-cheat-sheet.md).
- [ ] The response says API usage was **checked against** the named demo(s) or component reference(s). This is reference-level evidence only; report static verification, a successful build, or runtime verification separately and only if that check ran.
