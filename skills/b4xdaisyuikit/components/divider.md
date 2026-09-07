# divider (`B4XDaisyDivider`)

DaisyUI `Divider` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDivider`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDivider.bas`
- **Verified Demo Source**: B4XPageDivider.bas
- **Web DaisyUI Mapping**: `.divider` → `B4XDaisyDivider`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``divider`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``divider-neutral`, `divider-primary`, `divider-secondary`, `divider-accent`, `divider-success`, `divider-warning`, `divider-info`, `divider-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `direction` | ``divider-vertical`, `divider-horizontal`` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |
| `placement` | ``divider-start`, `divider-end`` | Member | `.SetPlacement(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="divider {MODIFIER}">{text}</div>
```

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
| `Width` | Width | `String` |  |  |
| `Height` | Height | `String` |  |  |
| `Direction` | Direction | `String` | vertical | vertical|horizontal |
| `Placement` | Placement | `String` | default | default|start|end |
| `Text` | Text | `String` |  |  |
| `TextSize` | Text Size | `String` | text-sm | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Gap` | Gap | `String` | 4 |  |
| `LineThickness` | Line Thickness | `String` | 0.5 |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `DebugBorders` | Debug Borders | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setDirection(Value As String)`
- `getDirection As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setText(Value As String)`
- `getText As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setGap(Value As Object)`
- `getGap As Float`
- `setLineThickness(Value As Object)`
- `getLineThickness As Float`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setDebugBorders(Value As Boolean)`
- `getDebugBorders As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `IsReady As Boolean`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

