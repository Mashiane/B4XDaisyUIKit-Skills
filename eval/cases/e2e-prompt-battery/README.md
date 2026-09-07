# E2E Prompt Battery — 10 External Design Prompts

Real-world stress cases derived from Sleek's "10 AI mobile app design prompts"
(`sleek.design/blog/ai-mobile-app-design-examples`), adapted to B4XDaisyUIKit
native output. They test whether the skill can take a *design-style* prompt
(no chapter cited) and produce a conforming native B4X page — including
honest gap reporting where the kit has no component (charts, calendar grid).

## Format

Same JSON schema as `../e2e-recipes/` (see its README). `chapter` is omitted —
the point is that the agent must work from the prompt + skill references
(`intent-to-component.md`, `component-manifest.md`, `conversion-workflows.md`).

## Running

The harness's `e2e_recipes` layer points at `cases/e2e-recipes` by default.
To run this battery, override `fixtures_dir`:

```yaml
e2e_recipes:
  fixtures_dir: cases/e2e-prompt-battery
```

or run the same fixture loader against this folder via `runners/`.

## Design notes

- `sleek-10-calendar` doubles as a **negative test**: the kit has no calendar
  component, so the case asserts the agent does NOT invent
  `B4XDaisyCalendar` and instead hand-builds the month grid with verified
  components.
- Chart-flavored prompts (01, 02, 05) assert the recipe substitutes from
  `chapters/ch01-dashboards.md` §Data Visualization Recipes (RadialProgress /
  Progress rows), never a chart class.
