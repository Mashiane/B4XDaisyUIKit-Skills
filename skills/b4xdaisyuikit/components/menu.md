# menu (`B4XDaisyMenu`)

DaisyUI `Menu` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyMenu`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyMenu.bas`
- **Verified Demo Source**: B4XPageDrawer.bas (lines 17–17), B4XPageDrawerRail.bas (lines 17–17), B4XPageDrawerTree.bas (lines 17–17), B4XPageDropdown.bas (lines 77–77), B4XPageMenu.bas (lines 80–417), B4XPageMenuRuntime.bas (lines 20–159), B4XPageMenuRuntime2.bas (lines 20–20)
- **Web DaisyUI Mapping**: `.menu` → `B4XDaisyMenu`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub ExampleFileTree(Y As Int, Width As Int) As Int
    Y = AddSectionTitle("File tree", Y, Width)
    Dim menu As B4XDaisyMenu = CreateMenu("menu-file-tree", "vertical", "md")
    menu.AddIconItem("resume.pdf", "resume.pdf", "file-lines-solid.svg")
    Dim rootFiles As B4XDaisyMenu = menu.AddSubmenu("my-files", "My Files", True)
    rootFiles.AddIconItem("Project", "Project", "folder-solid.svg")
    Dim images As B4XDaisyMenu = rootFiles.AddSubmenu("Images", "Images", True)
    images.AddIconItem("hero.png", "hero.png", "image-solid.svg")
    images.AddIconItem("logo.png", "logo.png", "image-solid.svg")
    Dim docs As B4XDaisyMenu = rootFiles.AddSubmenu("Documents", "Documents", True)
    docs.AddIconItem("Notes.txt", "Notes.txt", "file-lines-solid.svg")
    docs.AddIconItem("Invoice.pdf", "Invoice.pdf", "file-lines-solid.svg")
    Return AddMenuBlock(menu, Y, Width)
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
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-auto` |  |
| `Padding` | Padding | `String` | `p-2` |  |
| `Margin` | Margin | `String` | `` |  |
| `Dividers` | Dividers | `Boolean` | `True` |  |
| `DividerGap` | Divider Gap | `String` | `1` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Orientation` | Orientation | `String` | `vertical` | vertical|horizontal |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `BringToFront` | Bring To Front | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `ActiveColor` | Active Color | `Color` | `0x00000000` |  |
| `ActiveTextColor` | Active Text Color | `Color` | `0x00000000` |  |
| `ActiveBorder` | Active Border | `Boolean` | `False` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |
| `BadgeSize` | Badge Size | `String` | `auto` | auto|xs|sm|md|lg|xl |
| `BadgeVariant` | Badge Variant | `String` | `neutral` | neutral|primary|secondary|accent|info|success|warning|error|ghost |
| `BadgeStyle` | Badge Style | `String` | `solid` | solid|outline|soft|dash |
| `RailMode` | Rail Mode | `Boolean` | `False` |  |
| `RightBorder` | Right Border | `Boolean` | `False` |  |
| `RightBorderColor` | Right Border Color | `Color` | `0x00000000` |  |

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
- `GetComputedHeight As Int`
- `GetItemView(iIndex As Int) As B4XView`
- `GetPreferredHeight As Int`
- `GetPreferredWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `LoadFromList(lstItemsList As List)`
- `OpenAllSubmenus`
- `OpenParents`
- `Refresh`
- `RemoveViewFromParent`
- `ScrollToItem(oTagValue As Object)`
- `SendToBack`
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
- `SetLevelInternal(iLevel As Int)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetParentsOpen(bOpenState As Boolean)`
- `SetPopupMode(bValue As Boolean)`
- `SetSubmenuOpen(iIndex As Int, bValue As Boolean)`
- `UpdateTheme`
- `View As B4XView`
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
- `getDividerGap As String`
- `getDividers As Boolean`
- `getEnabled As Boolean`
- `getHeight As Float`
- `getLeft As Int`
- `getMargin As String`
- `getOrientation As String`
- `getPadding As String`
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
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setRailMode(bValue As Boolean, iIntendedWidth As Int)`
- `setRightBorder(bValue As Boolean)`
- `setRightBorderColor(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

