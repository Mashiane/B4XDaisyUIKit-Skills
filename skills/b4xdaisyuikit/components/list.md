# list (`B4XDaisyList`)

Vertically or horizontally arranged list of items with icons, subtitles, dividers, and action indicators.

## 1. Overview
- **Class**: `B4XDaisyList`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyList.bas`
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
- `AddHeader(sTitle As String) As Int`
- `AddRow(mData As Map) As Int`
- `AddRowData(mData As Map) As Int`
- `AddRowDataBatch(lstItems As List)`
- `AddRowDataWithTemplate(mData As Map, sTemplateName As String) As Int`
- `AddTextRow(sTitle As String, sOptionalSubtitle As String) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateStackedTextView(sTitle As String, sSubtitle As String, iWidth As Int, oTitleSize As Object, oSubtitleSize As Object, iTitleColor As Int, iSubtitleColor As Int) As B4XView`
- `CreateTextItemView(sText As String, iWidth As Int, iHeight As Int, oTextSize As Object, iTextColor As Int, bBold As Boolean, bSingleLine As Boolean) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoHeight As Boolean`
- `getBackgroundColor As String`
- `GetCLV As CustomListView`
- `GetComputedHeight As Int`
- `getContentHeight As Int`
- `GetCurrentRowData As Map`
- `GetCurrentRowPanel As B4XView`
- `getDivider As Boolean`
- `getDividerColor As String`
- `getEnabled As Boolean`
- `getFirstVisibleIndex As Int`
- `getHeight As Int`
- `GetItemFromView(vView As B4XView) As Int`
- `getLastVisibleIndex As Int`
- `getLeft As Int`
- `getPadding As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `GetRow(iIndex As Int) As Map`
- `getRowCount As Int`
- `GetRowData(iIndex As Int) As Map`
- `getRowGap As Int`
- `getRowHeight As Int`
- `getRowPadding As Int`
- `getScrollPosition As Int`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `InsertRowAt(iIndex As Int, mData As Map)`
- `Refresh`
- `RefreshAllRows`
- `RefreshRow(iIndex As Int)`
- `RegisterTemplate(sTemplateName As String, oCallback As Object, sEventName As String)`
- `Release`
- `RemoveRow(iIndex As Int)`
- `RemoveViewFromParent`
- `ResizeToFitContent`
- `ScrollToIndex(iIndex As Int)`
- `SendToBack`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(sValue As String)`
- `setDivider(bValue As Boolean)`
- `setDividerColor(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(oValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setPadding(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `SetRowCount(iCount As Int)`
- `setRowGap(iValue As Int)`
- `setRowHeight(iValue As Int)`
- `setRowPadding(iValue As Int)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `SmoothScrollToIndex(iIndex As Int)`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
