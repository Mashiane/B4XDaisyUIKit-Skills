# pagination (`B4XDaisyPagination`)

DaisyUI `Pagination` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPagination`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyPagination.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyPagination.bas)
- **Verified Demo Source**: B4XPagePagination.bas
- **Web DaisyUI Mapping**: `.pagination` → `B4XDaisyPagination`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``join`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``join-item`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `direction` | ``join-vertical`, `join-horizontal`` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |

### Web DaisyUI HTML Syntax
```html
<div class="join">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Page navigation button strip:
Dim pag As B4XDaisyPagination
pag.Initialize(Me, "pag")
pag.PageCount = 5
pag.ActiveIndex = 1
pag.Size = "md"
pag.AddToParent(pnlHost, 16dip, y, maxW, 44dip)

y = y + 44dip + 16dip

' Page change event (Index is 1-indexed):
Private Sub pag_PageChange(Index As Int)
	If B4XDaisyApp.DebugLogs Then Log("Selected page: " & Index)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyPagination` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getVisible, getSize, getStyle` (+ 39 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Style` | Style | `String` | solid | solid|outline|ghost|link|soft|dash |
| `ActiveColor` | Active Color | `String` | primary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `ActiveIndex` | Active Index | `Int` | 0 |  |
| `Disabled` | Disabled | `Boolean` | False |  |
| `ShowPrevNext` | Show Prev/Next | `Boolean` | True |  |
| `PrevText` | Prev Text | `String` | chevron-left-solid.svg |  |
| `NextText` | Next Text | `String` | chevron-right-solid.svg |  |
| `ShowFirstLast` | Show First/Last | `Boolean` | False |  |
| `FirstText` | First Text | `String` | angles-left-solid.svg |  |
| `LastText` | Last Text | `String` | angles-right-solid.svg |  |
| `ShowPageNumbers` | Show Page Numbers | `Boolean` | True |  |
| `PageCount` | Page Count | `Int` | 5 |  |
| `EqualWidth` | Equal Width | `Boolean` | False |  |
| `Shadow` | Shadow | `String` | none | none|sm|md|lg|xl |
| `Circle` | Circle | `Boolean` | True |  |
| `GapX` | Gap X | `Int` | 1 |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Changed (PageIndex As Int, ItemId As String)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getSize As String`
- `setSize(Value As String)`
- `getStyle As String`
- `setStyle(Value As String)`
- `getActiveColor As String`
- `setActiveColor(Value As String)`
- `getActiveIndex As Int`
- `setActiveIndex(Value As Int)`
- `getDisabled As Boolean`
- `setDisabled(Value As Boolean)`
- `getShowPrevNext As Boolean`
- `setShowPrevNext(Value As Boolean)`
- `getShowFirstLast As Boolean`
- `setShowFirstLast(Value As Boolean)`
- `getFirstText As String`
- `setFirstText(Value As String)`
- `getLastText As String`
- `setLastText(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getPrevText As String`
- `setPrevText(Value As String)`
- `getNextText As String`
- `setNextText(Value As String)`
- `getShowPageNumbers As Boolean`
- `setShowPageNumbers(Value As Boolean)`
- `getPageCount As Int`
- `setPageCount(Value As Int)`
- `getEqualWidth As Boolean`
- `setEqualWidth(Value As Boolean)`
- `getCircle As Boolean`
- `setCircle(Value As Boolean)`
- `getGapX As Int`
- `setGapX(Value As Int)`
- `getTag As Object`
- `setTag(Value As Object)`
- `View As B4XView`
- `Refresh`
- `GetActualPageCount As Int`
- `PrevPage`
- `NextPage`
- `GoToPage(Index As Int)`
- `GetItemCount As Int`
- `GetItemIdAt(Index As Int) As String`
- `SetItemDisabled(Id As String, Disabled As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

