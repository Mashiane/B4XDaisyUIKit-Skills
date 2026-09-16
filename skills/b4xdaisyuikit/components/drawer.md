# drawer (`B4XDaisyDrawer`)

DaisyUI `Drawer` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDrawer`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyDrawer.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyDrawer.bas)
- **Verified Demo Source**: B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas
- **Web DaisyUI Mapping**: `.drawer` → `B4XDaisyDrawer`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``drawer`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``drawer-toggle`, `drawer-content`, `drawer-side`, `drawer-overlay`, `drawer-button`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `placement` | ``drawer-end`` | Member | `.SetPlacement(...)` | Native configuration |
| `modifier` | ``drawer-open`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `variant` | ``is-drawer-open:`, `is-drawer-close:`` | Member | `.SetVariant(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="drawer {MODIFIER}">
  <input id="my-drawer" type="checkbox" class="drawer-toggle" />
  <div class="drawer-content">{CONTENT}</div>
  <div class="drawer-side">{SIDEBAR}</div>
</div>
```
where {CONTENT} can be navbar, site content, footer, etc
and {SIDEBAR} can be a menu like:
```html
<ul class="menu p-4 w-80 min-h-full bg-base-100 text-base-content">
  <li><a>Item 1</a></li>
  <li><a>Item 2</a></li>
</ul>
```
To open/close the drawer, use a label that points to the `drawer-toggle` input:
```html
<label for="my-drawer" class="btn drawer-button">Open/close drawer</label>
```
Example: This sidebar is always visible on large screen, can be toggled on small screen:
```html
<div class="drawer lg:drawer-open">
  <input id="my-drawer-3" type="checkbox" class="drawer-toggle" />
  <div class="drawer-content flex flex-col items-center justify-center">
    <!-- Page content here -->
    <label for="my-drawer-3" class="btn drawer-button lg:hidden">
      Open drawer
    </label>
  </div>
  <div class="drawer-side">
    <label for="my-drawer-3" aria-label="close sidebar" class="drawer-overlay"></label>
    <ul class="menu bg-base-200 min-h-full w-80 p-4">
      <!-- Sidebar content here -->
      <li><button>Sidebar Item 1</button></li>
      <li><button>Sidebar Item 2</button></li>
    </ul>
  </div>
</div>
```

Example: This sidebar is always visible. When it's close we only see icons, when it's open we see icons and text
```html
<div class="drawer lg:drawer-open">
  <input id="my-drawer-4" type="checkbox" class="drawer-toggle" />
  <div class="drawer-content">
    <!-- Page content here -->
  </div>
  <div class="drawer-side is-drawer-close:overflow-visible">
    <label for="my-drawer-4" aria-label="close sidebar" class="drawer-overlay"></label>
    <div class="is-drawer-close:w-14 is-drawer-open:w-64 bg-base-200 flex flex-col items-start min-h-full">
      <!-- Sidebar content here -->
      <ul class="menu w-full grow">
        <!-- list item -->
        <li>
          <button class="is-drawer-close:tooltip is-drawer-close:tooltip-right" data-tip="Homepage">
            {ICON_HERE}
            <span class="is-drawer-close:hidden">Homepage</span>
          </button>
        </li>
        <!-- list item -->
        <li>
          <button class="is-drawer-close:tooltip is-drawer-close:tooltip-right" data-tip="Settings">
            {ICON_HERE}
            <span class="is-drawer-close:hidden">Settings</span>
          </button>
        </li>
      </ul>
      <!-- button to open/close drawer -->
      <div class="m-2 is-drawer-close:tooltip is-drawer-close:tooltip-right" data-tip="Open">
        <label for="my-drawer-4" class="btn btn-ghost btn-circle drawer-button is-drawer-open:rotate-y-180">
          {ICON_HERE}
        </label>
      </div>
    </div>
  </div>
</div>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Page drawer layout with side panel and center content:
Dim mainDrawer As B4XDaisyDrawer
mainDrawer.Initialize(Me, "mainDrawer")
mainDrawer.AddToParent(Root, 0, 0, Root.Width, Root.Height)

' Mount sidebar menu into LeftPanel:
Dim sideMenu As B4XDaisyMenu
sideMenu.Initialize(Me, "sideMenu")
sideMenu.AddToParent(mainDrawer.LeftPanel, 0, 0, 240dip, Root.Height)
sideMenu.AddIconItem("dashboard", "Dashboard", "house-solid.svg")
sideMenu.AddIconItem("settings", "Settings", "gear-solid.svg")

' Mount top navigation into CenterPanel:
Dim topNavbar As B4XDaisyNavbar
topNavbar.Initialize(Me, "topNavbar")
topNavbar.AddToParent(mainDrawer.CenterPanel, 0, 0, Root.Width, 48dip)
topNavbar.Title = "My Application"

' Toggle sidebar drawer open/closed:
mainDrawer.Toggle
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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Opened` | Opened | `Boolean` | False |  |
| `AlwaysOpen` | Always Open | `Boolean` | False |  |
| `Side` | Side | `String` | left | left|right|both |
| `LeftSideWidth` | Left Side Width | `String` | 300dip |  |
| `RightSideWidth` | Right Side Width | `String` | 300dip |  |
| `CollapseWidth` | Collapse Width | `String` | 60dip |  |
| `NormalWidth` | Normal Width | `String` | 300dip |  |
| `IsCollapsed` | Is Collapsed | `Boolean` | False |  |
| `RailWidth` | Rail Width | `String` | 60dip |  |
| `RailMode` | Rail Mode | `Boolean` | False |  |
| `GestureEnabled` | Gesture / Swipe Enabled | `Boolean` | True |  |
| `LeftSideBackgroundColor` | Left Side Background Color | `String` | base-200 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `RightSideBackgroundColor` | Right Side Background Color | `String` | base-200 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `ContentBackgroundColor` | Content Background Color | `String` | none | none|base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `OverlayColor` | Overlay Color | `Color` | 0xFF000000 |  |
| `OverlayOpacity` | Overlay Opacity | `Int` | 40, MinRange: 0, MaxRange: 100 |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| `Shadow` | Shadow | `String` | lg | none|xs|sm|md|lg|xl|2xl |
| `Padding` | Padding | `String` | p-4 |  |
| `Animated` | Animated | `Boolean` | True |  |
| `Duration` | Duration | `Int` | 300, MinRange: 0, MaxRange: 2000 |  |

## 5. Declared Events
- `Closed`
- `Opened`
- `CloseClick (Tag As Object)`
- `StateChanged (Open As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CenterPanel As B4XView`
- `LeftPanel As B4XView`
- `RightPanel As B4XView`
- `DarkPanel As B4XView`
- `AddToCenter(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToLeft(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToRight(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearCenter`
- `ClearLeft`
- `ClearRight`
- `getLeftOpen As Boolean`
- `setLeftOpen(Value As Boolean)`
- `OpenLeft`
- `CloseLeft`
- `getRightOpen As Boolean`
- `setRightOpen(Value As Boolean)`
- `OpenRight`
- `CloseRight`
- `Open`
- `Close`
- `Toggle`
- `getIsOpen As Boolean`
- `setIsOpen(Value As Boolean)`
- `SetSideWidthAnimated(Width As Float, Smooth As Boolean)`
- `setSideWidth(Value As String)`
- `getSideWidth As String`
- `setLeftSideWidth(Value As String)`
- `getLeftSideWidth As String`
- `setRightSideWidth(Value As String)`
- `getRightSideWidth As String`
- `setCollapseWidth(Value As String)`
- `getCollapseWidth As String`
- `setRailWidth(Value As String)`
- `getRailWidth As String`
- `setNormalWidth(Value As String)`
- `getNormalWidth As String`
- `setIsCollapsed(Value As Boolean)`
- `getIsCollapsed As Boolean`
- `setCollapsed(Value As Boolean)`
- `getCollapsed As Boolean`
- `getGestureEnabled As Boolean`
- `setGestureEnabled(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAlwaysOpen(Value As Boolean)`
- `getAlwaysOpen As Boolean`
- `setSide(Value As String)`
- `getSide As String`
- `setLeftSideBackgroundColor(Value As String)`
- `getLeftSideBackgroundColor As String`
- `setRightSideBackgroundColor(Value As String)`
- `getRightSideBackgroundColor As String`
- `setSideBackgroundColor(Value As String)`
- `getSideBackgroundColor As String`
- `setContentBackgroundColor(Value As String)`
- `getContentBackgroundColor As String`
- `setOverlayColor(Value As Object)`
- `getOverlayColor As Int`
- `setOverlayOpacity(Value As Int)`
- `getOverlayOpacity As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setBackgroundColorVariant(Value As String)`
- `getBackgroundColorVariant As String`
- `setTextColorVariant(Value As String)`
- `getTextColorVariant As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Parent As B4XView, Tag As Object) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
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
- `RemoveViewFromParent`
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`

## 7. Public Fields
- `mBase As B4XView`

