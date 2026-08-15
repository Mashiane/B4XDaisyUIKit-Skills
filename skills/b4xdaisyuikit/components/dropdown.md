# dropdown (`B4XDaisyDropdown`)

Popup menu anchored to a trigger view. Supports items, icon items, badge items, submenus, and both hover/click open modes.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyDropdown`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDropdown.bas`
- **Verified Demos**: `B4XPageDropdown.bas`
- **Web DaisyUI Mapping**: `.dropdown` → `B4XDaisyDropdown`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim dd As B4XDaisyDropdown
dd.Initialize(Me, "dd")
dd.AddToParent(pnlHost, pad, y, maxW, 44dip)
dd.Direction = "bottom"
dd.Placement = "start"

' Trigger view (attach a button)
Dim triggerBtn As B4XDaisyButton
triggerBtn.Initialize(Me, "triggerBtn")
triggerBtn.Text = "Options"
dd.AttachTo(triggerBtn.getView)

' Build the menu
Dim mnu As B4XDaisyMenu
mnu = dd.getMenu
mnu.AddItem("edit", "Edit")
mnu.AddIconItem("delete", "Delete", "trash-solid.svg")
mnu.AddDivider
mnu.AddItem("share", "Share")
y = y + dd.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Popover selection menu with trigger button and auto-positioning overlay.
- Populate choices via `Items` (List) or `AddItem(Id, Text, Icon)`.
- Set `Position` (`"top"`, `"bottom"`, `"left"`, `"right"`) to control popup direction.
- Handle selections in the `ItemClick (ItemId As String, Text As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Open | Open | Boolean | False |  |
| Placement | Placement | String | start | start|center|end |
| Direction | Direction | String | bottom | top|bottom|left|right |
| HoverOpen | Hover Open | Boolean | False |  |
| ForceOpen | Force Open | Boolean | False |  |
| ForceClose | Force Close | Boolean | False |  |
| MenuWidth | Menu Width | String | w-52 |  |
| MenuPadding | Menu Padding | String | p-2 |  |
| MenuRounded | Menu Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| MenuShadow | Menu Shadow | String | sm | none|xs|sm|md|lg|xl|2xl |
| BringToFront | Bring To Front | Boolean | True |  |
| MenuBackgroundColor | Menu Background Color | Color | 0x00000000 |  |
| MenuTextColor | Menu Text Color | Color | 0x00000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, IsOpen As Boolean)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddDivider As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `AddTitle(Text As String) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Close`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Detach`
- `GetComputedHeight As Int`
- `GetPreferredHeight As Int`
- `GetPreferredMenuHeight As Int`
- `GetPreferredMenuWidth As Int`
- `GetPreferredWidth As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `ScrollToItem(TagValue As Object)`
- `SendToBack`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
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
- `getOpen As Boolean`
- `getPlacement As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnchorTarget(Value As B4XView)`
- `setBringToFront(Value As Boolean)`
- `setDirection(Value As String)`
- `setEnabled(Value As Boolean)`
- `setForceClose(Value As Boolean)`
- `setForceOpen(Value As Boolean)`
- `setHeight(Value As Int)`
- `setHoverOpen(Value As Boolean)`
- `setLeft(Value As Int)`
- `setMenuBackgroundColor(Value As Int)`
- `setMenuPadding(Value As String)`
- `setMenuRounded(Value As String)`
- `setMenuShadow(Value As String)`
- `setMenuTextColor(Value As Int)`
- `setMenuWidth(Value As String)`
- `setOpen(Value As Boolean)`
- `setPlacement(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
