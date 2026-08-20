# radial-progress (`B4XDaisyRadialProgress`)

Circular progress ring with animated value, SVG center icon, and custom colors.

## 1. Overview
- **Class**: `B4XDaisyRadialProgress`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRadialProgress.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `DrawComponent`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As String`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `setBackgroundColor(iNewBackgroundColor As Int)`
- `setBorderColor(iNewBorderColor As Int)`
- `setBorderWidth(sNewBorderWidth As String)`
- `setCountUpSpeed(iNewCountUpSpeed As Int)`
- `setDisplayType(sDType As String)`
- `setDuration(iNewCountUpSpeed As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMaxValue(iMaxVal As Int)`
- `setMinValue(iMinVal As Int)`
- `setPrefix(sNewPrefix As String)`
- `setSize(oValue As Object)`
- `setStepValue(iStepVal As Int)`
- `setSuffix(sNewSuffix As String)`
- `setSvgAsset(sNewSvgAsset As String)`
- `setText(sNewText As String)`
- `setTextColor(iNewTextColor As Int)`
- `setTextCountUp(bNewTextCountUp As Boolean)`
- `setThickness(sNewThickness As String)`
- `setTop(iValue As Int)`
- `setTrackColor(iNewTrackColor As Int)`
- `setValue(iValue As Int)`
- `SetValueAnimated(fNewValue As Float, iDuration As Int)`
- `setVariant(sNewVariant As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `StartTimer(iDurationMs As Int)`
- `StopAnimation`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
