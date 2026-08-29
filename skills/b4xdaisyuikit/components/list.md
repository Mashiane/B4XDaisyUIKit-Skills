# list (`B4XDaisyList`)

DaisyUI `List` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyList`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyList.bas`
- **Verified Demo Source**: B4XPageList.bas (lines 17–20), B4XPageList1K.bas (lines 13–13)
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
' - DaisyUI: List (2 columns, second column grows - default) -
    currentY = AddSectionTitle("List (2nd column grows - default)", currentY, maxW)
    List1.Clear
    List1.Initialize(Me, "List1")
    List1.Rounded = "rounded-box"
    List1.Shadow = "shadow-md"
    List1.BackgroundColor = "base-100"
    List1.Padding = 0
    List1.RowPadding = 16dip
    List1.Divider = True
    List1.DividerColor = "base-content/5"
    List1.RowHeight = 72dip
    List1.AutoHeight = True
    List1.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 320dip)
    List1.AddHeader("Most played songs this week")
    List1.AddRowData(CreateMap("Tag": "row1", "_height": 72, "title": "Dio Lupa", "subtitle": "Remaining Reason", "avatar": "face_3.jpg", "rowType": "song"))
    List1.AddRowData(CreateMap("Tag": "row2", "_height": 72, "title": "Ellie Beilish", "subtitle": "Bears of a fever", "avatar": "face_13.jpg", "rowType": "song"))
    List1.AddRowData(CreateMap("Tag": "row3", "_height": 72, "title": "Sabrino Gardener", "subtitle": "Cappuccino", "avatar": "face_profile13.jpeg", "rowType": "song"))
    currentY = currentY + List1.getHeight + SECTION_GAP

    ' - DaisyUI: List (3 columns, 3rd column grows) -
    currentY = AddSectionTitle("List (3rd column grows)", currentY, maxW)
    List2.Clear
    List2.Initialize(Me, "List2")
    List2.Rounded = "rounded-box"
    List2.Shadow = "shadow-md"
    List2.BackgroundColor = "base-100"
    List2.Padding = 0
    List2.RowPadding = 16dip
    List2.Divider = True
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyList` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `ResizeToFitContent, AddRowDataWithTemplate, SetRowCount` (+ 44 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `full` |  |
| `Height` | Height | `String` | `300` |  |
| `BackgroundColor` | Background Color | `String` | `base-100` |  |
| `TextColor` | Text Color | `String` | `` |  |
| `Rounded` | Rounded | `String` | `rounded-box` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field |
| `Shadow` | Shadow | `String` | `shadow-md` | |none|shadow|shadow-md|shadow-lg|shadow-xl |
| `Padding` | Padding | `String` | `0` |  |
| `RowPadding` | Row Padding | `String` | `4` |  |
| `RowGap` | Row Gap | `String` | `4` |  |
| `DividerColor` | Divider Color | `String` | `base-content/5` |  |
| `Divider` | Show Divider | `Boolean` | `True` |  |
| `RowHeight` | Row Height | `Int` | `72` |  |
| `AutoHeight` | Auto-Height | `Boolean` | `False` |  |

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
- `GetCLV As CustomListView`
- `GetComputedHeight As Int`
- `GetCurrentRowData As Map`
- `GetCurrentRowPanel As B4XView`
- `GetItemFromView(vView As B4XView) As Int`
- `GetRow(iIndex As Int) As Map`
- `GetRowData(iIndex As Int) As Map`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetRowCount(iCount As Int)`
- `SmoothScrollToIndex(iIndex As Int)`
- `UpdateTheme`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(sValue As String)`
- `setDivider(bValue As Boolean)`
- `setDividerColor(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(oValue As Object)`
- `setLeft(iValue As Int)`
- `setPadding(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setRowGap(iValue As Int)`
- `setRowHeight(iValue As Int)`
- `setRowPadding(iValue As Int)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyList` is a virtualized recycling list container powered by `CustomListView`. It follows a 3-pillar pattern:

### 1. Setup in `RenderPage`
```vb
Dim lst As B4XDaisyList
lst.Initialize(Me, "lst")
lst.Rounded = "rounded-box"
lst.Shadow = "shadow-md"
lst.BackgroundColor = "base-100"
lst.RowHeight = 64dip            ' Height allocated per item
lst.AutoHeight = True             ' Sizes list container to fit total items
lst.AddToParent(pnlHost, pad, y, maxW, 320dip)

' Populate data rows (Maps with custom properties)
lst.AddHeader("Category Title")
lst.AddRowData(CreateMap("Tag": "id1", "title": "Main Title", "subtitle": "Detail text", "status": "ACTIVE", "variant": "success"))
lst.AddRowData(CreateMap("Tag": "id2", "title": "Second Title", "subtitle": "Another detail", "status": "PENDING", "variant": "warning"))

y = y + lst.GetComputedHeight + gap
```

### 2. Row View Creation Event (`_CreateRowContent`)
```vb
Private Sub lst_CreateRowContent(Index As Int)
	Dim pnlRow As B4XView = lst.GetCurrentRowPanel
	Dim data As Map = lst.GetCurrentRowData
	If pnlRow = Null Or pnlRow.IsInitialized = False Or data = Null Then Return
	
	' Handle section header rows
	If data.GetDefault("_header", False) Then
		Dim txtHeader As B4XDaisyText
		txtHeader.Initialize(Me, "")
		txtHeader.AddToParent(pnlRow, 16dip, 0, pnlRow.Width - 32dip, pnlRow.Height)
		txtHeader.Text = data.GetDefault("title", "")
		txtHeader.TextSize = 12
		txtHeader.TextColor = xui.Color_ARGB(160, 0, 0, 0)
		txtHeader.UpperCase = True
		txtHeader.FontBold = True
		txtHeader.VAlign = "CENTER"
		Return
	End If
	
	' Mount child views onto pnlRow
	Dim txtTitle As B4XDaisyText
	txtTitle.Initialize(Me, "")
	txtTitle.AddToParent(pnlRow, 16dip, 10dip, pnlRow.Width - 110dip, 22dip)
	txtTitle.Text = data.GetDefault("title", "")
	txtTitle.TextSize = 14
	txtTitle.FontBold = True
	
	Dim txtSub As B4XDaisyText
	txtSub.Initialize(Me, "")
	txtSub.AddToParent(pnlRow, 16dip, 32dip, pnlRow.Width - 110dip, 20dip)
	txtSub.Text = data.GetDefault("subtitle", "")
	txtSub.TextSize = 11
	txtSub.TextColor = xui.Color_ARGB(150, 0, 0, 0)
	
	Dim badge As B4XDaisyBadge
	badge.Initialize(Me, "")
	badge.SetVariant(data.GetDefault("variant", "info"))
	badge.SetStyle("soft")
	badge.SetSize("sm")
	badge.SetText(data.GetDefault("status", ""))
	badge.AddToParent(pnlRow, pnlRow.Width - 92dip, (pnlRow.Height - 24dip) / 2, 76dip, 24dip)
End Sub
```

### 3. Click Event
```vb
Private Sub lst_ItemClick(Index As Int, Tag As Object)
	Log("Clicked item: " & Tag)
End Sub
```
