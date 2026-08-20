# range (`B4XDaisyRange`)

Horizontal slider for numeric value selection with optional fill, tooltip, label, and step markers.

## 1. Overview
- **Class**: `B4XDaisyRange`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRange.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
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
- `getRequired As Boolean`
- `getRole As String`
- `getRTL As Boolean`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMaxValue(iValue As Int)`
- `setMinValue(iValue As Int)`
- `setProgressColor(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setRTL(bValue As Boolean)`
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
- `ShowError(sErrorMessage As String)`
- `StopAnimation`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
