---
name: design-quality-playbook
description: Practical art direction and rendered-screen quality bar for creating distinctive, usable B4XDaisyUIKit native Android apps. Use before implementation for new screens and during visual critique.
---

# Design Quality Playbook — Native Mobile Edition

This playbook establishes the art direction standards and rendered visual quality bar for native B4A applications built with B4XDaisyUIKit. It serves as the bridge between functional UX planning and a native mobile application that feels deliberately designed, ergonomically sound, and visually polished.

---

## 1. Why the Gate Exists

Compilation success (`B4ABuilder exit 0`), zero pre-scan errors, and component coverage do **not** guarantee mobile visual quality. A screen can compile cleanly and still:
- Look like an unstyled developer debug form.
- Force tiny $24\text{dp}$ touch targets that frustrate mobile users.
- Crowd 8 items into a bottom bar, causing thumb collisions.
- Clip content below the bottom navigation bar due to missing scroll insets.
- Misalign icons and labels across repeated card rows.

Treat the rendered mobile screen on device/emulator as the true product; source code alone is not visual evidence.

---

## 2. Set Art Direction: The Mobile Creative Brief

For every new application, and for any screen undergoing major visual changes, establish a concise **Mobile Creative Brief** before generating code:

```text
Product & Audience:
Primary Mobile Job:
Visual Thesis: One sentence describing the feeling and purpose of the mobile interface.
Character: Three concrete adjectives (e.g. compact, authoritative, calm, high-efficiency).
Signature Detail: One restrained, repeatable UI element that makes this app memorable (e.g. custom stat card accent, branded chip badge).
Thumb-Zone Layout: Bottom-weighted for one-handed use; primary actions in natural thumb reach.
Density: Comfortable (default 16dip padding, 8dip gaps) vs. Compact (data-dense lists).
Color Roles: Canvas (base-100), Surface (base-200), Accent (primary), Text (base-content).
Iconography: Clean outline or solid SVG icons from Files/ with consistent stroke weight.
Motion & Feedback: Responsive button press states, SweetAlert dialogs, and smooth page loader transitions.
Explicit Exclusions: Visual tropes to avoid (e.g. no raw unrounded cards, no unpadded icons).
```

---

## 3. Translate Direction into a Native Token System

Select design tokens once and apply them systematically across all B4XPages:

### Typography Hierarchy
Native Android screens require distinct typographic scale steps:
- **Screen Title**: $20\text{dip} - 24\text{dip}$, Bold.
- **Section Heading**: $16\text{dip} - 18\text{dip}$, Semi-Bold.
- **Body Text**: $14\text{dip} - 15\text{dip}$, Regular (`base-content`).
- **Secondary / Hint Text**: $12\text{dip} - 13\text{dip}$, Muted (`base-content` with alpha or neutral).
- **Stat / KPI Value**: $24\text{dip} - 32\text{dip}$, Bold.

### Surface Elevation & Contrast
- **Page Canvas (`base-100`)**: The foundational background for all screens.
- **Elevated Surfaces (`base-200` / `base-300`)**: Used for cards, input containers, and list item tiles to indicate group boundaries.
- **Primary Accent (`primary`)**: Reserved exclusively for the key conversion action, active navigation tab, and progress indicators.
- **Contrast Ratios**: Strictly adhere to WCAG 2.2 AA ($\ge 4.5:1$ for body copy, $\ge 3:1$ for large headings).

### Mobile Spacing Rhythm
- **Outer Page Padding**: Standard $16\text{dip}$ ($12\text{dip}$ on compact screens).
- **Control Gaps**: Standard $8\text{dip}$ between form inputs, $12\text{dip} - 16\text{dip}$ between sections.
- **Vertical Navigation Insets**: Reserve $64\text{dip}$ top inset for `B4XDaisyNavbar` and $64\text{dip}$ bottom inset for `B4XDaisyDock`.

---

## 4. Mobile Composition Rules

1. **Thumb-Zone Prioritization**: Position frequent, high-value actions in the bottom half of the screen where thumbs rest naturally. Avoid putting primary actions solely at the top right of the screen.
2. **One Primary Action per Viewport**: Never present multiple competing primary buttons on screen. Use `setColor("primary")` for the key path; subordinate actions must use `secondary`, `neutral`, `soft`, or `ghost`.
3. **Consistent Vertical Accumulator**: Always calculate `y = y + comp.GetComputedHeight + gap` to ensure dynamic text, translated strings, and larger accessibility fonts never cause layout overlap.
4. **Mandatory 4-State UI Completeness**: Every asynchronous or data-bound screen must support:
   - **Loading**: `B4XDaisyLoading` spinner or `B4XDaisyDivision` skeleton cards.
   - **Populated**: Formatted cards, metric stats, or item lists.
   - **Empty**: Informative graphic/icon + explanatory message + CTA to add data.
   - **Error**: Clear error message + retry action button.

---

## 5. Render, Inspect, and Score (The G6 Visual Quality Gate)

Evaluate rendered device/emulator screenshots against these five dimensions (scored 0 to 4):

| Dimension | 0–1: Fail | 2: Weak | 3: Solid | 4: Exceptional |
| :--- | :--- | :--- | :--- | :--- |
| **1. Task Clarity & Hierarchy** | Primary action or purpose is ambiguous. | Competing focal points; unclear visual weight. | Clear primary action; easily scannable layout. | Instant comprehension; effortless visual pathway. |
| **2. System Coherence & Tokens** | Inconsistent colors, fonts, or padding throughout. | Mostly default styles; scattered spacing choices. | Consistent colors, padding, and radii applied across all views. | Unified design system with rhythm and polish. |
| **3. Mobile Ergonomics & Touch** | Touch targets $< 44\text{dip}$; buttons clip screen edge. | Reaching targets requires hand shifting; cramped inputs. | All touch targets $\ge 48\text{dip}$; comfortable spacing. | Optimized thumb-zone placement and touch handling. |
| **4. Layout & Content Craft** | Overlapping views; unscrollable clipped content. | Awkward white space; uneven vertical gaps. | Consistent vertical accumulator math; proper `AutoFit`. | Flawless vertical flow adapting to variable content. |
| **5. Finish & State Completeness** | Missing error/empty states; broken icon assets. | Rough transitions; generic empty text with no retry. | All 4 states handled; clean SVG icons from `Files/`. | Polished feedback, clear validation, and SweetAlert dialogs. |

### Release Quality Threshold
- **Minimum score**: No single dimension below **3**.
- **Average score**: At least **3.5** across all five dimensions.
- **Hard blockers**: Any clipped view, missing icon, crash on rotation, touch target $< 44\text{dip}$, or unhandled error state is an automatic **FAIL**.
