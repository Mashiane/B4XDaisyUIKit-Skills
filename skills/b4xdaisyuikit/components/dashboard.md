# dashboard (`B4XDaisyDashboard`)

Pre-composed metrics summary dashboard card layout combining multiple KPI cards, headers, and sparkline trends.

## 1. Overview
- **Class**: `B4XDaisyDashboard`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDashboard.bas`
- **Web DaisyUI Mapping**: `.dashboard` → `B4XDaisyDashboard`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim dsb As B4XDaisyDashboard
dsb.Initialize(Me, "dsb")
dsb.AddToParent(pnlHost)
dsb.AddButtonWithSvgPath("rev", "Revenue", "dollar-sign-solid.svg")
dsb.AddButtonWithSvgPath("users", "Users", "users-solid.svg")
```

## 3. Native Composition Rules & Gotchas
- Pre-composed KPI summary grid container aggregating multiple metric tiles.
- Automatically manages internal responsive stacking of metric cards.
- Add metrics via `AddKpi(Id, Title, Value, ChangeText, ChangeVariant, IconName)`.
- Live-update values without re-rendering using `SetKpiValue(Id, NewValue)`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| RowsPerPage | Rows Per Page | Int | 6 |  |
| ColumnsPerPage | Columns Per Page | Int | 4 |  |
| AutoGrid | Auto Grid | Boolean | False |  |
| MinCellWidth | Min Cell Width | Int | 72 |  |
| MinCellHeight | Min Cell Height | Int | 96 |  |
| PagePadding | Page Padding | Int | 12 |  |
| CellSpacing | Cell Spacing X | Int | 6 |  |
| CellSpacingY | Cell Spacing Y | Int | 0 |  |
| ActiveIndicatorColor | Active Dot Color | Color | 0xFF3B82F6 |  |
| InactiveIndicatorColor | Inactive Dot Color | Color | 0x553B82F6 |  |
| BackgroundImage | Background Image | String |  |  |
| TextColor | Text Color | Color | 0xFFFFFFFF |  |
| GridTopOffset | Grid Top Offset | Int | 12 |  |
| Width | Width | String | 100% |  |
| Height | Height | String | 100% |  |

## 5. Declared Events
- `ButtonClick (ButtonId As String)`
- `Changed (PageIndex As Int, PageCount As Int)`

## 6. Public Methods & APIs
- `AddButton(sId As String, sLabel As String, sImagePath As String, sSvgPath As String)`
- `AddButtonWithImagePath(sId As String, sLabel As String, sFullImagePath As String) As Boolean`
- `AddButtonWithSvgPath(sId As String, sLabel As String, sFullSvgPath As String) As Boolean`
- `AddItem(sId As String, sLabel As String, sImage As String)`
- `AddToParent(vParent As B4XView)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `ClearButtons`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveIndicatorColor As Int`
- `getAutoGrid As Boolean`
- `getBackgroundImage As String`
- `getButtonCount As Int`
- `getButtonsPerPage As Int`
- `getCellSpacing As Float`
- `getCellSpacingY As Float`
- `getColumnsPerPage As Int`
- `GetComputedHeight As Int`
- `getCurrentPage As Int`
- `getGridTopOffset As Float`
- `getHeight As String`
- `getInactiveIndicatorColor As Int`
- `getLeft As Int`
- `getMinCellHeight As Float`
- `getMinCellWidth As Float`
- `getPageCount As Int`
- `getPagePadding As Float`
- `getRowsPerPage As Int`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `Refresh(bSortAsc As Boolean)`
- `RemoveButton(sButtonId As String) As Boolean`
- `RemoveViewFromParent`
- `Resize(iWidth As Int, iHeight As Int)`
- `SendToBack`
- `setActiveIndicatorColor(iValue As Int)`
- `setActiveIndicatorColorVariant(sVariantName As String)`
- `setAutoGrid(bValue As Boolean)`
- `setBackgroundImage(sPath As String)`
- `SetButtons(lstNewButtons As List)`
- `setCellSpacing(iValue As Int)`
- `setCellSpacingY(iValue As Int)`
- `setColumnsPerPage(iValue As Int)`
- `SetCurrentPage(iIndex As Int)`
- `setGridTopOffset(iValue As Int)`
- `setHeight(oValue As Object)`
- `setInactiveIndicatorColor(iValue As Int)`
- `setInactiveIndicatorColorVariant(sVariantName As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMinCellHeight(iValue As Int)`
- `setMinCellWidth(iValue As Int)`
- `setPagePadding(iValue As Int)`
- `setRowsPerPage(iValue As Int)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `SortByTitleAsc`
- `SortByTitleDesc`
- `UpdateButton(sButtonId As String, mUpdates As Map) As Boolean`
- `UpdateButtonBadge(sButtonId As String, oNewBadgeValue As Object) As Boolean`
- `UpdateButtonImage(sButtonId As String, sNewImagePath As String) As Boolean`
- `UpdateButtonLabel(sButtonId As String, sNewLabel As String) As Boolean`
- `UpdateButtonValue(sButtonId As String, sKey As String, oValue As Object) As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
