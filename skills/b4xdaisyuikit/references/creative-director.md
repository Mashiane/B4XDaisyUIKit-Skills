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

Every professional mobile screen must handle all four lifecycle states:

```text
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   LOADING    │ ──► │    ACTIVE    │ ──► │    EMPTY     │ ──► │    ERROR     │
│   (Spinner / │     │  (Populated  │     │   (Hero /    │     │   (Alert /   │
│   Skeleton)  │     │   Content)   │     │  Action CTA) │     │  Retry CTA)  │
└──────────────┘     └──────────────┘     └──────────────┘     └──────────────┘
```

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

## 5. Creative Director Reasoning Checklist

Before writing any B4X code, state your Creative Direction:
1. **Target Product & Workflow**: What is the user's primary goal on this screen?
2. **Ergonomic Hierarchy**: Which action belongs in the thumb zone vs top context bar?
3. **Density Choice**: High (telemetry/table) vs Comfortable (form) vs Spacious (welcome/hero)?
4. **Semantic Color Mapping**: Which component receives `primary`, `secondary`, or `neutral` roles?
5. **State Handling**: How are loading, empty, error, and confirmation states presented?
