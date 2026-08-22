# stat-item (`B4XDaisyStatItem`)

DaisyUI `StatItem` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyStatItem`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStatItem.bas`
- **Verified Demo Source**: B4XPageDrawerRail.bas (lines 284–344), B4XPageStat.bas (lines 73–489)
- **Web DaisyUI Mapping**: `.stat-item` → `B4XDaisyStatItem`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderExamples(Width As Int, Height As Int) As ResumableSub
    If svHost.IsInitialized = False Then Return False
    pnlHost = svHost.Panel
    pnlHost.RemoveAllViews
    Dim maxW As Int = Max(220dip, Width - (PAGE_PAD * 2))
    Dim currentY As Int = PAGE_PAD
    
    ' #region Example 1: Stat (Basic) - single item, horizontal
    ''' Demonstrates the minimal stat: one item with title, value and description.
    ''' CSS: .stats = inline-grid (content-width, not full-width).
    currentY = AddSectionTitle("1. Stat (Basic)", currentY, maxW)
    Dim stats1 As B4XDaisyStat
    stats1.Initialize(Me, "")
    stats1.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 1dip)

    Dim item1 As B4XDaisyStatItem
    item1.Initialize(Me, "component")
    item1.Title = "Total Page Views"
    item1.Value = "89400"
    item1.Animated = True
    item1.Description = "21% more than last month"
    stats1.AddItem(item1)
    stats1.Refresh
    ' Shrink-wrap to measured content width (inline-grid fit-content)
    If stats1.ContentWidth > 0 Then stats1.SetLayoutAnimated(0, PAGE_PAD, currentY, stats1.ContentWidth, stats1.ContentHeight)

    item1.LogLabelWidths("Example 1: item1")
    
    currentY = currentY + stats1.ContentHeight + 6dip
    currentY = AddAnimateButton("Animate", stats1, currentY, maxW)
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
| `Title` | Title | `String` | `` |  |
| `Value` | Value | `String` | `` |  |
| `Description` | Description | `String` | `` |  |
| `ValueColor` | Value Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `DescriptionColor` | Description Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Variant` | Background Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `FigureType` | Figure Type | `String` | `none` | none|svg|image|radial |
| `FigureSource` | Figure Source | `String` | `` |  |
| `FigureSize` | Figure Size | `Int` | `48` |  |
| `FigureColor` | Figure Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Padding` | Padding | `String` | `px-6 py-4` |  |
| `GapX` | Column Gap | `Int` | `16` |  |
| `CenterItems` | Center Items | `Boolean` | `False` |  |
| `StartFrom` | Start From | `Float` | `0` |  |
| `Prefix` | Prefix | `String` | `` |  |
| `Suffix` | Suffix | `String` | `` |  |
| `Separator` | Separator | `String` | `` |  |
| `Decimal` | Decimal | `String` | `.` |  |
| `DecimalPlaces` | Decimal Places | `Int` | `0` |  |
| `UseGrouping` | Use Grouping | `Boolean` | `True` |  |
| `Animated` | Animated | `Boolean` | `False` |  |
| `Duration` | Duration (s) | `Int` | `2` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddAction(btn As B4XDaisyButton)`
- `AddActionButton(sText As String, sVariant As String, sEventName As String) As B4XDaisyButton`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `EstimatePreferredHeight As Float`
- `EstimatePreferredWidth As Float`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `LogLabelWidths(sTag As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartAnimation`
- `StopAnimation`
- `UpdateTheme`
- `View As B4XView`
- `getActions As B4XView`
- `getAnimated As Boolean`
- `getCenterItems As Boolean`
- `getContentHeight As Int`
- `getContentWidth As Int`
- `getDecimal As String`
- `getDecimalPlaces As Int`
- `getDescription As String`
- `getDescriptionColor As String`
- `getDuration As Int`
- `getFigure As B4XView`
- `getFigureColor As String`
- `getFigureSize As Int`
- `getFigureSource As String`
- `getFigureType As String`
- `getGapX As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getPadding As String`
- `getPrefix As String`
- `getSeparator As String`
- `getStartFrom As Float`
- `getSuffix As String`
- `getTag As Object`
- `getTitle As String`
- `getTop As Int`
- `getUseGrouping As Boolean`
- `getValue As String`
- `getValueColor As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(bValue As Boolean)`
- `setCenterItems(bValue As Boolean)`
- `setDecimal(sValue As String)`
- `setDecimalPlaces(iValue As Int)`
- `setDescription(sValue As String)`
- `setDescriptionColor(sValue As String)`
- `setDuration(iValue As Int)`
- `setFigure(vView As B4XView)`
- `setFigureColor(sValue As String)`
- `setFigureSize(iValue As Int)`
- `setFigureSource(sValue As String)`
- `setFigureType(sValue As String)`
- `setFigureValue(iV As Int)`
- `setGapX(iValue As Int)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setPrefix(sValue As String)`
- `setSeparator(sValue As String)`
- `setShowSeparator(bValue As Boolean)`
- `setStartFrom(fValue As Float)`
- `setSuffix(sValue As String)`
- `setTag(oValue As Object)`
- `setTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setUseGrouping(bValue As Boolean)`
- `setValue(sValue As String)`
- `setValueColor(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

