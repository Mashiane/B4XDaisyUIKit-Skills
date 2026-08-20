# tab (`B4XDaisyTab`)

Tabbed panel selector with content panels, icon tabs, scrollable overflow, and placement.

## 1. Overview
- **Class**: `B4XDaisyTab`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTab.bas`
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
- `AddTab(sText As String)`
- `AddTabWithIcon(sText As String, sIconText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearTabs`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As String`
- `getActiveIndex As Int`
- `getAlignment As String`
- `GetComputedHeight As Int`
- `getEnabled As Boolean`
- `getHeight As String`
- `getLeft As Int`
- `getPlacement As String`
- `getScrollable As Boolean`
- `getSize As String`
- `getStyle As String`
- `GetTabContent(iIndex As Int) As B4XView`
- `getTabCount As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeTab`
- `SendToBack`
- `setActiveColor(sValue As String)`
- `setActiveIndex(iValue As Int)`
- `setAlignment(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setPlacement(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `SetTabContent(iIndex As Int, vContent As B4XView)`
- `SetTabContentText(iIndex As Int, sText As String)`
- `SetTabDisabled(iIndex As Int, bDisabled As Boolean)`
- `SetTabs(lstTabsList As List)`
- `SetTabTitle(iIndex As Int, sText As String)`
- `SetTabTitleColor(iIndex As Int, iColor As Int)`
- `SetTabTitleTextColor(iIndex As Int, iColor As Int)`
- `SetTabVariant(iIndex As Int, sVariant As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
