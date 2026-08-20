# select (`B4XDaisySelect`)

Dropdown option picker with search, multi-select, placeholder, and validation.

## 1. Overview
- **Class**: `B4XDaisySelect`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySelect.bas`
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
- `AddItem(sValue As String, sText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `Close`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As String`
- `getAlpha As Float`
- `getBackgroundColor As Int`
- `GetComputedHeight As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getHeight As Int`
- `getHintText As String`
- `getIsOpen As Boolean`
- `getIsValid As Boolean`
- `getItems As List`
- `getItemValues As List`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `LoadCountries`
- `LoadMonths`
- `Open`
- `ReceiveFocus`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `setActiveColor(sValue As String)`
- `setAlpha(fValue As Float)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFocus(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setItems(mKeyValues As Map)`
- `setLabelAbove(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMaxDropdownRows(iValue As Int)`
- `setPlaceholder(sValue As String)`
- `setRadius(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setSelectedIndex(iValue As Int)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ShowError(sErrorMessage As String)`
- `Toggle`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
