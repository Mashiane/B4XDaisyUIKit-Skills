# badge-group-select (`B4XDaisyBadgeGroupSelect`)

DaisyUI `BadgeGroupSelect` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyBadgeGroupSelect`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyBadgeGroupSelect.bas`
- **Verified Demo Source**: B4XPageBadge.bas (lines 18–459)
- **Web DaisyUI Mapping**: `.badge-group-select` → `B4XDaisyBadgeGroupSelect`

## 2. Verified B4X Syntax & Recipe
```b4x
y = y + 22dip
	
	singleGroup.Initialize(Me, "singlegroup")
	Dim v1 As B4XView = singleGroup.AddToParent(pnlHost, PAGE_PAD, y, MaxW, 1dip)
	singleGroup.setLegend("Priority")
	singleGroup.setBadgeSelectionMode("single")
	singleGroup.setBadgeColor("neutral")
	singleGroup.setBadgeStyle("solid")
	singleGroup.setBadgeCheckedColor(B4XDaisyVariants.ResolveBackgroundColorVariant("success", xui.Color_RGB(34, 197, 94)))
	singleGroup.setBadgeCheckedTextColor(B4XDaisyVariants.ResolveTextColorVariant("success", xui.Color_White))
	singleGroup.setItemsSpec("low:Low|normal:Normal|high:High|urgent:Urgent")
	
		singleGroup.setChecked("normal")
	
	lblSingleState = CreateStateLabel("Selected: normal")
	pnlHost.AddView(lblSingleState, PAGE_PAD, y + v1.Height + 8dip, MaxW, 18dip)
	y = y + v1.Height + 34dip

	Dim titleLbl2 As B4XView = CreateSectionLabel("BadgeGroupSelect - Multi Select", 14, xui.Color_RGB(30, 41, 59), True)
	pnlHost.AddView(titleLbl2, PAGE_PAD, y, MaxW, 20dip)
	y = y + 22dip
	
	multiGroup.Initialize(Me, "multigroup")
	Dim v2 As B4XView = multiGroup.AddToParent(pnlHost, PAGE_PAD, y, MaxW, 1dip)
	multiGroup.setLegend("Skills")
	multiGroup.setBadgeSelectionMode("multi")
	multiGroup.setBadgeColor("neutral")
	multiGroup.setBadgeStyle("solid")
	multiGroup.setBadgeCheckedColor(B4XDaisyVariants.ResolveBackgroundColorVariant("success", xui.Color_RGB(34, 197, 94)))
	multiGroup.setBadgeCheckedTextColor(B4XDaisyVariants.ResolveTextColorVariant("success", xui.Color_White))
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyBadgeGroupSelect` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, RemoveBadgeItem, ClearBadgeItems` (+ 51 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Legend` | Legend | `String` | `Select options` |  |
| `LegendSize` | Legend Size | `String` | `text-sm` | text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | `False` |  |
| `LabelAbove` | Label Above | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | `outlined` | outlined|ghost|inset |
| `Padding` | Padding | `Int` | `16` |  |
| `AutoHeight` | Auto Height | `Boolean` | `True` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BorderSize` | Border Size | `Int` | `1` |  |
| `InputBorder` | Input Border | `Boolean` | `False` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `BadgeSelectionMode` | Badge Selection Mode | `String` | `multi` | single|multi |
| `BadgeSize` | Badge Size | `String` | `md` | xs|sm|md|lg|xl |
| `BadgeHeight` | Badge Height | `String` | `8` |  |
| `BadgeColor` | Badge Color | `String` | `neutral` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BadgeCheckedColor` | Badge Checked Color | `Color` | `0x00000000` |  |
| `BadgeCheckedTextColor` | Badge Checked Text Color | `Color` | `0x00000000` |  |
| `Gap` | Gap | `Int` | `8` |  |
| `RowGap` | Row Gap | `Int` | `8` |  |

## 5. Declared Events
- `ItemChanged (Item As Map)`
- `FocusChanged (HasFocus As Boolean)`
- `Changed (SelectedIds As List)`

## 6. Public Methods & APIs
- `AddBadgeItem(sId As String, sText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `CheckItem(sId As String)`
- `ClearBadgeItems`
- `ClearError`
- `ClearSelection`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsItemSelected(sId As String) As Boolean`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `RemoveBadgeItem(sId As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemChecked(sId As String, bChecked As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `UncheckItem(sId As String)`
- `Validate As Boolean`
- `View As B4XView`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBadgeCheckedColor As Int`
- `getBadgeCheckedTextColor As Int`
- `getBadgeColor As String`
- `getBadgeHeight As String`
- `getBadgeSelectionMode As String`
- `getBadgeSize As String`
- `getBadgeStyle As String`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getChecked As String`
- `getErrorText As String`
- `getGap As Int`
- `getHeight As Int`
- `getHintText As String`
- `getInputBorder As Boolean`
- `getIsValid As Boolean`
- `getItems As List`
- `getItemsSpec As String`
- `getLabelAbove As Boolean`
- `getLeft As Int`
- `getLegend As String`
- `getLegendBold As Boolean`
- `getLegendSize As String`
- `getPadding As Int`
- `getRequired As Boolean`
- `getRounded As String`
- `getRowGap As Int`
- `getSelected As String`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(oValue As Object)`
- `setBadgeCheckedColor(oValue As Object)`
- `setBadgeCheckedTextColor(oValue As Object)`
- `setBadgeColor(sValue As String)`
- `setBadgeHeight(sValue As String)`
- `setBadgeSelectionMode(sValue As String)`
- `setBadgeSize(sValue As String)`
- `setBadgeStyle(sValue As String)`
- `setBorderColor(oValue As Object)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setChecked(sCheckedIds As String)`
- `setErrorText(sValue As String)`
- `setGap(iValue As Int)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputBorder(bValue As Boolean)`
- `setItems(oItems As Object)`
- `setItemsSpec(sValue As String)`
- `setLabelAbove(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLegend(sValue As String)`
- `setLegendBold(bValue As Boolean)`
- `setLegendSize(sValue As String)`
- `setPadding(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setRowGap(iValue As Int)`
- `setSelected(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

