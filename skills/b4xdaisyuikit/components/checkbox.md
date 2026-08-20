# checkbox (`B4XDaisyCheckbox`)

Single checkbox input with label text, indeterminate state, and color variants.

## 1. Overview
- **Class**: `B4XDaisyCheckbox`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCheckbox.bas`
- **Web DaisyUI Mapping**: `.checkbox` → `B4XDaisyCheckbox`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim chk As B4XDaisyCheckbox
chk.Initialize(Me, "chk")
chk.AddToParent(pnlHost, pad, y, maxW, 40dip)
chk.Variant = "primary"
chk.Size = "md"
chk.Text = "I agree to the Terms of Service"
chk.Position = "start"
chk.Checked = False
chk.Required = True
y = y + chk.getComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Single square checkbox toggle with built-in label support.
- Set `Position = "start"` for label on the left, `"end"` (default) for label on the right.
- Call `.Validate()` to check compliance when `Required = True`.
- Handle state changes in the `Changed (Value As Boolean)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| GroupName | Group Name | String |  |  |
| Checked | Checked | Boolean | False |  |
| Indeterminate | Indeterminate | Boolean | False |  |
| Value | Value | String |  |  |
| Text | Text | String |  |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Position | Position | String | start | start|end |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| CheckedBackgroundColor | Checked Background Color | Color | 0x00FFFFFF |  |
| CheckedBorderColor | Checked Border Color | Color | 0x00FFFFFF |  |
| CheckedTextColor | Checked Checkmark Color | Color | 0x00FFFFFF |  |
| Multiline | Multiline | Boolean | False |  |
| LineSpacing | Line Spacing Extra | Int | 0 |  |
| LineSpacingMult | Line Spacing Multiplier | Double | 1.0 |  |
| Required | Required | Boolean | False |  |
| ErrorText | Error Text | String |  |  |

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
- `getTextColor As Int`
- `getTextCS As Object`
- `getTop As Int`
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `setTextColor(iColor As Int)`
- `setTextCS(oValue As Object)`
- `setTop(iValue As Int)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
