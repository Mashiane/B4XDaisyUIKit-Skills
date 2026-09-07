# icon-button (`B4XDaisyIconButton`)

DaisyUI `IconButton` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyIconButton`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyIconButton.bas`
- **Verified Demo Source**: B4XPageIconButton.bas, B4XPageList.bas, B4XPageMediaPicker.bas
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
| `IconAsset` | Icon Asset | `String` |  |  |
| `IconColor` | Icon Color | `Color` | 0x00FFFFFF |  |
| `Variant` | Variant | `String` | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `Style` | Style | `String` | solid | solid|soft|outline|dash|ghost|link |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `CustomSize` | Custom Size | `Int` | 0 |  |
| `Shape` | Shape | `String` | square | square|circle |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `Loading` | Loading | `Boolean` | False |  |
| `Disabled` | Disabled | `Boolean` | False |  |
| `Active` | Active | `Boolean` | False |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Clickable` | Clickable | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(SizeDip As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setCustomSize(Value As Int)`
- `getCustomSize As Int`
- `setShape(Value As String)`
- `getShape As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setLoading(Value As Boolean)`
- `getLoading As Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setActive(Value As Boolean)`
- `getActive As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `RemoveViewFromParent`
- `Release`
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

