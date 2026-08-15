# timeline (`B4XDaisyTimeline`)

Vertical or horizontal sequence of events with markers, icons, start/end labels, and done states.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTimeline`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTimeline.bas`
- **Verified Demos**: `B4XPageTimeline.bas`
- **Web DaisyUI Mapping**: `.timeline` → `B4XDaisyTimeline`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tl As B4XDaisyTimeline
tl.Initialize(Me, "tl")
tl.AddToParent(pnlHost, pad, y, maxW, 400dip)
tl.Orientation = "vertical"
tl.Compact = True
tl.LineColor = "primary"
tl.MarkerColor = "primary"

tl.AddItem("step1", "Jan 2024", "Account created")
tl.AddItem("step2", "Mar 2024", "First order placed")
tl.AddItemBox("step3", "Jun 2024", "Premium upgrade", True, True)
tl.SetItemDone("step1", True)
tl.SetItemDone("step2", True)
y = y + tl.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Chronological activity feed and milestone tracker with status icons.
- Add milestones using `AddItem(Id, DateText, Title, Description, IconAsset, Variant)`.
- Configure orientation via `Orientation = "vertical"` (default) or `"horizontal"`.
- Set `Snap = "start"` | `"center"` | `"end"` to align timeline items.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Orientation | Orientation | String | vertical | vertical|horizontal |
| Compact | Compact | Boolean | False |  |
| SnapIcon | Snap Icon | Boolean | False |  |
| LineColor | Line Color | String | base-300 | base-300|primary|secondary|accent|info|success|warning|error |
| MarkerSize | Marker Size | Int | 20 |  |
| MarkerColor | Marker Color | String | neutral | neutral|base-300|base-100|primary|secondary|accent|info|success|warning|error |
| TextSize | Text Size | String | text-xs |  |
| BoxShadow | Box Shadow | String | sm | none|xs|sm|md|lg|xl|2xl |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `ItemClick (Id As String)`

## 6. Public Methods & APIs
- `AddItem(Id As String, StartText As String, EndText As String) As String`
- `AddItemBox(Id As String, StartText As String, EndText As String, BoxOnStart As Boolean, BoxOnEnd As Boolean) As String`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetContentHeight As Int`
- `GetItemDone(id As String) As Boolean`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemDashedBorder(id As String, Dashed As Boolean)`
- `SetItemDone(id As String, bDone As Boolean)`
- `SetItemEndText(id As String, EndText As String)`
- `SetItemIconColor(id As String, IconColor As Int)`
- `SetItemMiddleIcon(id As String, MiddleIcon As Object)`
- `SetItemStartText(id As String, StartText As String)`
- `SetItemVariant(id As String, Variant As String)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ToggleItem(id As String)`
- `UpdateItem(id As String, StartText As String, MiddleIcon As Object, IconColor As Int, EndText As String, IsBox As Boolean, BoxOnStart As Boolean, BoxOnEnd As Boolean, Variant As String, DashedBorder As Boolean)`
- `getBoxShadow As String`
- `getCompact As Boolean`
- `getHeight As Int`
- `getLeft As Int`
- `getLineColor As String`
- `getMarkerColor As String`
- `getMarkerSize As Int`
- `getOrientation As String`
- `getSize As Int`
- `getSnapIcon As Boolean`
- `getTag As Object`
- `getTextSize As String`
- `getTop As Int`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBoxShadow(Value As String)`
- `setCompact(Value As Boolean)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setLineColor(Value As String)`
- `setMarkerColor(Value As String)`
- `setMarkerSize(Value As Int)`
- `setOrientation(Value As String)`
- `setSnapIcon(Value As Boolean)`
- `setTag(Value As Object)`
- `setTextSize(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
