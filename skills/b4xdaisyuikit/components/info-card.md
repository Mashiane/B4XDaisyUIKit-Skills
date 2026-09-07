# info-card (`B4XDaisyInfoCard`)

DaisyUI `InfoCard` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyInfoCard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyInfoCard.bas`
- **Verified Demo Source**: B4XPageInfoCard.bas
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
| `InforType` | Type | `String` | 1 | 1|2|3|4|5|6 |
| `Effect` | Effect | `String` | none | none|hover-zoom |
| `Icon` | Icon | `String` | user-solid.svg |  |
| `IconColor` | Icon Color | `Color` | 0 |  |
| `IconTextColor` | Icon Text Color | `Color` | 0 |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Title` | Title | `String` | Employees |  |
| `Value` | Value | `String` | 1000 |  |
| `StartFrom` | Start From | `Float` | 0 |  |
| `Prefix` | Prefix | `String` |  |  |
| `Suffix` | Suffix | `String` |  |  |
| `Separator` | Separator | `String` | , |  |
| `Decimal` | Decimal | `String` | . |  |
| `DecimalPlaces` | Decimal Places | `Int` | 0 |  |
| `UseGrouping` | Use Grouping | `Boolean` | True |  |
| `Animated` | Animated | `Boolean` | True |  |
| `Duration` | Duration (s) | `Int` | 2 |  |
| `BackgroundColor` | Background Color | `Color` | 0 |  |
| `TextColor` | Text Color | `Color` | 0 |  |
| `Shadow` | Shadow | `String` | sm | none|xs|sm|md|lg|xl|2xl |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `UpdateTheme`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setInforType(Value As String)`
- `getInforType As String`
- `setEffect(Value As String)`
- `getEffect As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setIconTextColor(Value As Int)`
- `getIconTextColor As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setValue(Value As String)`
- `getValue As String`
- `setStartFrom(Value As Float)`
- `getStartFrom As Float`
- `setPrefix(Value As String)`
- `getPrefix As String`
- `setSuffix(Value As String)`
- `getSuffix As String`
- `setSeparator(Value As String)`
- `getSeparator As String`
- `setDecimal(Value As String)`
- `getDecimal As String`
- `setDecimalPlaces(Value As Int)`
- `getDecimalPlaces As Int`
- `setUseGrouping(Value As Boolean)`
- `getUseGrouping As Boolean`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `getRole As String`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `RemoveViewFromParent`
- `Release`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

