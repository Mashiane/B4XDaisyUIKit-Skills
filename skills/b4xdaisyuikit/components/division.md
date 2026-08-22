# division (`B4XDaisyDivision`)

DaisyUI `Division` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDivision`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDivision.bas`
- **Verified Demo Source**: B4XPageDivider.bas (lines 175–175), B4XPageIndicator.bas (lines 74–417), B4XPageSkeleton.bas (lines 14–23), B4XPageStack.bas (lines 64–92)
- **Web DaisyUI Mapping**: `.division` → `B4XDaisyDivision`

## 2. Verified B4X Syntax & Recipe
```b4x
'Control
	btnToggle.Initialize(Me, "btnToggle")
	btnToggle.AddToParent(content, 10dip, currentY, 150dip, 40dip)
	btnToggle.Text = "Toggle Skeleton"
	btnToggle.BackgroundColor = 0xFF570DF8 'Primary
	btnToggle.TextColor = xui.Color_White
	btnToggle.Rounded = "rounded"
	btnToggle.PlaceContentCenter = True
	currentY = currentY + 60dip
	
	'--- Example 1: Basic Shapes ---
	Dim lblEx1 As B4XDaisyText
	lblEx1.Initialize(Me, "")
	lblEx1.AddToParent(content, 10dip, currentY, 300dip, 30dip)
	lblEx1.Text = "Basic Shapes"
	lblEx1.TextSize = "text-sm"
	currentY = currentY + 35dip
	
	divCircle.Initialize(Me, "")
	divCircle.AddToParent(content, 10dip, currentY, 64dip, 64dip)
	divCircle.Width = "w-16"
	divCircle.Height = "h-16"
	divCircle.Rounded = "rounded-full"
	divCircle.BackgroundColor = 0xFFF3F4F6
	
	divRect.Initialize(Me, "")
	divRect.AddToParent(content, 90dip, currentY + 10dip, 128dip, 16dip)
	divRect.Width = "w-32"
	divRect.Height = "h-4"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDivision` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddViewToContent, setMargin, getMargin` (+ 28 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `w-10` |  |
| `Height` | Height | `String` | `h-10` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0xFF000000` |  |
| `TextSize` | Text Size | `String` | `text-sm` |  |
| `Text` | Text | `String` | `` |  |
| `Rounded` | Rounded | `String` | `none` | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `PlaceContentCenter` | Place Content Center | `Boolean` | `False` |  |
| `BorderWidth` | Border Width | `Int` | `0` |  |
| `BorderColor` | Border Color | `Color` | `0xFF000000` |  |
| `BorderStyle` | Border Style | `String` | `solid` | none|hidden|solid|double|dashed|dotted|groove|ridge|inset|outset |
| `BorderReliefStrength` | Relief Strength | `Int` | `55` |  |
| `AutoReliefByStyle` | Auto Relief By Style | `Boolean` | `True` |  |
| `IsSkeleton` | Is Skeleton | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `AutoResize` | Auto Resize | `Boolean` | `False` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize (oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartAnimation`
- `StopAnimation`
- `View As B4XView`
- `getAutoReliefByStyle As Boolean`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderReliefStrength As Int`
- `getBorderStyle As String`
- `getBorderWidth As Int`
- `getHeight As Object`
- `getIsSkeleton As Boolean`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getPlaceContentCenter As Boolean`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As Float`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Object`
- `setAutoReliefByStyle(bValue As Boolean)`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iColor As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBorderColor(iValue As Int)`
- `setBorderColorVariant(sVariantName As String)`
- `setBorderReliefStrength(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setBorderWidth(iValue As Int)`
- `setHeight(oValue As Object)`
- `setIsSkeleton(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setPlaceContentCenter(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sText As String)`
- `setTextColor(iColor As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

