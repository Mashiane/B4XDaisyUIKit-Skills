# dock (`B4XDaisyDock`)

Fixed bottom navigation dock bar with icons, labels, active tab indicators, and badges.

## 1. Overview
- **Class**: `B4XDaisyDock`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDock.bas`
- **Web DaisyUI Mapping**: `.dock` → `B4XDaisyDock`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim dck As B4XDaisyDock
dck.Initialize(Me, "dck")
dck.Size = "md"
dck.ActiveIndex = 1
dck.AddToParent(Root, 0, Root.Height - 64dip, Root.Width, 64dip)
dck.AddItem("home", "Home", "dock-home.svg")
dck.AddItem("search", "Search", "dock-search.svg")
```

## 3. Native Composition Rules & Gotchas
- Fixed bottom mobile navigation tab bar.
- Configure items before `AddToParent` or call `Refresh` after adding items dynamically.
- Add navigation tabs using `AddItem(Id, Title, IconAsset, BadgeText)`.
- Handle tab switching via the `DockItemClick (ItemId As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Size | Size | String | md | xs|sm|md|lg|xl |
| BadgeSize | Badge Size | String | auto | auto|xs|sm|md|lg|xl |
| ActiveIndex | Active Index | Int | 1 |  |
| ActivePosition | Active Position | String | bottom | bottom|top |
| Glass | Glass | Boolean | False |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Rounded | Rounded | String | none | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| Width | Width | String | w-full |  |
| Height | Height | String | auto |  |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `ItemClick (ItemId As String)`

## 6. Public Methods & APIs
- `AddItem(sId As String, sText As String, sSvgAssetFile As String) As Int`
- `AddItemWithVariant(sId As String, sText As String, sSvgAssetFile As String, sVariantName As String) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearItems`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveIndex As Int`
- `getActivePosition As String`
- `getBackgroundColor As Int`
- `getBadgeSize As String`
- `getEnabled As Boolean`
- `getGlass As Boolean`
- `getHeight As String`
- `getLeft As Int`
- `getRounded As String`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setActiveIndex(iValue As Int)`
- `setActivePosition(sValue As String)`
- `setBackgroundColor(iValue As Int)`
- `setBadgeSize(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setHeight(sValue As String)`
- `SetItemBadgeColor(sItemId As String, sVariantName As String)`
- `SetItemBadgeColorByIndex(iIndex As Int, sVariantName As String)`
- `SetItemBadgeDecrement(sItemId As String, iAmount As Int)`
- `SetItemBadgeDecrementByIndex(iIndex As Int, iAmount As Int)`
- `SetItemBadgeIncrement(sItemId As String, iAmount As Int)`
- `SetItemBadgeIncrementByIndex(iIndex As Int, iAmount As Int)`
- `SetItemBadgeValue(sItemId As String, sValue As String)`
- `SetItemBadgeValueByIndex(iIndex As Int, sValue As String)`
- `SetItemEnabled(sItemId As String, bValue As Boolean)`
- `SetItemEnabledByIndex(iIndex As Int, bValue As Boolean)`
- `SetItemTag(sItemId As String, oTagValue As Object)`
- `SetItemTagByIndex(iIndex As Int, oTagValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
