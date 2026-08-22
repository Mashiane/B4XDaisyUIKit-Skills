# icon-button (`B4XDaisyIconButton`)

DaisyUI `IconButton` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyIconButton`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyIconButton.bas`
- **Verified Demo Source**: B4XPageIconButton.bas (lines 50–264), B4XPageList.bas (lines 229–508), B4XPageMediaPicker.bas (lines 84–108)
- **Web DaisyUI Mapping**: `.icon-button` → `B4XDaisyIconButton`

## 2. Verified B4X Syntax & Recipe
```b4x
row1.Initialize
    For Each v As String In Array As String("default", "neutral", "primary", "info", "success", "warning", "error")
        Dim btn As B4XDaisyIconButton
        btn.Initialize(Me, "ib")
        btn.setVariant(v)
        btn.setStyle("solid")
        btn.setShape("square")
        btn.setTag("solid-square-" & v)
        btn.setIconAsset("heart-solid.svg")
        btn.AddToParent(pnlHost, 0, 0, 0, 0)
        row1.Add(btn.View)
    Next
    currentY = LayoutRow(row1, currentY, maxW, 8dip)

    ' - Solid circle icon buttons -
    currentY = AddSectionTitle("Solid (Circle)", currentY, maxW)
    Dim row2 As List
    row2.Initialize
    For Each v As String In Array As String("default", "neutral", "primary", "info", "success", "warning", "error")
        Dim btn As B4XDaisyIconButton
        btn.Initialize(Me, "ib")
        btn.setVariant(v)
        btn.setStyle("solid")
        btn.setShape("circle")
        btn.setTag("solid-circle-" & v)
        btn.setIconAsset("heart-solid.svg")
        btn.AddToParent(pnlHost, 0, 0, 0, 0)
        row2.Add(btn.View)
    Next
    currentY = LayoutRow(row2, currentY, maxW, 8dip)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyIconButton` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getIconAsset, getIconColor, getVariant` (+ 21 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `IconAsset` | Icon Asset | `String` | `` |  |
| `IconColor` | Icon Color | `Color` | `0x00FFFFFF` |  |
| `Variant` | Variant | `String` | `default` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `Style` | Style | `String` | `solid` | solid|soft|outline|dash|ghost|link |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `CustomSize` | Custom Size | `Int` | `0` |  |
| `Shape` | Shape | `String` | `square` | square|circle |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `Loading` | Loading | `Boolean` | `False` |  |
| `Disabled` | Disabled | `Boolean` | `False` |  |
| `Active` | Active | `Boolean` | `False` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Clickable` | Clickable | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iSizeDip As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getActive As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getClickable As Boolean`
- `getCustomSize As Int`
- `getDisabled As Boolean`
- `getHeight As Int`
- `getIconAsset As String`
- `getIconColor As Int`
- `getLeft As Int`
- `getLoading As Boolean`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getShape As String`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setActive(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setClickable(bValue As Boolean)`
- `setCustomSize(iValue As Int)`
- `setDisabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setIconAsset(sValue As String)`
- `setIconColor(iValue As Int)`
- `setLeft(iValue As Int)`
- `setLoading(bValue As Boolean)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setShape(sValue As String)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

