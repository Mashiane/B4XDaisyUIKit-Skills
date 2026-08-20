# progress (`B4XDaisyProgress`)

Linear progress bar with optional tooltip, label, animated fill, and icon ends.

## 1. Overview
- **Class**: `B4XDaisyProgress`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyProgress.bas`
- **Web DaisyUI Mapping**: `.progress` → `B4XDaisyProgress`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pb As B4XDaisyProgress
pb.Initialize(Me, "pb")
pb.AddToParent(pnlHost, pad, y, maxW, 32dip)
pb.Variant = "primary"
pb.Size = "md"
pb.MinValue = 0
pb.MaxValue = 100
pb.setValue(65)
pb.Animated = True
pb.LabelAbove = "Upload Progress"
pb.LabelVisible = True
pb.ShowTooltip = True
y = y + pb.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Horizontal progress bar supporting determinate values and indeterminate loading animation.
- Set `Value` and `MaxValue` for determinate progress tracking.
- Set `Indeterminate = True` for pulsing infinite loading.
- Use `AnimateTo(NewValue, DurationMs)` for smooth animated progress transitions.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Value | Value | Int | 0 |  |
| MaxValue | Max Value | Int | 100 |  |
| Variant | Variant/Color | String | neutral | none|primary|secondary|accent|info|success|warning|error|neutral |
| Size | Size | String | none | none|xs|sm|md|lg|xl |
| Visible | Visible | Boolean | True |  |
| Width | CSS Width | String | w-full |  |
| Height | CSS Height | String | h-2 |  |
| ShowTooltip | Show Tooltip | Boolean | False |  |
| TooltipPosition | Tooltip Position | String | top | top|bottom|left|right |
| Indeterminate | Indeterminate | Boolean | False |  |
| ShowNumberInline | Show Number Inline | Boolean | False |  |
| NumberTextColor | Number Text Color | Color | 0x00000000 |  |
| Animated | Animated | Boolean | False |  |
| Duration | Animation Duration | Int | 1000 |  |
| IconLeft | Icon Left | String |  |  |
| IconRight | Icon Right | String |  |  |
| MinValue | Min Value | Float | 0 |  |
| StepValue | Step Value | Float | 1 |  |
| IconSize | Icon Size | Int | 0 |  |
| LabelAbove | Label Above | String |  |  |
| LabelVisible | Label Visible | Boolean | False |  |
| TooltipOpen | Tooltip Open | Boolean | True |  |

## 5. Declared Events
- `Changed (Value As Float)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAnimated As Boolean`
- `GetComputedHeight As Int`
- `getDuration As Int`
- `getHeight As Int`
- `getIconLeft As String`
- `getIconRight As String`
- `getIconSize As Int`
- `getIndeterminate As Boolean`
- `getLabelAbove As String`
- `getLabelVisible As Boolean`
- `getLeft As Int`
- `getMaxValue As Float`
- `getMinValue As Float`
- `getNumberTextColor As Int`
- `getShowNumberInline As Boolean`
- `getShowTooltip As Boolean`
- `getSize As String`
- `getStepValue As Float`
- `getTag As Object`
- `getTooltipOpen As Boolean`
- `getTooltipPosition As String`
- `getTop As Int`
- `getValue As Float`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setAnimated(bValue As Boolean)`
- `setDuration(iValue As Int)`
- `setHeight(iValue As Int)`
- `setIconLeft(sValue As String)`
- `setIconRight(sValue As String)`
- `setIconSize(iV As Int)`
- `setIndeterminate(bValue As Boolean)`
- `setLabelAbove(sValue As String)`
- `setLabelVisible(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeftPos As Int, iTopPos As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMaxValue(fMaxValue As Float)`
- `setMinValue(fV As Float)`
- `setNumberTextColor(iC As Int)`
- `setShowNumberInline(bValue As Boolean)`
- `setShowTooltip(bValue As Boolean)`
- `setSize(sSize As String)`
- `setStepValue(fV As Float)`
- `setTag(oTag As Object)`
- `setTooltipOpen(bValue As Boolean)`
- `setTooltipPosition(sValue As String)`
- `setTop(iValue As Int)`
- `SetTrackColor(iColor As Int)`
- `setValue(fValue As Float)`
- `SetValueColor(iColor As Int)`
- `setVariant(sVariantName As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `StartTimer(iDurationMs As Int)`
- `StopAnimation`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
