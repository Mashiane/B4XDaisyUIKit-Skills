# list (`B4XDaisyList`)

Vertically or horizontally arranged list of items with icons, subtitles, dividers, and action indicators.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyList`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyList.bas`
- **Verified Demos**: `B4XPageList.bas, B4XPageList1K.bas`
- **Web DaisyUI Mapping**: `.list` → `B4XDaisyList`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim lst As B4XDaisyList
lst.Initialize(Me, "lst")
lst.AddToParent(pnlHost, pad, y, maxW, 200dip)
lst.Rounded = "rounded-box"
y = y + lst.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- High-performance scrolling list with leading icons, titles, descriptions, and chevrons.
- Add items using `AddItem(Id, Title, Subtitle, IconAsset, BadgeText)`.
- Handle row selection via the `ItemClick (ItemId As String, Tag As Object)` event.
- Supports dynamic item removal and reordering.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | full |  |
| Height | Height | String | 300 |  |
| BackgroundColor | Background Color | String | base-100 |  |
| TextColor | Text Color | String |  |  |
| Rounded | Rounded | String | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field |
| Shadow | Shadow | String | shadow-md | |none|shadow|shadow-md|shadow-lg|shadow-xl |
| Padding | Padding | String | 0 |  |
| RowPadding | Row Padding | String | 4 |  |
| RowGap | Row Gap | String | 4 |  |
| DividerColor | Divider Color | String | base-content/5 |  |
| Divider | Show Divider | Boolean | True |  |
| RowHeight | Row Height | Int | 72 |  |
| AutoHeight | Auto-Height | Boolean | False |  |

## 5. Declared Events
- `ItemClick (Index As Int, Tag As Object)`
- `ItemLongClick (Index As Int, Tag As Object)`
- `CreateRowContent (Index As Int)`
- `ReachEnd`
- `ScrollChanged (Offset As Int)`

## 6. Public Methods & APIs
- `AddHeader(Title As String) As Int`
- `AddRow(Data As Map) As Int`
- `AddRowData(Data As Map) As Int`
- `AddRowDataBatch(Items As List)`
- `AddRowDataWithTemplate(Data As Map, TemplateName As String) As Int`
- `AddTextRow(Title As String, OptionalSubtitle As String) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateStackedTextView(Title As String, Subtitle As String, Width As Int, TitleSize As Object, SubtitleSize As Object, TitleColor As Int, SubtitleColor As Int) As B4XView`
- `CreateTextItemView(Text As String, Width As Int, Height As Int, TextSize As Object, TextColor As Int, Bold As Boolean, SingleLine As Boolean) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetCLV As CustomListView`
- `GetComputedHeight As Int`
- `GetCurrentRowData As Map`
- `GetCurrentRowPanel As B4XView`
- `GetItemFromView(v As B4XView) As Int`
- `GetRow(Index As Int) As Map`
- `GetRowData(Index As Int) As Map`
- `Initialize(Callback As Object, EventName As String)`
- `InsertRowAt(Index As Int, Data As Map)`
- `Refresh`
- `RefreshAllRows`
- `RefreshRow(Index As Int)`
- `RegisterTemplate(TemplateName As String, Callback As Object, EventName As String)`
- `Release`
- `RemoveRow(Index As Int)`
- `RemoveViewFromParent`
- `ResizeToFitContent`
- `ScrollToIndex(Index As Int)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetRowCount(Count As Int)`
- `SmoothScrollToIndex(Index As Int)`
- `UpdateTheme`
- `getAutoHeight As Boolean`
- `getBackgroundColor As String`
- `getContentHeight As Int`
- `getDivider As Boolean`
- `getDividerColor As String`
- `getEnabled As Boolean`
- `getFirstVisibleIndex As Int`
- `getHeight As Int`
- `getLastVisibleIndex As Int`
- `getLeft As Int`
- `getPadding As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getRowCount As Int`
- `getRowGap As Int`
- `getRowHeight As Int`
- `getRowPadding As Int`
- `getScrollPosition As Int`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As String`
- `getTop As Int`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoHeight(Value As Boolean)`
- `setBackgroundColor(Value As String)`
- `setDivider(Value As Boolean)`
- `setDividerColor(Value As String)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As Object)`
- `setLeft(Value As Int)`
- `setPadding(Value As Int)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setRowGap(Value As Int)`
- `setRowHeight(Value As Int)`
- `setRowPadding(Value As Int)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
