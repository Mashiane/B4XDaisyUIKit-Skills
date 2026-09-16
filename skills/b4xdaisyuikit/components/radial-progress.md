# radial-progress (`B4XDaisyRadialProgress`)

DaisyUI `RadialProgress` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyRadialProgress`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyRadialProgress.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyRadialProgress.bas)
- **Verified Demo Source**: B4XPageRadialProgress.bas, B4XPageStat.bas
- **Web DaisyUI Mapping**: `.radial-progress` → `B4XDaisyRadialProgress`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``radial-progress`` | Member | `.SetComponent(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="radial-progress" style="--value:70;" aria-valuenow="70" role="progressbar">70%</div>
```

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
| `Value` | Value | `Int` | 0 |  |
| `MinValue` | Min Value | `Int` | 0 |  |
| `MaxValue` | Max Value | `Int` | 100 |  |
| `StepValue` | Step Value | `Int` | 1 |  |
| `Size` | Size | `String` | 80px |  |
| `Thickness` | Thickness | `String` | 10% |  |
| `Variant` | Variant | `String` | none | none|primary|secondary|accent|info|success|warning|error |
| `DisplayType` | Display Type | `String` | text | text|svg|none |
| `Text` | Text | `String` | 0 |  |
| `Prefix` | Prefix | `String` |  |  |
| `Suffix` | Suffix | `String` | % |  |
| `TextCountUp` | Text CountUp | `Boolean` | False |  |
| `Duration` | Duration | `Int` | 300 |  |
| `SvgAsset` | Svg Asset | `String` |  |  |
| `TrackColor` | Track Color | `Color` | 0x00000000 |  |
| `BackgroundColor` | Background Color Override | `Color` | 0x00000000 |  |
| `TextColor` | Text Color Override | `Color` | 0xFF000000 |  |
| `BorderColor` | Border Color Override | `Color` | 0x00000000 |  |
| `BorderWidth` | Border Width | `String` | 0 |  |

## 5. Declared Events
- `None`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `DrawComponent`
- `SetValueAnimated(NewValue As Float, Duration As Int)`
- `StopAnimation`
- `StartTimer(DurationMs As Int)`
- `getMaxValue As Int`
- `setMaxValue(MaxVal As Int)`
- `getMinValue As Int`
- `setMinValue(MinVal As Int)`
- `getValue As Int`
- `setValue(Value As Int)`
- `setStepValue(StepVal As Int)`
- `getStepValue As Int`
- `setDisplayType(DType As String)`
- `getDisplayType As String`
- `setText(NewText As String)`
- `getText As String`
- `setVariant(NewVariant As String)`
- `getVariant As String`
- `setSize(Value As Object)`
- `getSize As Float`
- `getWidth As Float`
- `getHeight As Float`
- `setThickness(NewThickness As String)`
- `getThickness As String`
- `setSvgAsset(NewSvgAsset As String)`
- `getSvgAsset As String`
- `setPrefix(NewPrefix As String)`
- `getPrefix As String`
- `setSuffix(NewSuffix As String)`
- `getSuffix As String`
- `setTextCountUp(NewTextCountUp As Boolean)`
- `getTextCountUp As Boolean`
- `setDuration(NewCountUpSpeed As Int)`
- `getDuration As Int`
- `setCountUpSpeed(NewCountUpSpeed As Int)`
- `getCountUpSpeed As Int`
- `setTrackColor(NewTrackColor As Int)`
- `getTrackColor As Int`
- `setBackgroundColor(NewBackgroundColor As Int)`
- `getBackgroundColor As Int`
- `setTextColor(NewTextColor As Int)`
- `getTextColor As Int`
- `setBorderColor(NewBorderColor As Int)`
- `getBorderColor As Int`
- `setBorderWidth(NewBorderWidth As String)`
- `getBorderWidth As String`
- `View As B4XView`
- `IsReady As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `setHeight(Value As Int)`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

