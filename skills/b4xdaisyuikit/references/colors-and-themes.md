# B4XDaisyUIKit Colors, Themes & Semantic Palette Guide

This guide establishes the mandatory semantic color naming rules, role definitions, and dynamic theme switching methodologies for B4XDaisyUIKit native applications, mirroring the official daisyUI color architecture.

---

## 1. Semantic Color Token Roles

In B4XDaisyUIKit, every color has a semantic meaning and an associated high-contrast foreground content token:

| Semantic Token | Visual Role & Description | Associated Content Token | Usage Context |
|---|---|---|---|
| `primary` | Main brand color for primary actions | `primary-content` | Primary submit CTA buttons, active tab indicator, key metrics. |
| `secondary` | Secondary brand color | `secondary-content` | Feature highlights, badge tags, secondary CTAs. |
| `accent` | Accent color for visual flair | `accent-content` | Floating badges, promotional callouts, eye-catching stars. |
| `neutral` | Dark / desaturated neutral tone | `neutral-content` | Secondary actions, inactive buttons, subtle borders. |
| `base-100` | Base page surface color | `base-content` | The default canvas/page background. |
| `base-200` | Slightly darker/elevated surface | `base-content` | Card bodies, sidebar drawers, panel backgrounds. |
| `base-300` | Deepest base shade for elevation | `base-content` | Nested containers, active list rows, borders. |
| `base-content`| Default body text color | — | Primary reading text on `base-100`, `base-200`, `base-300`. |
| `info` | Informational status color (blue) | `info-content` | System notices, helper alerts, informational badges. |
| `success` | Positive / Success status (green) | `success-content` | Successful saves, order completions, positive KPI trends. |
| `warning` | Caution / Warning status (amber) | `warning-content` | Non-blocking alerts, expiring deadlines, caution badges. |
| `error` | Destructive / Danger status (red) | `error-content` | Form validation errors, delete confirmations, critical alerts. |

---

## 2. The 10 Golden Color Rules for B4X AI Agents

1. **Always Use Semantic Token Names**:
   Assign color variants using string tokens (`comp.Variant = "primary"`, `comp.Variant = "success"`) rather than hardcoded hex integers (`0xFF3B82F6`) or `Colors.*` constants.
2. **Dynamic Theme Switchability**:
   Semantic tokens resolve dynamically based on the active theme (`light`, `dark`, `cupcake`, `cyberpunk`, `retro`, `synthwave`). Hardcoded colors do not change and will break in dark mode.
3. **Never Hardcode Text Colors on Base Surfaces**:
   Never use `Colors.Black` or `0xFF333333` for text. On dark themes (`base-100` is dark), hardcoded dark text becomes completely unreadable. Use `B4XDaisyText` with default styling or `Variant = "base-content"`.
4. **Primary Color Sparingly**:
   Use the `primary` variant **once per screen** for the single most important call-to-action (e.g. "Save Order", "Log In"). Use `neutral`, `ghost`, or `default` for secondary buttons.
5. **Majority Base Surface Rule**:
   Use `base-100` and `base-200` for 80%+ of the screen area to maintain visual calm.
6. **Automatic Content Contrast Guarantee**:
   B4XDaisy components automatically pair `primary` with `primary-content` text, `success` with `success-content`, and `base-100` with `base-content`.
7. **Semantic Status for User Feedback**:
   - Saved/Completed $\rightarrow$ `"success"`
   - Missing required input $\rightarrow$ `"error"`
   - Attention needed $\rightarrow$ `"warning"`
   - Informative hint $\rightarrow$ `"info"`
8. **Rare Exception for Fixed Colors**:
   Raw hex or `Colors.*` values are permitted **only** when content must be strictly theme-independent (e.g. third-party brand logos, fixed status telemetry pins, or hardcoded multi-color chart graphs).
9. **Theme Elevation Layering**:
   Layer surfaces logically: `B4XDaisyPageScroll` (`base-100`) $\rightarrow$ `B4XDaisyCard` (`base-200`) $\rightarrow$ Nested `B4XDaisyDivision` (`base-300`).
10. **Soft vs. Solid Styles**:
    Use `Style = "soft"` for subtle background tints with colored text, and `Style = "solid"` for high-emphasis bold actions.

---

## 3. Dynamic Theme Switching with `B4XDaisyVariants`

### Switch Active Theme at Runtime
```b4x
' Switch the entire UI palette to Dark mode
B4XDaisyVariants.SetActiveTheme("dark")

' Or switch to specialized themes
B4XDaisyVariants.SetActiveTheme("cupcake")
B4XDaisyVariants.SetActiveTheme("cyberpunk")
```

### Resolve a Theme Token Color Programmatically
```b4x
' Resolve the primary color for a custom canvas or chart
Dim primaryColor As Int = B4XDaisyVariants.GetTokenColor("--color-primary", Colors.Blue)

' Resolve the background color of the current theme
Dim baseColor As Int = B4XDaisyVariants.GetTokenColor("--color-base-100", Colors.White)
```

### Apply Theme to an Existing View Hierarchy
```b4x
' Re-theme all child views on the current page
B4XDaisyVariants.ApplyThemeToPage("dark", Root)
```
