# menu (`B4XDaisyMenu`)

Navigation or context menu with sections, items, submenus, badges, and active states.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyMenu`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyMenu.bas`
- **Verified Demos**: `B4XPageDropdown.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas`
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
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddDivider As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `AddTitle(Text As String) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `ClearActive`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetItemView(Index As Int) As B4XView`
- `GetPreferredHeight As Int`
- `GetPreferredWidth As Int`
- `Initialize(Callback As Object, EventName As String)`
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
- `SetLevelInternal(Level As Int)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetPopupMode(Value As Boolean)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `UpdateTheme`
- `View As B4XView`
- `getActiveBorder As Boolean`
- `getActiveColor As Int`
- `getActiveTextColor As Int`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBringToFront As Boolean`
- `getDebugDividerBorders As Boolean`
- `getDividerGap As String`
- `getDividers As Boolean`
- `getEnabled As Boolean`
- `getHeight As Float`
- `getLeft As Int`
- `getMargin As String`
- `getOrientation As String`
- `getPadding As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `setActiveBorder(Value As Boolean)`
- `setActiveColor(Value As Int)`
- `setActiveTextColor(Value As Int)`
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBringToFront(Value As Boolean)`
- `setDebugDividerBorders(Value As Boolean)`
- `setDividerGap(Value As String)`
- `setDividers(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As Object)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setOrientation(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
