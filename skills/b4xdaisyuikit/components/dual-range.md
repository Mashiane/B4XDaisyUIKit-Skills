# dual-range (`B4XDaisyDualRange`)

DaisyUI `DualRange` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDualRange`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDualRange.bas`
- **Verified Demo Source**: B4XPageDualRange.bas
- **Web DaisyUI Mapping**: `.dual-range` → `B4XDaisyDualRange`

## 2. Verified B4X Syntax & Recipe
```b4x
''' Standard dual handle range with default styling and live readout.
	y = pageScroll.AddSectionTitle("Basic Dual Range Slider", y, False) + gap
	Dim dr1 As B4XDaisyDualRange
	dr1.Initialize(Me, "drBasic")
	dr1.AddToParent(pnlHost, pad, y, maxW, 24dip)
	dr1.MinValue = 0
	dr1.MaxValue = 100
	dr1.LowerValue = 20
	dr1.UpperValue = 80
	dr1.LabelAbove = "Selected Range"
	dr1.LabelVisible = True
	dr1.ShowValue = True
	dr1.Tag = "basic-dual-range"
	y = y + dr1.ComputedHeight + gap

	''' Example 2: Price Filter (Prefix $, Step = 25, Min Dist = 50)
	''' Currency formatting, step snapping, and minimum separation constraint.
	y = pageScroll.AddSectionTitle("Price Filter (Step = $25, Min Dist = $50)", y, False) + gap
	Dim drPrice As B4XDaisyDualRange
	drPrice.Initialize(Me, "drPrice")
	drPrice.AddToParent(pnlHost, pad, y, maxW, 24dip)
	drPrice.MinValue = 0
	drPrice.MaxValue = 1000
	drPrice.LowerValue = 150
	drPrice.UpperValue = 650
	drPrice.StepValue = 25
	drPrice.MinDistance = 50
	drPrice.ValuePrefix = "$"
	drPrice.Variant = "primary"
	drPrice.LabelAbove = "Budget Range"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDualRange` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getMinValue, getMaxValue, setLowerValue` (+ 60 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `MinValue` | Minimum Value | `Int` | 0 |  |
| `MaxValue` | Maximum Value | `Int` | 100 |  |
| `LowerValue` | Lower Value | `Int` | 20 |  |
| `UpperValue` | Upper Value | `Int` | 80 |  |
| `StepValue` | Step | `Int` | 1 |  |
| `MinDistance` | Min Distance | `Int` | 0 |  |
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
| `ShowValue` | Show Value | `Boolean` | True |  |
| `ValuePrefix` | Value Prefix | `String` |  |  |
| `ValueSuffix` | Value Suffix | `String` |  |  |
| `ValueSeparator` | Value Separator | `String` | " - " |  |
| `IconLeft` | Icon Left | `String` |  |  |
| `IconRight` | Icon Right | `String` |  |  |
| `IconSize` | Icon Size | `Int` | 0 |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | False |  |
| `TooltipPosition` | Tooltip Position | `String` | top | top|bottom|left|right |
| `TooltipOpen` | Tooltip Open | `Boolean` | False |  |

## 5. Declared Events
- `Changed (LowerValue As Int, UpperValue As Int)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setMinValue(Value As Int)`
- `getMinValue As Int`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setLowerValue(Value As Int)`
- `getLowerValue As Int`
- `setValue1(Value As Int)`
- `getValue1 As Int`
- `setUpperValue(Value As Int)`
- `getUpperValue As Int`
- `setValue2(Value As Int)`
- `getValue2 As Int`
- `setValues(LowerVal As Int, UpperVal As Int)`
- `setValue(Value As Int)`
- `getValue As Int`
- `setStepValue(Value As Int)`
- `getStepValue As Int`
- `setMinDistance(Value As Int)`
- `getMinDistance As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setShowFill(Value As Boolean)`
- `getShowFill As Boolean`
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
- `setValueSeparator(Value As String)`
- `getValueSeparator As String`
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

