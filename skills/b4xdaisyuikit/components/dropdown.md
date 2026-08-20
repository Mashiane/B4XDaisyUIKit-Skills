# dropdown (`B4XDaisyDropdown`)

Popup menu anchored to a trigger view. Supports items, icon items, badge items, submenus, and both hover/click open modes.

## 1. Overview
- **Class**: `B4XDaisyDropdown`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDropdown.bas`
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
| Opened | Opened | Boolean | False |  |
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
- `getAnchorTarget As B4XView`
- `getAttachedMode As Boolean`
- `getBringToFront As Boolean`
- `GetComputedHeight As Int`
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
- `GetPreferredHeight As Int`
- `GetPreferredMenuHeight As Int`
- `GetPreferredMenuWidth As Int`
- `GetPreferredWidth As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `ScrollToItem(oTagValue As Object)`
- `SendToBack`
- `setAnchorTarget(vValue As B4XView)`
- `setBringToFront(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setForceClose(bValue As Boolean)`
- `setForceOpen(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHoverOpen(bValue As Boolean)`
- `SetItemActive(oTagValue As Object, bValue As Boolean)`
- `SetItemBadgeBackgroundColor(oTagValue As Object, iColor As Int)`
- `SetItemBadgeText(oTagValue As Object, sValue As String)`
- `SetItemBadgeTextColor(oTagValue As Object, iColor As Int)`
- `SetItemDisabled(oTagValue As Object, bValue As Boolean)`
- `SetItemIcon(oTagValue As Object, sIconName As String)`
- `SetItemText(oTagValue As Object, sValue As String)`
- `SetItemVisible(oTagValue As Object, bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMenuBackgroundColor(iValue As Int)`
- `setMenuPadding(sValue As String)`
- `setMenuRounded(sValue As String)`
- `setMenuShadow(sValue As String)`
- `setMenuTextColor(iValue As Int)`
- `setMenuWidth(sValue As String)`
- `setOpened(bValue As Boolean)`
- `setPlacement(sValue As String)`
- `SetSubmenuOpen(iIndex As Int, bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
