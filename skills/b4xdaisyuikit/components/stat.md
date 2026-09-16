# stat (`B4XDaisyStat`)

DaisyUI `Stat` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyStat`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyStat.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyStat.bas)
- **Verified Demo Source**: B4XPageDrawerRail.bas, B4XPageStat.bas
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
' KPI metric container hosting one or more stat item tiles:
Dim stat As B4XDaisyStat
stat.Initialize(Me, "stat")
stat.Orientation = "horizontal"
stat.Width = "w-full"
stat.AddToParent(pnlHost, 16dip, y, maxW, 1dip)

Dim item1 As B4XDaisyStatItem
item1.Initialize(Me, "item1")
item1.Title = "Total Revenue"
item1.Value = "$48,200"
item1.Description = "+12% from last month"
item1.Animated = True
stat.AddItem(item1)

Dim item2 As B4XDaisyStatItem
item2.Initialize(Me, "item2")
item2.Title = "Active Customers"
item2.Value = "1,250"
item2.Description = "84 new this week"
item2.Animated = True
stat.AddItem(item2)

stat.Refresh
y = y + stat.GetComputedHeight + 16dip
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
| `Orientation` | Orientation | `String` | horizontal | horizontal|vertical |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | box | none|selector|field|box|full |
| `BorderWidth` | Border Width | `String` | token |  |
| `BorderColor` | Border Color | `String` | base-300 | base-300|base-200|base-content|primary|secondary|accent|info|success|warning|error|none |
| `Width` | Width | `String` | w-content |  |
| `Height` | Height | `String` |  |  |
| `EqualWidths` | Equal Widths | `Boolean` | False |  |
| `MaxWidth` | Maximum Width | `Int` | 0 |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `getContentWidth As Int`
- `getContentHeight As Int`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyStatItem)`
- `AddItem1(EventName As String, Title As String, Value As String) As B4XDaisyStatItem`
- `AddItem2(EventName As String, Title As String, Value As String, Description As String) As B4XDaisyStatItem`
- `StartAnimation`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getEqualWidths As Boolean`
- `setEqualWidths(Value As Boolean)`
- `getMaxWidth As Int`
- `setMaxWidth(Value As Int)`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `getLeft As Int`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

