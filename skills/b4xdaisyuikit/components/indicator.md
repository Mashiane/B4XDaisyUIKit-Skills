# indicator (`B4XDaisyIndicator`)

DaisyUI `Indicator` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyIndicator`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyIndicator.bas`
- **Verified Demo Source**: B4XPageDropdown.bas, B4XPageIndicator.bas, B4XPageNavbar.bas, B4XPageSvgIcon.bas
- **Web DaisyUI Mapping**: `.indicator` → `B4XDaisyIndicator`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``indicator`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``indicator-item`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `placement` | ``indicator-start`, `indicator-center`, `indicator-end`, `indicator-top`, `indicator-middle`, `indicator-bottom`` | Member | `.SetPlacement(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="indicator">
  <span class="indicator-item">{indicator content}</span>
  <div>{main content}</div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderCountIndicatorSection(MaxW As Int, StartY As Int) As Int
	Dim y As Int = StartY
	Dim titleLbl As B4XView = CreateSectionLabel("Count indicator", 14, xui.Color_RGB(30, 41, 59), True)
	pnlHost.AddView(titleLbl, PAGE_PAD, y, MaxW, 20dip)
	y = y + 22dip

	Dim row As B4XView = xui.CreatePanel("")
	row.Color = xui.Color_Transparent
	B4XDaisyVariants.DisableClipping(row)
	pnlHost.AddView(row, PAGE_PAD, y, MaxW, 1dip)

	Dim boxSize As Int = B4XDaisyVariants.TailwindSizeToDip("32", 128dip)
	Dim boxLeft As Int = Max(0, (MaxW - boxSize) / 2)
	Dim boxTop As Int = 22dip

	Dim baseDiv As B4XDaisyDivision
	baseDiv.Initialize(Me, "")
	Dim baseView As B4XView = baseDiv.AddToParent(row, boxLeft, boxTop, boxSize, boxSize)
	baseDiv.setWidth("32")
	baseDiv.setHeight("32")
	baseDiv.setPlaceContentCenter(True)
	baseDiv.setRounded("rounded-box")
	baseDiv.setText("content")
	baseDiv.setTextSize("text-sm")
	baseDiv.setBackgroundColorVariant("bg-neutral")
	baseDiv.setTextColorVariant("text-neutral-content")

	Dim countInd As B4XDaisyIndicator
	countInd.Initialize(Me, "indicator")
	countInd.setTag("count-3")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyIndicator` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, DetachTarget, RefreshPlacement` (+ 24 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `HorizontalPlacement` | Horizontal Placement | `String` | end | start|center|end |
| `VerticalPlacement` | Vertical Placement | `String` | top | top|middle|bottom |
| `OffsetX` | Offset X | `String` | 0 |  |
| `OffsetY` | Offset Y | `String` | 0 |  |
| `Text` | Text | `String` |  |  |
| `Counter` | Counter | `Boolean` | False |  |
| `CapValue` | Cap Value | `Int` | 99 |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | sm | xs|sm|md|lg|xl |
| `IconAsset` | Icon Asset | `String` |  |  |
| `Rounded` | Rounded | `String` | rounded | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Clickable` | Clickable | `Boolean` | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `AttachTo(Target As B4XView)`
- `DetachTarget`
- `RefreshPlacement`
- `setHorizontalPlacement(Value As String)`
- `getHorizontalPlacement As String`
- `setVerticalPlacement(Value As String)`
- `getVerticalPlacement As String`
- `setOffsetX(Value As Object)`
- `getOffsetX As Float`
- `setOffsetY(Value As Object)`
- `getOffsetY As Float`
- `setText(Value As String)`
- `getText As String`
- `setCounter(Value As Boolean)`
- `getCounter As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColorVariant(VariantName As String)`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setCapValue(Value As Int)`
- `getCapValue As Int`
- `setValue(Value As Int)`
- `getValue As Int`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `Increment As Int`
- `IncrementBy(Amount As Int) As Int`
- `Decrement As Int`
- `DecrementBy(Amount As Int) As Int`
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

