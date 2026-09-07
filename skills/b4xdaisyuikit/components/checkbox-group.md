# checkbox-group (`B4XDaisyCheckboxGroup`)

DaisyUI `CheckboxGroup` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCheckboxGroup`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCheckboxGroup.bas`
- **Verified Demo Source**: B4XPageCheckboxGroup.bas
- **Web DaisyUI Mapping**: `.checkbox-group` → `B4XDaisyCheckboxGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
''' </summary>
	y = AddSectionTitle("1. Basic Vertical Stack", y, maxW)
	Dim g1 As B4XDaisyCheckboxGroup
	g1.Initialize(Me, "group1")
	g1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g1.Legend = "Select favorite fruits"
	g1.Items = CreateMap("apples": "Apples", "oranges": "Oranges", "bananas": "Bananas")
	g1.Checked = "apples;bananas"
	y = y + g1.GetComputedHeight + 16dip

	''' <summary>
	''' Example 2: Vertical Stack with Left-Aligned Labels
	''' Demonstrates vertical stacked items with checkbox on the right (label on left).
	''' </summary>
	y = AddSectionTitle("2. Vertical Stack (Labels Left, Check Right)", y, maxW)
	Dim g2 As B4XDaisyCheckboxGroup
	g2.Initialize(Me, "group2")
	g2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
	g2.Legend = "Select notifications"
	g2.Direction = "vertical"
	g2.Alignment = "end"
	g2.CheckboxColor = "success"
	g2.Items = CreateMap("email": "Email", "sms": "SMS", "push": "Push Alerts")
	g2.Checked = "email;push"
	y = y + g2.GetComputedHeight + 16dip

	''' <summary>
	''' Example 3: Size Variants & LegendSize Dependency
	''' Demonstrates size scaling (XS and LG) and checks how LegendSize automatically couples to control size when set to "theme".
	''' </summary>
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCheckboxGroup` (in `Class_Globals` or local sub).
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
| `Legend` | Legend | `String` | Select options |  |
| `LegendSize` | Legend Size | `String` | theme | theme|text-xs|text-sm|text-base|text-lg|text-xl |
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
| `Direction` | Direction | `String` | vertical | vertical|horizontal |
| `Alignment` | Checkbox Alignment | `String` | start | start|end |
| `CheckboxColor` | Checkbox Color | `String` | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| `CheckboxSize` | Checkbox Size | `String` | md | xs|sm|md|lg|xl |
| `Gap` | Gap | `Int` | 8 |  |
| `RowGap` | Row Gap | `Int` | 8 |  |
| `Required` | Required | `Boolean` | False |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |

## 5. Declared Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

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
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `Clear`
- `setItems(Items As Map)`
- `getItems As Map`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `IsItemChecked(Id As String) As Boolean`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setCheckboxColor(Value As String)`
- `getCheckboxColor As String`
- `setCheckboxSize(Value As String)`
- `getCheckboxSize As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `GetComputedHeight As Int`
- `Release`
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

