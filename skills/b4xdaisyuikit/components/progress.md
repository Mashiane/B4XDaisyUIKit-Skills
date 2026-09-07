# progress (`B4XDaisyProgress`)

DaisyUI `Progress` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyProgress`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyProgress.bas`
- **Verified Demo Source**: B4XPageDrawerRail.bas, B4XPageProgress.bas
- **Web DaisyUI Mapping**: `.progress` → `B4XDaisyProgress`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``progress`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``progress-neutral`, `progress-primary`, `progress-secondary`, `progress-accent`, `progress-info`, `progress-success`, `progress-warning`, `progress-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |

### Web DaisyUI HTML Syntax
```html
<progress class="progress {MODIFIER}" value="50" max="100"></progress>
```

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
| `Value` | Value | `Int` | 0 |  |
| `MaxValue` | Max Value | `Int` | 100 |  |
| `Variant` | Variant/Color | `String` | neutral | none|primary|secondary|accent|info|success|warning|error|neutral |
| `Size` | Size | `String` | none | none|xs|sm|md|lg|xl |
| `Visible` | Visible | `Boolean` | True |  |
| `Width` | CSS Width | `String` | w-full |  |
| `Height` | CSS Height | `String` | h-2 |  |
| `ShowTooltip` | Show Tooltip | `Boolean` | False |  |
| `TooltipPosition` | Tooltip Position | `String` | top | top|bottom|left|right |
| `Indeterminate` | Indeterminate | `Boolean` | False |  |
| `ShowNumberInline` | Show Number Inline | `Boolean` | False |  |
| `NumberTextColor` | Number Text Color | `Color` | 0x00000000 |  |
| `Animated` | Animated | `Boolean` | False |  |
| `Duration` | Animation Duration | `Int` | 1000 |  |
| `IconLeft` | Icon Left | `String` |  |  |
| `IconRight` | Icon Right | `String` |  |  |
| `MinValue` | Min Value | `Float` | 0 |  |
| `StepValue` | Step Value | `Float` | 1 |  |
| `IconSize` | Icon Size | `Int` | 0 |  |
| `LabelAbove` | Label Above | `String` |  |  |
| `LabelVisible` | Label Visible | `Boolean` | False |  |
| `TooltipOpen` | Tooltip Open | `Boolean` | True |  |

## 5. Declared Events
- `Changed (Value As Float)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `SetValueColor(Color As Int)`
- `SetTrackColor(Color As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `setVariant(VariantName As String)`
- `getVariant As String`
- `setValue(Value As Float)`
- `getValue As Float`
- `StartTimer(DurationMs As Int)`
- `setMaxValue(MaxValue As Float)`
- `getMaxValue As Float`
- `setSize(Size As String)`
- `getSize As String`
- `setShowTooltip(Value As Boolean)`
- `getShowTooltip As Boolean`
- `setTooltipPosition(Value As String)`
- `getTooltipPosition As String`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setShowNumberInline(Value As Boolean)`
- `getShowNumberInline As Boolean`
- `setNumberTextColor(C As Int)`
- `getNumberTextColor As Int`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setTag(Tag As Object)`
- `getTag As Object`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setMinValue(V As Float)`
- `getMinValue As Float`
- `setStepValue(V As Float)`
- `getStepValue As Float`
- `setIconSize(V As Int)`
- `getIconSize As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `StopAnimation`
- `setTooltipOpen(Value As Boolean)`
- `getTooltipOpen As Boolean`
- `GetComputedHeight As Int`
- `View As B4XView`
- `RemoveViewFromParent`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

