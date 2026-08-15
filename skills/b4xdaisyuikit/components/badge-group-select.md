# badge-group-select (`B4XDaisyBadgeGroupSelect`)

A group of badge chips that act as a multi-select or single-select tag picker. Uses a fieldset-style bordered container with a legend caption.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyBadgeGroupSelect`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBadgeGroupSelect.bas`
- **Verified Demos**: `B4XPageBadge.bas, B4XPageBadgeGroupSelect.bas`
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
- `AddBadgeItem(Id As String, Text As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `CheckItem(Id As String)`
- `ClearBadgeItems`
- `ClearError`
- `ClearSelection`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsItemSelected(Id As String) As Boolean`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `RemoveBadgeItem(Id As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `UncheckItem(Id As String)`
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
- `setAutoHeight(Value As Boolean)`
- `setBackgroundColor(Value As Object)`
- `setBadgeCheckedColor(Value As Object)`
- `setBadgeCheckedTextColor(Value As Object)`
- `setBadgeColor(Value As String)`
- `setBadgeHeight(Value As String)`
- `setBadgeSelectionMode(Value As String)`
- `setBadgeSize(Value As String)`
- `setBadgeStyle(Value As String)`
- `setBorderColor(Value As Object)`
- `setBorderSize(Value As Int)`
- `setBorderStyle(Value As String)`
- `setChecked(CheckedIds As String)`
- `setErrorText(Value As String)`
- `setGap(Value As Int)`
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setInputBorder(Value As Boolean)`
- `setItems(Items As Object)`
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
- `setSelected(Value As String)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
