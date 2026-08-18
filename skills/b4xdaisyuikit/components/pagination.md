# pagination (`B4XDaisyPagination`)

Page selector bar for multi-page data display.

## 1. Overview
- **Class**: `B4XDaisyPagination`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPagination.bas`
- **Web DaisyUI Mapping**: `.pagination` → `B4XDaisyPagination`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pg As B4XDaisyPagination
pg.Initialize(Me, "pg")
pg.AddToParent(pnlHost, pad, y, maxW, 40dip)
pg.PageCount = 10
pg.ActiveIndex = 1
pg.ShowPrevNext = True
y = y + 40dip + gap
```

## 3. Native Composition Rules & Gotchas
- Numbered page switcher with prev/next buttons and active page indicator.
- Configure `TotalPages` and `CurrentPage`.
- Set `Size` (`"sm"`, `"md"`, `"lg"`) and semantic `Variant`.
- Handle page changes in the `PageChange (NewPage As Int)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Size | Size | String | md | xs|sm|md|lg|xl |
| Style | Style | String | solid | solid|outline|ghost|link|soft|dash |
| ActiveColor | Active Color | String | primary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| ActiveIndex | Active Index | Int | 0 |  |
| Disabled | Disabled | Boolean | False |  |
| ShowPrevNext | Show Prev/Next | Boolean | True |  |
| PrevText | Prev Text | String | chevron-left-solid.svg |  |
| NextText | Next Text | String | chevron-right-solid.svg |  |
| ShowFirstLast | Show First/Last | Boolean | False |  |
| FirstText | First Text | String | angles-left-solid.svg |  |
| LastText | Last Text | String | angles-right-solid.svg |  |
| ShowPageNumbers | Show Page Numbers | Boolean | True |  |
| PageCount | Page Count | Int | 5 |  |
| EqualWidth | Equal Width | Boolean | False |  |
| Shadow | Shadow | String | none | none|sm|md|lg|xl |
| Circle | Circle | Boolean | True |  |
| GapX | Gap X | Int | 1 |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Changed (PageIndex As Int, ItemId As String)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As String`
- `getActiveIndex As Int`
- `GetActualPageCount As Int`
- `getCircle As Boolean`
- `getDisabled As Boolean`
- `getEqualWidth As Boolean`
- `getFirstText As String`
- `getGapX As Int`
- `getHeight As Int`
- `GetItemCount As Int`
- `GetItemIdAt(iIndex As Int) As String`
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
- `GoToPage(iIndex As Int)`
- `Initialize(oCallback As Object, sEventName As String)`
- `NextPage`
- `PrevPage`
- `Refresh`
- `SendToBack`
- `setActiveColor(sValue As String)`
- `setActiveIndex(iValue As Int)`
- `setCircle(bValue As Boolean)`
- `setDisabled(bValue As Boolean)`
- `setEqualWidth(bValue As Boolean)`
- `setFirstText(sValue As String)`
- `setGapX(iValue As Int)`
- `setHeight(iValue As Int)`
- `SetItemDisabled(sId As String, bDisabled As Boolean)`
- `setLastText(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
