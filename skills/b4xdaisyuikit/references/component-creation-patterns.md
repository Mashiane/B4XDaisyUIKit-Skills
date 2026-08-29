# Component Creation Patterns — Router & Index

Each B4XDaisy component has its own dedicated, self-contained documentation in the `components/<name>.md` folder containing its exact syntax, designer properties, declared events, and canonical recipe.

## General Rules:

1. **Default 3-Step (Standard Controls)**:
   - Applies to: `Button`, `Input`, `Checkbox`, `Toggle`, `Radio`, `Select`, `Progress`, `Navbar`, `Badge`, `Range`, `Rating`, `Text`, `Divider`, `Kbd`.
   - Sequence: `Initialize` → `AddToParent(pnlHost, x, y, w, h)` → set properties.

2. **Containers with Sub-Panels or Child Mounts**:
   - For complete recipes and event hooks, read the specific component file:
     - **Card**: [components/card.md](../components/card.md) — mounting onto `GetTitlePanel`, `GetContentPanel`, `GetActionsPanel`.
     - **Hero**: [components/hero.md](../components/hero.md) — mounting onto `GetContentPanel` + `Hero.Base_Resize`.
     - **List**: [components/list.md](../components/list.md) — `AddHeader`, `AddRowData`, and `_CreateRowContent` event.
     - **Accordion**: [components/accordion.md](../components/accordion.md) — `AddItemBasic` and `collapse.getContentView`.
     - **Collapse**: [components/collapse.md](../components/collapse.md) — `col.TitleText` and mounting onto `getContentView`.
     - **Dock**: [components/dock.md](../components/dock.md) — setting `Size` and `ActiveIndex` **before** `AddToParent`.
     - **Drawer**: [components/drawer.md](../components/drawer.md) — `LeftPanel` (sidebar) and `CenterPanel` (content).
     - **Carousel**: [components/carousel.md](../components/carousel.md) — `Width = "w-full"` before mount + `AddItem(item)`.
     - **Chat**: [components/chat.md](../components/chat.md) — `AddToParent(Root)` + `AddMessage(...)` + `_Send` event.
     - **Countdown**: [components/countdown.md](../components/countdown.md) — `Format`, `LabelPosition`, and `Start`/`Stop` lifecycle.
     - **Breadcrumbs**: [components/breadcrumbs.md](../components/breadcrumbs.md) — `AddItem(id, title, icon, clickable)`.
     - **Aura**: [components/aura.md](../components/aura.md) — `Blur`, `Variant`, and `StartRotation`.
     - **Stat**: [components/stat.md](../components/stat.md) — `Orientation` before mount + `AddItem(item)`.
     - **Timeline**: [components/timeline.md](../components/timeline.md) — `Orientation` before mount + `AddItem(id, time, desc)`.
     - **SweetAlert**: [components/sweet-alert.md](../components/sweet-alert.md) — `Initialize(Me, "swal", Root)` (3-arg).

Always read the individual `components/<name>.md` file for any component you use to get its exact parameters, return types, and event callbacks.
