# dashboard (`B4XDaisyDashboard`)

DaisyUI `Dashboard` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDashboard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyDashboard.bas`
- **Verified Demo Source**: B4XPageDashboard.bas (lines 12–12)
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
| `RowsPerPage` | Rows Per Page | `Int` | `6` |  |
| `ColumnsPerPage` | Columns Per Page | `Int` | `4` |  |
| `AutoGrid` | Auto Grid | `Boolean` | `False` |  |
| `MinCellWidth` | Min Cell Width | `Int` | `72` |  |
| `MinCellHeight` | Min Cell Height | `Int` | `96` |  |
| `PagePadding` | Page Padding | `Int` | `12` |  |
| `CellSpacing` | Cell Spacing X | `Int` | `6` |  |
| `CellSpacingY` | Cell Spacing Y | `Int` | `0` |  |
| `ActiveIndicatorColor` | Active Dot Color | `Color` | `0xFF3B82F6` |  |
| `InactiveIndicatorColor` | Inactive Dot Color | `Color` | `0x553B82F6` |  |
| `BackgroundImage` | Background Image | `String` | `` |  |
| `TextColor` | Text Color | `Color` | `0xFFFFFFFF` |  |
| `GridTopOffset` | Grid Top Offset | `Int` | `12` |  |
| `Width` | Width | `String` | `100%` |  |
| `Height` | Height | `String` | `100%` |  |

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
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `Refresh(bSortAsc As Boolean)`
- `RemoveButton(sButtonId As String) As Boolean`
- `RemoveViewFromParent`
- `Resize(iWidth As Int, iHeight As Int)`
- `SendToBack`
- `SetButtons(lstNewButtons As List)`
- `SetCurrentPage(iIndex As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SortByTitleAsc`
- `SortByTitleDesc`
- `UpdateButton(sButtonId As String, mUpdates As Map) As Boolean`
- `UpdateButtonBadge(sButtonId As String, oNewBadgeValue As Object) As Boolean`
- `UpdateButtonImage(sButtonId As String, sNewImagePath As String) As Boolean`
- `UpdateButtonLabel(sButtonId As String, sNewLabel As String) As Boolean`
- `UpdateButtonValue(sButtonId As String, sKey As String, oValue As Object) As Boolean`
- `View As B4XView`
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
- `setActiveIndicatorColor(iValue As Int)`
- `setActiveIndicatorColorVariant(sVariantName As String)`
- `setAutoGrid(bValue As Boolean)`
- `setBackgroundImage(sPath As String)`
- `setCellSpacing(iValue As Int)`
- `setCellSpacingY(iValue As Int)`
- `setColumnsPerPage(iValue As Int)`
- `setGridTopOffset(iValue As Int)`
- `setHeight(oValue As Object)`
- `setInactiveIndicatorColor(iValue As Int)`
- `setInactiveIndicatorColorVariant(sVariantName As String)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

