# timeline (`B4XDaisyTimeline`)

DaisyUI `Timeline` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyTimeline`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyTimeline.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyTimeline.bas)
- **Verified Demo Source**: B4XPageTimeline.bas
- **Web DaisyUI Mapping**: `.timeline` → `B4XDaisyTimeline`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<ul class="timeline {MODIFIER}">
  <li>
    <div class="timeline-start">{start}</div>
    <div class="timeline-middle">{icon}</div>
    <div class="timeline-end">{end}</div>
  </li>
</ul>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Chronological milestone timeline:
Dim tl As B4XDaisyTimeline
tl.Initialize(Me, "tl")
tl.Orientation = "vertical"
tl.AddToParent(pnlHost, 16dip, y, maxW, 260dip)

' Add milestone boxes (key, title, subtitle, done, showBox):
tl.AddItemBox("step1", "1984", "First Macintosh computer", True, True)
tl.AddItemBox("step2", "1998", "iMac released", True, True)
tl.AddItemBox("step3", "2007", "iPhone launched", True, True)
tl.AddItemBox("step4", "2024", "Vision Pro", False, True)

y = y + 260dip + 16dip
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyTimeline` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Timeline container requiring sequential event item addition.

### Deviation Mechanism
- Timeline container requiring sequential event item addition.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateItem, SetItemStartText, SetItemMiddleIcon` (+ 22 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Orientation` | Orientation | `String` | vertical | vertical|horizontal |
| `Compact` | Compact | `Boolean` | False |  |
| `SnapIcon` | Snap Icon | `Boolean` | False |  |
| `LineColor` | Line Color | `String` | base-300 | base-300|primary|secondary|accent|info|success|warning|error |
| `MarkerSize` | Marker Size | `Int` | 20, MinRange: 4, MaxRange: 100 |  |
| `MarkerColor` | Marker Color | `String` | neutral | neutral|base-300|base-100|primary|secondary|accent|info|success|warning|error |
| `TextSize` | Text Size | `String` | text-xs |  |
| `BoxShadow` | Box Shadow | `String` | sm | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `ItemClick (Id As String)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddItem(Id As String, StartText As String, EndText As String) As String`
- `AddItemBox(Id As String, StartText As String, EndText As String, BoxOnStart As Boolean, BoxOnEnd As Boolean) As String`
- `UpdateItem(Id As String, StartText As String, MiddleIcon As Object, IconColor As Int, EndText As String, IsBox As Boolean, BoxOnStart As Boolean, BoxOnEnd As Boolean, Variant As String, DashedBorder As Boolean)`
- `SetItemStartText(Id As String, StartText As String)`
- `SetItemMiddleIcon(Id As String, MiddleIcon As Object)`
- `SetItemIconColor(Id As String, IconColor As Int)`
- `SetItemEndText(Id As String, EndText As String)`
- `SetItemVariant(Id As String, Variant As String)`
- `SetItemDashedBorder(Id As String, Dashed As Boolean)`
- `SetItemDone(Id As String, Done As Boolean)`
- `GetItemDone(Id As String) As Boolean`
- `ToggleItem(Id As String)`
- `Clear`
- `getSize As Int`
- `Refresh`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setCompact(Value As Boolean)`
- `getCompact As Boolean`
- `setSnapIcon(Value As Boolean)`
- `getSnapIcon As Boolean`
- `setLineColor(Value As String)`
- `getLineColor As String`
- `setMarkerSize(Value As Int)`
- `getMarkerSize As Int`
- `setMarkerColor(Value As String)`
- `getMarkerColor As String`
- `setVisible(Value As Boolean)`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setBoxShadow(Value As String)`
- `getBoxShadow As String`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `GetContentHeight As Int`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

