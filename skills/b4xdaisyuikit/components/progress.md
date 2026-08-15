# progress (`B4XDaisyProgress`)

Linear progress bar with optional tooltip, label, animated fill, and icon ends.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyProgress`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyProgress.bas`
- **Verified Demos**: `B4XPageProgress.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize (Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize (Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `SetTrackColor(Color As Int)`
- `SetValueColor(Color As Int)`
- `StartTimer(DurationMs As Int)`
- `StopAnimation`
- `getAnimated As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(Value As Boolean)`
- `setDuration(Value As Int)`
- `setHeight(Value As Int)`
- `setIconLeft(s As String)`
- `setIconRight(s As String)`
- `setIconSize(v As Int)`
- `setIndeterminate(b As Boolean)`
- `setLabelAbove(s As String)`
- `setLabelVisible(b As Boolean)`
- `setLeft(Value As Int)`
- `setMaxValue(MaxValue As Float)`
- `setMinValue(v As Float)`
- `setNumberTextColor(c As Int)`
- `setShowNumberInline(b As Boolean)`
- `setShowTooltip(b As Boolean)`
- `setSize(Size As String)`
- `setStepValue(v As Float)`
- `setTag(Tag As Object)`
- `setTooltipOpen(b As Boolean)`
- `setTooltipPosition(s As String)`
- `setTop(Value As Int)`
- `setValue(Value As Float)`
- `setVariant(VariantName As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
