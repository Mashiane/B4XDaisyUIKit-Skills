# list (`B4XDaisyList`)

DaisyUI `List` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyList`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyList.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyList.bas)
- **Verified Demo Source**: B4XPageList.bas, B4XPageList1K.bas
- **Web DaisyUI Mapping**: `.list` → `B4XDaisyList`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<ul class="list">
  <li class="list-row">{CONTENT}</li>
</ul>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' High-performance virtualized recycling list container:
Dim lstExpenses As B4XDaisyList
lstExpenses.Initialize(Me, "lstExpenses")
lstExpenses.AddToParent(pnlHost, 16dip, y, maxW, 300dip)
lstExpenses.Rounded = "rounded-box"
lstExpenses.Shadow = "shadow-sm"

' 1. Register named row template:
lstExpenses.RegisterTemplate("ExpenseRow", 64dip, Me, "ExpenseRow_Create", "ExpenseRow_Bind")

' 2. Batch load records without UI thrashing:
Dim lstBatch As List
lstBatch.Initialize
lstBatch.Add(CreateMap("id": 1, "title": "Office Supplies", "amount": "-$45.20", "cat": "Office"))
lstBatch.Add(CreateMap("id": 2, "title": "Client Lunch", "amount": "-$82.50", "cat": "Meals"))
lstExpenses.AddRowDataBatch("ExpenseRow", lstBatch)

y = y + 300dip + 16dip

' Template Row Creator:
Private Sub ExpenseRow_Create(vRowPanel As B4XView)
	Dim lblTitle As B4XDaisyText
	lblTitle.Initialize(Me, "")
	lblTitle.Tag = "lblTitle"
	lblTitle.AddToParent(vRowPanel, 16dip, 10dip, 180dip, 22dip)
	lblTitle.TextSize = 14

	Dim lblAmt As B4XDaisyText
	lblAmt.Initialize(Me, "")
	lblAmt.Tag = "lblAmt"
	lblAmt.AddToParent(vRowPanel, vRowPanel.Width - 116dip, 10dip, 100dip, 22dip)
	lblAmt.HAlign = "RIGHT"
End Sub

' Template Row Binder:
Private Sub ExpenseRow_Bind(vRowPanel As B4XView, mRowData As Map)
	Dim lblTitle As B4XDaisyText = vRowPanel.FindViewWithTag("lblTitle").Tag
	Dim lblAmt As B4XDaisyText = vRowPanel.FindViewWithTag("lblAmt").Tag
	lblTitle.Text = mRowData.Get("title")
	lblAmt.Text = mRowData.Get("amount")
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyList` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Template / Event Binding:** Either register named templates with `RegisterTemplate` or implement the `<EventName>_CreateRowContent(iIndex As Int)` callback.
5. **Batch / Row Population:** Populate using `AddRowDataBatch(lstBatch)` for high performance, or `AddRowData(mapItem)`.

### Preconditions & Gotchas
- **Touch Event Pass-Through (`.setClickable(False)`):**
  When mounting text labels (`B4XDaisyText`), avatars (`B4XDaisyAvatar`), or passive layout containers inside list rows, you **must** call `.setClickable(False)` on them. If passive child views remain clickable, Android's touch dispatcher routes clicks to the label instead of the row panel, preventing the list's `ItemClick` and `ItemLongClick` events from firing!
- **Interactive Action Buttons Inside Rows:**
  When adding action buttons (e.g. `B4XDaisyIconButton`) inside rows, pass row metadata in the button's `Tag` property. Handle the button click in a dedicated event sub (e.g. `btnHeart_Click(Tag As Object)`), using `Dim btn As B4XDaisyIconButton = Sender` to toggle state independently of row selection.
- **Scroll Container Integration (`AutoHeight` vs Standalone):**
  - **Embedded inside `ScrollView` or `B4XDaisyPageScroll`:** Set `AutoHeight = True`. The list automatically resizes its container to match total row height (`GetComputedHeight`), avoiding nested scroll interception conflicts.
  - **Standalone (Full-Screen Viewport):** Do NOT set `AutoHeight = True`. Set list dimensions to `Root.Width` and `Root.Height`. The underlying `CustomListView` handles view recycling across thousands of rows.

### Discrepancies & API Nuances
- `AddRowDataBatch` is significantly faster than repeated `AddRowData` calls because it batches CLV panel creation and triggers a single refresh.
- Section headers can be added via `List.AddHeader(sTitle)` or by passing `"_header": True` in any row map.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | full |  |
| `Height` | Height | `String` | 300 |  |
| `BackgroundColor` | Background Color | `String` | base-100 |  |
| `TextColor` | Text Color | `String` |  |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field |
| `Shadow` | Shadow | `String` | shadow-md | |none|shadow|shadow-md|shadow-lg|shadow-xl |
| `Padding` | Padding | `String` | 0 |  |
| `RowPadding` | Row Padding | `String` | 4 |  |
| `RowGap` | Row Gap | `String` | 4 |  |
| `DividerColor` | Divider Color | `String` | base-content/5 |  |
| `Divider` | Show Divider | `Boolean` | True |  |
| `RowHeight` | Row Height | `Int` | 72 |  |
| `AutoHeight` | Auto-Height | `Boolean` | False |  |

## 5. Declared Events
- `ItemClick (Index As Int, Tag As Object)`
- `ItemLongClick (Index As Int, Tag As Object)`
- `CreateRowContent (Index As Int)`
- `ReachEnd`
- `ScrollChanged (Offset As Int)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ResizeToFitContent`
- `Base_Resize(Width As Double, Height As Double)`
- `RegisterTemplate(TemplateName As String, Callback As Object, EventName As String)`
- `AddRowDataWithTemplate(Data As Map, TemplateName As String) As Int`
- `AddRowData(Data As Map) As Int`
- `AddHeader(Title As String) As Int`
- `AddRowDataBatch(lstItems As List)`
- `SetRowCount(Count As Int)`
- `AddRow(Data As Map) As Int`
- `Clear`
- `getRowCount As Int`
- `GetRowData(Index As Int) As Map`
- `GetRow(Index As Int) As Map`
- `RemoveRow(Index As Int)`
- `InsertRowAt(Index As Int, Data As Map)`
- `RefreshRow(Index As Int)`
- `RefreshAllRows`
- `ScrollToIndex(Index As Int)`
- `SmoothScrollToIndex(Index As Int)`
- `getScrollPosition As Int`
- `getFirstVisibleIndex As Int`
- `getLastVisibleIndex As Int`
- `GetItemFromView(View As B4XView) As Int`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setTextColor(Value As String)`
- `getTextColor As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setRowPadding(Value As Int)`
- `getRowPadding As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setDivider(Value As Boolean)`
- `getDivider As Boolean`
- `setDividerColor(Value As String)`
- `getDividerColor As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setRowHeight(Value As Int)`
- `getRowHeight As Int`
- `setWidth(Value As Object)`
- `getWidth As Int`
- `setHeight(Value As Object)`
- `getHeight As Int`
- `getContentHeight As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `RemoveViewFromParent`
- `View As B4XView`
- `Release`
- `GetCurrentRowPanel As B4XView`
- `GetCurrentRowData As Map`
- `AddTextRow(Title As String, OptionalSubtitle As String) As Int`
- `CreateTextItemView(Text As String, Width As Int, Height As Int, TextSize As Object, TextColor As Int, Bold As Boolean, SingleLine As Boolean) As B4XView`
- `CreateStackedTextView(Title As String, Subtitle As String, Width As Int, TitleSize As Object, SubtitleSize As Object, TitleColor As Int, SubtitleColor As Int) As B4XView`
- `GetCLV As CustomListView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

