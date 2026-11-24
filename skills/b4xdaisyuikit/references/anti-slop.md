---
name: anti-slop
description: Bounded visual critique for B4XDaisyUIKit native Android screens. Use for audit, polish, or G6 triage. Caps findings at three, separates reviewing from fixing, and forbids redesign disguised as polish.
---

# Anti-Slop Review — Native Mobile Edition

One reference file for visual triage of B4XDaisyUIKit mobile screens. Load this reference during design critique, visual audit, or G6 triage. Use [design-quality-playbook.md](design-quality-playbook.md) for the Creative Brief and quality scoring, and [ux-review.md](../../b4x-verify/references/ux-review.md) for the scored release gate.

The failure this guide prevents is not merely suboptimal UI—it prevents critique that either wanders into vague aesthetic opinion or attempts to rebuild working screens from scratch.

---

## 1. Pick One Mode

| Mode | When to Use | May Edit Code? |
| :--- | :--- | :--- |
| **audit** | The user asks what is visually wrong, or asks for a review of existing mobile screens. | **No** (Report only). |
| **polish** | The user asks to refine, clean up, or tighten a screen that already exists. | **Yes**, strictly within existing scope. |
| **review** | Gate G6 inside `b4x-orchestrator` / `b4x-verify` on freshly generated screens. | **Yes**, through the revision loop. |
| **distill** | The screen functions correctly but feels cluttered, crowded, or heavy. | **Yes**, subtractive removal only. |

State the active mode in the first line of your response. If the user asks for an audit and subsequently asks for fixes, treat that as a separate, subsequent request.

---

## 2. Hard Rules

1. **At most three material findings**: Order strictly by user impact on mobile ergonomics and task completion. Minor nits go to a bulleted "noted, not blocking" footnote or are dropped. A wall of 15 nits conceals the one critical touch target or hierarchy defect that actually breaks the app.
2. **Evidence, then the smallest correction**: Each finding must cite concrete observations in the rendered Android UI (specific view, coordinate offset, touch-target bounding box, contrast ratio) and propose the minimal code edit that resolves it.
3. **Audit does not modify**: A review of existing work reports findings and stops. Never rewrite code under an audit prompt unless explicit instruction is given.
4. **Polish does not conceal a redesign**: Preserve the screen's architectural structure, component choices, and functional scope. If a complete redesign is genuinely warranted, state the architectural case and request approval first.
5. **One coherent pass**: Fix related layout and spacing issues together. Do not perform speculative refactoring on regions that already function well.
6. **Stop when it is coherent**: Once the screen is visually clear, ergonomically sound, and accessible, cease modifications. Avoid endless cosmetic micro-iterations.

---

## 3. Distill (Subtractive Mobile Pass)

When a mobile screen feels overwhelming or clumsy, remove clutter before adding new elements:

- **Strip redundant containers**: Prefer clean vertical spacing (`16dip` padding, `8dip` gap) over nesting every control inside its own `B4XDaisyCard`.
- **Eliminate decorative noise**: Remove arbitrary horizontal divider lines, redundant badge labels, and decorative container borders that do not aid grouping.
- **Enforce one primary CTA**: Ensure exactly one button per viewport carries `.setColor("primary")`. Subordinate actions must use `secondary`, `neutral`, `soft`, or `ghost`.
- **Consolidate form fields**: Group related inputs under a single `B4XDaisyFieldset` with a clear legend rather than scattering loose labels.
- **Never simplify away essentials**: Do not remove field validation errors, touch padding, loading skeletons, empty state recovery actions, or accessibility contrast to make a screen look "cleaner."

---

## 4. Mobile Calibration & Default Bans

These defaults are non-negotiable unless explicit brand guidelines mandate an exception:

- **One accent hue, locked**: Exactly one hue carries primary user focus across the screen. Neutrals (`base-100`, `base-200`, `base-300`, `base-content`) establish the surface plane; `primary` is reserved for key actions, progress, and active selection.
- **One grey palette**: Warm greys or cool greys; never mix both in one app.
- **Shape lock**: Establish a consistent radius scale (e.g. controls `rounded-field`, dialogs/cards `rounded-box`, chips `rounded-full`) and never violate it. Mixed radii read as mismatched widgets.
- **One label per intent**: Do not mix "Submit", "Save", "Continue", and "Confirm" for the same conceptual action across screens.
- **Touch target preservation**: No tappable surface smaller than `48dip` $\times$ `48dip` ($44\text{dip}$ absolute floor). Compact icons must be wrapped in `B4XDaisyIconButton`.
- **No decorative glass or glowing gradients by default**: Use solid surfaces and subtle DaisyUI elevation. Avoid artificial neon borders, aura glows, or complex gradients unless explicitly requested.

---

## 5. Mechanical Pre-Flight Checklist

Before approving any mobile screen at the G6 gate, verify these deterministic counts:

| Metric | Required Value | Failure Consequence |
| :--- | :---: | :--- |
| **Distinct accent hues** | **1** | Visual competition; unclear primary action |
| **Primary CTA buttons per viewport** | **1** | Fails visual hierarchy review |
| **Minimum interactive target size** | $\ge 48\text{dip}$ | Fails Fitts's Law / WCAG 2.5.5 |
| **Bottom dock navigation items** | $\le 5$ | Fails Hick's Law; causes tap collisions |
| **Empty `Catch` blocks** | **0** | Fails `RULE-CODE-002` / `NEG-043` |
| **Mandatory `pageScroll.AutoFit`** | **Present** | Fails `RULE-LAYOUT-003` / `NEG-011` |
