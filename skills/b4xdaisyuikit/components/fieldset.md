# fieldset (`B4XDaisyFieldset`)

Bordered container with a legend caption for grouping form controls (checkboxes, radios, toggles, inputs).

## 1. Overview
- **Class**: `B4XDaisyFieldset`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFieldset.bas`
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
- `AddContentView(vView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `ApplyDesignerProps(mProps As Map)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BeginUpdate`
- `BringToFront`
- `ClearContent`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `EndUpdate`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `isRounded As Boolean`
- `isRoundedBox As Boolean`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(oValue As Object)`
- `setBorderColor(oValue As Object)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setHeight(iValue As Int)`
- `setInputBorder(bValue As Boolean)`
- `setLabelAbove(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLegend(sL As String)`
- `setLegendBold(bValue As Boolean)`
- `setLegendSize(sValue As String)`
- `setPadding(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sV As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
None declared.
