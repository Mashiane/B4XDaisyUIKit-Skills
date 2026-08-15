# dashboard (`B4XDaisyDashboard`)

Pre-composed metrics summary dashboard card layout combining multiple KPI cards, headers, and sparkline trends.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyDashboard`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDashboard.bas`
- **Verified Demos**: `B4XPageDashboard.bas`
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
- `AddButton(Id As String, Label As String, ImagePath As String, SvgPath As String)`
- `AddButtonWithImagePath(Id As String, Label As String, FullImagePath As String) As Boolean`
- `AddButtonWithSvgPath(Id As String, Label As String, FullSvgPath As String) As Boolean`
- `AddItem(Id As String, Label As String, Image As String)`
- `AddToParent(Parent As B4XView)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `ClearButtons`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `Refresh(SortAsc As Boolean)`
- `RemoveButton(ButtonId As String) As Boolean`
- `RemoveViewFromParent`
- `Resize(Width As Int, Height As Int)`
- `SendToBack`
- `SetButtons(NewButtons As List)`
- `SetCurrentPage(Index As Int)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SortByTitleAsc`
- `SortByTitleDesc`
- `UpdateButton(ButtonId As String, Updates As Map) As Boolean`
- `UpdateButtonBadge(ButtonId As String, NewBadgeValue As Object) As Boolean`
- `UpdateButtonImage(ButtonId As String, NewImagePath As String) As Boolean`
- `UpdateButtonLabel(ButtonId As String, NewLabel As String) As Boolean`
- `UpdateButtonValue(ButtonId As String, Key As String, Value As Object) As Boolean`
- `getActiveIndicatorColor As Int`
- `getAutoGrid As Boolean`
- `getBackgroundImage As String`
- `getButtonCount As Int`
- `getButtonsPerPage As Int`
- `getCellSpacing As Float`
- `getCellSpacingY As Float`
- `getColumnsPerPage As Int`
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
- `setActiveIndicatorColor(Value As Int)`
- `setActiveIndicatorColorVariant(VariantName As String)`
- `setAutoGrid(Value As Boolean)`
- `setBackgroundImage(Path As String)`
- `setCellSpacing(Value As Int)`
- `setCellSpacingY(Value As Int)`
- `setColumnsPerPage(Value As Int)`
- `setGridTopOffset(Value As Int)`
- `setHeight(Value As Object)`
- `setInactiveIndicatorColor(Value As Int)`
- `setInactiveIndicatorColorVariant(VariantName As String)`
- `setLeft(Value As Int)`
- `setMinCellHeight(Value As Int)`
- `setMinCellWidth(Value As Int)`
- `setPagePadding(Value As Int)`
- `setRowsPerPage(Value As Int)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
