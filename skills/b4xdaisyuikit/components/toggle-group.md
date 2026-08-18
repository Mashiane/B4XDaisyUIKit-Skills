# toggle-group (`B4XDaisyToggleGroup`)

Managed group of toggle switches with legend, direction, validation, and item management.

## 1. Overview
- **Class**: `B4XDaisyToggleGroup`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToggleGroup.bas`
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
- `getAlignment As String`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getChecked As String`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `IsItemChecked(sId As String) As Boolean`
- `IsReady As Boolean`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveItem(sId As String)`
- `RemoveViewFromParent`
- `SendToBack`
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
- `SetItemChecked(sId As String, bChecked As Boolean)`
- `setItems(mItems As Map)`
- `setItemsSpec(sValue As String)`
- `setLabelAbove(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `ShowError(sErrorMessage As String)`
- `UncheckItem(sId As String)`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
