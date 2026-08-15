# pagination (`B4XDaisyPagination`)

Page selector bar for multi-page data display.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyPagination`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPagination.bas`
- **Verified Demos**: `B4XPagePagination.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualPageCount As Int`
- `GetItemCount As Int`
- `GetItemIdAt(Index As Int) As String`
- `GoToPage(Index As Int)`
- `Initialize(Callback As Object, EventName As String)`
- `NextPage`
- `PrevPage`
- `Refresh`
- `SendToBack`
- `SetItemDisabled(Id As String, Disabled As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setActiveColor(Value As String)`
- `setActiveIndex(Value As Int)`
- `setCircle(Value As Boolean)`
- `setDisabled(Value As Boolean)`
- `setEqualWidth(Value As Boolean)`
- `setFirstText(Value As String)`
- `setGapX(Value As Int)`
- `setHeight(Value As Int)`
- `setLastText(Value As String)`
- `setLeft(Value As Int)`
- `setNextText(Value As String)`
- `setPageCount(Value As Int)`
- `setPrevText(Value As String)`
- `setShadow(Value As String)`
- `setShowFirstLast(Value As Boolean)`
- `setShowPageNumbers(Value As Boolean)`
- `setShowPrevNext(Value As Boolean)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
