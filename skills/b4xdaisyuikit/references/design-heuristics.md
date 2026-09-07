# B4XDaisyUIKit Property Taxonomy & Design Heuristics

This reference guide establishes the structural property taxonomy, Refactoring UI design heuristics, and asset conventions for assembling native B4X applications with B4XDaisyUIKit.

> **Relation:** Complements `ux-master-doctrine.md` (quantitative laws Fitts/Hick/Miller + WCAG + 4-state DoD). This file adds property categories (`Variant/Size/Style`) and asset/SVG conventions. No duplication — cited by `SKILL.md:43` and `b4x-verify` for taxonomy checks.

---

## 1. B4XDaisy Component Property Taxonomy

When configuring any B4XDaisy component in B4X code, properties fall into these standardized categories:

| Category | Role & Purpose | Native B4XDaisy Properties | Valid Tokens / Example Values |
|---|---|---|---|
| **Component** | The native B4X Custom View class | `B4XDaisyButton`, `B4XDaisyInput`, `B4XDaisyCard` | Instantiated via `comp.Initialize(Me, "comp")` |
| **Part** | Sub-panel or child view slot | `crd.getBodyContainer`, `clp.getContentView` | Mount child controls inside using `AddToParent` or `.AddView` |
| **Style** | Visual skin / surface treatment | `Style` | `"solid"`, `"soft"`, `"outline"`, `"ghost"`, `"dash"`, `"link"` |
| **Variant (Color)** | Semantic theme color token | `Variant` | `"default"`, `"neutral"`, `"primary"`, `"secondary"`, `"accent"`, `"info"`, `"success"`, `"warning"`, `"error"` |
| **Size** | Standard 5-tier scaling token | `Size` | `"xs"` (extra small), `"sm"` (small), `"md"` (medium/default), `"lg"` (large), `"xl"` (extra large) |
| **Behavior** | Operational flag or auto-trigger | `AutoPlay`, `OpenOnlyOne`, `AutoSubmit`, `Masked` | `True` / `False` |
| **Placement** | Horizontal / vertical anchor | `IconPosition`, `Placement`, `Direction` | `"left"`, `"right"`, `"start"`, `"end"`, `"horizontal"`, `"vertical"` |
| **Modifier** | Shape or layout modification | `Circle`, `Block`, `Wide`, `Rounded`, `Shadow` | `Circle = True`, `Rounded = "rounded-2xl"`, `Shadow = "sm"` |

---

## 2. Refactoring UI Design Heuristics

Follow these core design heuristics when composing native screens to ensure a clean, professional user experience:

### A. Establish Visual Hierarchy Without Adding Clutter
1. **Spacing Over Lines**: Group related inputs and controls using vertical margins (`gap` and `pad`) rather than separating every element with divider lines or heavy borders.
2. **Typographic Scale & Weight**: Use `B4XDaisyText.HeadingType` and `Bold = True` to denote section importance:
   - `HeadingType = "h1"`: Screen Title (bold, 28–32sp)
   - `HeadingType = "h2"` / `"h3"`: Major Section Card Header (bold, 18–22sp)
   - `HeadingType = "p"`: Standard Form Labels and Body Text (14–16sp)
   - `HeadingType = "caption"`: Helper text, timestamps, or secondary info (12sp, neutral variant)
3. **Primary Color Sparingly**: Use the `"primary"` variant **once per screen** for the single most important call-to-action (e.g. "Submit Order", "Create Account"). Use `"neutral"`, `"ghost"`, or `"default"` for secondary buttons.

### B. Form & Layout Ergonomics
1. **Always Label Inputs Clearly**: Use `input.LabelAbove = "Email Address"` or `input.Placeholder = "user@example.com"`.
2. **Place Actions at the Bottom**: In forms, place action buttons at the end of the vertical scroll stream with generous top padding (`y = y + btn.GetComputedHeight + (gap * 2)`).
3. **Full-Width Mobile Hit Targets**: Action buttons should span `maxW` on mobile screens to ensure effortless thumb tapping.
4. **Touch Intercept Protection**: For controls with touch-drag interactions (`B4XDaisyColorWheel`, `B4XDaisyPicker`, `B4XDaisySignaturePad`, `B4XDaisyRange`), maintain `DisallowParentIntercept(Action)` so the enclosing `B4XDaisyPageScroll` does not steal drag gestures.

---

## 3. Standardized Asset & Placeholder Conventions

When assembling UI examples, use these standard placeholder assets:

### Image Assets
- User Avatars: `"user.jpg"`, `"avatar1.jpg"`, `"avatar2.jpg"`
- Banners & Hero Images: `"banner.jpg"`, `"landscape.jpg"`, `"promo_banner.jpg"`
- Product Thumbnails: `"product1.jpg"`, `"product2.jpg"`

### Vector SVG Icons
Standard SVG icons bundled in the app's `Assets/Files/` directory:
- Actions: `"search-solid.svg"`, `"plus-solid.svg"`, `"trash-solid.svg"`, `"pencil-solid.svg"`, `"share-solid.svg"`
- Status & Alerts: `"check-circle-solid.svg"`, `"exclamation-triangle-solid.svg"`, `"info-circle-solid.svg"`, `"times-circle-solid.svg"`
- Navigation: `"arrow-left-solid.svg"`, `"chevron-right-solid.svg"`, `"home-solid.svg"`, `"bars-solid.svg"`, `"cog-solid.svg"`
- User & Social: `"user-solid.svg"`, `"users-solid.svg"`, `"envelope-solid.svg"`, `"phone-solid.svg"`, `"bell-solid.svg"`, `"heart-solid.svg"`, `"star-solid.svg"`
- Media & Commerce: `"shopping-cart-solid.svg"`, `"credit-card-solid.svg"`, `"dollar-sign-solid.svg"`, `"file-pdf-solid.svg"`, `"camera-solid.svg"`

---

## 4. Design Intelligence: Scanning, Disclosure & Cognitive Load

Consolidates the perceptual/cognitive layer used during Stage 3 (Creative Director) and Stage 4 (Page Architect). Quantitative laws (Fitts, Hick, Miller) and WCAG live in `ux-master-doctrine.md` — this section covers how *visual composition* serves them. Cite these when defending a layout choice.

### A. Scanning patterns
1. **F-pattern (text-heavy screens):** users scan left edges and first lines. Front-load list titles and card headings; never hide the key word past the midpoint of a line. Applies to `B4XDaisyList`, feeds, search results.
2. **Z-pattern (action screens with sparse content):** eyes travel top-left → top-right → bottom-left → bottom-right. Put the screen identity at the top (`Navbar` title) and the primary action at the end of the sweep (bottom button or `Fab`/`Dock`).
3. **Thumb-zone dominance (mobile-first override):** mobile scanning is vertical; the F/Z patterns matter less than vertical order. Rank content strictly by task priority top-to-bottom, actions in the bottom thumb zone (`creative-director.md` §1).

### B. Progressive disclosure
1. Show the decision, hide the detail: surface only what is needed for the current task; defer everything else behind `B4XDaisyCollapse`/`Accordion`, `SheetModal`, `Modal`, or a second page.
2. Wizards over mega-forms: more than ~7 input groups on one screen → split into `B4XDaisySteps` (Hick's law pressure on a single screen).
3. Disclosure must be discoverable: every collapsed/hidden region needs an affordance (icon, chevron, count badge) — never invisible taps.

### C. Cognitive load
1. **Chunk to 3–5 groups per screen.** A screen with more visual groups than that needs dividers, density reduction, or a second screen.
2. **One decision per screen section.** Each visual group should answer one question; mixed-purpose groups are a ux-review finding.
3. **Recognition over recall:** show valid options (`Select`/`Dropdown`, `BadgeGroupSelect`) rather than forcing users to remember and type.
4. **Consistency is load-bearing:** the same intent must use the same component and variant across screens (`intent-to-component.md` is the single mapping source).

### D. Applying it
When writing or reviewing a screen, state in one line per section: *what the user is scanning for, what is disclosed now vs later, and what decision the section supports*. If a line can't be written, the section is a candidate for removal or restructuring.
