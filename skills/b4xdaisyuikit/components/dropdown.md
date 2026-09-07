# dropdown (`B4XDaisyDropdown`)

DaisyUI `Dropdown` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDropdown`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDropdown.bas`
- **Verified Demo Source**: B4XPageDropdown.bas
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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Opened` | Opened | `Boolean` | False |  |
| `Placement` | Placement | `String` | start | start|center|end |
| `Direction` | Direction | `String` | bottom | top|bottom|left|right |
| `HoverOpen` | Hover Open | `Boolean` | False |  |
| `ForceOpen` | Force Open | `Boolean` | False |  |
| `ForceClose` | Force Close | `Boolean` | False |  |
| `MenuWidth` | Menu Width | `String` | w-52 |  |
| `MenuPadding` | Menu Padding | `String` | p-2 |  |
| `MenuRounded` | Menu Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `MenuShadow` | Menu Shadow | `String` | sm | none|xs|sm|md|lg|xl|2xl |
| `BringToFront` | Bring To Front | `Boolean` | True |  |
| `MenuBackgroundColor` | Menu Background Color | `Color` | 0x00000000 |  |
| `MenuTextColor` | Menu Text Color | `Color` | 0x00000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, IsOpen As Boolean)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `Open`
- `Close`
- `Toggle`
- `AddTitle(Text As String) As Int`
- `AddDivider As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `getMenu As B4XDaisyMenu`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `ScrollToItem(TagValue As Object)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `GetPreferredWidth As Int`
- `GetPreferredHeight As Int`
- `GetPreferredMenuWidth As Int`
- `GetPreferredMenuHeight As Int`
- `AttachTo(Target As B4XView) As B4XView`
- `Detach`
- `UpdateTheme`
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
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setHoverOpen(Value As Boolean)`
- `getHoverOpen As Boolean`
- `setForceOpen(Value As Boolean)`
- `getForceOpen As Boolean`
- `setForceClose(Value As Boolean)`
- `getForceClose As Boolean`
- `setAnchorTarget(Value As B4XView)`
- `getAnchorTarget As B4XView`
- `getAttachedMode As Boolean`
- `setMenuWidth(Value As String)`
- `getMenuWidth As String`
- `setMenuPadding(Value As String)`
- `getMenuPadding As String`
- `setMenuRounded(Value As String)`
- `getMenuRounded As String`
- `setMenuShadow(Value As String)`
- `getMenuShadow As String`
- `setBringToFront(Value As Boolean)`
- `getBringToFront As Boolean`
- `setMenuBackgroundColor(Value As Int)`
- `getMenuBackgroundColor As Int`
- `setMenuTextColor(Value As Int)`
- `getMenuTextColor As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

