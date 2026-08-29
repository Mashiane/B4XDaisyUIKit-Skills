# stat (`B4XDaisyStat`)

DaisyUI `Stat` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyStat`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStat.bas`
- **Verified Demo Source**: B4XPageDrawerRail.bas (lines 281–344), B4XPageStat.bas (lines 69–498), B4XPageStatus.bas (lines 17–256)
- **Web DaisyUI Mapping**: `.stat` → `B4XDaisyStat`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `Component` | ``stats`` | Member | `.SetComponent(...)` | Native configuration |
| `Part` | ``stat`, `stat-title`, `stat-value`, `stat-desc`, `stat-figure`, `stat-actions`` | Member | `.SetPart(...)` | Native configuration |
| `Direction` | ``stats-horizontal`, `stats-vertical`` | Member | `.SetDirection(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="stats {MODIFIER}">
  <div class="stat">{CONTENT}</div>
</div>
```

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
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyStat` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getContentWidth, getContentHeight, UpdateTheme` (+ 12 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Orientation` | Orientation | `String` | `horizontal` | horizontal|vertical |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | `box` | none|selector|field|box|full |
| `BorderWidth` | Border Width | `String` | `token` |  |
| `BorderColor` | Border Color | `String` | `base-300` | base-300|base-200|base-content|primary|secondary|accent|info|success|warning|error|none |
| `Width` | Width | `String` | `w-content` |  |
| `Height` | Height | `String` | `` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyStatItem)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartAnimation`
- `UpdateTheme`
- `View As B4XView`
- `getBorderColor As String`
- `getBorderWidth As String`
- `getContentHeight As Int`
- `getContentWidth As Int`
- `getHeight As String`
- `getLeft As Int`
- `getOrientation As String`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `setBorderColor(sValue As String)`
- `setBorderWidth(sValue As String)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setOrientation(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyStat` is a KPI metric container hosting one or more `B4XDaisyStatItem` tiles.

```vb
Dim stat As B4XDaisyStat
stat.Initialize(Me, "stat")
stat.Orientation = "horizontal"                ' Set BEFORE AddToParent ("horizontal" | "vertical")
stat.Width = "w-full"                          ' Set BEFORE AddToParent
stat.AddToParent(pnlHost, pad, y, maxW, 0)
stat.Shadow = "md"
stat.Rounded = "rounded-box"

' Metric 1: Counted items
Dim item1 As B4XDaisyStatItem
item1.Initialize(Me, "item1")
item1.Title = "Total Counted"
item1.Value = "1,240"
item1.Description = "+12% today"
item1.DescriptionColor = "success"
item1.FigureType = "svg"
item1.FigureSource = "check-solid.svg"
stat.AddItem(item1)

' Metric 2: Variances
Dim item2 As B4XDaisyStatItem
item2.Initialize(Me, "item2")
item2.Title = "Variances"
item2.Value = "8"
item2.Description = "Needs recount"
item2.DescriptionColor = "warning"
stat.AddItem(item2)

stat.Refresh
y = y + stat.GetComputedHeight + gap
```
