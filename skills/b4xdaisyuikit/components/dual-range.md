# dual-range (`B4XDaisyDualRange`)

DaisyUI `DualRange` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDualRange`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDualRange.bas`
- **Verified Demo Source**: B4XPageDualRange.bas (lines 99–215)
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
| `MinValue` | Minimum Value | `Int` | `0` |  |
| `MaxValue` | Maximum Value | `Int` | `100` |  |
| `LowerValue` | Lower Value | `Int` | `20` |  |
| `UpperValue` | Upper Value | `Int` | `80` |  |
| `StepValue` | Step | `Int` | `1` |  |
| `MinDistance` | Min Distance | `Int` | `0` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `TrackColor` | Track Color | `Color` | `0` |  |
| `ProgressColor` | Progress Color | `Color` | `0` |  |
| `ThumbColor` | Thumb Color | `Color` | `0` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `ShowFill` | Show Fill | `Boolean` | `True` |  |
| `RTL` | RTL | `Boolean` | `False` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | `True` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `LabelAbove` | Label Above | `String` | `` |  |
| `LabelVisible` | Label Visible | `Boolean` | `False` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `ShowValue` | Show Value | `Boolean` | `True` |  |
| `ValuePrefix` | Value Prefix | `String` | `` |  |
| `ValueSuffix` | Value Suffix | `String` | `` |  |
| `ValueSeparator` | Value Separator | `String` | `" - "` |  |
| `IconLeft` | Icon Left | `String` | `` |  |
| `IconRight` | Icon Right | `String` | `` |  |
| `IconSize` | Icon Size | `Int` | `0` |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | `False` |  |
| `TooltipPosition` | Tooltip Position | `String` | `top` | top|bottom|left|right |
| `TooltipOpen` | Tooltip Open | `Boolean` | `False` |  |

## 5. Declared Events
- `Changed (LowerValue As Int, UpperValue As Int)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `StopAnimation`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`
- `getComputedHeight As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getHeight As String`
- `getHintText As String`
- `getIconLeft As String`
- `getIconRight As String`
- `getIconSize As Int`
- `getIsValid As Boolean`
- `getLabelAbove As String`
- `getLabelVisible As Boolean`
- `getLeft As Int`
- `getLowerValue As Int`
- `getMaxValue As Int`
- `getMinDistance As Int`
- `getMinValue As Int`
- `getProgressColor As Int`
- `getRequired As Boolean`
- `getRole As String`
- `getShowFill As Boolean`
- `getShowTooltip As Boolean`
- `getShowValue As Boolean`
- `getSize As String`
- `getStepValue As Int`
- `getTag As Object`
- `getThumbColor As Int`
- `getTooltipOpen As Boolean`
- `getTooltipPosition As String`
- `getTop As Int`
- `getTrackColor As Int`
- `getUpperValue As Int`
- `getValue As Int`
- `getValue1 As Int`
- `getValue2 As Int`
- `getValuePrefix As String`
- `getValueSeparator As String`
- `getValueSuffix As String`
- `getValues As Int`
- `getVariant As String`
- `getWidth As String`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFocus(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setHintText(sValue As String)`
- `setIconLeft(sValue As String)`
- `setIconRight(sValue As String)`
- `setIconSize(iValue As Int)`
- `setLabelAbove(sValue As String)`
- `setLabelVisible(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLowerValue(iValue As Int)`
- `setMaxValue(iValue As Int)`
- `setMinDistance(iValue As Int)`
- `setMinValue(iValue As Int)`
- `setProgressColor(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setShowFill(bValue As Boolean)`
- `setShowTooltip(bValue As Boolean)`
- `setShowValue(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStepValue(iValue As Int)`
- `setTag(oValue As Object)`
- `setThumbColor(iValue As Int)`
- `setTooltipOpen(bValue As Boolean)`
- `setTooltipPosition(sValue As String)`
- `setTop(iValue As Int)`
- `setTrackColor(iValue As Int)`
- `setUpperValue(iValue As Int)`
- `setValue(iValue As Int)`
- `setValue1(iValue As Int)`
- `setValue2(iValue As Int)`
- `setValuePrefix(sValue As String)`
- `setValueSeparator(sValue As String)`
- `setValueSuffix(sValue As String)`
- `setValues(iLowerVal As Int, iUpperVal As Int)`
- `setVariant(sValue As String)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

