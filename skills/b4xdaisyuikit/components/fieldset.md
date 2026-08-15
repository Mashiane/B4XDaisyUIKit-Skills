# fieldset (`B4XDaisyFieldset`)

Bordered container with a legend caption for grouping form controls (checkboxes, radios, toggles, inputs).

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFieldset`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFieldset.bas`
- **Verified Demos**: `B4XPageCheckbox.bas, B4XPageCheckboxGroup.bas, B4XPageFieldset.bas, B4XPageRadio.bas, B4XPageRadioGroup.bas, B4XPageToggle.bas, B4XPageToggleGroup.bas`
- **Web DaisyUI Mapping**: `.fieldset` → `B4XDaisyFieldset`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim fs As B4XDaisyFieldset
fs.Initialize(Me, "fs")
fs.AddToParent(pnlHost, pad, y, maxW, 160dip)
fs.Legend = "Preferences"
fs.BorderStyle = "outlined"
fs.AutoHeight = True
fs.Required = True

' Add form controls inside the content panel
Dim chk As B4XDaisyCheckbox
chk.Initialize(Me, "chk")
chk.Text = "Subscribe to newsletter"
fs.AddContentView(chk.getView, 0, 0, maxW, 40dip)
y = y + fs.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Form section container with bordered legend title and description text.
- Mount child form fields into `fieldset.AddViewToContent(view, left, top, width, height)`.
- Set `Legend` for the header label and `Description` for helper guidelines.
- Use `Variant` to apply theme accent borders to the fieldset box.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Legend | Legend | String | Legend Caption |  |
| LegendSize | Legend Size | String | text-sm | text-xs|text-sm|text-base|text-lg|text-xl |
| LegendBold | Legend Bold | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| BorderStyle | Border Style | String | outlined | outlined|ghost|inset |
| Padding | Padding | Int | 16 |  |
| AutoHeight | Auto Height | Boolean | False |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| BorderSize | Border Size | Int | 1 |  |
| InputBorder | Input Border | Boolean | False |  |
| LabelAbove | Label Above | Boolean | False |  |
| Required | Required | Boolean | False |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddContentView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ApplyDesignerProps(Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `BeginUpdate`
- `BringToFront`
- `ClearContent`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `EndUpdate`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getHeight As Int`
- `getInputBorder As Boolean`
- `getLabelAbove As Boolean`
- `getLeft As Int`
- `getLegend As String`
- `getLegendBold As Boolean`
- `getLegendSize As String`
- `getPadding As Int`
- `getRequired As Boolean`
- `getRounded As String`
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
- `setBorderColor(Value As Object)`
- `setBorderSize(Value As Int)`
- `setBorderStyle(s As String)`
- `setHeight(Value As Int)`
- `setInputBorder(Value As Boolean)`
- `setLabelAbove(Value As Boolean)`
- `setLeft(Value As Int)`
- `setLegend(l As String)`
- `setLegendBold(Value As Boolean)`
- `setLegendSize(s As String)`
- `setPadding(Value As Int)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setRoundedBox(b As Boolean)`
- `setShadow(s As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(v As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
None declared.
