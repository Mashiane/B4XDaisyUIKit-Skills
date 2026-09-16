# dock (`B4XDaisyDock`)

DaisyUI `Dock` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDock`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyDock.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyDock.bas)
- **Verified Demo Source**: B4XPageDock.bas, B4XPageNavScrollDock.bas
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

## 2. Verified B4XOrigin Syntax & Recipe
## 2. Verified B4X Syntax & Recipe

```b4x
' Floating bottom macOS-style navigation dock:
Dim dock As B4XDaisyDock
dock.Initialize(Me, "dock")
dock.Size = "md"
dock.ActiveIndex = 0
dock.AddToParent(Root, 16dip, Root.Height - 70dip, Root.Width - 32dip, 60dip)

' Add navigation items (key, text, iconPath):
dock.AddItem("home", "Home", "dock-home.svg")
dock.AddItem("inbox", "Inbox", "dock-inbox.svg")
dock.AddItem("settings", "Settings", "dock-settings.svg")

' Item selection event:
Private Sub dock_ItemClick(Index As Int, Key As String)
	If B4XDaisyApp.DebugLogs Then Log("Dock item tapped: " & Key)
End Sub
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
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `BadgeSize` | Badge Size | `String` | auto | auto|xs|sm|md|lg|xl |
| `ActiveIndex` | Active Index | `Int` | 1 |  |
| `ActivePosition` | Active Position | `String` | bottom | bottom|top |
| `Glass` | Glass | `Boolean` | False |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | none | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | auto |  |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `ItemClick (ItemId As String)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int`
- `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int`
- `ClearItems`
- `SetItemTagByIndex(Index As Int, TagValue As Object)`
- `SetItemTag(ItemId As String, TagValue As Object)`
- `SetItemEnabledByIndex(Index As Int, Value As Boolean)`
- `SetItemEnabled(ItemId As String, Value As Boolean)`
- `SetItemBadgeValueByIndex(Index As Int, Value As String)`
- `SetItemBadgeValue(ItemId As String, Value As String)`
- `SetItemBadgeColorByIndex(Index As Int, VariantName As String)`
- `SetItemBadgeColor(ItemId As String, VariantName As String)`
- `SetItemBadgeIncrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeIncrement(ItemId As String, Amount As Int)`
- `SetItemBadgeDecrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeDecrement(ItemId As String, Amount As Int)`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `setSize(Value As String)`
- `getSize As String`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setActiveIndex(Value As Int)`
- `getActiveIndex As Int`
- `setActivePosition(Value As String)`
- `getActivePosition As String`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

