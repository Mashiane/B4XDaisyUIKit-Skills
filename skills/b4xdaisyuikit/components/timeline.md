# timeline (`B4XDaisyTimeline`)

Vertical or horizontal sequence of events with markers, icons, start/end labels, and done states.

## 1. Overview
- **Class**: `B4XDaisyTimeline`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTimeline.bas`
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
- `AddItem(sId As String, sStartText As String, sEndText As String) As String`
- `AddItemBox(sId As String, sStartText As String, sEndText As String, bBoxOnStart As Boolean, bBoxOnEnd As Boolean) As String`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getBoxShadow As String`
- `getCompact As Boolean`
- `GetComputedHeight As Int`
- `GetContentHeight As Int`
- `getHeight As Int`
- `GetItemDone(sId As String) As Boolean`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setBoxShadow(sValue As String)`
- `setCompact(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `SetItemDashedBorder(sId As String, bDashed As Boolean)`
- `SetItemDone(sId As String, bDone As Boolean)`
- `SetItemEndText(sId As String, sEndText As String)`
- `SetItemIconColor(sId As String, iIconColor As Int)`
- `SetItemMiddleIcon(sId As String, oMiddleIcon As Object)`
- `SetItemStartText(sId As String, sStartText As String)`
- `SetItemVariant(sId As String, sVariant As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLineColor(sValue As String)`
- `setMarkerColor(sValue As String)`
- `setMarkerSize(iValue As Int)`
- `setOrientation(sValue As String)`
- `setSnapIcon(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ToggleItem(sId As String)`
- `UpdateItem(sId As String, sStartText As String, oMiddleIcon As Object, iIconColor As Int, sEndText As String, bIsBox As Boolean, bBoxOnStart As Boolean, bBoxOnEnd As Boolean, sVariant As String, bDashedBorder As Boolean)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
