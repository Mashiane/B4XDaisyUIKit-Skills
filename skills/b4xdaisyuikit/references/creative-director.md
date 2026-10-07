# B4XDaisyUIKit — Creative Director

The Creative Director stage defines the visual hierarchy, ergonomic mobile design rules, theme tokens, and complete state models before individual components are selected and coded.

---

## 1. Mobile Ergonomics & Visual Hierarchy

Native Android UI design requires strict adherence to physical hand ergonomics:

```text
┌──────────────────────────────────────┐
│  STATUS / CONTEXT ZONE (Top Bar)     │  ← Pinned B4XDaisyNavbar (Title, Back, Profile)
├──────────────────────────────────────┤
│                                      │
│  SCROLLABLE CONTENT ZONE             │  ← B4XDaisyPageScroll (Cards, Forms, Lists, Stats)
│  (Neutral density, rhythmic spacing) │
│                                      │
├──────────────────────────────────────┤
│  THUMB REACH ZONE (Bottom Bar)       │  ← Pinned B4XDaisyDock (Primary Tab Switching)
│                                      │  ← Floating B4XDaisyFab (Primary Action)
└──────────────────────────────────────┘
```

### Ergonomic Principles
* **Primary Navigation at Bottom**: Bottom navigation tabs (`B4XDaisyDock`) place the main app destinations within easy thumb reach.
* **Context & Secondary Actions at Top**: `B4XDaisyNavbar` handles titles, back navigation, search triggers, and overflow menus.
* **Touch Target Sizing**: Minimum touch target for buttons, icons, and list items is **48dip**. Avoid cramped rows on high-density mobile screens.
* **Vertical Spacing Rhythm**:
  * Screen Edge Margin (`PagePadding`): `16dip` (Compact) or `20dip` (Spacious).
  * In-Between Component Spacing (`YGap`): `12dip` (Forms/Inputs) to `16dip` (Cards/Sections).
  * Section Divider / Card Internal Padding: `16dip`.

---

## 2. Density & Hierarchy Guidelines

| Density Level | Target Use Case | Recommended Components & Spacing |
|---|---|---|
| **High Density** | Analytics, stock-taking, data tables, live telemetry | `B4XDaisyStat` (Horizontal), `B4XDaisyList`, `B4XDaisyBadgeGroupSelect`, `YGap = 8dip` |
| **Comfortable** | Standard business forms, checkout, user settings | `B4XDaisyFieldset`, `B4XDaisyInput`, `B4XDaisySelect`, `B4XDaisyToggle`, `YGap = 12dip` |
| **Spacious / Hero** | Onboarding, welcome splash, success confirmations | `B4XDaisyHero`, `B4XDaisyCard` (Large), `B4XDaisyAvatar`, `YGap = 20dip` |

---

## 3. Semantic Color System & Theme Tokens

B4XDaisyUIKit uses semantic color roles driven by DaisyUI design tokens:

| Semantic Role | Intent / Meaning | Typical Native Usage |
|---|---|---|
| **`primary`** | Core brand color, primary calls-to-action | Submit button, active dock tab, hero CTA |
| **`secondary`** | Supporting actions, highlights, tags | Filter chips, secondary badges, accents |
| **`accent`** | High-visibility focal points | Special promo badges, rating stars, alert highlights |
| **`neutral`** | Structural containers, backdrops, borders | Card surfaces, modal backdrops, subtle dividers |
| **`info`** | Informational feedback, non-blocking notices | Info banners, help tooltips, sync notices |
| **`success`** | Positive results, confirmations, active status | Payment complete, online status dot, verified badges |
| **`warning`** | Cautionary notices, pending actions | Low stock warning, unverified email alert |
| **`error`** | Critical failures, destructive actions | Validation error message, delete button, failed sync |

### Theme Palette Control with `B4XDaisyVariants`
Apps should support clean dynamic theming via `B4XDaisyVariants`:
```vb
' Initialize theme variants manager
Dim variants As B4XDaisyVariants
' B4XDaisyVariants contains static helper methods; no Initialize required

' Switch to a predefined DaisyUI theme palette:
' "light", "dark", "cupcake", "synthwave", "cyberpunk", "retro", "emerald", "corporate", "bumblebee"
variants.ApplyThemeToPage("light", Root)
```

---

## 4. State Completeness Standard (No "Blank" Screens)

Use these states as a completeness guide for screens that load or manage variable data:

```text
                       ┌── success with data ──► POPULATED
LOADING / REQUEST ─────┤
                       ├── success without data ► EMPTY
                       └── failure ─────────────► ERROR ── retry ──► LOADING
```

Consider loading, populated, empty, and error for each relevant data source or operation, but implement only states the screen can actually reach. A static screen or an action without an asynchronous or variable-data path does not need fabricated state UI. Do not omit a reachable state; provide a recovery path for recoverable errors. Confirmation is a separate interaction state for irreversible or critical actions.

1. **Loading State**:
   - Use `MainPage.ShowPageWithLoader("Loading Data...")` or `B4XDaisyLoading` / `B4XDaisyDivision.IsSkeleton = True`.
2. **Active State**:
   - The standard populated view with cards, forms, or data lists.
3. **Empty State**:
   - Never show an empty blank panel when a list has zero items. Mount a clean `B4XDaisyHero` or `B4XDaisyCard` with an illustrative SVG icon, "No items found" description, and a "Create New" `B4XDaisyButton`.
4. **Error State**:
   - For network/backend failures, display an inline `B4XDaisyAlert` (Color="error") with an actionable "Retry" button.
5. **Confirmation State**:
   - For irreversible or critical actions, trigger `B4XDaisySweetAlert` with `Type="warning"` and confirm/cancel buttons.

---

## 5. Screen Design Direction

Complete this short direction before selecting components. Record it in the screen contract so implementation and screenshot review share the same intent.

1. **Relationship to the existing system**: Inherit, extend, or replace? Name the screen or app visual system being carried forward. Preserve it by default; replacement requires a redesign request or an approved change.
2. **User and operating context**: What is the user's primary task, how often do they do it, and where or how will they use this screen?
3. **Visual character**: Describe the intended feel and one distinctive visual idea that supports the product and task. Avoid generic category styling and decorative ideas that compete with the task.
4. **Hierarchy and density**: State the primary information/action, supporting content, density level, and thumb-zone versus top-context placement.
5. **Native visual system**: Map semantic color roles, available typography, spacing, and surface treatments to supported B4XDaisyUIKit tokens and demonstrated components. Do not invent fonts, component members, or theme APIs.
6. **Interaction and states**: Describe relevant feedback or motion and how the states this screen can actually reach retain the same hierarchy and visual character. Use loading, populated, empty, error, and confirmation as applicable; do not invent unreachable states.
7. **Guardrails and review**: Name what must remain consistent and what to avoid. Write one or more observable screenshot criteria that show whether the direction was achieved.

If the request or existing app already settles these choices, carry them through without asking the user to choose an aesthetic. Ask only when a missing product, brand, or usage fact would materially change the direction. Accessibility, B4X platform conventions, approved product requirements, and verified component APIs remain binding constraints.
