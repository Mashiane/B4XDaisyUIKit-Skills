# dual-range (`B4XDaisyDualRange`)

Two-handled continuous and discrete range slider inspired by noUiSlider for selecting numerical spans, price intervals, temperature boundaries, or timeline windows with connecting progress fill, dual tooltips, and live value readouts.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyDualRange`
- **Status**: `Verified`
- **Library Source**: `B4XDaisyDualRange.bas`
- **Verified Demos**: `B4XPageDualRange.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `StopAnimation`
- `UpdateTheme`
- `Validate As Boolean`
- `getComputedHeight As Int`
- `getEnabled As Boolean` / `setEnabled(Value As Boolean)`
- `getErrorText As String` / `setErrorText(Value As String)`
- `getHintText As String` / `setHintText(Value As String)`
- `getIsValid As Boolean`
- `getLabelAbove As String` / `setLabelAbove(Value As String)`
- `getLabelVisible As Boolean` / `setLabelVisible(Value As Boolean)`
- `getLowerValue As Int` / `setLowerValue(Value As Int)`
- `getMaxValue As Int` / `setMaxValue(Value As Int)`
- `getMinDistance As Int` / `setMinDistance(Value As Int)`
- `getMinValue As Int` / `setMinValue(Value As Int)`
- `getProgressColor As Int` / `setProgressColor(Value As Int)`
- `getRequired As Boolean` / `setRequired(Value As Boolean)`
- `getRole As String`
- `getShowFill As Boolean` / `setShowFill(Value As Boolean)`
- `getShowTooltip As Boolean` / `setShowTooltip(Value As Boolean)`
- `getShowValue As Boolean` / `setShowValue(Value As Boolean)`
- `getSize As String` / `setSize(Value As String)`
- `getStepValue As Int` / `setStepValue(Value As Int)`
- `getTag As Object` / `setTag(Value As Object)`
- `getThumbColor As Int` / `setThumbColor(Value As Int)`
- `getTooltipOpen As Boolean` / `setTooltipOpen(Value As Boolean)`
- `getTooltipPosition As String` / `setTooltipPosition(Value As String)`
- `getTrackColor As Int` / `setTrackColor(Value As Int)`
- `getUpperValue As Int` / `setUpperValue(Value As Int)`
- `getValue1 As Int` / `setValue1(Value As Int)`
- `getValue2 As Int` / `setValue2(Value As Int)`
- `getValuePrefix As String` / `setValuePrefix(Value As String)`
- `getValueSeparator As String` / `setValueSeparator(Value As String)`
- `getValueSuffix As String` / `setValueSuffix(Value As String)`
- `getValues As Int()` / `setValues(LowerVal As Int, UpperVal As Int)`
- `getVariant As String` / `setVariant(Value As String)`
- `getView As B4XView`
