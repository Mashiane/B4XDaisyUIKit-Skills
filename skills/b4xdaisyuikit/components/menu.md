# menu (`B4XDaisyMenu`)

DaisyUI `Menu` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyMenu`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyMenu.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyMenu.bas)
- **Verified Demo Source**: B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDropdown.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas
- **Web DaisyUI Mapping**: `.menu` → `B4XDaisyMenu`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``menu`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``menu-title`, `menu-dropdown`, `menu-dropdown-toggle`` | Sub-Panel | `GetTitlePanel`, `GetContentPanel`, `GetActionsPanel` | Mount child views inside target sub-panel |
| `modifier` | ``menu-disabled`, `menu-active`, `menu-focus`, `menu-dropdown-show`, `menu-paged`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `size` | ``menu-xs`, `menu-sm`, `menu-md`, `menu-lg`, `menu-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |
| `direction` | ``menu-vertical`, `menu-horizontal`` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |

### Web DaisyUI HTML Syntax
Vertical menu:
```html
<ul class="menu">
  <li><button>Item</button></li>
</ul>
```
Horizontal menu:
```html
<ul class="menu menu-horizontal">
  <li><button>Item</button></li>
</ul>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Vertical navigation menu with hierarchy:
Dim menu As B4XDaisyMenu
menu.Initialize(Me, "menu")
menu.AddToParent(pnlHost, 16dip, y, maxW, 180dip)
menu.Orientation = "vertical"
menu.Rounded = "rounded-box"
menu.Dividers = True

' Add top-level icon items:
menu.AddIconItem("dashboard", "Dashboard", "house-solid.svg")

' Add expandable submenu:
Dim subReports As B4XDaisyMenu = menu.AddSubmenu("reports", "Reports", True)
subReports.AddIconItem("sales", "Sales Report", "file-lines-solid.svg")
subReports.AddIconItem("inventory", "Inventory Count", "file-lines-solid.svg")

y = y + 180dip + 16dip

' Item click event:
Private Sub menu_ItemClick(Key As String)
	If B4XDaisyApp.DebugLogs Then Log("Menu selected: " & Key)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyMenu` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, AddIconBadgeChildItem, AddTitleChild` (+ 57 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-auto |  |
| `Padding` | Padding | `String` | p-2 |  |
| `Margin` | Margin | `String` |  |  |
| `Dividers` | Dividers | `Boolean` | True |  |
| `DividerGap` | Divider Gap | `String` | 1 |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Orientation` | Orientation | `String` | vertical | vertical|horizontal |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `BringToFront` | Bring To Front | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `ActiveColor` | Active Color | `Color` | 0x00000000 |  |
| `ActiveTextColor` | Active Text Color | `Color` | 0x00000000 |  |
| `ActiveBorder` | Active Border | `Boolean` | False |  |
| `AutoResize` | Auto Resize | `Boolean` | True |  |
| `BadgeSize` | Badge Size | `String` | auto | auto|xs|sm|md|lg|xl |
| `BadgeVariant` | Badge Variant | `String` | neutral | neutral|primary|secondary|accent|info|success|warning|error|ghost |
| `BadgeStyle` | Badge Style | `String` | solid | solid|outline|soft|dash |
| `RailMode` | Rail Mode | `Boolean` | False |  |
| `RightBorder` | Right Border | `Boolean` | False |  |
| `RightBorderColor` | Right Border Color | `Color` | 0x00000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, Open As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `AddTitle(Text As String) As Int`
- `AddDivider As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddAvatarItem(TagValue As Object, Text As String, Avatar As Object, AvatarShape As String) As Int`
- `AddAvatarBadgeItem(TagValue As Object, Text As String, Avatar As Object, AvatarShape As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddAvatarChildItem(ParentTag As Object, TagValue As Object, Text As String, Avatar As Object, AvatarShape As String) As Int`
- `AddAvatarBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, Avatar As Object, AvatarShape As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddItemParent(ParentTag As Object, TagValue As Object, Text As String, IconName As String) As B4XDaisyMenu`
- `AddItemChild(ParentTag As Object, TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddTitleChild(ParentTag As Object, Text As String) As Int`
- `AddDividerChild(ParentTag As Object) As Int`
- `FindSubmenuMenuByTag(TagValue As Object) As B4XDaisyMenu`
- `LoadFromList(lstItemsList As List)`
- `AddItems(lstItemsList As List)`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `ClearActive`
- `ScrollToItem(TagValue As Object)`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `SetItemBadgeVariant(TagValue As Object, Value As String)`
- `SetItemBadgeSize(TagValue As Object, Value As String)`
- `SetItemBadgeStyle(TagValue As Object, Value As String)`
- `SetItemBadgeRounded(TagValue As Object, Value As String)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `SetItemAvatar(TagValue As Object, Avatar As Object)`
- `SetItemAvatarShape(TagValue As Object, Shape As String)`
- `SetItemOpen(TagValue As Object, Value As Boolean)`
- `OpenParents`
- `CloseParents`
- `OpenAllSubmenus`
- `CloseAllSubmenus`
- `SetParentsOpen(OpenState As Boolean)`
- `GetItemView(Index As Int) As B4XView`
- `GetPreferredHeight As Int`
- `GetPreferredWidth As Int`
- `BeginUpdate`
- `EndUpdate`
- `setAutoRefresh(Value As Boolean)`
- `getAutoRefresh As Boolean`
- `SetLevelInternal(Level As Int)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetPopupMode(Value As Boolean)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setDividers(Value As Boolean)`
- `getDividers As Boolean`
- `setDividerGap(Value As String)`
- `getDividerGap As String`
- `setSize(Value As String)`
- `getSize As String`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBringToFront(Value As Boolean)`
- `getBringToFront As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setActiveColor(Value As Int)`
- `getActiveColor As Int`
- `setActiveTextColor(Value As Int)`
- `getActiveTextColor As Int`
- `setActiveBorder(Value As Boolean)`
- `getActiveBorder As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setBadgeVariant(Value As String)`
- `getBadgeVariant As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setBadgeRounded(Value As String)`
- `getBadgeRounded As String`
- `setRailMode(Value As Boolean, IntendedWidth As Int)`
- `getRailMode As Boolean`
- `setRightBorder(Value As Boolean)`
- `getRightBorder As Boolean`
- `setRightBorderColor(Value As Int)`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

