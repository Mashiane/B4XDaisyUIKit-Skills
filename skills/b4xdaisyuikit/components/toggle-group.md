# toggle-group (`B4XDaisyToggleGroup`)

Managed group of toggle switches with legend, direction, validation, and item management.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyToggleGroup`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToggleGroup.bas`
- **Verified Demos**: `B4XPageToggleGroup.bas`
- **Web DaisyUI Mapping**: `.toggle-group` → `B4XDaisyToggleGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tg As B4XDaisyToggleGroup
tg.Initialize(Me, "tg")
tg.AddToParent(pnlHost, pad, y, maxW, 200dip)
tg.Legend = "Notification settings"
tg.ToggleColor = "primary"
tg.Direction = "vertical"
tg.AutoHeight = True

tg.AddItem("email", "Email notifications")
tg.AddItem("sms", "SMS notifications")
tg.AddItem("push", "Push notifications")
tg.setChecked("email|push")   ' pipe-separated ids
y = y + tg.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Segmented group of toggle switches for feature configurations.
- Configure options via `ItemsSpec` (pipe-delimited string: `"wifi:Wi-Fi|bt:Bluetooth"`).
- Retrieve checked items as a `List` via `SelectedValues`.
- Handle changes in the `SelectionChanged (SelectedValues As List)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Legend | Legend | String | Select options |  |
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
| ItemsSpec | Items Spec | String |  |  |
| Direction | Direction | String | vertical | vertical|horizontal |
| Alignment | Toggle Alignment | String | start | start|end |
| ToggleColor | Toggle Color | String | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| ToggleSize | Toggle Size | String | md | xs|sm|md|lg|xl |
| Gap | Gap | Int | 8 |  |
| RowGap | Row Gap | Int | 8 |  |
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
- `CheckItem(Id As String)`
- `Clear`
- `ClearError`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsItemChecked(Id As String) As Boolean`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveItem(Id As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `UncheckItem(Id As String)`
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
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setInputBorder(Value As Boolean)`
- `setItems(Items As Map)`
- `setItemsSpec(Value As String)`
- `setLabelAbove(Value As Boolean)`
- `setLeft(Value As Int)`
- `setLegend(Value As String)`
- `setLegendBold(Value As Boolean)`
- `setLegendSize(Value As String)`
- `setPadding(Value As Int)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setRowGap(Value As Int)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setToggleColor(Value As String)`
- `setToggleSize(Value As String)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
