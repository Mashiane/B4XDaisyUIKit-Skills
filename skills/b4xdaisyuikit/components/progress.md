# progress (`B4XDaisyProgress`)

DaisyUI `Progress` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyProgress`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyProgress.bas`
- **Verified Demo Source**: B4XPageDrawerRail.bas (lines 334–334), B4XPageProgress.bas (lines 18–197)
- **Web DaisyUI Mapping**: `.progress` → `B4XDaisyProgress`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderExamples
	If pageScroll.IsInitialized = False Then Return
	pageScroll.Clear
	
	Dim maxW As Int = pageScroll.UsableWidth
	Dim padding As Int = pageScroll.PagePadding
	Dim gap As Int = pageScroll.YGap
	Dim currentY As Int = padding
	
	'Header
	Dim lblHeader As B4XDaisyText
	lblHeader.Initialize(Me, "")
	lblHeader.AddToParent(pnlHost, padding, currentY, maxW, 40dip)
	lblHeader.Text = "Progress Bar Components"
	lblHeader.TextSize = "text-lg"
	lblHeader.FontBold = True
	currentY = currentY + lblHeader.GetComputedHeight + gap

	'--- Example 1 ---
	currentY = pageScroll.AddSectionTitle("Progress (Default Neutral)", currentY, False)
	Dim vals() As Int = Array As Int(0, 10, 40, 70, 100)
	For i = 0 To vals.Length - 1
		Dim p As B4XDaisyProgress
		p.Initialize(Me, "")
		p.AddToParent(pnlHost, padding, currentY, maxW, 8dip)
		p.Value = vals(i)
		currentY = currentY + 8dip + gap
	Next
	currentY = currentY + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyProgress` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetValueColor, SetTrackColor, getVariant` (+ 34 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Value` | Value | `Int` | `0` |  |
| `MaxValue` | Max Value | `Int` | `100` |  |
| `Variant` | Variant/Color | `String` | `neutral` | none|primary|secondary|accent|info|success|warning|error|neutral |
| `Size` | Size | `String` | `none` | none|xs|sm|md|lg|xl |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Width` | CSS Width | `String` | `w-full` |  |
| `Height` | CSS Height | `String` | `h-2` |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | `False` |  |
| `TooltipPosition` | Tooltip Position | `String` | `top` | top|bottom|left|right |
| `Indeterminate` | Indeterminate | `Boolean` | `False` |  |
| `ShowNumberInline` | Show Number Inline | `Boolean` | `False` |  |
| `NumberTextColor` | Number Text Color | `Color` | `0x00000000` |  |
| `Animated` | Animated | `Boolean` | `False` |  |
| `Duration` | Animation Duration | `Int` | `1000` |  |
| `IconLeft` | Icon Left | `String` | `` |  |
| `IconRight` | Icon Right | `String` | `` |  |
| `MinValue` | Min Value | `Float` | `0` |  |
| `StepValue` | Step Value | `Float` | `1` |  |
| `IconSize` | Icon Size | `Int` | `0` |  |
| `LabelAbove` | Label Above | `String` | `` |  |
| `LabelVisible` | Label Visible | `Boolean` | `False` |  |
| `TooltipOpen` | Tooltip Open | `Boolean` | `True` |  |

## 5. Declared Events
- `Changed (Value As Float)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize (oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeftPos As Int, iTopPos As Int, iWidth As Int, iHeight As Int)`
- `SetTrackColor(iColor As Int)`
- `SetValueColor(iColor As Int)`
- `StartTimer(iDurationMs As Int)`
- `StopAnimation`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(bValue As Boolean)`
- `setDuration(iValue As Int)`
- `setHeight(iValue As Int)`
- `setIconLeft(sValue As String)`
- `setIconRight(sValue As String)`
- `setIconSize(iV As Int)`
- `setIndeterminate(bValue As Boolean)`
- `setLabelAbove(sValue As String)`
- `setLabelVisible(bValue As Boolean)`
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
- `setValue(fValue As Float)`
- `setVariant(sVariantName As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

