# drawer (`B4XDaisyDrawer`)

Full-screen or container-level sliding navigation drawer with left/right sidebars, collapsible navigation rail mode, backdrop overlay dismiss, edge swipe gesture handling, and hierarchical menu support.

## 1. Overview
- **Class**: `B4XDaisyDrawer`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDrawer.bas`
- **Web DaisyUI Mapping**: `.drawer`, `.drawer-side`, `.drawer-content`, `.drawer-toggle` → `B4XDaisyDrawer`

## 2. Verified B4X Syntax & Recipe

### Standard Full-Page Sliding Drawer with Top Navbar Hamburger Toggle:
```b4x
Private mainDrawer As B4XDaisyDrawer
Private topNavbar As B4XDaisyNavbar
Private sideMenu As B4XDaisyMenu
Private pageScroll As B4XDaisyPageScroll

Private Sub RenderFullPageDrawer(Width As Int, Height As Int)
    Root.RemoveAllViews

    ' 1. Mount fullscreen drawer container
    mainDrawer.Initialize(Me, "mainDrawer")
    mainDrawer.AddToParent(Root, 0, 0, Width, Height)
    mainDrawer.Side = "left"
    mainDrawer.LeftSideWidth = "300dip"

    ' 2. Mount Left Sidebar Menu inside mainDrawer.LeftPanel
    BuildLeftSidebar(mainDrawer.LeftPanel, 300dip, Height)

    ' 3. Mount Top Navbar inside mainDrawer.CenterPanel
    topNavbar.Initialize(Me, "topNavbar")
    topNavbar.AddToParent(mainDrawer.CenterPanel, 0, 0, Width, 56dip)
    topNavbar.Title = "DaisyUI Drawer"
    topNavbar.HamburgerVisible = True

    ' 4. Mount Content Scroll inside mainDrawer.CenterPanel
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(mainDrawer.CenterPanel, 0, 56dip, Width, Height - 56dip)
End Sub

Private Sub topNavbar_HamburgerClick(Tag As Object)
    mainDrawer.ToggleLeft
End Sub

Private Sub mainDrawer_Closed
    ' Drawer closed
End Sub

Private Sub mainDrawer_Opened
    ' Drawer opened
End Sub
```

### Collapsible Navigation Rail Mode:
```b4x
mainDrawer.Initialize(Me, "mainDrawer")
mainDrawer.AddToParent(Root, 0, 0, Width, Height)
mainDrawer.Side = "left"
mainDrawer.AlwaysOpen = True
mainDrawer.RailMode = True
mainDrawer.CollapseWidth = "64dip"
mainDrawer.NormalWidth = "260dip"
mainDrawer.SetIsCollapsed(True) ' Starts collapsed into compact rail
```

## 3. Native Composition Rules & Gotchas
- Mount all sidebar views (e.g. `B4XDaisyMenu`, user profile badges, logout buttons) directly into `mainDrawer.LeftPanel` (or `mainDrawer.RightPanel`).
- Mount all page content and top headers directly into `mainDrawer.CenterPanel`.
- To toggle sidebar visibility from buttons or navbars, call `mainDrawer.ToggleLeft` or `mainDrawer.ToggleRight`.
- `AlwaysOpen = True` keeps the sidebar permanently docked beside the center panel (desktop/tablet layout).
- `RailMode = True` enables smooth animation between `CollapseWidth` (icon-only rail) and `NormalWidth` (expanded sidebar) via `SetIsCollapsed(Boolean)`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Opened | Opened | Boolean | False |  |
| AlwaysOpen | Always Open | Boolean | False |  |
| Side | Side | String | left | left\|right\|both |
| LeftSideWidth | Left Side Width | String | 300dip |  |
| RightSideWidth | Right Side Width | String | 300dip |  |
| CollapseWidth | Collapse Width | String | 60dip |  |
| NormalWidth | Normal Width | String | 300dip |  |
| IsCollapsed | Is Collapsed | Boolean | False |  |
| RailWidth | Rail Width | String | 60dip |  |
| RailMode | Rail Mode | Boolean | False |  |
| GestureEnabled | Gesture / Swipe Enabled | Boolean | True |  |
| LeftSideBackgroundColor | Left Side Background Color | String | base-200 | base-100\|base-200\|base-300\|primary\|secondary\|accent\|neutral\|info\|success\|warning\|error |
| RightSideBackgroundColor | Right Side Background Color | String | base-200 | base-100\|base-200\|base-300\|primary\|secondary\|accent\|neutral\|info\|success\|warning\|error |
| ContentBackgroundColor | Content Background Color | String | none | none\|base-100\|base-200\|base-300\|primary\|secondary\|accent\|neutral\|info\|success\|warning\|error |
| OverlayColor | Overlay Color | Color | 0xFF000000 |  |
| OverlayOpacity | Overlay Opacity | Int | 40 |  |
| Rounded | Rounded | String | rounded-box | theme\|none\|rounded-none\|rounded-sm\|rounded\|rounded-md\|rounded-lg\|rounded-xl\|rounded-2xl\|rounded-3xl\|rounded-full\|rounded-box |
| Shadow | Shadow | String | lg | none\|xs\|sm\|md\|lg\|xl\|2xl |
| Padding | Padding | String | p-4 |  |
| Animated | Animated | Boolean | True |  |
| Duration | Duration | Int | 300 |  |

## 5. Declared Events
- `Closed`
- `Opened`
- `CloseClick (Tag As Object)`
- `StateChanged (Open As Boolean)`

## 6. Public Methods & APIs
- `AddToCenter(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToLeft(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToRight(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CenterPanel As B4XView`
- `ClearCenter`
- `ClearLeft`
- `ClearRight`
- `Close`
- `CloseLeft`
- `CloseRight`
- `CreateView(vParent As B4XView, oTag As Object) As B4XView`
- `DarkPanel As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAlwaysOpen As Boolean`
- `getAnimated As Boolean`
- `getBackgroundColorVariant As String`
- `getCollapsed As Boolean`
- `getCollapseWidth As String`
- `getContentBackgroundColor As String`
- `getDuration As Int`
- `getEnabled As Boolean`
- `getGestureEnabled As Boolean`
- `getHeight As Int`
- `getIsCollapsed As Boolean`
- `getIsOpen As Boolean`
- `getLeft As Int`
- `getLeftOpen As Boolean`
- `getLeftSideBackgroundColor As String`
- `getLeftSideWidth As String`
- `getNormalWidth As String`
- `getOpened As Boolean`
- `getOverlayColor As Int`
- `getOverlayOpacity As Int`
- `getPadding As String`
- `getRailWidth As String`
- `getRightOpen As Boolean`
- `getRightSideBackgroundColor As String`
- `getRightSideWidth As String`
- `getRounded As String`
- `getShadow As String`
- `getSide As String`
- `getSideBackgroundColor As String`
- `getSideWidth As String`
- `getTag As Object`
- `getTextColorVariant As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `LeftPanel As B4XView`
- `Open`
- `OpenLeft`
- `OpenRight`
- `Refresh`
- `RemoveViewFromParent`
- `Resize(iWidth As Int, iHeight As Int)`
- `RightPanel As B4XView`
- `SendToBack`
- `setAlwaysOpen(bValue As Boolean)`
- `setAnimated(bValue As Boolean)`
- `setBackgroundColorVariant(sValue As String)`
- `setCollapsed(bValue As Boolean)`
- `setCollapseWidth(sValue As String)`
- `setContentBackgroundColor(sValue As String)`
- `setDuration(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setGestureEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setIsCollapsed(bValue As Boolean)`
- `setIsOpen(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLeftOpen(bValue As Boolean)`
- `setLeftSideBackgroundColor(sValue As String)`
- `setLeftSideWidth(sValue As String)`
- `setNormalWidth(sValue As String)`
- `setOpened(bValue As Boolean)`
- `setOverlayColor(oValue As Object)`
- `setOverlayOpacity(iValue As Int)`
- `setPadding(sValue As String)`
- `setRailWidth(sValue As String)`
- `setRightOpen(bValue As Boolean)`
- `setRightSideBackgroundColor(sValue As String)`
- `setRightSideWidth(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSide(sValue As String)`
- `setSideBackgroundColor(sValue As String)`
- `setSideWidth(sValue As String)`
- `SetSideWidthAnimated(fWidth As Float, bSmooth As Boolean)`
- `setTag(oValue As Object)`
- `setTextColorVariant(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`

