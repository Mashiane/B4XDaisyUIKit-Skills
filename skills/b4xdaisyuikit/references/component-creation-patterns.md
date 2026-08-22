# Component Creation Patterns — Verified Mount Sequences

Most B4XDaisy components follow the **default 3-step**: `Initialize` → `AddToParent` → set properties. A minority deviate because their build reads config at mount time, because they host children, or because they take the parent in `Initialize` instead of `AddToParent`. This file lists every deviation with the B4XPage demo that proves it. Use it to avoid inventing the wrong order.

When a component appears in this file, follow the sequence shown here, not the default 3-step. When a component does NOT appear here, the default 3-step applies.

---

## Default 3-step (most components)

`Initialize` → `AddToParent` → set properties. Properties set after mount trigger an internal refresh, so order is forgiving.

Applies to: `B4XDaisyButton`, `B4XDaisyInput`, `B4XDaisyCheckbox`, `B4XDaisyToggle`, `B4XDaisyRadio`, `B4XDaisySelect`, `B4XDaisyProgress`, `B4XDaisyNavbar`, `B4XDaisyCollapse`, `B4XDaisyText`, `B4XDaisyDivider`, `B4XDaisyAvatar`, `B4XDaisyBadge`, `B4XDaisyRange`, `B4XDaisyRating`, `B4XDaisyRadialProgress`, `B4XDaisyBreadcrumbs`, `B4XDaisyPagination`, `B4XDaisySteps`, `B4XDaisySegment`, `B4XDaisyDivider`, `B4XDaisyDivision`, `B4XDaisyStatus`, `B4XDaisyKbd`, `B4XDaisyTagSphere`.

Evidence — `B4XPageProgress.bas:61-63`:
```vb
p.Initialize(Me, "")
p.AddToParent(pnlHost, padding, currentY, maxW, 8dip)
p.Value = vals(i)

```
Evidence — `B4XPageNavbar.bas:153-155`:
```vb
nb.Initialize(Me, "nb1")
Dim nbView As B4XView = nb.AddToParent(pnlContent, 10dip, currentY, Root.Width - 20dip, 64dip)
nb.Title = "Anele Mbanga (Mashy)"

```

---

## Deviation 1 — Config properties set BEFORE `AddToParent`

These components read certain config during the mount build. Set those properties between `Initialize` and `AddToParent`. Other (cosmetic) properties can still go after.

### B4XDaisyDock — `Size`, `ActiveIndex` before mount
`B4XPageDock.bas:73-77`:
```vb
dockBase.Initialize(Me, "dockBase")
dockBase.Size = "md"
dockBase.ActiveIndex = 1
dockBase.AddToParent(hostDock, 0, 0, hostDock.Width, 0)
dockBase.AddItem("home", "Home", "dock-home.svg")

```
`ActivePosition` follows the same rule (set before `AddToParent`).

### B4XDaisyStat — `Orientation`, `Width` before mount
`B4XPageStat.bas:200-203`:
```vb
stats4.Initialize(Me, "")
stats4.Orientation = "vertical"
stats4.Width = "w-content"
stats4.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 1dip)

```
`Shadow` and `Rounded` are cosmetic and may be set after `AddToParent`.

### B4XDaisyTimeline — `Orientation`, `Compact` before mount
`B4XPageTimeline.bas:55-57`:
```vb
tl1.Initialize(Me, "tl")
tl1.Orientation = "vertical"
tl1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 300dip)

```
`Compact = True` pushes the track to one edge and collapses content to one side. **Tradeoff:** with the default `SnapIcon = False` it shows ONLY `StartText` (hides `EndPart`); with `SnapIcon = True` it shows ONLY `EndText` (hides `StartPart`). See `B4XDaisyTimeline.bas:874-912`. The demo's compact example (`B4XPageTimeline.bas:144-158`) pairs `setCompact(True) + setSnapIcon(True)` with `AddItemBox(id, "", description, False, True)` — empty StartText, description in EndText — so nothing is lost. Do NOT use `Compact = True` with `AddItem(id, time, description)` expecting both texts: one column disappears and the timeline renders as circles-only. For a time + description timeline, leave `Compact = False` (default): centered track, StartText left, EndText right, both visible.

### B4XDaisyTimeline — no internal scroll (size frame to content)
The timeline hosts an internal vertical scrollview. If the `AddToParent` frame height is smaller than the total item height, the timeline scrolls internally. To let the PAGE scroll reveal the rest instead, size the frame to the measured content after `Refresh`, then re-`Refresh` so the inner scrollview matches the resized frame:

```vb
timeline.AddToParent(pnlHost, pad, y, maxW, 180dip)   ' initial frame, any value
timeline.AddItem(...)                                  ' add items
timeline.Refresh
Dim contentH As Int = timeline.GetContentHeight        ' measured sum of item heights
If contentH > 0 Then
    timeline.SetLayoutAnimated(0, pad, y, maxW, contentH)
    timeline.Refresh                                   ' re-lay out to the resized frame
End If
y = y + timeline.GetContentHeight + gap

```

`GetContentHeight` returns the measured vertical content height from the last `Refresh` (`B4XDaisyTimeline.bas`, `mContentHeight` set from `currentPos`). Do NOT use `GetComputedHeight` for the y-cursor: it returns the FRAME height (`mBase.Height`), not the content, so it under-advances when content is taller than the initial frame.

### B4XDaisyCarousel — `Width` before mount
`B4XPageCarousel.bas:75-79`:
```vb
carousel1.Initialize(Me, "carousel1")
carousel1.Width = "w-full"
carousel1.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 300dip)

```

---

## Deviation 2 — Children mounted via `AddItem` / `AddItemBasic` AFTER `AddToParent`

Container components mount their children after the parent is on the page. Children are NOT mounted with their own `AddToParent` onto the page; they are passed to the parent.

| Parent | Child call | Demo |
|---|---|---|
| `B4XDaisyStat` | `stat.AddItem(statItem)` | `B4XPageStat.bas:212` |
| `B4XDaisyDock` | `dock.AddItem(Id, Text, SvgAssetFile)` | `B4XPageDock.bas:77` |
| `B4XDaisyTimeline` | `timeline.AddItem(Id, Time, Text)` | `B4XPageTimeline.bas` |
| `B4XDaisyCarousel` | `carousel.AddItem(item)` | `B4XPageCarousel.bas:98` |
| `B4XDaisyAccordion` | `acc.AddItemBasic(Tag, Icon, Title) As B4XDaisyCollapse` | `B4XPageAccordion.bas:53` |

`Accordion.AddItemBasic` returns the child `B4XDaisyCollapse` instance; capture it to configure the child:
```vb
acc1.Initialize(Me, "acc1")
acc1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 10dip)
Dim c1a As B4XDaisyCollapse = acc1.AddItemBasic("item1", "arrow", "Click to open item 1")

```

---

## Deviation 3 — Explicit `Refresh` after children

Call `Refresh` after all children are added so the parent lays them out:

- `B4XDaisyStat.Refresh` — `B4XPageStat.bas:230`
- `B4XDaisyTimeline.Refresh`
- `B4XDaisyAccordion.Refresh`
- `B4XDaisyCarousel` refreshes internally on `AddItem`; no manual `Refresh` required.

---

## Deviation 4 — Fit-content resize after `Refresh` (`w-content`)

When `Width = "w-content"` (or `Height = "h-content"`), the component shrink-wraps during `Refresh`. After `Refresh`, reposition to the measured `ContentWidth` / `ContentHeight` so the next y-cursor is correct.

`B4XPageStat.bas:230-233`:
```vb
stats4.Refresh
If stats4.ContentWidth > 0 Then stats4.SetLayoutAnimated(0, PAGE_PAD, currentY, stats4.ContentWidth, stats4.ContentHeight)
currentY = currentY + stats4.ContentHeight + 6dip

```

Applies to: `B4XDaisyStat`, `B4XDaisyTimeline`, `B4XDaisyAccordion` (any component exposing `ContentWidth` / `ContentHeight` / `GetComputedHeight` after a shrink-wrap `Refresh`).

---

## Deviation 5 — 3-arg `Initialize` with Parent (no `AddToParent`)

`B4XDaisySweetAlert` takes the parent root view as the second `Initialize` argument: `swal.Initialize(Me, Root, "swal")`. Do NOT call `AddToParent` on it. `B4XPageSweetAlert.bas:102`:
```vb
swal.Initialize(Me, Root, "swal")
swal.Title = "..."
' ... then swal.ShowAsync with Wait For

```

Confirm the `Initialize` signature in `component-manifest.md` before assuming 2-arg vs 3-arg. Getting this wrong is a compile error.

---

## Deviation 6 — Sub-component mounted onto a parent's child panel

Some components expose a content panel getter. Mount children onto THAT panel, not `pageScroll.Panel`.

- `B4XDaisyCollapse.getContentView` — `B4XPageAccordion.bas:152`: `txt.AddToParent(Col.getContentView, 0dip, 8dip, ...)`
- `B4XDaisyCard.GetContentPanel` / `GetActionsPanel` / `GetTitlePanel`

---

## Deviation 7 — Item sub-components have no page `AddToParent`

`B4XDaisyStatItem`, `B4XDaisyCarouselItem`, and similar item types are configured then handed to the parent's `AddItem`. They are never `AddToParent`-ed onto the page themselves.

`B4XPageStat.bas:206-212`:
```vb
Dim item4_1 As B4XDaisyStatItem
item4_1.Initialize(Me, "component")
item4_1.Title = "Downloads"
item4_1.Value = "31"
item4_1.Suffix = "K"
stats4.AddItem(item4_1)

```
`B4XPageCarousel.bas:91-98`:
```vb
itm.Initialize(Me, "item")
itm.Width = "w-full"
carousel1.AddItem(itm)

```

---

## Quick decision tree

1. Does the component expose `AddItem` / `AddItemBasic`? → It is a container. Mount the parent first (Deviation 1 if it has pre-mount config), then add children (Deviation 2), then `Refresh` (Deviation 3), then fit-content resize if `w-content` (Deviation 4).
2. Does `Initialize` take a Parent view argument (3-arg)? → No `AddToParent` (Deviation 5). Check the manifest signature.
3. Are you adding content inside a `Collapse` / `Card`? → Mount onto `getContentView` / `GetContentPanel`, not the page (Deviation 6).
4. Is the thing you are configuring an `*Item`? → Configure it, then pass to the parent's `AddItem`. No page `AddToParent` (Deviation 7).
5. Otherwise → Default 3-step: `Initialize` → `AddToParent` → set properties.