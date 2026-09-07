# fieldset (`B4XDaisyFieldset`)

DaisyUI `Fieldset` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFieldset`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyFieldset.bas`
- **Verified Demo Source**: B4XPageCheckbox.bas, B4XPageCheckboxGroup.bas, B4XPageFieldset.bas, B4XPageRadio.bas, B4XPageRadioGroup.bas, B4XPageToggle.bas, B4XPageToggleGroup.bas
- **Web DaisyUI Mapping**: `.fieldset` → `B4XDaisyFieldset`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `Component` | ``fieldset`, `label`` | Member | `.SetComponent(...)` | Native configuration |
| `Parts` | ``fieldset-legend`` | Member | `.SetParts(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<fieldset class="fieldset">
  <legend class="fieldset-legend">{title}</legend>
  {CONTENT}
  <p class="label">{description}</p>
</fieldset>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddLabelAboveFieldset
    Dim fs As B4XDaisyFieldset
    fs.Initialize(Me, "fs_labelabove")

    Dim boxW As Int = Min(Root.Width - 24dip, 320dip)
    Dim left As Int = 12dip
    Dim h As Int = 1dip
    If boxW < Root.Width - 24dip Then left = (Root.Width - boxW) / 2

    Dim v As B4XView = fs.AddToParent(pnlContent, left, currentY, boxW, h)
    fs.setAutoHeight(True)
    fs.setLabelAbove(True)
    fs.setLegend("Label Above Fieldset (Visual Consistency)")
    ApplyDemoFieldsetStyle(fs)

    Dim inputView As B4XView = CreateNativeInput("Some input text")
    fs.AddContentView(inputView, 0, 0, boxW - (fs.getPadding * 2dip), 42dip)

    fs.Refresh
    currentY = currentY + v.Height + gap

    Dim fsRequired As B4XDaisyFieldset
    fsRequired.Initialize(Me, "fs_labelabove_required")

    Dim v2 As B4XView = fsRequired.AddToParent(pnlContent, left, currentY, boxW, h)
    fsRequired.setAutoHeight(True)
    fsRequired.setLabelAbove(True)
    fsRequired.setRequired(True)
    fsRequired.setLegend("Required Label Above Fieldset")
    ApplyDemoFieldsetStyle(fsRequired)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyFieldset` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `ApplyDesignerProps, getRequired, getLegend` (+ 24 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Legend` | Legend | `String` | Legend Caption |  |
| `LegendSize` | Legend Size | `String` | text-sm | text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | outlined | outlined|ghost|inset |
| `Padding` | Padding | `Int` | 16 |  |
| `AutoHeight` | Auto Height | `Boolean` | False |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BorderSize` | Border Size | `Int` | 1 |  |
| `InputBorder` | Input Border | `Boolean` | False |  |
| `LabelAbove` | Label Above | `Boolean` | False |  |
| `Required` | Required | `Boolean` | False |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ApplyDesignerProps(Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setLegend(L As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(V As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Object)`
- `getTextColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `GetContentPanel As B4XView`
- `AddContentView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `getTag As Object`
- `setTag(Value As Object)`
- `Refresh`
- `BeginUpdate`
- `EndUpdate`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
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
- `Release`
- `View As B4XView`

## 7. Public Fields
(none declared in packaged source)

## Canonical Creation Pattern & Recipe

`B4XDaisyFieldset` groups related form inputs with a legend title and border.

```vb
Dim fs As B4XDaisyFieldset
fs.Initialize(Me, "fs")
fs.Legend = "Personal Information"
fs.Border = True
fs.AddToParent(pnlHost, pad, y, maxW, 1dip)

' Mount form inputs inside GetContentPanel:
Dim pnlFs As B4XView = fs.GetContentPanel
Dim inpName As B4XDaisyInput
inpName.Initialize(Me, "inpName")
inpName.LabelAbove = "Full Name"
inpName.AddToParent(pnlFs, 12dip, 12dip, pnlFs.Width - 24dip, 48dip)

' Adjust height to wrap children:
fs.FitContentHeight
y = y + fs.GetComputedHeight + gap
```
