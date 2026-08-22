# radial-progress (`B4XDaisyRadialProgress`)

DaisyUI `RadialProgress` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyRadialProgress`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRadialProgress.bas`
- **Verified Demo Source**: B4XPageRadialProgress.bas (lines 15–215), B4XPageStat.bas (lines 315–315)
- **Web DaisyUI Mapping**: `.radial-progress` → `B4XDaisyRadialProgress`

## 2. Verified B4X Syntax & Recipe
```b4x
currentY = currentY + 40dip
	
	Dim rp1 As B4XDaisyRadialProgress
	rp1.Initialize(Me, "")
	rp1.AddToParent(content, 10dip, currentY, 80dip, 80dip)
	rp1.Value = 70
	currentY = currentY + 100dip
	
	'--- Different values ---
	Dim lblEx2 As B4XDaisyText
	lblEx2.Initialize(Me, "")
	lblEx2.AddToParent(content, 10dip, currentY, 300dip, 30dip)
	lblEx2.Text = "Different values"
	lblEx2.TextSize = "text-sm"
	currentY = currentY + 40dip
	
	Dim vals() As Int = Array As Int(0, 20, 60, 80, 100)
	For i = 0 To vals.Length - 1
		Dim rp As B4XDaisyRadialProgress
		rp.Initialize(Me, "")
		rp.AddToParent(content, 10dip + (i * 70dip), currentY, 60dip, 60dip)
		rp.Variant = "primary"
		rp.Value = vals(i)
	Next
	currentY = currentY + 80dip
	
	'--- Custom colors ---
	Dim lblEx3 As B4XDaisyText
	lblEx3.Initialize(Me, "")
	lblEx3.AddToParent(content, 10dip, currentY, 300dip, 30dip)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyRadialProgress` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `DrawComponent, getMaxValue, getMinValue` (+ 28 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Value` | Value | `Int` | `0` |  |
| `MinValue` | Min Value | `Int` | `0` |  |
| `MaxValue` | Max Value | `Int` | `100` |  |
| `StepValue` | Step Value | `Int` | `1` |  |
| `Size` | Size | `String` | `80px` |  |
| `Thickness` | Thickness | `String` | `10%` |  |
| `Variant` | Variant | `String` | `none` | none|primary|secondary|accent|info|success|warning|error |
| `DisplayType` | Display Type | `String` | `text` | text|svg|none |
| `Text` | Text | `String` | `0` |  |
| `Prefix` | Prefix | `String` | `` |  |
| `Suffix` | Suffix | `String` | `%` |  |
| `TextCountUp` | Text CountUp | `Boolean` | `False` |  |
| `Duration` | Duration | `Int` | `300` |  |
| `SvgAsset` | Svg Asset | `String` | `` |  |
| `TrackColor` | Track Color | `Color` | `0x00000000` |  |
| `BackgroundColor` | Background Color Override | `Color` | `0x00000000` |  |
| `TextColor` | Text Color Override | `Color` | `0xFF000000` |  |
| `BorderColor` | Border Color Override | `Color` | `0x00000000` |  |
| `BorderWidth` | Border Width | `String` | `0` |  |

## 5. Declared Events
- `None`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `DrawComponent`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetValueAnimated(fNewValue As Float, iDuration As Int)`
- `StartTimer(iDurationMs As Int)`
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
- `setBackgroundColor(iNewBackgroundColor As Int)`
- `setBorderColor(iNewBorderColor As Int)`
- `setBorderWidth(sNewBorderWidth As String)`
- `setCountUpSpeed(iNewCountUpSpeed As Int)`
- `setDisplayType(sDType As String)`
- `setDuration(iNewCountUpSpeed As Int)`
- `setHeight(iValue As Int)`
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
- `setVariant(sNewVariant As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

