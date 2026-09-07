# radio (`B4XDaisyRadio`)

DaisyUI `Radio` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyRadio`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRadio.bas`
- **Verified Demo Source**: B4XPageFocus.bas, B4XPageRadio.bas
- **Web DaisyUI Mapping**: `.radio` → `B4XDaisyRadio`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``radio`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``radio-neutral`, `radio-primary`, `radio-secondary`, `radio-accent`, `radio-success`, `radio-warning`, `radio-info`, `radio-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `size` | ``radio-xs`, `radio-sm`, `radio-md`, `radio-lg`, `radio-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<input type="radio" name="{name}" class="radio {MODIFIER}" />
```

## 2. Verified B4X Syntax & Recipe
```b4x
' Radio Option 1
	rGroup1Opt1.Initialize(Me, "rGroup1Opt1")
	rGroup1Opt1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
	rGroup1Opt1.GroupName = "basic"
	rGroup1Opt1.Text = "Option 1 (Default Selected)"
	rGroup1Opt1.Checked = True
	rGroup1Opt1.Tag = "Group1-Opt1"
	y = y + 50dip

	' Radio Option 2
	rGroup1Opt2.Initialize(Me, "rGroup1Opt2")
	rGroup1Opt2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
	rGroup1Opt2.GroupName = "basic"
	rGroup1Opt2.Text = "Option 2"
	rGroup1Opt2.Checked = False
	rGroup1Opt2.Tag = "Group1-Opt2"
	y = y + 60dip

	' -----------------------------------------------------------------------
	' 2. Size Variants
	' -----------------------------------------------------------------------
	y = AddSectionTitle("2. Radio Sizes", y, maxW)

	' Extra Small (xs)
	Dim rXS As B4XDaisyRadio
	rXS.Initialize(Me, "rXS")
	rXS.AddToParent(pnlHost, PAGE_PAD, y, maxW, 30dip)
	rXS.GroupName = "sizes"
	rXS.Text = "Size XS (Extra Small)"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyRadio` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getRole, setGroupName, getGroupName` (+ 28 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `GroupName` | Group Name | `String` |  |  |
| `Checked` | Checked | `Boolean` | False |  |
| `Value` | Value | `String` |  |  |
| `Text` | Text | `String` |  |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Position` | Position | `String` | start | start|end |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `CheckedBackgroundColor` | Checked Background Color | `Color` | 0x00FFFFFF |  |
| `CheckedBorderColor` | Checked Border Color | `Color` | 0x00FFFFFF |  |
| `CheckedTextColor` | Checked Dot Color | `Color` | 0x00FFFFFF |  |
| `Required` | Required | `Boolean` | False |  |
| `ErrorText` | Error Text | `String` |  |  |

## 5. Declared Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setChecked(Value As Boolean)`
- `getRole As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getChecked As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setText(Value As String)`
- `getText As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColor As Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColor As Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColor As Int`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `Release`
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

## 7. Public Fields
- `mBase As B4XView`

