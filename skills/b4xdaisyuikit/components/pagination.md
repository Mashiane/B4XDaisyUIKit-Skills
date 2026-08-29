# pagination (`B4XDaisyPagination`)

DaisyUI `Pagination` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyPagination`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyPagination.bas`
- **Verified Demo Source**: B4XPagePagination.bas (lines 67–233)
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
' Add pagination directly to pnlHost with explicit dimensions (bypass card/host structure)
    Dim pag1 As B4XDaisyPagination
    pag1.Initialize(Me, "pag1")
    pag1.Size = "md"
    pag1.ShowPrevNext = False
    pag1.PageCount = 4
    pag1.ActiveIndex = 1
    pag1.AddToParent(pnlHost, contentLeft, currentY, maxW, 64dip)
    currentY = currentY + 64dip + 18dip

    ''' <summary>
    ''' Example 2: Sizes
    ''' </summary>
    currentY = AddSectionTitle(contentLeft, currentY, maxW, "2. Sizes")
    currentY = AddDescription(contentLeft, currentY, maxW, "Pagination at xs, sm, md, lg, and xl button sizes.")
    
    ' XS
    currentY = currentY + 8dip
    Dim pagXs As B4XDaisyPagination
    pagXs.Initialize(Me, "pagXs")
    pagXs.Size = "xs"
    pagXs.ShowPrevNext = False
    pagXs.PageCount = 4
    pagXs.ActiveIndex = 1
    pagXs.AddToParent(pnlHost, contentLeft, currentY, maxW, 24dip)
    currentY = currentY + 32dip
    
    ' SM
    currentY = currentY + 8dip
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
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Style` | Style | `String` | `solid` | solid|outline|ghost|link|soft|dash |
| `ActiveColor` | Active Color | `String` | `primary` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `ActiveIndex` | Active Index | `Int` | `0` |  |
| `Disabled` | Disabled | `Boolean` | `False` |  |
| `ShowPrevNext` | Show Prev/Next | `Boolean` | `True` |  |
| `PrevText` | Prev Text | `String` | `chevron-left-solid.svg` |  |
| `NextText` | Next Text | `String` | `chevron-right-solid.svg` |  |
| `ShowFirstLast` | Show First/Last | `Boolean` | `False` |  |
| `FirstText` | First Text | `String` | `angles-left-solid.svg` |  |
| `LastText` | Last Text | `String` | `angles-right-solid.svg` |  |
| `ShowPageNumbers` | Show Page Numbers | `Boolean` | `True` |  |
| `PageCount` | Page Count | `Int` | `5` |  |
| `EqualWidth` | Equal Width | `Boolean` | `False` |  |
| `Shadow` | Shadow | `String` | `none` | none|sm|md|lg|xl |
| `Circle` | Circle | `Boolean` | `True` |  |
| `GapX` | Gap X | `Int` | `1` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Changed (PageIndex As Int, ItemId As String)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualPageCount As Int`
- `GetItemCount As Int`
- `GetItemIdAt(iIndex As Int) As String`
- `GoToPage(iIndex As Int)`
- `Initialize(oCallback As Object, sEventName As String)`
- `NextPage`
- `PrevPage`
- `Refresh`
- `SendToBack`
- `SetItemDisabled(sId As String, bDisabled As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getActiveColor As String`
- `getActiveIndex As Int`
- `getCircle As Boolean`
- `getDisabled As Boolean`
- `getEqualWidth As Boolean`
- `getFirstText As String`
- `getGapX As Int`
- `getHeight As Int`
- `getLastText As String`
- `getLeft As Int`
- `getNextText As String`
- `getPageCount As Int`
- `getPrevText As String`
- `getShadow As String`
- `getShowFirstLast As Boolean`
- `getShowPageNumbers As Boolean`
- `getShowPrevNext As Boolean`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setActiveColor(sValue As String)`
- `setActiveIndex(iValue As Int)`
- `setCircle(bValue As Boolean)`
- `setDisabled(bValue As Boolean)`
- `setEqualWidth(bValue As Boolean)`
- `setFirstText(sValue As String)`
- `setGapX(iValue As Int)`
- `setHeight(iValue As Int)`
- `setLastText(sValue As String)`
- `setLeft(iValue As Int)`
- `setNextText(sValue As String)`
- `setPageCount(iValue As Int)`
- `setPrevText(sValue As String)`
- `setShadow(sValue As String)`
- `setShowFirstLast(bValue As Boolean)`
- `setShowPageNumbers(bValue As Boolean)`
- `setShowPrevNext(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyPagination` provides button-based page number navigation.

```vb
Dim pag As B4XDaisyPagination
pag.Initialize(Me, "pag")
pag.AddToParent(pnlHost, pad, y, maxW, 44dip)
pag.PageCount = 5
pag.ActiveIndex = 0                            ' 0-indexed active page
pag.Size = "md"

' Page change event:
Private Sub pag_PageChange(Index As Int)
    Log("Switched to page: " & (Index + 1))
End Sub

y = y + 44dip + gap
```
