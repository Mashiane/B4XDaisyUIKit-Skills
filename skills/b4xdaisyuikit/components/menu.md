# menu (`B4XDaisyMenu`)

Navigation or context menu with sections, items, submenus, badges, and active states.

## 1. Overview
- **Class**: `B4XDaisyMenu`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyMenu.bas`
- **Web DaisyUI Mapping**: `.menu` → `B4XDaisyMenu`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim mnu As B4XDaisyMenu
mnu.Initialize(Me, "mnu")
mnu.AddToParent(pnlHost, pad, y, maxW, 160dip)
mnu.AddItem("item1", "Profile", "user-solid.svg")
mnu.AddItem("item2", "Settings", "gear-solid.svg")
y = y + mnu.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Vertical multi-level navigation list with sub-menus and collapsible sections.
- Add top-level items using `AddMenuItem(Id, Text, IconAsset)`.
- Add collapsible nested items using `AddSubMenu(ParentId, Id, Text, IconAsset)`.
- Handle navigation taps via the `MenuClick (ItemId As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-auto |  |
| Padding | Padding | String | p-2 |  |
| Margin | Margin | String |  |  |
| Dividers | Dividers | Boolean | True |  |
| DividerGap | Divider Gap | String | 1 |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Orientation | Orientation | String | vertical | vertical|horizontal |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| BringToFront | Bring To Front | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| ActiveColor | Active Color | Color | 0x00000000 |  |
| ActiveTextColor | Active Text Color | Color | 0x00000000 |  |
| ActiveBorder | Active Border | Boolean | False |  |
| AutoResize | Auto Resize | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, Open As Boolean)`

## 6. Public Methods & APIs
- `AddAvatarBadgeChildItem(oParentTag As Object, oTagValue As Object, sText As String, oAvatar As Object, sAvatarShape As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddAvatarBadgeItem(oTagValue As Object, sText As String, oAvatar As Object, sAvatarShape As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddAvatarChildItem(oParentTag As Object, oTagValue As Object, sText As String, oAvatar As Object, sAvatarShape As String) As Int`
- `AddAvatarItem(oTagValue As Object, sText As String, oAvatar As Object, sAvatarShape As String) As Int`
- `AddBadgeChildItem(oParentTag As Object, oTagValue As Object, sText As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddBadgeItem(oTagValue As Object, sText As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddDivider As Int`
- `AddDividerChild(oParentTag As Object) As Int`
- `AddIconBadgeChildItem(oParentTag As Object, oTagValue As Object, sText As String, sIconName As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddIconBadgeItem(oTagValue As Object, sText As String, sIconName As String, sBadgeText As String, sBadgeVariant As String) As Int`
- `AddIconItem(oTagValue As Object, sText As String, sIconName As String) As Int`
- `AddItem(oTagValue As Object, sText As String) As Int`
- `AddItemChild(oParentTag As Object, oTagValue As Object, sText As String, sIconName As String) As Int`
- `AddItemParent(oParentTag As Object, oTagValue As Object, sText As String, sIconName As String) As B4XDaisyMenu`
- `AddItems(lstItemsList As List)`
- `AddSubmenu(oTagValue As Object, sText As String, bInitiallyOpen As Boolean) As B4XDaisyMenu`
- `AddTitle(sText As String) As Int`
- `AddTitleChild(oParentTag As Object, sText As String) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BeginUpdate`
- `Clear`
- `ClearActive`
- `CloseAllSubmenus`
- `CloseParents`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `EndUpdate`
- `FindSubmenuMenuByTag(oTagValue As Object) As B4XDaisyMenu`
- `getActiveBorder As Boolean`
- `getActiveColor As Int`
- `getActiveTextColor As Int`
- `getAutoRefresh As Boolean`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBadgeRounded As String`
- `getBadgeSize As String`
- `getBadgeStyle As String`
- `getBadgeVariant As String`
- `getBringToFront As Boolean`
- `GetComputedHeight As Int`
- `getDividerGap As String`
- `getDividers As Boolean`
- `getEnabled As Boolean`
- `getHeight As Float`
- `GetItemView(iIndex As Int) As B4XView`
- `getLeft As Int`
- `getMargin As String`
- `getOrientation As String`
- `getPadding As String`
- `GetPreferredHeight As Int`
- `GetPreferredWidth As Int`
- `getRailMode As Boolean`
- `getRightBorder As Boolean`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `LoadFromList(lstItemsList As List)`
- `OpenAllSubmenus`
- `OpenParents`
- `Refresh`
- `RemoveViewFromParent`
- `ScrollToItem(oTagValue As Object)`
- `SendToBack`
- `setActiveBorder(bValue As Boolean)`
- `setActiveColor(iValue As Int)`
- `setActiveTextColor(iValue As Int)`
- `setAutoRefresh(bValue As Boolean)`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBadgeRounded(sValue As String)`
- `setBadgeSize(sValue As String)`
- `setBadgeStyle(sValue As String)`
- `setBadgeVariant(sValue As String)`
- `setBringToFront(bValue As Boolean)`
- `setDividerGap(sValue As String)`
- `setDividers(bValue As Boolean)`
- `setEnabled(bValue As Boolean)`
- `setHeight(oValue As Object)`
- `SetItemActive(oTagValue As Object, bValue As Boolean)`
- `SetItemAvatar(oTagValue As Object, oAvatar As Object)`
- `SetItemAvatarShape(oTagValue As Object, sShape As String)`
- `SetItemBadgeBackgroundColor(oTagValue As Object, iColor As Int)`
- `SetItemBadgeRounded(oTagValue As Object, sValue As String)`
- `SetItemBadgeSize(oTagValue As Object, sValue As String)`
- `SetItemBadgeStyle(oTagValue As Object, sValue As String)`
- `SetItemBadgeText(oTagValue As Object, sValue As String)`
- `SetItemBadgeTextColor(oTagValue As Object, iColor As Int)`
- `SetItemBadgeVariant(oTagValue As Object, sValue As String)`
- `SetItemDisabled(oTagValue As Object, bValue As Boolean)`
- `SetItemIcon(oTagValue As Object, sIconName As String)`
- `SetItemOpen(oTagValue As Object, bValue As Boolean)`
- `SetItemText(oTagValue As Object, sValue As String)`
- `SetItemVisible(oTagValue As Object, bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `SetLevelInternal(iLevel As Int)`
- `setMargin(sValue As String)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetParentsOpen(bOpenState As Boolean)`
- `SetPopupMode(bValue As Boolean)`
- `setRailMode(bValue As Boolean, iIntendedWidth As Int)`
- `setRightBorder(bValue As Boolean)`
- `setRightBorderColor(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `SetSubmenuOpen(iIndex As Int, bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
