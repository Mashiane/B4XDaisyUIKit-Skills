# dual-range (`B4XDaisyDualRange`)

Two-handled continuous and discrete range slider inspired by noUiSlider for selecting numerical spans, price intervals, temperature boundaries, or timeline windows with connecting progress fill, dual tooltips, and live value readouts.

## 1. Overview
- **Class**: `B4XDaisyDualRange`
- **Status**: `Verified`
- **Library Source**: `B4XDaisyDualRange.bas`
- **Web DaisyUI Mapping**: `.range` (dual thumbs) → `B4XDaisyDualRange`

## 2. Verified B4X Syntax & Recipe
```b4x
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
drPrice.LabelAbove = "Price Filter"
drPrice.LabelVisible = True
drPrice.ShowValue = True
drPrice.ShowTooltip = True
drPrice.TooltipPosition = "top"
y = y + drPrice.ComputedHeight + 16dip

Private Sub drPrice_Changed(LowerValue As Int, UpperValue As Int)
    Log($"Price Range: $${LowerValue} - $${UpperValue}"$)
End Sub
```

## 3. Native Composition Rules & Gotchas
- **Two Draggable Thumbs**: Features separate Lower (`LowerValue` / `Value1`) and Upper (`UpperValue` / `Value2`) thumb handles on a shared slider track.
- **Connecting Progress Span**: The highlighted progress bar automatically spans between the Lower and Upper thumb positions (`ShowFill = True`).
- **Proximity Hit-Testing**: Touch gestures automatically select and drag the closest handle without jitter.
- **Collision & Distance Constraints**: Thumbs respect `MinDistance` to enforce minimum gaps (e.g. `$50` min span) and prevent crossing over.
- **Dual Floating Tooltips**: When `ShowTooltip = True`, independent value bubbles track both handles either transiently during drag or permanently when `TooltipOpen = True`.
- **Parent Scroll Safety**: Integrated `DisallowParentIntercept` ensures enclosing `B4XDaisyPageScroll` / `ScrollView` containers do not steal horizontal slider drag gestures on Android.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values | Description |
|---|---|---|---|---|---|
| `MinValue` | Minimum Value | Int | 0 | | Minimum slider bound |
| `MaxValue` | Maximum Value | Int | 100 | | Maximum slider bound |
| `LowerValue` | Lower Value | Int | 20 | | Lower handle position |
| `UpperValue` | Upper Value | Int | 80 | | Upper handle position |
| `StepValue` | Step | Int | 1 | | Discrete step snapping increment (0 for continuous) |
| `MinDistance` | Min Distance | Int | 0 | | Minimum numerical separation required between handles |
| `Size` | Size | String | md | xs\|sm\|md\|lg\|xl | Size scale (xs=16dip, sm=20dip, md=24dip, lg=28dip, xl=32dip) |
| `Variant` | Variant | String | none | none\|neutral\|primary\|secondary\|accent\|info\|success\|warning\|error | Semantic theme color variant |
| `TrackColor` | Track Color | Color | 0 | | Custom track background color |
| `ProgressColor` | Progress Color | Color | 0 | | Custom connecting progress fill color |
| `ThumbColor` | Thumb Color | Color | 0 | | Custom thumb knob color |
| `Enabled` | Enabled | Boolean | True | | Interaction state |
| `ShowFill` | Show Fill | Boolean | True | | Shows connecting highlight bar between handles |
| `RTL` | RTL | Boolean | False | | Right-to-left progress direction |
| `Visible` | Visible | Boolean | True | | Visibility |
| `DisallowParentIntercept` | Disallow Parent Intercept | Boolean | True | | Prevents parent scroll stealing |
| `Required` | Required | Boolean | False | | Validation flag |
| `LabelAbove` | Label Above | String | | | Header label text |
| `LabelVisible` | Label Visible | Boolean | False | | Header label visibility |
| `HintText` | Hint Text | String | | | Sub-caption helper text |
| `ErrorText` | Error Text | String | | | Error message text |
| `ShowValue` | Show Value | Boolean | True | | Live value readout above slider |
| `ValuePrefix` | Value Prefix | String | | | Prefix before numbers (e.g. "$") |
| `ValueSuffix` | Value Suffix | String | | | Suffix after numbers (e.g. "%", "Hz", "RPM") |
| `ValueSeparator` | Value Separator | String | " - " | | Separator string in value readout |
| `ShowTooltip` | Show Tooltip | Boolean | False | | Shows floating value tooltips above handles |
| `TooltipPosition` | Tooltip Position | String | top | top\|bottom\|left\|right | Relative tooltip placement |
| `TooltipOpen` | Tooltip Open | Boolean | False | | True for permanently visible tooltips |

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
- `getValues As Int`
- `getValueSeparator As String`
- `getValueSuffix As String`
- `getVariant As String`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `setValues(iLowerVal As Int, iUpperVal As Int)`
- `setValueSeparator(sValue As String)`
- `setValueSuffix(sValue As String)`
- `setVariant(sValue As String)`
- `setWidth(sValue As String)`
- `ShowError(sErrorMessage As String)`
- `StopAnimation`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`

