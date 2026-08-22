# info-card (`B4XDaisyInfoCard`)

DaisyUI `InfoCard` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyInfoCard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyInfoCard.bas`
- **Verified Demo Source**: B4XPageInfoCard.bas (lines 53–237)
- **Web DaisyUI Mapping**: `.info-card` → `B4XDaisyInfoCard`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderExamples(Width As Int, Height As Int)
	If pnlHost.IsInitialized = False Then Return
	pnlHost.RemoveAllViews

	Dim maxW As Int = Max(220dip, Width - (PAGE_PAD * 2))
	Dim y As Int = PAGE_PAD

	' --- Type 1: icon-left, colored column (default) ---
	y = AddSectionTitle("Type 1 - Icon Left (colored column)", y, maxW)
	Dim ic1 As B4XDaisyInfoCard
	ic1.Initialize(Me, "ic")
	ic1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 80dip)
	ic1.InforType = "1"
	ic1.Icon = "user-solid.svg"
	ic1.IconColor = xui.Color_RGB(34, 197, 94)
	ic1.Title = "Employees"
	ic1.Value = "1000"
	ic1.Separator = ","
	ic1.Duration = 2
	ic1.Tag = ic1
	y = y + ic1.GetComputedHeight + 14dip

	' --- Type 2: icon-left, subtle tinted column ---
	y = AddSectionTitle("Type 2 - Icon Left (subtle column)", y, maxW)
	Dim ic2 As B4XDaisyInfoCard
	ic2.Initialize(Me, "ic")
	ic2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 80dip)
	ic2.InforType = "2"
	ic2.Icon = "bell-solid.svg"
	ic2.IconColor = xui.Color_RGB(59, 130, 246)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyInfoCard` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, setInforType, getInforType` (+ 35 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `InforType` | Type | `String` | `1` | 1|2|3|4|5|6 |
| `Effect` | Effect | `String` | `none` | none|hover-zoom |
| `Icon` | Icon | `String` | `user-solid.svg` |  |
| `IconColor` | Icon Color | `Color` | `0` |  |
| `IconTextColor` | Icon Text Color | `Color` | `0` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Title` | Title | `String` | `Employees` |  |
| `Value` | Value | `String` | `1000` |  |
| `StartFrom` | Start From | `Float` | `0` |  |
| `Prefix` | Prefix | `String` | `` |  |
| `Suffix` | Suffix | `String` | `` |  |
| `Separator` | Separator | `String` | `` |  |
| `Decimal` | Decimal | `String` | `.` |  |
| `DecimalPlaces` | Decimal Places | `Int` | `0` |  |
| `UseGrouping` | Use Grouping | `Boolean` | `True` |  |
| `Animated` | Animated | `Boolean` | `True` |  |
| `Duration` | Duration (s) | `Int` | `2` |  |
| `BackgroundColor` | Background Color | `Color` | `0` |  |
| `TextColor` | Text Color | `Color` | `0` |  |
| `Shadow` | Shadow | `String` | `sm` | none|xs|sm|md|lg|xl|2xl |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartAnimation`
- `StopAnimation`
- `UpdateTheme`
- `View As B4XView`
- `getAnimated As Boolean`
- `getBackgroundColor As Int`
- `getComputedHeight As Int`
- `getDecimal As String`
- `getDecimalPlaces As Int`
- `getDuration As Int`
- `getEffect As String`
- `getEnabled As Boolean`
- `getHeight As Int`
- `getIcon As String`
- `getIconColor As Int`
- `getIconTextColor As Int`
- `getInforType As String`
- `getLeft As Int`
- `getPrefix As String`
- `getRole As String`
- `getSeparator As String`
- `getShadow As String`
- `getStartFrom As Float`
- `getSuffix As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTitle As String`
- `getTop As Int`
- `getUseGrouping As Boolean`
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setDecimal(sValue As String)`
- `setDecimalPlaces(iValue As Int)`
- `setDuration(iValue As Int)`
- `setEffect(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setIcon(sValue As String)`
- `setIconColor(iValue As Int)`
- `setIconTextColor(iValue As Int)`
- `setInforType(sValue As String)`
- `setLeft(iValue As Int)`
- `setPrefix(sValue As String)`
- `setSeparator(sValue As String)`
- `setShadow(sValue As String)`
- `setStartFrom(fValue As Float)`
- `setSuffix(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setUseGrouping(bValue As Boolean)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

