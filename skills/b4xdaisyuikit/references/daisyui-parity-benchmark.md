---
name: daisyui-parity-benchmark
description: Formal parity benchmark & blindspot audit of B4XDaisyUIKit native Android components against official upstream daisyUI v5 catalog.
---

# daisyUI v5 Parity Benchmark & Blindspots — Native Edition

> **Generated:** 2026-11-23 22:43:41 UTC  
> **Coverage:** **68 / 68 components (100.0%)** mapped to verified native Android views.  
> **Native Catalog:** 108 custom view classes, 1,591 properties, 58 content defaults audited.

---

## 1. Executive Summary

This benchmark compares upstream **daisyUI v5** official specifications against **B4XDaisyUIKit** native Android custom views.

Unlike web frameworks that emit HTML strings and CSS classes, B4XDaisyUIKit converts daisyUI semantics into 100% native Android views (`android.view.View` / `B4XView`). The benchmark evaluates:
1. **Component Parity**: Does a native custom view exist for each official daisyUI component?
2. **Variant & Modifier Parity**: Are color variants (`primary`, `secondary`, `accent`), styles (`solid`, `soft`, `outline`, `dash`, `ghost`), and sizes supported?
3. **Default Property Blindspots**: Which native properties default to placeholder strings or disabled features, requiring explicit developer override?

---

## 2. Parity Scorecard Matrix

| daisyUI Component | Native B4XDaisy Class | Parity Status | Variant Support | Blindspot Traps |
| :--- | :--- | :---: | :---: | :--- |
| `accordion` | `B4XDaisyAccordion` | **FULL** | Shape | None (Clean) |
| `alert` | `B4XDaisyAlert` | **FULL** | Color, Size, Shape | `Text = "12 unread messages. Tap to see."` |
| `aura` | `B4XDaisyAura` | **FULL** | Color, Size, Shape | None (Clean) |
| `avatar` | `B4XDaisyAvatar` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `badge` | `B4XDaisyBadge` | **FULL** | Color, Size, Shape | `Text = "Badge"` |
| `breadcrumbs` | `B4XDaisyBreadcrumbs` | **FULL** | Standard | `TextSize = "text-sm"` |
| `button` | `B4XDaisyButton` | **FULL** | Color, Size, Shape | `Text = "Button"` |
| `calendar` | `B4XDaisyPicker` | **FULL** | Shape | None (Clean) |
| `card` | `B4XDaisyCard` | **FULL** | Color, Size, Shape | `Title = "Card Title"` |
| `carousel` | `B4XDaisyCarousel` | **FULL** | Size, Shape | None (Clean) |
| `chat` | `B4XDaisyChat` | **FULL** | Size | None (Clean) |
| `checkbox` | `B4XDaisyCheckbox` | **FULL** | Color, Size | None (Clean) |
| `collapse` | `B4XDaisyCollapse` | **FULL** | Color, Size, Shape | `TitleText = "Click to expand"` |
| `countdown` | `B4XDaisyCountdown` | **FULL** | Color, Shape | None (Clean) |
| `diff` | `B4XDaisyDiff` | **FULL** | Color, Size, Shape | `Text1 = "DAISY"` |
| `divider` | `B4XDaisyDivider` | **FULL** | Color, Size | `TextSize = "text-sm"` |
| `dock` | `B4XDaisyDock` | **FULL** | Size, Shape | None (Clean) |
| `drawer` | `B4XDaisyDrawer` | **FULL** | Shape | None (Clean) |
| `dropdown` | `B4XDaisyDropdown` | **FULL** | Standard | None (Clean) |
| `fab` | `B4XDaisyFab` | **FULL** | Standard | `TriggerText = "F"` |
| `fieldset` | `B4XDaisyFieldset` | **FULL** | Color, Shape | None (Clean) |
| `file-input` | `B4XDaisyFileInput` | **FULL** | Color, Size | `ButtonText = "Choose file"` |
| `filter` | `B4XDaisyFilter` | **FULL** | Color, Size, Shape | `ResetText = "x"` |
| `footer` | `B4XDaisyDivision` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `hero` | `B4XDaisyHero` | **FULL** | Color, Size, Shape | `ContentAlignment = "center"` |
| `hover-3d` | `B4XDaisyHover3d` | **FULL** | Color, Size, Shape | `ContentType = "custom"` |
| `hover-gallery` | `B4XDaisyCarousel` | **FULL** | Size, Shape | None (Clean) |
| `indicator` | `B4XDaisyIndicator` | **FULL** | Color, Size, Shape | None (Clean) |
| `input` | `B4XDaisyInput` | **FULL** | Color, Size | `Placeholder = "Type here"` |
| `join` | `B4XDaisyFlexPanel` | **FULL** | Standard | `JustifyContent = "start"` |
| `kbd` | `B4XDaisyKbd` | **FULL** | Size, Shape | `Text = "K"` |
| `label` | `B4XDaisyText` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `link` | `B4XDaisyText` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `list` | `B4XDaisyMenu` | **FULL** | Size, Shape | None (Clean) |
| `loading` | `B4XDaisyLoading` | **FULL** | Color, Size | None (Clean) |
| `mask` | `B4XDaisyAvatar` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `megamenu` | `B4XDaisyMenu` | **FULL** | Size, Shape | None (Clean) |
| `menu` | `B4XDaisyMenu` | **FULL** | Size, Shape | None (Clean) |
| `mockup-browser` | `B4XDaisyWindow` | **FULL** | Size, Shape | `ContentPadding = "p-4"` |
| `mockup-code` | `B4XDaisyText` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `mockup-phone` | `B4XDaisyWindow` | **FULL** | Size, Shape | `ContentPadding = "p-4"` |
| `mockup-window` | `B4XDaisyWindow` | **FULL** | Size, Shape | `ContentPadding = "p-4"` |
| `modal` | `B4XDaisyModal` | **FULL** | Size, Shape | `Title = "Modal Title"` |
| `navbar` | `B4XDaisyNavbar` | **FULL** | Color, Size, Shape | `TitlePosition = "start"` |
| `otp` | `B4XDaisyOTP` | **FULL** | Color, Size | None (Clean) |
| `pagination` | `B4XDaisyPagination` | **FULL** | Color, Size, Shape | `PrevText = "chevron-left-solid.svg"` |
| `progress` | `B4XDaisyProgress` | **FULL** | Color, Size | None (Clean) |
| `radial-progress` | `B4XDaisyRadialProgress` | **FULL** | Color, Size | None (Clean) |
| `radio` | `B4XDaisyRadio` | **FULL** | Color, Size | None (Clean) |
| `range` | `B4XDaisyRange` | **FULL** | Color, Size | None (Clean) |
| `rating` | `B4XDaisyRating` | **FULL** | Color, Size | None (Clean) |
| `select` | `B4XDaisySelect` | **FULL** | Color, Size | `Placeholder = "Pick an option"` |
| `skeleton` | `B4XDaisyDivision` | **FULL** | Color, Size, Shape | `TextSize = "text-sm"` |
| `stack` | `B4XDaisyStack` | **FULL** | Size, Shape | None (Clean) |
| `stat` | `B4XDaisyStat` | **FULL** | Size, Shape | None (Clean) |
| `status` | `B4XDaisyStatus` | **FULL** | Color, Size | None (Clean) |
| `steps` | `B4XDaisySteps` | **FULL** | Size | None (Clean) |
| `swap` | `B4XDaisySwap` | **FULL** | Size | `OnText = "ON"` |
| `tab` | `B4XDaisyTab` | **FULL** | Color, Size | None (Clean) |
| `table` | `B4XDaisyMenu` | **FULL** | Size, Shape | None (Clean) |
| `text-rotate` | `B4XDaisyTextRotate` | **FULL** | Color | None (Clean) |
| `textarea` | `B4XDaisyInput` | **FULL** | Color, Size | `Placeholder = "Type here"` |
| `theme-controller` | `B4XDaisyVariants` | **FULL** | Standard | None (Clean) |
| `timeline` | `B4XDaisyTimeline` | **FULL** | Standard | `TextSize = "text-xs"` |
| `toast` | `B4XDaisyToast` | **FULL** | Standard | None (Clean) |
| `toggle` | `B4XDaisyToggle` | **FULL** | Color, Size | None (Clean) |
| `tooltip` | `B4XDaisyTooltip` | **FULL** | Color | `Message = "Tooltip message"` |
| `validator` | `B4XDaisyInput` | **FULL** | Color, Size | `Placeholder = "Type here"` |

---

## 3. The Top Blindspot Traps in Native Composition

When an agent or developer initializes a component via `.Initialize` and `.AddToParent`, unset properties fall back to `#DesignerProperty` defaults. The key blindspots to remember:

1. **Silent Dummy Text**: `B4XDaisyAlert` defaults to `"12 unread messages. Tap to see."`; `B4XDaisyButton` defaults to `"Button"`; `B4XDaisyCard` defaults to `"Card Title"`.
2. **Hidden Feature Flags**: Features like `Avatar.ShowOnline`, `Badge.Toggle`, `Button.Wide`, and `Carousel.AutoPlay` default to `False`.
3. **Scroll Sizing Trap**: `B4XDaisyPageScroll` has an initial panel height of 0; `pageScroll.AutoFit` MUST be called after all views are mounted (`RULE-LAYOUT-003`).

See [component-default-traps.md](component-default-traps.md) for the full 58-property catalog and overrides.