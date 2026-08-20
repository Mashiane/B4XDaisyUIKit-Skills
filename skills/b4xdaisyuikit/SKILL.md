---
name: b4xdaisyuikit
description: Use when composing native cross-platform user interface (UI) and user experience (UX) for Android, iOS, and desktop from the B4XDaisyUIKit component library, when building forms, dashboards, navigation, modals, feedback, media, or data-display screens, when translating a DaisyUI / TailwindCSS web mock into native B4X views, or when wiring component properties, events, and validation. Produces only native B4X code; never HTML, CSS, Tailwind, or WebView.
metadata:
  category: technique
  triggers: b4xdaisy, b4x page, b4a screen, compose ui, daisyui native, form, dashboard, navbar, modal, sweetalert, component recipe, navscrolldock, validate controls, user interface, development, user experience, tailwindcss, native, android, ios, desktop
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

# B4XDaisyUIKit — Native App Builder

B4XDaisyUIKit is a **native B4X custom-view library** for Android (B4A) with B4XPages. It takes visual and semantic inspiration from DaisyUI and Tailwind CSS, but it is not a web framework. Every component is a native Android view. No HTML, no CSS, no WebView.

## Project Structure — What Exists Where

### In a new or existing user project
A user's project starts as a standard B4A project. It contains:
- The user's own `B4XPage*.bas` files (named for their app, e.g. `B4XPageHome.bas`, `B4XPageSettings.bas`)
- `B4XMainPage.bas` — the app entry point (must be written or generated)
- The `B4XDaisyUIKit.b4xlib` library added via **Tools → Additional Libraries**
- An `Assets/Files/` folder containing SVG icon files

**None of the B4XDaisyUIKit source `.bas` files exist in the user's project.** The components (`B4XDaisyButton`, `B4XDaisyInput`, etc.) are compiled inside the `.b4xlib` and accessed via their public API only.

**None of the reference demo pages (`B4XPageInput.bas`, `B4XPageNavbar.bas`, etc.) exist in the user's project.** Those demos live only in the reference repository (`0SithasoDaisyUIKit/B4A/`) and serve as API usage examples that document how components behave.

### What you (the AI) do
You **generate new B4XPage `.bas` files** with names chosen for the user's app. You write those files using the component APIs from [component-manifest.md](references/component-manifest.md), using code patterns from [app-scaffolds.md](references/app-scaffolds.md) and [layout-patterns.md](references/layout-patterns.md) as your structural foundation.

The `B4XPage*.bas` names in the Pattern Reference Index below are **API usage examples** — they tell you which component APIs have been verified in practice. They are not files to copy or reference at the file path level.

## Read Before Anything Else

If you are unfamiliar with B4X syntax, read **[b4x-primer.md](references/b4x-primer.md)** first. It teaches the B4X language constructs you will need: Sub declarations, variable types, event wiring, B4XPages lifecycle, Wait For/ResumableSub, and `dip` units.

For core interaction design, quantitative laws (Fitts, Hick, Miller), WCAG contrast, 4-state UI completeness, and Definition of Done, consult **[ux-master-doctrine.md](references/ux-master-doctrine.md)**.
For every component you use, consult **[component-manifest.md](references/component-manifest.md)**. It is auto-generated from the packaged library and is the ground truth for all designer properties, events, public methods, and which demo pages prove a component is safe to use.

Before mounting any component, confirm its creation order in **[component-creation-patterns.md](references/component-creation-patterns.md)**. Most components use the default 3-step (`Initialize` → `AddToParent` → properties), but containers (`Stat`, `Dock`, `Timeline`, `Carousel`, `Accordion`) and `SweetAlert` deviate. The file lists every deviation with the B4XPage demo that proves it.

For semantic color naming, role definitions, theme tokens, and dynamic palette switching with `B4XDaisyVariants`, consult **[colors-and-themes.md](references/colors-and-themes.md)**.

---

## Recommended Companion Skills

To achieve production-grade design and complete full-stack functionality, pair this native UI component skill with the following official companion skills:

### 1. Design Intelligence & Aesthetics (UI/UX)
For visual styles, curated 160+ color palettes, accessible contrast ratios, font pairings, mobile thumb-zone ergonomics, and chart choices:
```bash
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@nextlevelbuilder
```

### 2. Core Language & Backend Logic (B4X)
For core B4X language semantics, Resumable Subs / `Wait For`, SQLite database persistence, network calls (`HttpJob`), and native Android permissions/manifests:
```bash
/plugin marketplace add Jerryk133/b4x-skill
/plugin install b4x@b4x-marketplace
```

---

## Scenario Chapters & Practical Guides

Deep, multi-component B4XPage recipes organized by real-world UI domain:
- **[ch01-dashboards.md](chapters/ch01-dashboards.md)**: Analytics dashboards, Stat metric tiles, charts, and progress bars.
- **[ch02-interactive-forms.md](chapters/ch02-interactive-forms.md)**: User profiles, multi-input forms, validation, and fieldsets.
- **[ch03-navigation.md](chapters/ch03-navigation.md)**: Top Navbars, Bottom Docks, Sliding Navigation Drawers (`B4XDaisyDrawer`), Collapsible Rails, Tree Menus, Breadcrumbs, and Tabs.
- **[ch04-feedback.md](chapters/ch04-feedback.md)**: Toast alerts, SweetAlert async confirmation & input dialogs (`B4XDaisySweetAlert`), Modals, Action Sheets, and Tooltips.
- **[ch05-media-cards.md](chapters/ch05-media-cards.md)**: Interactive cards, image galleries, and hero banners.
- **[ch06-data-display.md](chapters/ch06-data-display.md)**: Accordions, Collapses, Timelines, Step wizards, and Lists.
- **[ch07-onboarding-security.md](chapters/ch07-onboarding-security.md)**: Feature tours (`EnjoyHint`), 6-digit OTP verification, Drum wheel pickers, and radial boom buttons.
- **[ch08-dashboards-media-sliders.md](chapters/ch08-dashboards-media-sliders.md)**: Swipeable Carousels, KPI Dashboards, Before/After image diffs, and Aura glow highlights.
- **[ch09-backend-realtime.md](chapters/ch09-backend-realtime.md)**: `PocketBase` REST/RealTime CRUD, digital signature pads, photo attachments, and PDF document viewing.

---

## Component Status: Demonstrated vs. Documented-only

The manifest classifies every component as one of two statuses:

- **Demonstrated** — the component has at least one verified `B4XPage*.bas` demo. Use freely in the patterns shown by that demo.
- **Documented-only** — the API is known but no demo exists. Do not use in generated app UI without explicit user approval.

Never invent a property, method, event, or enum value. If it is not in the manifest, it does not exist.

---

## Component Discovery Protocol

## The 6-Stage Blueprint Agentic Workflow

When building screens, features, or complete apps, execute through these 6 mandatory stages in sequential order:

```text
STAGE 1: Setup & Environment Check (b4x-project-bootstrap)
   ↓
STAGE 2: Rules Enforcer (references/rules-enforcer.md)
   ↓
STAGE 3: Creative Director & Design Reasoning (references/creative-director.md)
   ↓
STAGE 4: Page Architecture Selection (references/page-architectures.md)
   ↓
STAGE 5: Component Syntax Retrieval (component-manifest.md & components/<name>.md)
   ↓
STAGE 6: Quality Inspector & Conformance Gate (b4x-verify)
```

---

### Stage 1: Setup & Environment Check
* For greenfield apps, invoke `b4x-project-bootstrap` to scaffold the shell (`B4XMainPage.bas`, `project.template.b4a`, `install.ps1`).
* For existing projects, inspect `<AppName>.b4a` to verify package name, `NumberOfModules`, and existing page modules.

### Stage 2: Rules Enforcer
* Review and adhere to the non-negotiable constraints in **[rules-enforcer.md](references/rules-enforcer.md)**.
* Cite relevant rule IDs (e.g. `RULE-LAYOUT-003` for `AutoFit`, `RULE-INTERACT-001` for `navbar.BringToFront`, `RULE-SETUP-004` for module wiring) in your reasoning trace.

### Stage 3: Creative Director (Design Reasoning)
* Formulate UX direction per **[creative-director.md](references/creative-director.md)** before picking components:
  * Define ergonomic hierarchy (thumb reach vs context bar).
  * Select density level (High / Comfortable / Hero).
  * Assign semantic color roles (`primary`, `secondary`, `accent`, `neutral`, `error`).
  * Ensure full 4-state coverage (Loading, Populated, Empty, Error).

### Stage 4: Page Architect
* Select a proven native page model from **[page-architectures.md](references/page-architectures.md)** (e.g. `ARCH-01 NavScrollDock`, `ARCH-02 Auth/OTP`, `ARCH-03 Dashboard`, `ARCH-04 Form/CRUD`, `ARCH-05 Master-Detail`, `ARCH-06 Stock-Take`, `ARCH-07 Wizard`).
* When converting existing designs, follow **[conversion-workflows.md](references/conversion-workflows.md)** (Web HTML / Figma / Screenshot $\rightarrow$ B4XDaisy).

### Stage 5: Component Syntax Expert
* Retrieve exact constructor signatures, properties, events, and mount sequences:
  * Consult **[component-manifest.md](references/component-manifest.md)** (only use methods under `### Public methods`).
  * Consult individual component specs in **`components/<name>.md`** (86 verified components).
  * Verify initialization order in **[component-creation-patterns.md](references/component-creation-patterns.md)** (watch for container deviations like `Stat`, `Dock`, `Timeline`, `Accordion`, `SweetAlert`).

### Stage 6: Quality Inspector & Repair Loop
* Run `b4x-verify` (`verify-conformance.ps1`) to validate:
  1. Conformance (no invented APIs).
  2. Documented-only component approval.
  3. Compile-readiness (`.b4a` headers, module counts, file groups).
  4. Static layout integrity (`pageScroll.AutoFit`, `navbar.BringToFront`).
* If any check fails, trigger an automated repair loop and re-inspect until PASS.

---

## Pattern Reference Index

The right column lists the B4XPage demo names from the reference project. These demos **do not exist in user projects** — they are cited here only to indicate which component APIs have been verified and documented in [component-manifest.md](references/component-manifest.md). When a request maps to a demo, read the matching component section in the manifest and adapt the scaffold from [app-scaffolds.md](references/app-scaffolds.md).

| Feature / UI request | Verified B4XDaisy component(s) | API reference demos (reference project only) |
|---|---|---|
| Basic page scaffold | `B4XMainPage` + `B4XDaisyPageScroll` | `B4XMainPage.bas`, `B4XPageScrollDemo.bas` |
| Scrollable content page | `B4XDaisyPageScroll` | `B4XPageScrollDemo.bas`, `B4XPageNavScrollDock.bas` |
| Text input / form fields | `B4XDaisyInput`, `B4XDaisyFieldset` | `B4XPageInput.bas`, `B4XPageTextarea.bas`, `B4XPageFieldset.bas`, `B4XPageFocus.bas` |
| Button / Icon button / Shine button | `B4XDaisyButton`, `B4XDaisyIconButton`, `B4XDaisyShineButton` | `B4XPageButton.bas`, `B4XPageIconButton.bas`, `B4XPageShineButton.bas` |
| Checkbox | `B4XDaisyCheckbox`, `B4XDaisyCheckboxGroup` | `B4XPageCheckbox.bas`, `B4XPageCheckboxGroup.bas` |
| Radio button | `B4XDaisyRadio`, `B4XDaisyRadioGroup` | `B4XPageRadio.bas`, `B4XPageRadioGroup.bas` |
| Toggle / switch | `B4XDaisyToggle`, `B4XDaisyToggleGroup` | `B4XPageToggle.bas`, `B4XPageToggleGroup.bas` |
| Dropdown / select list | `B4XDaisySelect`, `B4XDaisyDropdown` | `B4XPageSelect.bas`, `B4XPageDropdown.bas` |
| File upload | `B4XDaisyFileInput`, `B4XDaisyFileHandler` | `B4XPageFileInput.bas`, `B4XPageMediaPicker.bas` |
| Badge / chip | `B4XDaisyBadge`, `B4XDaisyBadgeGroupSelect` | `B4XPageBadge.bas`, `B4XPageBadgeGroupSelect.bas` |
| Range slider | `B4XDaisyRange` | `B4XPageRange.bas` |
| Dual range slider | `B4XDaisyDualRange` | `B4XPageDualRange.bas` |
| Star rating | `B4XDaisyRating` | `B4XPageRating.bas` |
| Carousel / slider | `B4XDaisyCarousel`, `B4XDaisyCarouselItem` | `B4XPageCarousel.bas` |
| OTP / PIN entry | `B4XDaisyOTP` | `B4XPageOTP.bas` |
| Signature pad | `B4XDaisySignaturePad` | `B4XPageSignaturePad.bas` |
| Color picker | `B4XDaisyColorWheel` | `B4XPageColorWheel.bas` |
| Dashboard / KPIs | `B4XDaisyDashboard`, `B4XDaisyStat`, `B4XDaisyStatItem` | `B4XPageDashboard.bas`, `B4XPageStat.bas` |
| Progress bar | `B4XDaisyProgress` | `B4XPageProgress.bas` |
| Circular progress | `B4XDaisyRadialProgress` | `B4XPageRadialProgress.bas` |
| Timeline | `B4XDaisyTimeline` | `B4XPageTimeline.bas` |
| Countdown timer | `B4XDaisyCountdown` | `B4XPageCountdown.bas` |
| Steps / wizard | `B4XDaisySteps` | `B4XPageSteps.bas` |
| Top navigation bar | `B4XDaisyNavbar` | `B4XPageNavbar.bas`, `B4XPageFabNavbar.bas` |
| Bottom dock bar | `B4XDaisyDock` | `B4XPageDock.bas`, `B4XPageNavScrollDock.bas` |
| Tab pages | `B4XDaisyTab` | `B4XPageTab.bas` |
| Segment control | `B4XDaisySegment` | `B4XPageSegment.bas` |
| Side menu | `B4XDaisyMenu` | `B4XPageMenu.bas`, `B4XPageMenuRuntime.bas`, `B4XPageMenuRuntime2.bas` |
| Navigation drawer / rail / tree | `B4XDaisyDrawer` | `B4XPageDrawer.bas`, `B4XPageDrawerRail.bas`, `B4XPageDrawerTree.bas` |
| Breadcrumbs | `B4XDaisyBreadcrumbs` | `B4XPageBreadcrumbs.bas` |
| Pagination | `B4XDaisyPagination` | `B4XPagePagination.bas` |
| Card | `B4XDaisyCard` | `B4XPageCard.bas` |
| Info card | `B4XDaisyInfoCard` | `B4XPageInfoCard.bas` |
| List / virtual list | `B4XDaisyList` | `B4XPageList.bas`, `B4XPageList1K.bas` |
| Hero section | `B4XDaisyHero` | `B4XPageHero.bas` |
| Stacked cards | `B4XDaisyStack` | `B4XPageStack.bas` |
| Collapse panel | `B4XDaisyCollapse` | `B4XPageCollapse.bas` |
| Accordion | `B4XDaisyAccordion` | `B4XPageAccordion.bas` |
| Modal dialog | `B4XDaisyModal` | `B4XPageModal.bas` |
| Bottom sheet | `B4XDaisySheetModal` | `B4XPageSheetModal.bas` |
| Action sheet | `B4XDaisyActionSheet` | `B4XPageActionSheet.bas` |
| Confirm / input dialog | `B4XDaisySweetAlert` | `B4XPageSweetAlert.bas`, `B4XPageSweetAlertInputs.bas` |
| Native Android dialog (Msgbox / InputList / FilePicker) | native B4X dialogs + `B4XDaisyInput` | `B4XPageNativeDialogs.bas` |
| Alert banner | `B4XDaisyAlert` | `B4XPageAlert.bas` |
| Toast / snackbar | `B4XDaisyToast` | `B4XPageToast.bas` |
| Tooltip | `B4XDaisyTooltip` | `B4XPageTooltip.bas` |
| Loading spinner | `B4XDaisyLoading` | `B4XPageLoading.bas` |
| Canvas spinner | `B4XDaisyCanvasSpinner` | `B4XPageCanvasSpinner.bas` |
| Skeleton loading | `B4XDaisyDivision` (IsSkeleton) | `B4XPageSkeleton.bas` |
| Status dot (online/offline) | `B4XDaisyStatus` | `B4XPageStatus.bas` |
| Avatar | `B4XDaisyAvatar`, `B4XDaisyAvatarGroup` | `B4XPageAvatar.bas`, `B4XPageAvatarGroup.bas`, `B4XPageMask.bas` |
| Chat / messaging | `B4XDaisyChat` | `B4XPageChat.bas` |
| PDF viewer | `B4XDaisyPDFView` | `B4XPagePDFView.bas` |
| FAB / floating button | `B4XDaisyFab` | `B4XPageFab.bas`, `B4XPageFabBasic.bas`, `B4XPageFabFlower.bas` |
| Boom / radial FAB | `B4XDaisyBoomMenu` | `B4XPageBoomMenu.bas` |
| Badge indicator on icon | `B4XDaisyIndicator` | `B4XPageIndicator.bas` |
| Overlay / backdrop | `B4XDaisyOverlay` | `B4XPageOverlay.bas` |
| Drum picker wheel | `B4XDaisyPicker` | `B4XPagePicker.bas` |
| Easing / animation | `B4XDaisyAnimation` | `B4XPageEasing.bas` |
| Diff / compare slider | `B4XDaisyDiff` | `B4XPageDiff.bas` |
| Divider line | `B4XDaisyDivider` | `B4XPageDivider.bas` |
| Container / div | `B4XDaisyDivision` | `B4XPageDivider.bas` |
| Typography / text | `B4XDaisyText` | `B4XPageText.bas`, `B4XPageLink.bas` |
| Text rotation ticker | `B4XDaisyTextRotate` | `B4XPageTextRotate.bas` |
| SVG icon | `B4XDaisySvgIcon` | `B4XPageSvgIcon.bas` |
| Filter chip bar | `B4XDaisyFilter` | `B4XPageFilter.bas` |
| Swap / dual-state button | `B4XDaisySwap` | `B4XPageSwap.bas` |
| Keyboard shortcut badge | `B4XDaisyKbd` | `B4XPageKbd.bas` |
| Form labels / Typography | `B4XDaisyText` | `B4XPageText.bas`, `B4XPageInput.bas` |
| 3D tag sphere | `B4XDaisyTagSphere` | `B4XPageTagSphere.bas` |
| Glow / aura effect | `B4XDaisyAura` | `B4XPageAura.bas` |
| 3D hover card | `B4XDaisyHover3d` | `B4XPageHover3d.bas` |
| Onboarding tour | `B4XDaisyEnjoyHint` | `B4XPageEnjoyHint.bas` |
| Window / device mockup | `B4XDaisyWindow` | `B4XPageWindow.bas` |
| Media picker / image | `B4XDaisyImage`, `B4XDaisyFileHandler` | `B4XPageMediaPicker.bas` |

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
| "Grid/FlexLayout will work for this layout" | Both are `Documented-only`. No demo proves them. Do not use without explicit user approval. |
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
- [ ] Every component used is **Demonstrated**, or explicit user approval covers a Documented-only use.
- [ ] All components are mounted with `.AddToParent`, not `Parent.AddView`.
- [ ] Each component's creation order matches [component-creation-patterns.md](references/component-creation-patterns.md) (default 3-step, or the documented deviation for containers / `SweetAlert`).
- [ ] No `.Width = N` or `.Height = N` direct assignments on B4XDaisy components.
- [ ] Page lifecycle follows a named B4XPage demo: `B4XPage_Created` → `pageScroll.Initialize` → `RenderPage`. `B4XPage_Resize` calls `pageScroll.Base_Resize` then `RenderPage`. `pageScroll.Clear` is first inside `RenderPage`. `pageScroll.AutoFit` is last.
- [ ] Output contains only native B4X code. No HTML, CSS, Tailwind, or browser logic.
- [ ] Event handler names and parameter signatures match the manifest exactly.
- [ ] All tokens (colors, sizes, variants) are values declared in [design-tokens.md](references/design-tokens.md) or the manifest's allowed-values column.
- [ ] The response states which demo(s) were adapted and confirms `B4A verified`.
