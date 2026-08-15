# radio-group (`B4XDaisyRadioGroup`)

Managed group of radio options with legend, direction, error state, and validation. Preferred over individual `B4XDaisyRadio` for forms.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyRadioGroup`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRadioGroup.bas`
- **Verified Demos**: `B4XPageRadioGroup.bas`
- **Web DaisyUI Mapping**: `.radio-group` → `B4XDaisyRadioGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim rg As B4XDaisyRadioGroup
rg.Initialize(Me, "rg")
rg.AddToParent(pnlHost, pad, y, maxW, 200dip)
rg.Legend = "Choose a plan"
rg.RadioColor = "primary"
rg.Direction = "vertical"
rg.AutoHeight = True
rg.Required = True

rg.AddItem("monthly", "Monthly billing")
rg.AddItem("annual", "Annual billing")
rg.AddItem("lifetime", "Lifetime license")
rg.setChecked("monthly")
y = y + rg.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Mutually exclusive group of radio options with automatic state binding.
- Configure items using `ItemsSpec` (pipe-delimited string: `"val1:Label 1|val2:Label 2"`).
- Set `Direction = "vertical"` or `"horizontal"`.
- Read or assign active choice via `SelectedValue`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Legend | Legend | String | Select an option |  |
| LegendSize | Legend Size | String | theme | theme|text-xs|text-sm|text-base|text-lg|text-xl |
| LegendBold | Legend Bold | Boolean | False |  |
| LabelAbove | Label Above | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| BorderStyle | Border Style | String | outlined | outlined|ghost|inset |
| Padding | Padding | Int | 16 |  |
| AutoHeight | Auto Height | Boolean | True |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| BorderSize | Border Size | Int | 1 |  |
| InputBorder | Input Border | Boolean | False |  |
| Direction | Direction | String | vertical | vertical|horizontal |
| Alignment | Radio Alignment | String | start | start|end |
| RadioColor | Radio Color | String | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| RadioSize | Radio Size | String | md | xs|sm|md|lg|xl |
| Gap | Gap | Int | 8 |  |
| RowGap | Row Gap | Int | 8 |  |
| GroupName | Group Name | String |  |  |
| Required | Required | Boolean | False |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |

## 5. Declared Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddItem(Id As String, Text As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveItem(Id As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `setAlignment(Value As String)`
- `setAutoHeight(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBorderColor(Value As Int)`
- `setBorderSize(Value As Int)`
- `setBorderStyle(Value As String)`
- `setChecked(CheckedIds As String)`
- `setDirection(Value As String)`
- `setErrorText(Value As String)`
- `setGap(Value As Int)`
- `setGroupName(Value As String)`
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setInputBorder(Value As Boolean)`
- `setItems(Items As Map)`
- `setLabelAbove(Value As Boolean)`
- `setLeft(Value As Int)`
- `setLegend(Value As String)`
- `setLegendBold(Value As Boolean)`
- `setLegendSize(Value As String)`
- `setPadding(Value As Int)`
- `setRadioColor(Value As String)`
- `setRadioSize(Value As String)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setRowGap(Value As Int)`
- `setSelectedIndex(Index As Int)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
