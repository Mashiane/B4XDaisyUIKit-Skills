# radial-progress (`B4XDaisyRadialProgress`)

Circular progress ring with animated value, SVG center icon, and custom colors.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyRadialProgress`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRadialProgress.bas`
- **Verified Demos**: `B4XPageRadialProgress.bas, B4XPageStat.bas`
- **Web DaisyUI Mapping**: `.radial-progress` → `B4XDaisyRadialProgress`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim rp As B4XDaisyRadialProgress
rp.Initialize(Me, "rp")
rp.AddToParent(pnlHost, pad, y, 100dip, 100dip)
rp.Variant = "primary"
rp.MinValue = 0
rp.MaxValue = 100
rp.setValue(72)
rp.DisplayType = "text"
rp.Suffix = "%"
rp.TextCountUp = True
rp.Thickness = "10%"
y = y + rp.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Circular percentage progress ring with animated transitions.
- Set `Value` (0 to 100) and `Thickness` (dip).
- Set `ShowPercentage = True` to render numeric value in the ring center.
- Use `AnimateTo(NewValue, DurationMs)` for animated dial filling.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Value | Value | Int | 0 |  |
| MinValue | Min Value | Int | 0 |  |
| MaxValue | Max Value | Int | 100 |  |
| StepValue | Step Value | Int | 1 |  |
| Size | Size | String | 80px |  |
| Thickness | Thickness | String | 10% |  |
| Variant | Variant | String | none | none|primary|secondary|accent|info|success|warning|error |
| DisplayType | Display Type | String | text | text|svg|none |
| Text | Text | String | 0 |  |
| Prefix | Prefix | String |  |  |
| Suffix | Suffix | String | % |  |
| TextCountUp | Text CountUp | Boolean | False |  |
| Duration | Duration | Int | 300 |  |
| SvgAsset | Svg Asset | String |  |  |
| TrackColor | Track Color | Color | 0x00000000 |  |
| BackgroundColor | Background Color Override | Color | 0x00000000 |  |
| TextColor | Text Color Override | Color | 0xFF000000 |  |
| BorderColor | Border Color Override | Color | 0x00000000 |  |
| BorderWidth | Border Width | String | 0 |  |

## 5. Declared Events
- `None`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `DrawComponent`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetValueAnimated(NewValue As Float, Duration As Int)`
- `StartTimer(DurationMs As Int)`
- `StopAnimation`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As String`
- `getCountUpSpeed As Int`
- `getDisplayType As String`
- `getDuration As Int`
- `getHeight As Float`
- `getLeft As Int`
- `getMaxValue As Int`
- `getMinValue As Int`
- `getPrefix As String`
- `getSize As Float`
- `getStepValue As Int`
- `getSuffix As String`
- `getSvgAsset As String`
- `getText As String`
- `getTextColor As Int`
- `getTextCountUp As Boolean`
- `getThickness As String`
- `getTop As Int`
- `getTrackColor As Int`
- `getValue As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `setBackgroundColor(NewBackgroundColor As Int)`
- `setBorderColor(NewBorderColor As Int)`
- `setBorderWidth(NewBorderWidth As String)`
- `setCountUpSpeed(NewCountUpSpeed As Int)`
- `setDisplayType(DType As String)`
- `setDuration(NewCountUpSpeed As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setMaxValue(MaxVal As Int)`
- `setMinValue(MinVal As Int)`
- `setPrefix(NewPrefix As String)`
- `setSize(Value As Object)`
- `setStepValue(StepVal As Int)`
- `setSuffix(NewSuffix As String)`
- `setSvgAsset(NewSvgAsset As String)`
- `setText(NewText As String)`
- `setTextColor(NewTextColor As Int)`
- `setTextCountUp(NewTextCountUp As Boolean)`
- `setThickness(NewThickness As String)`
- `setTop(Value As Int)`
- `setTrackColor(NewTrackColor As Int)`
- `setValue(Val As Int)`
- `setVariant(NewVariant As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
