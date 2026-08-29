# dropdown (`B4XDaisyDropdown`)

DaisyUI `Dropdown` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDropdown`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDropdown.bas`
- **Verified Demo Source**: B4XPageDropdown.bas (lines 78–388)
- **Web DaisyUI Mapping**: `.dropdown` → `B4XDaisyDropdown`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``dropdown`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``dropdown-content`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `placement` | ``dropdown-start`, `dropdown-center`, `dropdown-end`, `dropdown-top`, `dropdown-bottom`, `dropdown-left`, `dropdown-right`` | Member | `.SetPlacement(...)` | Native configuration |
| `modifier` | ``dropdown-hover`, `dropdown-open`, `dropdown-close`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |

### Web DaisyUI HTML Syntax
Using popover API
```html
<button popovertarget="{id}" style="anchor-name:--{anchor}">{button}</button>
<ul class="dropdown" popover id="{id}" style="position-anchor:--{anchor}">{CONTENT}</ul>
```

Using details and summary (only opens/closes on click)
```html
<details class="dropdown">
  <summary>Button</summary>
  <ul class="dropdown-content">{CONTENT}</ul>
</details>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub ExampleNotificationBell(Y As Int, Width As Int) As Int
    Y = AddSectionTitle("Notification bell", Y, Width)
    Y = AddSectionNote("An SVG bell icon acts as the trigger. A red indicator badge shows unread count. The menu lists mixed single-line and multi-line notifications.", Y, Width)

    Dim iconSize As Int = 48dip
    Dim iconPad As Int = 12dip

    ' Container row ? needed so the indicator badge can overflow the bell without being clipped
    Dim row As B4XView = xui.CreatePanel("")
    row.Color = xui.Color_Transparent
    B4XDaisyVariants.DisableClipping(row)
    pnlHost.AddView(row, PAGE_PAD, Y, iconSize + iconPad * 2, iconSize + iconPad * 2)

    ' Bell SVG icon ? the visual trigger, centered in row with padding
    Dim bell As B4XDaisySvgIcon
    bell.Initialize(Me, "bell")
    Dim bellView As B4XView = bell.AddToParent(row, iconPad, iconPad, iconSize, iconSize)
    bell.SvgAsset = "bell-solid.svg"
    bell.ColorVariant = "base-content"
    bell.Padding = 8dip

    ' Red counter indicator overlaid top-right of the bell
    Dim ind As B4XDaisyIndicator
    ind.Initialize(Me, "ind")
    ind.AddToParent(row, iconPad, iconPad, iconSize, iconSize)
    ind.setCounter(True)
    ind.setText("3")
    ind.setVariant("error")
    ind.setSize("xs")
    ind.setHorizontalPlacement("end")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDropdown` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getMenu, GetPreferredMenuWidth, Detach` (+ 37 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Opened` | Opened | `Boolean` | `False` |  |
| `Placement` | Placement | `String` | `start` | start|center|end |
| `Direction` | Direction | `String` | `bottom` | top|bottom|left|right |
| `HoverOpen` | Hover Open | `Boolean` | `False` |  |
| `ForceOpen` | Force Open | `Boolean` | `False` |  |
| `ForceClose` | Force Close | `Boolean` | `False` |  |
| `MenuWidth` | Menu Width | `String` | `w-52` |  |
| `MenuPadding` | Menu Padding | `String` | `p-2` |  |
| `MenuRounded` | Menu Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `MenuShadow` | Menu Shadow | `String` | `sm` | none|xs|sm|md|lg|xl|2xl |
| `BringToFront` | Bring To Front | `Boolean` | `True` |  |
| `MenuBackgroundColor` | Menu Background Color | `Color` | `0x00000000` |  |
| `MenuTextColor` | Menu Text Color | `Color` | `0x00000000` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, IsOpen As Boolean)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `AddBadgeItem(oTagValue As Object, sText As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddDivider As Int`
- `AddIconBadgeItem(oTagValue As Object, sText As String, sIconName As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddIconItem(oTagValue As Object, sText As String, sIconName As String) As Int`
- `AddItem(oTagValue As Object, sText As String) As Int`
- `AddSubmenu(oTagValue As Object, sText As String, bInitiallyOpen As Boolean) As B4XDaisyMenu`
- `AddTitle(sText As String) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Close`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Detach`
- `GetComputedHeight As Int`
- `GetPreferredHeight As Int`
- `GetPreferredMenuHeight As Int`
- `GetPreferredMenuWidth As Int`
- `GetPreferredWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `ScrollToItem(oTagValue As Object)`
- `SendToBack`
- `SetItemActive(oTagValue As Object, bValue As Boolean)`
- `SetItemBadgeBackgroundColor(oTagValue As Object, iColor As Int)`
- `SetItemBadgeText(oTagValue As Object, sValue As String)`
- `SetItemBadgeTextColor(oTagValue As Object, iColor As Int)`
- `SetItemDisabled(oTagValue As Object, bValue As Boolean)`
- `SetItemIcon(oTagValue As Object, sIconName As String)`
- `SetItemText(oTagValue As Object, sValue As String)`
- `SetItemVisible(oTagValue As Object, bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetSubmenuOpen(iIndex As Int, bValue As Boolean)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`
- `getAnchorTarget As B4XView`
- `getAttachedMode As Boolean`
- `getBringToFront As Boolean`
- `getDirection As String`
- `getEnabled As Boolean`
- `getForceClose As Boolean`
- `getForceOpen As Boolean`
- `getHeight As Int`
- `getHoverOpen As Boolean`
- `getLeft As Int`
- `getMenu As B4XDaisyMenu`
- `getMenuBackgroundColor As Int`
- `getMenuPadding As String`
- `getMenuRounded As String`
- `getMenuShadow As String`
- `getMenuTextColor As Int`
- `getMenuWidth As String`
- `getOpened As Boolean`
- `getPlacement As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnchorTarget(vValue As B4XView)`
- `setBringToFront(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setForceClose(bValue As Boolean)`
- `setForceOpen(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHoverOpen(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setMenuBackgroundColor(iValue As Int)`
- `setMenuPadding(sValue As String)`
- `setMenuRounded(sValue As String)`
- `setMenuShadow(sValue As String)`
- `setMenuTextColor(iValue As Int)`
- `setMenuWidth(sValue As String)`
- `setOpened(bValue As Boolean)`
- `setPlacement(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

