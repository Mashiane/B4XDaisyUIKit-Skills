# select (`B4XDaisySelect`)

DaisyUI `Select` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySelect`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisySelect.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisySelect.bas)
- **Verified Demo Source**: B4XPageEnjoyHint.bas, B4XPageFieldset.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageSelect.bas
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
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `IsReady As Boolean`
- `UpdateTheme`
- `setVariant(Value As String)`
- `getVariant As String`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setMaxDropdownRows(Value As Int)`
- `getMaxDropdownRows As Int`
- `setItems(KeyValues As Map)`
- `getItems As List`
- `setSelectedIndex(Value As Int)`
- `getSelectedIndex As Int`
- `getSelectedValue As String`
- `AddItem(Value As String, Text As String)`
- `LoadMonths`
- `LoadCountries`
- `getItemValues As List`
- `getSelectedKey As String`
- `getValue As String`
- `setValue(Value As String)`
- `Clear`
- `Open`
- `Close`
- `Toggle`
- `getIsOpen As Boolean`
- `RemoveViewFromParent`
- `Release`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `GetComputedHeight As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

