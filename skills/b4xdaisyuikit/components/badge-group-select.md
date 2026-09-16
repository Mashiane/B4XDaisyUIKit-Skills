# badge-group-select (`B4XDaisyBadgeGroupSelect`)

DaisyUI `BadgeGroupSelect` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyBadgeGroupSelect`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyBadgeGroupSelect.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyBadgeGroupSelect.bas)
- **Verified Demo Source**: B4XPageBadge.bas
- **Web DaisyUI Mapping**: `.badge-group-select` → `B4XDaisyBadgeGroupSelect`

## 2. Verified B4X Syntax & Recipe
```b4x
y = y + 22dip
	
	Dim singleGroup As B4XDaisyBadgeGroupSelect
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
| `Legend` | Legend | `String` | Select options |  |
| `LegendSize` | Legend Size | `String` | text-sm | text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | False |  |
| `LabelAbove` | Label Above | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | outlined | outlined|ghost|inset |
| `Padding` | Padding | `Int` | 16 |  |
| `AutoHeight` | Auto Height | `Boolean` | True |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BorderSize` | Border Size | `Int` | 1 |  |
| `InputBorder` | Input Border | `Boolean` | False |  |
| `Required` | Required | `Boolean` | False |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |
| `BadgeSelectionMode` | Badge Selection Mode | `String` | multi | single|multi |
| `BadgeSize` | Badge Size | `String` | md | xs|sm|md|lg|xl |
| `BadgeHeight` | Badge Height | `String` | 8 |  |
| `BadgeColor` | Badge Color | `String` | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BadgeCheckedColor` | Badge Checked Color | `Color` | 0x00000000 |  |
| `BadgeCheckedTextColor` | Badge Checked Text Color | `Color` | 0x00000000 |  |
| `Gap` | Gap | `Int` | 8 |  |
| `RowGap` | Row Gap | `Int` | 8 |  |

## 5. Declared Events
- `ItemChanged (Item As Map)`
- `FocusChanged (HasFocus As Boolean)`
- `Changed (SelectedIds As List)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddBadgeItem(Id As String, Text As String)`
- `RemoveBadgeItem(Id As String)`
- `ClearBadgeItems`
- `setItems(Items As Object)`
- `getItems As List`
- `setItemsSpec(Value As String)`
- `getItemsSpec As String`
- `setBadgeSelectionMode(Value As String)`
- `getBadgeSelectionMode As String`
- `setSelected(Value As String)`
- `getSelected As String`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `IsItemSelected(Id As String) As Boolean`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `ClearSelection`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Object)`
- `getTextColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setBadgeHeight(Value As String)`
- `getBadgeHeight As String`
- `setBadgeColor(Value As String)`
- `getBadgeColor As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setBadgeCheckedColor(Value As Object)`
- `getBadgeCheckedColor As Int`
- `setBadgeCheckedTextColor(Value As Object)`
- `getBadgeCheckedTextColor As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setTag(Value As Object)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

