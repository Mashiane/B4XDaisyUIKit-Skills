# checkbox (`B4XDaisyCheckbox`)

DaisyUI `Checkbox` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCheckbox`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCheckbox.bas`
- **Verified Demo Source**: B4XPageCheckbox.bas (lines 59–365), B4XPageCheckboxGroup.bas (lines 46–204), B4XPageEnjoyHint.bas (lines 29–29), B4XPageFocus.bas (lines 28–28), B4XPageNavScrollDock.bas (lines 204–204)
- **Web DaisyUI Mapping**: `.checkbox` → `B4XDaisyCheckbox`

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
| `GroupName` | Group Name | `String` | `` |  |
| `Checked` | Checked | `Boolean` | `False` |  |
| `Indeterminate` | Indeterminate | `Boolean` | `False` |  |
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
| `CheckedTextColor` | Checked Checkmark Color | `Color` | `0x00FFFFFF` |  |
| `Multiline` | Multiline | `Boolean` | `False` |  |
| `LineSpacing` | Line Spacing Extra | `Int` | `0` |  |
| `LineSpacingMult` | Line Spacing Multiplier | `Double` | `1.0` |  |
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
- `getIndeterminate As Boolean`
- `getIsValid As Boolean`
- `getLeft As Int`
- `getLineSpacing As Float`
- `getLineSpacingMult As Float`
- `getMultiline As Boolean`
- `getPosition As String`
- `getRequired As Boolean`
- `getRole As String`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextCS As Object`
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
- `setIndeterminate(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLineSpacing(fExtra As Float)`
- `setLineSpacingMult(fValue As Float)`
- `setMultiline(bValue As Boolean)`
- `setPosition(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextCS(oValue As Object)`
- `setTextColor(iColor As Int)`
- `setTop(iValue As Int)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

