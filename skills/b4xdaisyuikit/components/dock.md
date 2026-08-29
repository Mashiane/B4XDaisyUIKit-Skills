# dock (`B4XDaisyDock`)

DaisyUI `Dock` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDock`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDock.bas`
- **Verified Demo Source**: B4XPageDock.bas (lines 17–419), B4XPageNavScrollDock.bas (lines 46–46)
- **Web DaisyUI Mapping**: `.dock` → `B4XDaisyDock`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``dock`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``dock-label`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `modifier` | ``dock-active`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `size` | ``dock-xs`, `dock-sm`, `dock-md`, `dock-lg`, `dock-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<div class="dock {MODIFIER}">{CONTENT}</div>
```
where content is a list of buttons:
```html
<button>
    <svg>{icon}</svg>
    <span class="dock-label">Text</span>
</button>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Dim cardDock As B4XView = AddPreviewCard(contentLeft, currentY, maxW, ResolvePreviewHeightDip("md"))
    Dim hostDock As B4XView = AddPreviewDockHost(cardDock, ResolveDockHeightDip("md"), True)
    Dim dockBase As B4XDaisyDock
    dockBase.Initialize(Me, "dockBase")
    dockBase.Size = "md"
    dockBase.ActiveIndex = 1
    dockBase.AddToParent(hostDock, 0, 0, hostDock.Width, 0)
    dockBase.AddItem("home", "Home", "dock-home.svg")
    dockBase.AddItem("inbox", "Inbox", "dock-inbox.svg")
    dockBase.AddItem("settings", "Settings", "dock-settings.svg")
    currentY = currentY + cardDock.Height + 18dip

    ''' <summary>
    ''' Example 2: Dock Extra Small size
    ''' </summary>
    currentY = AddSectionTitle(contentLeft, currentY, maxW, "Dock Extra Small size")
    currentY = AddDescription(contentLeft, currentY, maxW, "Extra small dock with icon-only items.")
    Dim cardXs As B4XView = AddPreviewCard(contentLeft, currentY, maxW, ResolvePreviewHeightDip("xs"))
    Dim hostXs As B4XView = AddPreviewDockHost(cardXs, ResolveDockHeightDip("xs"), True)
    Dim dockXs As B4XDaisyDock
    dockXs.Initialize(Me, "dockXs")
    dockXs.Size = "xs"
    dockXs.ActiveIndex = 1
    dockXs.AddToParent(hostXs, 0, 0, hostXs.Width, 0)
    dockXs.AddItem("xs-home", "", "dock-home.svg")
    dockXs.AddItem("xs-inbox", "", "dock-inbox.svg")
    dockXs.AddItem("xs-settings", "", "dock-settings.svg")
    currentY = currentY + cardXs.Height + 18dip

    ''' <summary>
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDock` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `ClearItems, SetItemTagByIndex, SetItemTag` (+ 26 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `BadgeSize` | Badge Size | `String` | `auto` | auto|xs|sm|md|lg|xl |
| `ActiveIndex` | Active Index | `Int` | `1` |  |
| `ActivePosition` | Active Position | `String` | `bottom` | bottom|top |
| `Glass` | Glass | `Boolean` | `False` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | `none` | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `auto` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

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
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
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
- `setActiveIndex(iValue As Int)`
- `setActivePosition(sValue As String)`
- `setBackgroundColor(iValue As Int)`
- `setBadgeSize(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyDock` is a bottom navigation bar.

```vb
Dim dock As B4XDaisyDock
dock.Initialize(Me, "dock")
dock.Size = "md"                               ' Set BEFORE AddToParent
dock.ActiveIndex = 0                           ' Set BEFORE AddToParent
dock.AddToParent(Root, 0, Root.Height - 64dip, Root.Width, 64dip)

' Add tab buttons:
dock.AddItem("home", "Home", "home-solid.svg")
dock.AddItem("scan", "Scan", "qrcode-solid.svg")
dock.AddItem("audit", "Audit", "clipboard-solid.svg")
dock.AddItem("settings", "Settings", "cog-solid.svg")

' Tab switch event:
Private Sub dock_ItemClick(Tag As Object)
    Dim sTab As String = Tag
    pgMain.ShowPageWithLoader(sTab)
End Sub
```
