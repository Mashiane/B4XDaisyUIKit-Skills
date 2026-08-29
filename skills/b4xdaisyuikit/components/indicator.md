# indicator (`B4XDaisyIndicator`)

DaisyUI `Indicator` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyIndicator`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyIndicator.bas`
- **Verified Demo Source**: B4XPageDropdown.bas (lines 104–104), B4XPageIndicator.bas (lines 99–456), B4XPageNavbar.bas (lines 15–244), B4XPageSvgIcon.bas (lines 179–225)
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
| `HorizontalPlacement` | Horizontal Placement | `String` | `end` | start|center|end |
| `VerticalPlacement` | Vertical Placement | `String` | `top` | top|middle|bottom |
| `OffsetX` | Offset X | `String` | `0` |  |
| `OffsetY` | Offset Y | `String` | `0` |  |
| `Text` | Text | `String` | `` |  |
| `Counter` | Counter | `Boolean` | `False` |  |
| `CapValue` | Cap Value | `Int` | `99` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `sm` | xs|sm|md|lg|xl |
| `IconAsset` | Icon Asset | `String` | `` |  |
| `Rounded` | Rounded | `String` | `rounded` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Clickable` | Clickable | `Boolean` | `False` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `Decrement As Int`
- `DecrementBy(iAmount As Int) As Int`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `DetachTarget`
- `GetComputedHeight As Int`
- `Increment As Int`
- `IncrementBy(iAmount As Int) As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RefreshPlacement`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getCapValue As Int`
- `getClickable As Boolean`
- `getCounter As Boolean`
- `getHeight As Int`
- `getHorizontalPlacement As String`
- `getIconAsset As String`
- `getLeft As Int`
- `getOffsetX As Float`
- `getOffsetY As Float`
- `getRounded As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getValue As Int`
- `getVariant As String`
- `getVerticalPlacement As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setCapValue(iValue As Int)`
- `setClickable(bValue As Boolean)`
- `setCounter(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHorizontalPlacement(sValue As String)`
- `setIconAsset(sValue As String)`
- `setLeft(iValue As Int)`
- `setOffsetX(oValue As Object)`
- `setOffsetY(oValue As Object)`
- `setRounded(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setValue(iValue As Int)`
- `setVariant(sValue As String)`
- `setVerticalPlacement(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

