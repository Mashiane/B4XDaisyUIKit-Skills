# divider (`B4XDaisyDivider`)

DaisyUI `Divider` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDivider`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDivider.bas`
- **Verified Demo Source**: B4XPageDivider.bas (lines 186–191)
- **Web DaisyUI Mapping**: `.divider` → `B4XDaisyDivider`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddDemoDividerWithTextSize(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int, Text As String, Direction As String, Placement As String, Variant As String, TagId As String, TextSizeToken As String) As B4XDaisyDivider
	Dim div As B4XDaisyDivider
	div.Initialize(Me, "divider")
	div.AddToParent(Parent, Left, Top, Width, Height)
	div.Direction = Direction
	div.Placement = Placement
	div.Variant = Variant
	div.Text = Text
	div.TextSize = TextSizeToken
	div.Margin = DefaultDividerMargin(Direction)
	div.Tag = TagId
	Return div
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDivider` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getDirection, setPlacement, getPlacement` (+ 19 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `` |  |
| `Height` | Height | `String` | `` |  |
| `Direction` | Direction | `String` | `vertical` | vertical|horizontal |
| `Placement` | Placement | `String` | `default` | default|start|end |
| `Text` | Text | `String` | `` |  |
| `TextSize` | Text Size | `String` | `text-sm` | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Gap` | Gap | `String` | `4` |  |
| `LineThickness` | Line Thickness | `String` | `0.5` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `DebugBorders` | Debug Borders | `Boolean` | `False` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getDebugBorders As Boolean`
- `getDirection As String`
- `getGap As Float`
- `getHeight As Float`
- `getLeft As Int`
- `getLineThickness As Float`
- `getMargin As String`
- `getPadding As String`
- `getPlacement As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setDebugBorders(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setGap(oValue As Object)`
- `setHeight(oValue As Object)`
- `setLeft(iValue As Int)`
- `setLineThickness(oValue As Object)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setPlacement(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

