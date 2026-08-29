# radio (`B4XDaisyRadio`)

DaisyUI `Radio` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyRadio`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRadio.bas`
- **Verified Demo Source**: B4XPageFocus.bas (lines 32–32), B4XPageRadio.bas (lines 18–374), B4XPageRadioGroup.bas (lines 46–204)
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
| `GroupName` | Group Name | `String` | `` |  |
| `Checked` | Checked | `Boolean` | `False` |  |
| `Value` | Value | `String` | `` |  |
| `Text` | Text | `String` | `` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Position` | Position | `String` | `start` | start|end |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `CheckedBackgroundColor` | Checked Background Color | `Color` | `0x00FFFFFF` |  |
| `CheckedBorderColor` | Checked Border Color | `Color` | `0x00FFFFFF` |  |
| `CheckedTextColor` | Checked Dot Color | `Color` | `0x00FFFFFF` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `ErrorText` | Error Text | `String` | `` |  |

## 5. Declared Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getChecked As Boolean`
- `getCheckedBackgroundColor As Int`
- `getCheckedBorderColor As Int`
- `getCheckedTextColor As Int`
- `getComputedHeight As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getGroupName As String`
- `getHeight As Int`
- `getIsValid As Boolean`
- `getLeft As Int`
- `getPosition As String`
- `getRequired As Boolean`
- `getRole As String`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iColor As Int)`
- `setBorderColor(iColor As Int)`
- `setChecked(bValue As Boolean)`
- `setCheckedBackgroundColor(iColor As Int)`
- `setCheckedBorderColor(iColor As Int)`
- `setCheckedTextColor(iColor As Int)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFocus(bValue As Boolean)`
- `setGroupName(sValue As String)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setPosition(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iColor As Int)`
- `setTop(iValue As Int)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

