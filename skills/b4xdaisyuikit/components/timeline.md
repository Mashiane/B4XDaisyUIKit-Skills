# timeline (`B4XDaisyTimeline`)

DaisyUI `Timeline` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyTimeline`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyTimeline.bas`
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
' - 1. Default Timeline (Vertical) -
    y = AddSectionTitle("1. Default Timeline", y, maxW)
    Dim tl1 As B4XDaisyTimeline
    tl1.Initialize(Me, "tl")
    tl1.Orientation = "vertical"
    tl1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 300dip)
    tl1.AddItemBox("tl1_1", "1984", "First Macintosh computer", False, True)
    tl1.AddItemBox("tl1_2", "1998", "iMac", False, True)
    tl1.AddItemBox("tl1_3", "2001", "iPod", False, True)
    tl1.AddItemBox("tl1_4", "2007", "iPhone", False, True)
    tl1.AddItemBox("tl1_5", "2015", "Apple Watch", False, True)
    tl1.SetItemDone("tl1_4", False)   
    tl1.SetItemDone("tl1_5", False)  
    y = y + 320dip

    ' - 2. Timeline with icons -
    y = AddSectionTitle("2. Timeline with icons", y, maxW)
    Dim tl2 As B4XDaisyTimeline
    tl2.Initialize(Me, "tl")
    tl2.Orientation = "vertical"
    tl2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 300dip)
    tl2.AddItemBox("tl2_1", "1984", "First Macintosh computer", False, True)
    tl2.AddItemBox("tl2_2", "1998", "iMac", False, True)
    tl2.AddItemBox("tl2_3", "2001", "iPod", False, True)
    tl2.AddItemBox("tl2_4", "2007", "iPhone", False, True)
    tl2.AddItemBox("tl2_5", "2015", "Apple Watch", False, True)
    y = y + 320dip

    ' - 3. Timeline with different sides -
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

## Canonical Creation Pattern & Recipe

`B4XDaisyTimeline` renders chronological step sequences and milestone events.

```vb
Dim tl As B4XDaisyTimeline
tl.Initialize(Me, "tl")
tl.Orientation = "vertical"                    ' Set BEFORE AddToParent ("vertical" | "horizontal")
tl.Compact = False                             ' False = centered track with left/right text
tl.AddToParent(pnlHost, pad, y, maxW, 180dip)

' Add sequential milestone items:
tl.AddItem("step1", "09:30", "SKU-89214: Variance -3 units")
tl.AddItem("step2", "11:15", "SKU-44102: Variance +2 units")
tl.AddItem("step3", "14:00", "Batch Audit Completed")

' Mark status:
tl.SetItemDone("step1", True)
tl.SetItemDone("step2", True)
tl.Refresh

' Auto-resize frame to measured content height:
Dim contentH As Int = tl.GetContentHeight
If contentH > 0 Then
    tl.SetLayoutAnimated(0, pad, y, maxW, contentH)
    tl.Refresh
End If
y = y + tl.GetContentHeight + gap
```
