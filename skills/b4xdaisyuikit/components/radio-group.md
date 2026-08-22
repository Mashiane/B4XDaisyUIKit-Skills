# radio-group (`B4XDaisyRadioGroup`)

DaisyUI `RadioGroup` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyRadioGroup`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRadioGroup.bas`
- **Verified Demo Source**: B4XPageRadioGroup.bas (lines 46–204)
- **Web DaisyUI Mapping**: `.radio-group` → `B4XDaisyRadioGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
''' </summary>
	y = AddSectionTitle("1. Basic Vertical Stack", y, maxW)
	Dim g1 As B4XDaisyRadioGroup
	g1.Initialize(Me, "group1")
	g1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g1.Legend = "Select your gender"
	g1.Items = CreateMap("male": "Male", "female": "Female", "other": "Other")
	g1.Checked = "male"
	y = y + g1.GetComputedHeight + 16dip

	''' <summary>
	''' Example 2: Vertical Stack with Left-Aligned Labels
	''' Demonstrates vertical stacked items with radio on the right (label on left).
	''' </summary>
	y = AddSectionTitle("2. Vertical Stack (Labels Left, Radio Right)", y, maxW)
	Dim g2 As B4XDaisyRadioGroup
	g2.Initialize(Me, "group2")
	g2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g2.Legend = "Choose a plan"
	g2.Direction = "vertical"
	g2.Alignment = "end"
	g2.RadioColor = "primary"
	g2.Items = CreateMap("free": "Free", "pro": "Pro Plan", "ent": "Enterprise")
	g2.Checked = "pro"
	y = y + g2.GetComputedHeight + 16dip

	''' <summary>
	''' Example 3: Size Variants & LegendSize Dependency
	''' Demonstrates size scaling (XS and LG) and checks how LegendSize automatically couples to control size when set to "theme".
	''' </summary>
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyRadioGroup` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, RemoveItem, getItems` (+ 44 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Legend` | Legend | `String` | `Select an option` |  |
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
| `Direction` | Direction | `String` | `vertical` | vertical|horizontal |
| `Alignment` | Radio Alignment | `String` | `start` | start|end |
| `RadioColor` | Radio Color | `String` | `neutral` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `RadioSize` | Radio Size | `String` | `md` | xs|sm|md|lg|xl |
| `Gap` | Gap | `Int` | `8` |  |
| `RowGap` | Row Gap | `Int` | `8` |  |
| `GroupName` | Group Name | `String` | `` |  |
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
- `Clear`
- `ClearError`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveItem(sId As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
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
- `getGroupName As String`
- `getHeight As Int`
- `getHintText As String`
- `getInputBorder As Boolean`
- `getIsValid As Boolean`
- `getItems As Map`
- `getLabelAbove As Boolean`
- `getLeft As Int`
- `getLegend As String`
- `getLegendBold As Boolean`
- `getLegendSize As String`
- `getPadding As Int`
- `getRadioColor As String`
- `getRadioSize As String`
- `getRequired As Boolean`
- `getRounded As String`
- `getRowGap As Int`
- `getSelectedIndex As Int`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As Int`
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
- `setGroupName(sValue As String)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputBorder(bValue As Boolean)`
- `setItems(mItems As Map)`
- `setLabelAbove(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLegend(sValue As String)`
- `setLegendBold(bValue As Boolean)`
- `setLegendSize(sValue As String)`
- `setPadding(iValue As Int)`
- `setRadioColor(sValue As String)`
- `setRadioSize(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setRowGap(iValue As Int)`
- `setSelectedIndex(iIndex As Int)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

