# badge-group-select (`B4XDaisyBadgeGroupSelect`)

A group of badge chips that act as a multi-select or single-select tag picker. Uses a fieldset-style bordered container with a legend caption.

## 1. Overview
- **Class**: `B4XDaisyBadgeGroupSelect`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBadgeGroupSelect.bas`
- **Web DaisyUI Mapping**: `.badge-group-select` → `B4XDaisyBadgeGroupSelect`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim bgs As B4XDaisyBadgeGroupSelect
bgs.Initialize(Me, "bgs")
bgs.AddToParent(pnlHost, pad, y, maxW, 80dip)
bgs.Legend = "Select tags"
bgs.BadgeSelectionMode = "multi"
bgs.BadgeColor = "primary"
bgs.AddBadgeItem("vue", "Vue")
bgs.AddBadgeItem("react", "React")
bgs.AddBadgeItem("svelte", "Svelte")
y = y + bgs.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Configure items via `ItemsSpec` (pipe or comma-delimited string of options).
- Set `SelectionMode = "single"` for radio-like filtering or `"multiple"` for tag clouds.
- Read or assign active selections via `SelectedIds` (List).
- Handle selection changes in the `SelectionChanged (SelectedIds As List)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Legend | Legend | String | Select options |  |
| LegendSize | Legend Size | String | text-sm | text-xs|text-sm|text-base|text-lg|text-xl |
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
| Required | Required | Boolean | False |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |
| BadgeSelectionMode | Badge Selection Mode | String | multi | single|multi |
| BadgeSize | Badge Size | String | md | xs|sm|md|lg|xl |
| BadgeHeight | Badge Height | String | 8 |  |
| BadgeColor | Badge Color | String | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| BadgeCheckedColor | Badge Checked Color | Color | 0x00000000 |  |
| BadgeCheckedTextColor | Badge Checked Text Color | Color | 0x00000000 |  |
| Gap | Gap | Int | 8 |  |
| RowGap | Row Gap | Int | 8 |  |

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
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `IsItemSelected(sId As String) As Boolean`
- `IsReady As Boolean`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `ReceiveFocus`
- `Refresh`
- `RemoveBadgeItem(sId As String)`
- `RemoveViewFromParent`
- `SendToBack`
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
- `SetItemChecked(sId As String, bChecked As Boolean)`
- `setItems(oItems As Object)`
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
- `setSelected(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(oValue As Object)`
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
