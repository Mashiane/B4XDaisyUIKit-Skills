# select (`B4XDaisySelect`)

Dropdown option picker with search, multi-select, placeholder, and validation.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySelect`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySelect.bas`
- **Verified Demos**: `B4XPageEnjoyHint.bas, B4XPageFieldset.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageSelect.bas`
- **Web DaisyUI Mapping**: `.select` → `B4XDaisySelect`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sel As B4XDaisySelect
sel.Initialize(Me, "sel")
sel.AddToParent(pnlHost, pad, y, maxW, 52dip)
sel.Variant = "primary"
sel.LabelAbove = "Country"
sel.Placeholder = "Select a country"
sel.Required = True
sel.LoadCountries         ' built-in country list

' Or add custom items
sel.AddItem("us", "United States")
sel.AddItem("uk", "United Kingdom")
y = y + sel.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Dropdown option selector with floating label and validation rules.
- Populate options using `Options` (List) or pipe-delimited string.
- Assign floating label text to `LabelAbove` and guidance to `Placeholder`.
- Call `.Validate()` to check selection requirements.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Variant | Variant | String | none | none|ghost|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | md | md|lg|xl |
| Placeholder | Placeholder | String | Pick an option |  |
| LabelAbove | Label Above | String |  |  |
| HintText | Hint Text | String |  |  |
| Required | Required | Boolean | False |  |
| ErrorText | Error Text | String |  |  |
| Radius | Corner Radius | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Alpha | Alpha | Float | 1.0 |  |
| MaxDropdownRows | Max Dropdown Rows | Int | 5 |  |
| ActiveColor | Active Color | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |

## 5. Declared Events
- `Changed(Index As Int, Key As String, Value As String)`
- `Click(Tag As Object)`

## 6. Public Methods & APIs
- `AddItem(Value As String, Text As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `Close`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `LoadCountries`
- `LoadMonths`
- `Open`
- `ReceiveFocus`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `Toggle`
- `UpdateTheme`
- `Validate As Boolean`
- `getActiveColor As String`
- `getAlpha As Float`
- `getBackgroundColor As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getHeight As Int`
- `getHintText As String`
- `getIsOpen As Boolean`
- `getIsValid As Boolean`
- `getItemValues As List`
- `getItems As List`
- `getLabelAbove As String`
- `getLeft As Int`
- `getMaxDropdownRows As Int`
- `getPlaceholder As String`
- `getRadius As String`
- `getRequired As Boolean`
- `getRounded As String`
- `getSelectedIndex As Int`
- `getSelectedKey As String`
- `getSelectedValue As String`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getValue As String`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setActiveColor(Value As String)`
- `setAlpha(Value As Float)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFocus(Value As Boolean)`
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setItems(KeyValues As Map)`
- `setLabelAbove(Value As String)`
- `setLeft(Value As Int)`
- `setMaxDropdownRows(Value As Int)`
- `setPlaceholder(Value As String)`
- `setRadius(Value As String)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setSelectedIndex(Value As Int)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setValue(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
