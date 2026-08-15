# dock (`B4XDaisyDock`)

Fixed bottom navigation dock bar with icons, labels, active tab indicators, and badges.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyDock`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDock.bas`
- **Verified Demos**: `B4XPageDock.bas, B4XPageNavScrollDock.bas`
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
- `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int`
- `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearItems`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemBadgeColor(ItemId As String, VariantName As String)`
- `SetItemBadgeColorByIndex(Index As Int, VariantName As String)`
- `SetItemBadgeDecrement(ItemId As String, Amount As Int)`
- `SetItemBadgeDecrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeIncrement(ItemId As String, Amount As Int)`
- `SetItemBadgeIncrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeValue(ItemId As String, Value As String)`
- `SetItemBadgeValueByIndex(Index As Int, Value As String)`
- `SetItemEnabled(ItemId As String, Value As Boolean)`
- `SetItemEnabledByIndex(Index As Int, Value As Boolean)`
- `SetItemTag(ItemId As String, TagValue As Object)`
- `SetItemTagByIndex(Index As Int, TagValue As Object)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `UpdateTheme`
- `View As B4XView`
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
- `setActiveIndex(Value As Int)`
- `setActivePosition(Value As String)`
- `setBackgroundColor(Value As Int)`
- `setBadgeSize(Value As String)`
- `setEnabled(Value As Boolean)`
- `setGlass(Value As Boolean)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
