# drawer (`B4XDaisyDrawer`)

DaisyUI `Drawer` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDrawer`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyDrawer.bas`
- **Verified Demo Source**: B4XPageDrawer.bas (lines 15–15), B4XPageDrawerRail.bas (lines 15–15), B4XPageDrawerTree.bas (lines 15–15)
- **Web DaisyUI Mapping**: `.drawer` → `B4XDaisyDrawer`

## 2. Verified B4X Syntax & Recipe
```b4x
' 1. FULLSCREEN ROOT DRAWER (Left side only, AlwaysOpen = False by default)
	' -
	mainDrawer.Initialize(Me, "mainDrawer")
	mainDrawer.AddToParent(Root, 0, 0, Width, Height)

	' -
	' 2. LEFT SIDEBAR MENU (Inside mainDrawer.LeftPanel)
	' -
	BuildLeftSidebar(mainDrawer.LeftPanel, SIDEBAR_WIDTH, Height)

	' -
	' 3. TOP NAVBAR (Inside mainDrawer.CenterPanel)
	' -
	topNavbar.Initialize(Me, "topNavbar")
	topNavbar.AddToParent(mainDrawer.CenterPanel, 0, 0, Width, NAVBAR_HEIGHT)
	topNavbar.Variant = "base-100"
	topNavbar.Shadow = "sm"
	topNavbar.Title = "DaisyUI Drawer"
	topNavbar.TitlePosition = "center"

	' Enable built-in Hamburger menu button (Toggles the drawer)
	topNavbar.HamburgerVisible = True

	' -
	' 4. CENTER DAISYUI PAGE SCROLL CONTAINER
	' -
	Dim contentH As Int = Max(1dip, Height - NAVBAR_HEIGHT)
	pageScroll.Initialize(Me, "pageScroll")
	pageScroll.AddToParent(mainDrawer.CenterPanel, 0, NAVBAR_HEIGHT, Width, contentH)
	pageScroll.Transparent = True
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDrawer` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Container layout requiring assignment of dual panels (Content and Drawer/Side) and state toggling.

### Deviation Mechanism
- Container layout requiring assignment of dual panels (Content and Drawer/Side) and state toggling.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `RightPanel, DarkPanel, AddToCenter` (+ 58 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Opened` | Opened | `Boolean` | `False` |  |
| `AlwaysOpen` | Always Open | `Boolean` | `False` |  |
| `Side` | Side | `String` | `left` | left|right|both |
| `LeftSideWidth` | Left Side Width | `String` | `300dip` |  |
| `RightSideWidth` | Right Side Width | `String` | `300dip` |  |
| `CollapseWidth` | Collapse Width | `String` | `60dip` |  |
| `NormalWidth` | Normal Width | `String` | `300dip` |  |
| `IsCollapsed` | Is Collapsed | `Boolean` | `False` |  |
| `RailWidth` | Rail Width | `String` | `60dip` |  |
| `RailMode` | Rail Mode | `Boolean` | `False` |  |
| `GestureEnabled` | Gesture / Swipe Enabled | `Boolean` | `True` |  |
| `LeftSideBackgroundColor` | Left Side Background Color | `String` | `base-200` | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `RightSideBackgroundColor` | Right Side Background Color | `String` | `base-200` | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `ContentBackgroundColor` | Content Background Color | `String` | `none` | none|base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `OverlayColor` | Overlay Color | `Color` | `0xFF000000` |  |
| `OverlayOpacity` | Overlay Opacity | `Int` | `40` |  |
| `Rounded` | Rounded | `String` | `rounded-box` | theme|none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| `Shadow` | Shadow | `String` | `lg` | none|xs|sm|md|lg|xl|2xl |
| `Padding` | Padding | `String` | `p-4` |  |
| `Animated` | Animated | `Boolean` | `True` |  |
| `Duration` | Duration | `Int` | `300` |  |

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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetSideWidthAnimated(fWidth As Float, bSmooth As Boolean)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`
- `getAlwaysOpen As Boolean`
- `getAnimated As Boolean`
- `getBackgroundColorVariant As String`
- `getCollapseWidth As String`
- `getCollapsed As Boolean`
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
- `setAlwaysOpen(bValue As Boolean)`
- `setAnimated(bValue As Boolean)`
- `setBackgroundColorVariant(sValue As String)`
- `setCollapseWidth(sValue As String)`
- `setCollapsed(bValue As Boolean)`
- `setContentBackgroundColor(sValue As String)`
- `setDuration(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setGestureEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setIsCollapsed(bValue As Boolean)`
- `setIsOpen(bValue As Boolean)`
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
- `setTag(oValue As Object)`
- `setTextColorVariant(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

