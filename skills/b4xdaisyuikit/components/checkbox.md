# checkbox (`B4XDaisyCheckbox`)

DaisyUI `Checkbox` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCheckbox`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCheckbox.bas`
- **Verified Demo Source**: B4XPageCheckbox.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas
- **Web DaisyUI Mapping**: `.checkbox` → `B4XDaisyCheckbox`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``checkbox`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``checkbox-primary`, `checkbox-secondary`, `checkbox-accent`, `checkbox-neutral`, `checkbox-success`, `checkbox-warning`, `checkbox-info`, `checkbox-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `size` | ``checkbox-xs`, `checkbox-sm`, `checkbox-md`, `checkbox-lg`, `checkbox-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<input type="checkbox" class="checkbox {MODIFIER}" />
```

## 2. Verified B4X Syntax & Recipe
```b4x
' Unchecked Checkbox (No Label)
	Dim cbUnchecked As B4XDaisyCheckbox
	cbUnchecked.Initialize(Me, "cbUnchecked")
	cbUnchecked.AddToParent(pnlHost, PAGE_PAD, y, 40dip, 40dip)
	cbUnchecked.Checked = False
	cbUnchecked.Tag = "Unchecked box"
	y = y + 50dip


	' Checkbox with Label (Right)
	Dim cbLabelRight As B4XDaisyCheckbox
	cbLabelRight.Initialize(Me, "cbLabelRight")
	cbLabelRight.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
	cbLabelRight.Text = "Remember me"
	cbLabelRight.Checked = True
	cbLabelRight.Tag = "Label Right"
	y = y + 50dip

	' Checkbox with Label (Left)
	Dim cbLabelLeft As B4XDaisyCheckbox
	cbLabelLeft.Initialize(Me, "cbLabelLeft")
	cbLabelLeft.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
	cbLabelLeft.Text = "Accept Terms and Conditions"
	cbLabelLeft.Checked = False
	cbLabelLeft.Position = "start"
	cbLabelLeft.Tag = "Label Left"
	y = y + 60dip

	' -----------------------------------------------------------------------
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCheckbox` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getChecked, setGroupName, getGroupName` (+ 38 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `GroupName` | Group Name | `String` |  |  |
| `Checked` | Checked | `Boolean` | False |  |
| `Indeterminate` | Indeterminate | `Boolean` | False |  |
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
| `CheckedTextColor` | Checked Checkmark Color | `Color` | 0x00FFFFFF |  |
| `Multiline` | Multiline | `Boolean` | False |  |
| `LineSpacing` | Line Spacing Extra | `Int` | 0 |  |
| `LineSpacingMult` | Line Spacing Multiplier | `Double` | 1.0 |  |
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
- `getChecked As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getRole As String`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setTextCS(Value As Object)`
- `getTextCS As Object`
- `setMultiline(Value As Boolean)`
- `getMultiline As Boolean`
- `setLineSpacing(Extra As Float)`
- `getLineSpacing As Float`
- `setLineSpacingMult(Value As Float)`
- `getLineSpacingMult As Float`
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

