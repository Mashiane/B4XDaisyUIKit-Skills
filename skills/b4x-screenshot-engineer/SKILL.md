---
name: b4x-screenshot-engineer
description: Reconstruct mobile app screenshots or wireframes as contract-ready visual evidence for native B4A screens built with B4XDaisyUIKit. Use when screenshots are supplied as design references; use b4x-verify for post-build review of rendered screens.
metadata:
  category: visual-analysis
  triggers: screenshot to UI, screenshot to app, recreate mobile screen, build from screenshot, add screen from screenshot, wireframe to B4A, visual reference analysis
---

# B4X Screenshot Engineer

Turn supplied mobile screenshots or wireframes into reliable visual evidence that the existing B4A planning and UI skills can use. Analyze what the image shows; do not generate B4A code or choose B4XDaisyUIKit APIs.

## Ownership

- `b4x-application-planner` owns requirements, screen contracts, and contract changes. In an application workflow, provide findings for the planner to record in the existing screen contract. Do not create a parallel `UI-SPEC.md`, design report, or contract.
- `b4xdaisyuikit` owns semantic interpretation, page architecture, component selection, API verification, and native composition. Hand it the observed regions without preselecting components.
- `b4x-verify` owns rendered screenshot review and visual remediation evidence. Use it after implementation; this skill does not replace its review.
- For changes to an existing app, preserve the existing app's behavior and let `b4x-regression` own baseline and impact analysis.

## Workflow

### 1. Establish the screenshot's role

Treat reference intent and project destination as separate decisions:

- **Faithful reference:** reproduce the visible layout and visual hierarchy as closely as the native framework and app requirements allow.
- **Inspiration:** extract useful structure and interaction ideas, then adapt them to the destination app's approved brand and visual system. Do not copy another product's identity by default.
- **Current-app evidence:** describe the current rendered state or its differences from a separately stated target. Do not treat the current screenshot as the desired design unless the user says so.

The destination may be a new app, an additional screen, or a change to an existing screen. Infer these choices from the request and project context when clear; ask only about a material ambiguity that changes the target or implementation.

### 2. Inventory the supplied images

For a batch, inspect the images in one pass. Record each source path or attachment name, pixel dimensions, orientation, visible device frame or system insets, and any known device/viewport information. Group duplicates and likely state variants; name distinct screens by their visible purpose. Filenames alone do not establish navigation or behavior. Do not require a separate prompt for each image.

### 3. Record visual evidence

For each screen, capture only details that affect reconstruction:

- regions in reading order and their approximate relative bounds, alignment, spacing, and density;
- legible text verbatim, with uncertain or clipped text marked unclear;
- visible controls, icons, selected/disabled states, and their apparent grouping;
- imagery, chart or diagram structure, framing, and important visible assets;
- typography, color relationships, surfaces, borders, and shape treatments;
- likely scrolling versus fixed areas, marked as an inference unless the image proves it.

Separate **observed** facts from **inferred** structure or behavior and **open** details. State confidence when an inference could affect the implementation. Screenshot pixel dimensions are not dp measurements unless device density is known. Do not claim exact spacing, colors, font, touch-target size, hidden state, or control behavior when the image cannot establish it.

If an important asset is unavailable, record the gap and preserve its observed role and framing. Do not silently substitute unrelated imagery or invent product content.

### 4. Hand off into the existing workflow

Return contract-ready findings for the planner's existing `Design Reference`, `Visual Direction`, `Information Hierarchy`, `Actions / Events`, and `Visual Review Criteria` fields as applicable. Keep the original reference identifiable so `b4x-verify` can compare it with the rendered screen later. Do not add a second persistent analysis artifact.

After handoff, let the existing workflow proceed: planner and contract gate; bootstrap when greenfield; feature implementation and B4XDaisyUIKit component mapping; then conformance, build, runtime, screenshot review, and regression as required by scope. If the user asks only for image analysis, return the findings without starting implementation.

## Do Not

- Jump directly from screenshot to B4A source.
- Name a B4XDaisyUIKit component or API as verified; `b4xdaisyuikit` must resolve semantics against its manifest, component references, demos, and constraints.
- Infer navigation, data, hidden states, or behavior from appearance alone.
- Replace the destination app's existing design system when the screenshot is inspiration or current-app evidence.
- Add a numeric visual-fidelity score or a new verification gate. `b4x-verify` owns comparison criteria and the existing remediation loop.
