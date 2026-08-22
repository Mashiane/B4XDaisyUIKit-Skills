# range (`B4XDaisyRange`)

DaisyUI `Range` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyRange`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRange.bas`
- **Verified Demo Source**: B4XPageCanvasSpinner.bas (lines 25–26), B4XPageEnjoyHint.bas (lines 30–30), B4XPageFocus.bas (lines 40–40), B4XPageNavScrollDock.bas (lines 213–213), B4XPageRange.bas (lines 58–494), B4XPageSignaturePad.bas (lines 34–34), B4XPageTagSphere.bas (lines 21–22)
- **Web DaisyUI Mapping**: `.range` → `B4XDaisyRange`

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
| `MinValue` | Minimum Value | `Int` | `0` |  |
| `MaxValue` | Maximum Value | `Int` | `100` |  |
| `Value` | Current Value | `Int` | `40` |  |
| `StepValue` | Step | `Int` | `1` |  |
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
| `ShowValue` | Show Value | `Boolean` | `False` |  |
| `ValuePrefix` | Value Prefix | `String` | `` |  |
| `ValueSuffix` | Value Suffix | `String` | `` |  |
| `IconLeft` | Icon Left | `String` | `` |  |
| `IconRight` | Icon Right | `String` | `` |  |
| `IconSize` | Icon Size | `Int` | `0` |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | `False` |  |
| `TooltipPosition` | Tooltip Position | `String` | `top` | top|bottom|left|right |
| `TooltipOpen` | Tooltip Open | `Boolean` | `False` |  |

## 5. Declared Events
- `Changed (Value As Int)`
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
- `getDisallowParentIntercept As Boolean`
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
- `getMaxValue As Int`
- `getMinValue As Int`
- `getProgressColor As Int`
- `getRTL As Boolean`
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
- `getValue As Int`
- `getValuePrefix As String`
- `getValueSuffix As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `setDisallowParentIntercept(bValue As Boolean)`
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
- `setMaxValue(iValue As Int)`
- `setMinValue(iValue As Int)`
- `setProgressColor(iValue As Int)`
- `setRTL(bValue As Boolean)`
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
- `setValue(iValue As Int)`
- `setValuePrefix(sValue As String)`
- `setValueSuffix(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

