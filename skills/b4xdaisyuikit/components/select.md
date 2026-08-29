# select (`B4XDaisySelect`)

DaisyUI `Select` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySelect`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySelect.bas`
- **Verified Demo Source**: B4XPageEnjoyHint.bas (lines 26–26), B4XPageFieldset.bas (lines 184–184), B4XPageFocus.bas (lines 20–100), B4XPageNavScrollDock.bas (lines 180–180), B4XPageSelect.bas (lines 70–373)
- **Web DaisyUI Mapping**: `.select` → `B4XDaisySelect`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``select`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``select-ghost`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `color` | ``select-neutral`, `select-primary`, `select-secondary`, `select-accent`, `select-info`, `select-success`, `select-warning`, `select-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `size` | ``select-xs`, `select-sm`, `select-md`, `select-lg`, `select-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<select class="select {MODIFIER}">
  <option>Option</option>
</select>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' -------------------------------------------------------
    y = AddSectionTitle("Base (Default)", y, maxW)
    Dim c1 As B4XDaisySelect
    c1.Initialize(Me, "sel1")
    c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
    c1.Items = CreateMap("crimson": "Crimson", "amber": "Amber", "velvet": "Velvet")
    c1.Placeholder = "Pick a color"
    c1.LabelAbove = "Color"
    c1.Tag = "base"
    y = y + c1.GetComputedHeight + 16dip

    ' -------------------------------------------------------
    ' Example 2: Ghost style select (DaisyUI Example 2)
    ' Demonstrates: transparent background, border hidden until focus
    ' -------------------------------------------------------
    y = AddSectionTitle("Ghost", y, maxW)
    Dim c2 As B4XDaisySelect
    c2.Initialize(Me, "sel2")
    c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
    c2.Items = CreateMap("inter": "Inter", "poppins": "Poppins", "raleway": "Raleway")
    c2.Placeholder = "Pick a font"
    c2.LabelAbove = "Font"
    c2.Variant = "ghost"
    c2.Tag = "ghost"
    y = y + c2.GetComputedHeight + 16dip

    ' -------------------------------------------------------
    ' Example 3: Primary color (DaisyUI Example 4)
    ' Demonstrates: primary color variant border
    ' -------------------------------------------------------
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySelect` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Picker/Select component requiring item source binding (`.SetItems` / `.Options` / `.Items`).

### Deviation Mechanism
- Picker/Select component requiring item source binding (`.SetItems` / `.Options` / `.Items`).

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getTag, UpdateTheme, getVariant` (+ 33 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Variant` | Variant | `String` | `none` | none|ghost|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `md` | md|lg|xl |
| `Placeholder` | Placeholder | `String` | `Pick an option` |  |
| `LabelAbove` | Label Above | `String` | `` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `Radius` | Corner Radius | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Alpha` | Alpha | `Float` | `1.0` |  |
| `MaxDropdownRows` | Max Dropdown Rows | `Int` | `5` |  |
| `ActiveColor` | Active Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |

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
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `LoadCountries`
- `LoadMonths`
- `Open`
- `ReceiveFocus`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `Toggle`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWidth As Int`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

