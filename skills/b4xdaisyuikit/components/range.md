# range (`B4XDaisyRange`)

DaisyUI `Range` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyRange`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRange.bas`
- **Verified Demo Source**: B4XPageCanvasSpinner.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageRange.bas, B4XPageSignaturePad.bas, B4XPageTagSphere.bas
- **Web DaisyUI Mapping**: `.range` → `B4XDaisyRange`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``range`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``range-neutral`, `range-primary`, `range-secondary`, `range-accent`, `range-success`, `range-warning`, `range-info`, `range-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `size` | ``range-xs`, `range-sm`, `range-md`, `range-lg`, `range-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |
| `direction` | ``range-vertical` (vertical slider)` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |

### Web DaisyUI HTML Syntax
```html
<input type="range" min="0" max="100" value="40" class="range {MODIFIER}" />
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderExamples(Width As Int, Height As Int)
	If pnlHost.IsInitialized = False Then Return
	pnlHost.RemoveAllViews

	Dim maxW As Int = Max(220dip, Width - (PAGE_PAD * 2))
	Dim y As Int = PAGE_PAD

	''' Example 1: Base Range Slider
	''' Demonstrates a standard range slider with default properties.
	y = AddSectionTitle("Base Range Slider", y, maxW)
	Dim r1 As B4XDaisyRange
	r1.Initialize(Me, "range1")
	r1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 24dip)
	r1.MinValue = 0
	r1.MaxValue = 100
	r1.Value = 40
	r1.Tag = "base-range"
	y = y + 40dip

	''' Example 2: Step Increments
	''' Demonstrates a discrete step-snapping slider with step = 25.
	y = AddSectionTitle("Step Increments (Step = 25)", y, maxW)
	Dim r2 As B4XDaisyRange
	r2.Initialize(Me, "range2")
	r2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 24dip)
	r2.MinValue = 0
	r2.MaxValue = 100
	r2.Value = 25
	r2.StepValue = 25
	r2.Tag = "step-range"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyRange` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getMinValue, getMaxValue, setStepValue` (+ 51 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `MinValue` | Minimum Value | `Int` | 0 |  |
| `MaxValue` | Maximum Value | `Int` | 100 |  |
| `Value` | Current Value | `Int` | 40 |  |
| `StepValue` | Step | `Int` | 1 |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `TrackColor` | Track Color | `Color` | 0 |  |
| `ProgressColor` | Progress Color | `Color` | 0 |  |
| `ThumbColor` | Thumb Color | `Color` | 0 |  |
| `Enabled` | Enabled | `Boolean` | True |  |
| `ShowFill` | Show Fill | `Boolean` | True |  |
| `RTL` | RTL | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | True |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | True |  |
| `Required` | Required | `Boolean` | False |  |
| `LabelAbove` | Label Above | `String` |  |  |
| `LabelVisible` | Label Visible | `Boolean` | False |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |
| `ShowValue` | Show Value | `Boolean` | False |  |
| `ValuePrefix` | Value Prefix | `String` |  |  |
| `ValueSuffix` | Value Suffix | `String` |  |  |
| `IconLeft` | Icon Left | `String` |  |  |
| `IconRight` | Icon Right | `String` |  |  |
| `IconSize` | Icon Size | `Int` | 0 |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | False |  |
| `TooltipPosition` | Tooltip Position | `String` | top | top|bottom|left|right |
| `TooltipOpen` | Tooltip Open | `Boolean` | False |  |

## 5. Declared Events
- `Changed (Value As Int)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setMinValue(Value As Int)`
- `getMinValue As Int`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setValue(Value As Int)`
- `getValue As Int`
- `setStepValue(Value As Int)`
- `getStepValue As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setShowFill(Value As Boolean)`
- `getShowFill As Boolean`
- `setRTL(Value As Boolean)`
- `getRTL As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setTrackColor(Value As Int)`
- `getTrackColor As Int`
- `setProgressColor(Value As Int)`
- `getProgressColor As Int`
- `setThumbColor(Value As Int)`
- `getThumbColor As Int`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setShowValue(Value As Boolean)`
- `getShowValue As Boolean`
- `setValuePrefix(Value As String)`
- `getValuePrefix As String`
- `setValueSuffix(Value As String)`
- `getValueSuffix As String`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setShowTooltip(Value As Boolean)`
- `getShowTooltip As Boolean`
- `setTooltipPosition(Value As String)`
- `getTooltipPosition As String`
- `setTooltipOpen(Value As Boolean)`
- `getTooltipOpen As Boolean`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `getRole As String`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `StopAnimation`
- `RemoveViewFromParent`
- `Release`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

