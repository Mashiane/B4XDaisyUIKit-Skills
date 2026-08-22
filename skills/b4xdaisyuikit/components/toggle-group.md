# toggle-group (`B4XDaisyToggleGroup`)

DaisyUI `ToggleGroup` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyToggleGroup`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyToggleGroup.bas`
- **Verified Demo Source**: B4XPageToggleGroup.bas (lines 46–204)
- **Web DaisyUI Mapping**: `.toggle-group` → `B4XDaisyToggleGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
''' </summary>
	y = AddSectionTitle("1. Basic Vertical Stack", y, maxW)
	Dim g1 As B4XDaisyToggleGroup
	g1.Initialize(Me, "group1")
	g1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g1.Legend = "Select notification channels"
	g1.Items = CreateMap("email": "Email Updates", "sms": "SMS Alerts", "push": "Push Notifications")
	g1.Checked = "email;push"
	y = y + g1.GetComputedHeight + 16dip

	''' <summary>
	''' Example 2: Vertical Stack with Left-Aligned Labels
	''' Demonstrates vertical stacked items with toggle on the right (label on left).
	''' </summary>
	y = AddSectionTitle("2. Vertical Stack (Labels Left, Toggle Right)", y, maxW)
	Dim g2 As B4XDaisyToggleGroup
	g2.Initialize(Me, "group2")
	g2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g2.Legend = "Select privacy options"
	g2.Direction = "vertical"
	g2.Alignment = "end"
	g2.ToggleColor = "success"
	g2.Items = CreateMap("tracking": "Allow tracking", "cookies": "Accept cookies", "analytics": "Send analytics")
	g2.Checked = "cookies"
	y = y + g2.GetComputedHeight + 16dip

	''' <summary>
	''' Example 3: Size Variants & LegendSize Dependency
	''' Demonstrates size scaling (XS and LG) and checks how LegendSize automatically couples to control size when set to "theme".
	''' </summary>
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyToggleGroup` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, RemoveItem, getItems` (+ 45 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Legend` | Legend | `String` | `Select options` |  |
| `LegendSize` | Legend Size | `String` | `theme` | theme|text-xs|text-sm|text-base|text-lg|text-xl |
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
| `ItemsSpec` | Items Spec | `String` | `` |  |
| `Direction` | Direction | `String` | `vertical` | vertical|horizontal |
| `Alignment` | Toggle Alignment | `String` | `start` | start|end |
| `ToggleColor` | Toggle Color | `String` | `neutral` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ToggleSize` | Toggle Size | `String` | `md` | xs|sm|md|lg|xl |
| `Gap` | Gap | `Int` | `8` |  |
| `RowGap` | Row Gap | `Int` | `8` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |

## 5. Declared Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddItem(sId As String, sText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `CheckItem(sId As String)`
- `Clear`
- `ClearError`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsItemChecked(sId As String) As Boolean`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveItem(sId As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemChecked(sId As String, bChecked As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `UncheckItem(sId As String)`
- `Validate As Boolean`
- `View As B4XView`
- `getAlignment As String`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getChecked As String`
- `getDirection As String`
- `getErrorText As String`
- `getGap As Int`
- `getHeight As Int`
- `getHintText As String`
- `getInputBorder As Boolean`
- `getIsValid As Boolean`
- `getItems As Map`
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
- `getShadow As String`
- `getTag As Object`
- `getTextColor As Int`
- `getToggleColor As String`
- `getToggleSize As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `setAlignment(sValue As String)`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setChecked(sCheckedIds As String)`
- `setDirection(sValue As String)`
- `setErrorText(sValue As String)`
- `setGap(iValue As Int)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputBorder(bValue As Boolean)`
- `setItems(mItems As Map)`
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
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setToggleColor(sValue As String)`
- `setToggleSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

