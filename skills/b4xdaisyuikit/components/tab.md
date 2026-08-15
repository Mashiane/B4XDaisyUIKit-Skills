# tab (`B4XDaisyTab`)

Tabbed panel selector with content panels, icon tabs, scrollable overflow, and placement.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTab`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTab.bas`
- **Verified Demos**: `B4XPageTab.bas`
- **Web DaisyUI Mapping**: `.tab` → `B4XDaisyTab`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tb As B4XDaisyTab
tb.Initialize(Me, "tb")
tb.AddToParent(pnlHost, pad, y, maxW, 300dip)
tb.ActiveColor = "primary"
tb.Style = "border"
tb.Size = "md"
tb.ActiveIndex = 0

tb.AddTab("Overview")
tb.AddTab("Details")
tb.AddTabWithIcon("Settings", "⚙")

' Add content for each tab
Dim pnl0 As Panel
pnl0.Initialize("")
' ... add children to pnl0 ...
tb.SetTabContent(0, pnl0)

y = y + tb.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Top tab navigation bar for switching between sub-views.
- Configure tab style via `TabStyle` (`"bordered"`, `"lifted"`, `"boxed"`).
- Add tabs using `AddTab(Id, Title, IconAsset)`.
- Bind tab content panels via `SetTabContent(Id, contentPanel)`.
- Handle tab switching in the `TabClick (TabId As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Style | Style | String | default | default|border|lift|box |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Placement | Placement | String | top | top|bottom |
| ActiveIndex | Active Index | Int | 0 |  |
| Scrollable | Scrollable | Boolean | False |  |
| Alignment | Alignment | String | center | left|center|right |
| ActiveColor | Active Color | String | primary | none|primary|secondary|accent|neutral|info|success|warning|error |
| Width | Width | String | w-full |  |
| Height | Height | String | h-auto |  |

## 5. Declared Events
- `TabClick (Index As Int)`

## 6. Public Methods & APIs
- `AddTab(Text As String)`
- `AddTabWithIcon(Text As String, IconText As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearTabs`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetTabContent(Index As Int) As B4XView`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeTab`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetTabContent(Index As Int, Content As B4XView)`
- `SetTabContentText(Index As Int, Text As String)`
- `SetTabDisabled(Index As Int, Disabled As Boolean)`
- `SetTabTitle(Index As Int, Text As String)`
- `SetTabTitleColor(Index As Int, Color As Int)`
- `SetTabTitleTextColor(Index As Int, Color As Int)`
- `SetTabVariant(Index As Int, Variant As String)`
- `SetTabs(TabsList As List)`
- `UpdateTheme`
- `getActiveColor As String`
- `getActiveIndex As Int`
- `getAlignment As String`
- `getEnabled As Boolean`
- `getHeight As String`
- `getLeft As Int`
- `getPlacement As String`
- `getScrollable As Boolean`
- `getSize As String`
- `getStyle As String`
- `getTabCount As Int`
- `getTag As Object`
- `getTop As Int`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As String`
- `setActiveColor(Value As String)`
- `setActiveIndex(Value As Int)`
- `setAlignment(Value As String)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setPlacement(Value As String)`
- `setScrollable(Value As Boolean)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
