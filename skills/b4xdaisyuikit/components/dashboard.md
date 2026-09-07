# dashboard (`B4XDaisyDashboard`)

DaisyUI `Dashboard` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDashboard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDashboard.bas`
- **Verified Demo Source**: B4XPageDashboard.bas
- **Web DaisyUI Mapping**: `.dashboard` → `B4XDaisyDashboard`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.Color = xui.Color_RGB(240, 244, 249)

	Dashboard.Initialize(Me, "dash")
	Dashboard.AddToParent(Root)
	Dashboard.setBackgroundImage("janis-kloter-GipF6xThS6g-unsplash.jpg")
	PopulateDashboard
'	B4XPages.MainPage.SetStatusBarState(False)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDashboard` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetButtons, AddButtonWithImagePath, AddButtonWithSvgPath` (+ 44 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `RowsPerPage` | Rows Per Page | `Int` | 6 |  |
| `ColumnsPerPage` | Columns Per Page | `Int` | 4 |  |
| `AutoGrid` | Auto Grid | `Boolean` | False |  |
| `MinCellWidth` | Min Cell Width | `Int` | 72 |  |
| `MinCellHeight` | Min Cell Height | `Int` | 96 |  |
| `PagePadding` | Page Padding | `Int` | 12 |  |
| `CellSpacing` | Cell Spacing X | `Int` | 6 |  |
| `CellSpacingY` | Cell Spacing Y | `Int` | 0 |  |
| `ActiveIndicatorColor` | Active Dot Color | `Color` | 0xFF3B82F6 |  |
| `InactiveIndicatorColor` | Inactive Dot Color | `Color` | 0x553B82F6 |  |
| `BackgroundImage` | Background Image | `String` |  |  |
| `TextColor` | Text Color | `Color` | 0xFFFFFFFF |  |
| `GridTopOffset` | Grid Top Offset | `Int` | 12 |  |
| `Width` | Width | `String` | 100% |  |
| `Height` | Height | `String` | 100% |  |

## 5. Declared Events
- `ButtonClick (ButtonId As String)`
- `Changed (PageIndex As Int, PageCount As Int)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView)`
- `IsReady As Boolean`
- `SetButtons(lstNewButtons As List)`
- `AddButton(Id As String, Label As String, ImagePath As String, SvgPath As String)`
- `AddButtonWithImagePath(Id As String, Label As String, FullImagePath As String) As Boolean`
- `AddButtonWithSvgPath(Id As String, Label As String, FullSvgPath As String) As Boolean`
- `UpdateButton(ButtonId As String, Updates As Map) As Boolean`
- `RemoveButton(ButtonId As String) As Boolean`
- `UpdateButtonLabel(ButtonId As String, NewLabel As String) As Boolean`
- `UpdateButtonImage(ButtonId As String, NewImagePath As String) As Boolean`
- `UpdateButtonBadge(ButtonId As String, NewBadgeValue As Object) As Boolean`
- `UpdateButtonValue(ButtonId As String, Key As String, Value As Object) As Boolean`
- `ClearButtons`
- `Clear`
- `AddItem(Id As String, Label As String, Image As String)`
- `Refresh(SortAsc As Boolean)`
- `SortByTitleAsc`
- `SortByTitleDesc`
- `getButtonCount As Int`
- `getButtonsPerPage As Int`
- `getPageCount As Int`
- `getCurrentPage As Int`
- `SetCurrentPage(Index As Int)`
- `setRowsPerPage(Value As Int)`
- `getRowsPerPage As Int`
- `setColumnsPerPage(Value As Int)`
- `getColumnsPerPage As Int`
- `setAutoGrid(Value As Boolean)`
- `getAutoGrid As Boolean`
- `setMinCellWidth(Value As Int)`
- `getMinCellWidth As Float`
- `setMinCellHeight(Value As Int)`
- `getMinCellHeight As Float`
- `setPagePadding(Value As Int)`
- `getPagePadding As Float`
- `setCellSpacing(Value As Int)`
- `getCellSpacingY As Float`
- `setCellSpacingY(Value As Int)`
- `getCellSpacing As Float`
- `setGridTopOffset(Value As Int)`
- `getGridTopOffset As Float`
- `setActiveIndicatorColor(Value As Int)`
- `getActiveIndicatorColor As Int`
- `setActiveIndicatorColorVariant(VariantName As String)`
- `setInactiveIndicatorColor(Value As Int)`
- `getInactiveIndicatorColor As Int`
- `setInactiveIndicatorColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setWidth(Value As Object)`
- `getWidth As String`
- `setHeight(Value As Object)`
- `getHeight As String`
- `setBackgroundImage(Path As String)`
- `getBackgroundImage As String`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

