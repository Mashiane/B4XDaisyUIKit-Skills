# fieldset (`B4XDaisyFieldset`)

DaisyUI `Fieldset` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFieldset`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyFieldset.bas`
- **Verified Demo Source**: B4XPageCheckbox.bas (lines 295–295), B4XPageCheckboxGroup.bas (lines 161–161), B4XPageFieldset.bas (lines 73–329), B4XPageRadio.bas (lines 296–296), B4XPageRadioGroup.bas (lines 161–161), B4XPageToggle.bas (lines 301–301), B4XPageToggleGroup.bas (lines 161–161)
- **Web DaisyUI Mapping**: `.fieldset` → `B4XDaisyFieldset`

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
| `Legend` | Legend | `String` | `Legend Caption` |  |
| `LegendSize` | Legend Size | `String` | `text-sm` | text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | `outlined` | outlined|ghost|inset |
| `Padding` | Padding | `Int` | `16` |  |
| `AutoHeight` | Auto Height | `Boolean` | `False` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BorderSize` | Border Size | `Int` | `1` |  |
| `InputBorder` | Input Border | `Boolean` | `False` |  |
| `LabelAbove` | Label Above | `Boolean` | `False` |  |
| `Required` | Required | `Boolean` | `False` |  |

## 5. Declared Events
- *(No custom events declared)*

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
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
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
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(oValue As Object)`
- `setBorderColor(oValue As Object)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setHeight(iValue As Int)`
- `setInputBorder(bValue As Boolean)`
- `setLabelAbove(bValue As Boolean)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

