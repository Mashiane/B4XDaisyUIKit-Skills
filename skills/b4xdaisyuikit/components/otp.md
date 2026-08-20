# otp (`B4XDaisyOtp`)

Multi-box One-Time-Password (PIN / 2FA) verification entry component with auto-focus advance, masking, and completion event.

## 1. Overview
- **Class**: `B4XDaisyOtp`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyOtp.bas`
- **Web DaisyUI Mapping**: `.otp` → `B4XDaisyOtp`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim otp As B4XDaisyOTP
otp.Initialize(Me, "otp")
otp.AddToParent(pnlHost, pad, y, maxW, 56dip)
otp.Length = 6
otp.Variant = "primary"
y = y + 56dip + gap
```

## 3. Native Composition Rules & Gotchas
- Multi-box One-Time Password (PIN / 2FA) verification entry component.
- Configure number of digit boxes via `Digits` (default 4 or 6).
- Set `Masked = True` to hide digits with bullet dots.
- Set `AutoSubmit = True` to fire `Complete (Code As String)` immediately upon entering the final digit.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Length | Length | Int | 4 |  |
| InputType | Input Type | String | number | number|text |
| Value | Value | String |  |  |
| Separators | Separators | String |  |  |
| Pattern | Pattern | String |  |  |
| Shape | Shape | String | round | round|soft|rectangular |
| Fill | Fill | String | outline | outline|solid |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Gap | Gap (dip) | Int | -1 |  |
| Variant | Variant/Color | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| FocusVariant | Focus Variant | String | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| Enabled | Enabled | Boolean | True |  |
| ReadOnly | Read Only | Boolean | False |  |
| Visible | Visible | Boolean | True |  |
| Required | Required | Boolean | False |  |
| ValidationState | Validation State | String | none | none|valid|invalid |
| LabelAbove | Label Above | String |  |  |
| Description | Description (slot) | String |  |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |

## 5. Declared Events
- `Input (Value As String)`
- `Changed (Value As String)`
- `Complete (Value As String)`
- `Focus`
- `Blur`
- `DescriptionClick`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetComputedHeight As Int`
- `getDescription As String`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getFill As String`
- `getFocused As Boolean`
- `getFocusVariant As String`
- `getGap As Int`
- `getHintText As String`
- `getInputType As String`
- `getIsComplete As Boolean`
- `getIsValid As Boolean`
- `getLabelAbove As String`
- `getLength As Int`
- `getPattern As String`
- `getReadOnly As Boolean`
- `getRequired As Boolean`
- `getRounded As String`
- `getSeparators As String`
- `getShape As String`
- `getSize As String`
- `getTag As Object`
- `getValidationState As String`
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `HandleDeleteKey`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `setDescription(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFill(sValue As String)`
- `setFocus(iIndex As Int)`
- `setFocusVariant(sValue As String)`
- `setGap(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputType(sValue As String)`
- `setLabelAbove(sValue As String)`
- `setLength(iValue As Int)`
- `setPattern(sValue As String)`
- `setReadOnly(bValue As Boolean)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setSeparators(sValue As String)`
- `setShape(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setValidationState(sValue As String)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
