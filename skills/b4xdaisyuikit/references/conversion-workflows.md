# B4XDaisyUIKit — Conversion Workflows

This guide provides structured transformation protocols to convert Web DaisyUI HTML/Tailwind templates, UI screenshots, and Figma mockups into pure native B4XDaisy custom view hierarchies.

---

## 1. Web DaisyUI / Tailwind HTML $\rightarrow$ Native B4XDaisy

When given web HTML/Tailwind markup:

### Step-by-Step Translation Protocol
1. **Strip Web-Only Elements**: Eliminate all `<div class="...">`, `<span...>`, `<style>`, and JavaScript DOM event handlers.
2. **Map Web Semantic Containers to Native Containers**:
   * `<nav class="navbar ...">` $\rightarrow$ `B4XDaisyNavbar`
   * `<div class="btm-nav ...">` or `<div class="dock ...">` $\rightarrow$ `B4XDaisyDock`
   * `<div class="card ...">` $\rightarrow$ `B4XDaisyCard`
   * `<div class="stats ...">` $\rightarrow$ `B4XDaisyStat`
   * `<div class="collapse ...">` $\rightarrow$ `B4XDaisyCollapse`
   * `<div class="hero ...">` $\rightarrow$ `B4XDaisyHero`
3. **Map Form & Interactive Controls**:
   * `<input type="text" class="input ...">` $\rightarrow$ `B4XDaisyInput`
   * `<button class="btn btn-primary">` $\rightarrow$ `B4XDaisyButton (Color="primary")`
   * `<input type="checkbox" class="toggle ...">` $\rightarrow$ `B4XDaisyToggle`
   * `<select class="select ...">` $\rightarrow$ `B4XDaisySelect`
   * `<div class="badge badge-secondary">` $\rightarrow$ `B4XDaisyBadge (Color="secondary")`
   * `<ul class="steps ...">` $\rightarrow$ `B4XDaisySteps`
4. **Translate Classes to Native Properties**:
   * `btn-primary` $\rightarrow$ `.Color = "primary"`
   * `btn-outline` $\rightarrow$ `.Variant = "outline"`
   * `btn-sm` $\rightarrow$ `.Size = "sm"` (or set native height to `36dip`)
   * `btn-circle` $\rightarrow$ `.Shape = "circle"`
5. **Enclose in `RenderContent(W, H)`**:
   Mount mapped components using `pageScroll.Panel`, advance the Y-cursor with `comp.GetComputedHeight + gap`, and finalize with `pageScroll.AutoFit`.

---

## 2. UI Screenshot $\rightarrow$ Native B4XDaisy

When given an image or screenshot of a mobile app:

### Deconstruction Protocol
1. **Identify Fixed Insets**:
   * Is there a top title/search bar? $\rightarrow$ Pinned `B4XDaisyNavbar` (`Top=0, Height=64dip`).
   * Is there a bottom tab bar? $\rightarrow$ Pinned `B4XDaisyDock` (`Top=Root.Height-64dip, Height=64dip`).
   * Remaining vertical space becomes `B4XDaisyPageScroll`.
2. **Deconstruct Content Flow (Top to Bottom)**:
   * Top metrics/numbers $\rightarrow$ `B4XDaisyStat` or `B4XDaisyRadialProgress`.
   * Grouped inputs $\rightarrow$ `B4XDaisyFieldset` with child `B4XDaisyInput` / `B4XDaisySelect`.
   * Clickable options/cards $\rightarrow$ `B4XDaisyCard` with `B4XDaisyButton` actions.
3. **Extract Semantic Color Roles**:
   * Identify primary brand color (assign `Color="primary"` to primary action buttons and active tab).
   * Identify secondary accent color (assign `Color="secondary"` or `Color="accent"`).
4. **Verify Component Signatures**:
   * Check each candidate component in `component-manifest.md` before coding.

---

## 3. Figma Auto-Layout $\rightarrow$ Native B4XDaisy

When given Figma frame specifications:

### Frame Mapping Protocol
1. **Top-Level Screen Frame**:
   * Map to `B4XPage*.bas` inheriting the bootstrap shell template (`B4XPageNavDock` or `B4XPageNavOnly`).
2. **Vertical Auto-Layout (Direction: Vertical)**:
   * Map to sequential mounting inside `pageScroll.Panel` with `gap = itemSpacing` and `pad = paddingLeft`.
3. **Horizontal Auto-Layout (Direction: Horizontal)**:
   * For side-by-side metric tiles $\rightarrow$ `B4XDaisyStat (Direction="horizontal")`.
   * For horizontal chip filters $\rightarrow$ `B4XDaisyBadgeGroupSelect` or `B4XDaisyFilter`.
   * For button rows $\rightarrow$ Mount 2 buttons calculating `w = (maxW - gap) / 2` and same `Y`.
4. **Nested Cards & Modals**:
   * Auto-layout frames with border-radius and drop-shadow $\rightarrow$ `B4XDaisyCard`.
   * Overlay popups $\rightarrow$ `B4XDaisyModal` or `B4XDaisySweetAlert`.
