# otp (`B4XDaisyOtp`)

Multi-box One-Time-Password (PIN / 2FA) verification entry component with auto-focus advance, masking, and completion event.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyOtp`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyOtp.bas`
- **Verified Demos**: `B4XPageOtp.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetComputedHeight As Int`
- `HandleDeleteKey`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `getDescription As String`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getFill As String`
- `getFocusVariant As String`
- `getFocused As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `setDescription(Value As String)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFill(Value As String)`
- `setFocus(Index As Int)`
- `setFocusVariant(Value As String)`
- `setGap(Value As Int)`
- `setHintText(Value As String)`
- `setInputType(Value As String)`
- `setLabelAbove(Value As String)`
- `setLength(Value As Int)`
- `setPattern(Value As String)`
- `setReadOnly(Value As Boolean)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setSeparators(Value As String)`
- `setShape(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setValidationState(Value As String)`
- `setValue(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
