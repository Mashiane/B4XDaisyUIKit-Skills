# stat-item (`B4XDaisyStatItem`)

DaisyUI `StatItem` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyStatItem`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyStatItem.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyStatItem.bas)
- **Verified Demo Source**: B4XPageDrawerRail.bas, B4XPageStat.bas
- **Web DaisyUI Mapping**: `.stat-item` → `B4XDaisyStatItem`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim stats1 As B4XDaisyStat
stats1.Initialize(Me, "stats1")
stats1.AddToParent(pnlHost, padding, currentY, maxW, 1dip)

Dim item1 As B4XDaisyStatItem
item1.Initialize(Me, "item1")
item1.Title = "Total Page Views"
item1.Value = "89,400"
item1.Animated = True
item1.Description = "21% more than last month"
stats1.AddItem(item1)
stats1.Refresh

currentY = currentY + stats1.ContentHeight + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyStatItem` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getContentWidth, getContentHeight, UpdateTheme` (+ 47 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Title` | Title | `String` |  |  |
| `Value` | Value | `String` |  |  |
| `Description` | Description | `String` |  |  |
| `ValueColor` | Value Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `DescriptionColor` | Description Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Variant` | Background Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `FigureType` | Figure Type | `String` | none | none|svg|image|radial |
| `FigureSource` | Figure Source | `String` |  |  |
| `FigureSize` | Figure Size | `Int` | 48 |  |
| `FigureColor` | Figure Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Padding` | Padding | `String` | px-6 py-4 |  |
| `GapX` | Column Gap | `Int` | 16 |  |
| `CenterItems` | Center Items | `Boolean` | False |  |
| `StartFrom` | Start From | `Float` | 0 |  |
| `Prefix` | Prefix | `String` |  |  |
| `Suffix` | Suffix | `String` |  |  |
| `Separator` | Separator | `String` | , |  |
| `Decimal` | Decimal | `String` | . |  |
| `DecimalPlaces` | Decimal Places | `Int` | 0 |  |
| `UseGrouping` | Use Grouping | `Boolean` | True |  |
| `Animated` | Animated | `Boolean` | False |  |
| `Duration` | Duration (s) | `Int` | 2 |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `getContentWidth As Int`
- `getContentHeight As Int`
- `UpdateTheme`
- `Refresh`
- `EstimatePreferredWidth As Float`
- `EstimatePreferredHeight As Float`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `setShowSeparator(Value As Boolean)`
- `setCenterItems(Value As Boolean)`
- `getCenterItems As Boolean`
- `getFigure As B4XView`
- `setFigure(View As B4XView)`
- `getActions As B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `AddActionButton(Text As String, Variant As String, EventName As String) As B4XDaisyButton`
- `setTitle(Value As String)`
- `getTitle As String`
- `setValue(Value As String)`
- `getValue As String`
- `setDescription(Value As String)`
- `getDescription As String`
- `setValueColor(Value As String)`
- `getValueColor As String`
- `setDescriptionColor(Value As String)`
- `getDescriptionColor As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setFigureType(Value As String)`
- `getFigureType As String`
- `setFigureSource(Value As String)`
- `getFigureSource As String`
- `setFigureSize(Value As Int)`
- `getFigureSize As Int`
- `setFigureColor(Value As String)`
- `getFigureColor As String`
- `setFigureValue(V As Int)`
- `setPadding(Value As String)`
- `getPadding As String`
- `setGapX(Value As Int)`
- `getGapX As Int`
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
- `setTag(Value As Object)`
- `getTag As Object`
- `LogLabelWidths(Tag As String)`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

