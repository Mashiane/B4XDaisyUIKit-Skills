# timeline (`B4XDaisyTimeline`)

DaisyUI `Timeline` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyTimeline`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyTimeline.bas`
- **Verified Demo Source**: B4XPageTimeline.bas (lines 54–199)
- **Web DaisyUI Mapping**: `.timeline` → `B4XDaisyTimeline`

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
| `Orientation` | Orientation | `String` | `vertical` | vertical|horizontal |
| `Compact` | Compact | `Boolean` | `False` |  |
| `SnapIcon` | Snap Icon | `Boolean` | `False` |  |
| `LineColor` | Line Color | `String` | `base-300` | base-300|primary|secondary|accent|info|success|warning|error |
| `MarkerSize` | Marker Size | `Int` | `20` |  |
| `MarkerColor` | Marker Color | `String` | `neutral` | neutral|base-300|base-100|primary|secondary|accent|info|success|warning|error |
| `TextSize` | Text Size | `String` | `text-xs` |  |
| `BoxShadow` | Box Shadow | `String` | `sm` | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | `True` |  |

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
- `GetComputedHeight As Int`
- `GetContentHeight As Int`
- `GetItemDone(sId As String) As Boolean`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemDashedBorder(sId As String, bDashed As Boolean)`
- `SetItemDone(sId As String, bDone As Boolean)`
- `SetItemEndText(sId As String, sEndText As String)`
- `SetItemIconColor(sId As String, iIconColor As Int)`
- `SetItemMiddleIcon(sId As String, oMiddleIcon As Object)`
- `SetItemStartText(sId As String, sStartText As String)`
- `SetItemVariant(sId As String, sVariant As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ToggleItem(sId As String)`
- `UpdateItem(sId As String, sStartText As String, oMiddleIcon As Object, iIconColor As Int, sEndText As String, bIsBox As Boolean, bBoxOnStart As Boolean, bBoxOnEnd As Boolean, sVariant As String, bDashedBorder As Boolean)`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `setBoxShadow(sValue As String)`
- `setCompact(bValue As Boolean)`
- `setHeight(iValue As Int)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

