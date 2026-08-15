# range (`B4XDaisyRange`)

Horizontal slider for numeric value selection with optional fill, tooltip, label, and step markers.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyRange`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRange.bas`
- **Verified Demos**: `B4XPageCanvasSpinner.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageRange.bas, B4XPageSignaturePad.bas, B4XPageTagSphere.bas`
- **Web DaisyUI Mapping**: `.range` → `B4XDaisyRange`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim rng As B4XDaisyRange
rng.Initialize(Me, "rng")
rng.AddToParent(pnlHost, pad, y, maxW, 52dip)
rng.Variant = "primary"
rng.Size = "md"
rng.MinValue = 0
rng.MaxValue = 100
rng.StepValue = 5
rng.setValue(40)
rng.ShowFill = True
rng.ShowTooltip = True
rng.LabelAbove = "Volume"
rng.LabelVisible = True
y = y + rng.getComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Horizontal draggable slider for numeric ranges, volume, and settings.
- Must maintain `DisallowParentIntercept(Action)` during thumb drag movement.
- Configure `MinValue`, `MaxValue`, and `Step`.
- Set `ShowSteps = True` to render step notch marks along the slider track.
- Handle adjustments in the `Changed (Value As Float)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| MinValue | Minimum Value | Int | 0 |  |
| MaxValue | Maximum Value | Int | 100 |  |
| Value | Current Value | Int | 40 |  |
| StepValue | Step | Int | 1 |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| TrackColor | Track Color | Color | 0 |  |
| ProgressColor | Progress Color | Color | 0 |  |
| ThumbColor | Thumb Color | Color | 0 |  |
| Enabled | Enabled | Boolean | True |  |
| ShowFill | Show Fill | Boolean | True |  |
| RTL | RTL | Boolean | False |  |
| Visible | Visible | Boolean | True |  |
| DisallowParentIntercept | Disallow Parent Intercept | Boolean | True |  |
| Required | Required | Boolean | False |  |
| LabelAbove | Label Above | String |  |  |
| LabelVisible | Label Visible | Boolean | False |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |
| ShowValue | Show Value | Boolean | False |  |
| ValuePrefix | Value Prefix | String |  |  |
| ValueSuffix | Value Suffix | String |  |  |
| IconLeft | Icon Left | String |  |  |
| IconRight | Icon Right | String |  |  |
| IconSize | Icon Size | Int | 0 |  |
| ShowTooltip | Show Tooltip | Boolean | False |  |
| TooltipPosition | Tooltip Position | String | top | top|bottom|left|right |
| TooltipOpen | Tooltip Open | Boolean | False |  |

## 5. Declared Events
- `Changed (Value As Int)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `StopAnimation`
- `UpdateTheme`
- `Validate As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As String`
- `setDisallowParentIntercept(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFocus(Value As Boolean)`
- `setHeight(Value As String)`
- `setHintText(Value As String)`
- `setIconLeft(Value As String)`
- `setIconRight(Value As String)`
- `setIconSize(Value As Int)`
- `setLabelAbove(Value As String)`
- `setLabelVisible(Value As Boolean)`
- `setLeft(Value As Int)`
- `setMaxValue(Value As Int)`
- `setMinValue(Value As Int)`
- `setProgressColor(Value As Int)`
- `setRTL(Value As Boolean)`
- `setRequired(Value As Boolean)`
- `setShowFill(Value As Boolean)`
- `setShowTooltip(Value As Boolean)`
- `setShowValue(Value As Boolean)`
- `setSize(Value As String)`
- `setStepValue(Value As Int)`
- `setTag(Value As Object)`
- `setThumbColor(Value As Int)`
- `setTooltipOpen(Value As Boolean)`
- `setTooltipPosition(Value As String)`
- `setTop(Value As Int)`
- `setTrackColor(Value As Int)`
- `setValue(Value As Int)`
- `setValuePrefix(Value As String)`
- `setValueSuffix(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
