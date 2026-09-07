# otp (`B4XDaisyOTP`)

DaisyUI `OTP` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyOTP`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyOTP.bas`
- **Verified Demo Source**: B4XPageOTP.bas
- **Web DaisyUI Mapping**: `.otp` → `B4XDaisyOTP`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``otp`` | Member | `.SetComponent(...)` | Native configuration |
| `size` | ``otp-xs`, `otp-sm`, `otp-md`, `otp-lg`, `otp-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |
| `modifier` | ``otp-joined`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `color` | ``otp-neutral`, `otp-primary`, `otp-secondary`, `otp-accent`, `otp-info`, `otp-success`, `otp-warning`, `otp-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |

### Web DaisyUI HTML Syntax
```html
<label class="otp {MODIFIER}">
  <span></span>
  <span></span>
  <span></span>
  <span></span>
  <input type="text" autocomplete="one-time-code" inputmode="numeric" maxlength="4" pattern="[0-9]{4}" required />
</label>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' Demo page regenerating every Ionic v8 ion-input-otp example for
' the B4XDaisyOTP component (parity reference).
'-

#Region Variables
    Sub Class_Globals
        Private Root As B4XView
        Private xui As XUI
        Private pageScroll As B4XDaisyPageScroll
        Private pnlHost As B4XView

        ' Components
        Private otpBasic1, otpBasic2 As B4XDaisyOTP
        Private otpType1, otpType2 As B4XDaisyOTP
        Private otpShape1, otpShape2, otpShape3 As B4XDaisyOTP
        Private otpFill1, otpFill2 As B4XDaisyOTP
        Private otpSize1, otpSize2, otpSize3, otpSize4, otpSize5 As B4XDaisyOTP
        Private otpSep1, otpSep2, otpSep3 As B4XDaisyOTP
        Private otpState1, otpState2, otpState3, otpState4 As B4XDaisyOTP
        Private otpPattern1, otpPattern2, otpPattern3, otpPattern4, otpPattern5, otpPattern6 As B4XDaisyOTP
        Private otpColor1, otpColor2, otpColor3, otpColor4, otpColor5, otpColor6, otpColor7, otpColor8, otpColor9 As B4XDaisyOTP
        Private otpCustom1, otpCustom2 As B4XDaisyOTP
        Private otpFocus1, otpFocus2, otpFocus3 As B4XDaisyOTP
        Private otpRounded1, otpRounded2, otpRounded3 As B4XDaisyOTP
    End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyOTP` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getTag, getLength, setLength` (+ 31 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Length` | Length | `Int` | 4, MinRange: 2, MaxRange: 10 |  |
| `InputType` | Input Type | `String` | number | number|text |
| `Value` | Value | `String` |  |  |
| `Separators` | Separators | `String` |  |  |
| `Pattern` | Pattern | `String` |  |  |
| `Shape` | Shape | `String` | round | round|soft|rectangular |
| `Fill` | Fill | `String` | outline | outline|solid |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Gap` | Gap (dip) | `Int` | -1, MinRange: -1, MaxRange: 48 |  |
| `Variant` | Variant/Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `FocusVariant` | Focus Variant | `String` | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Enabled` | Enabled | `Boolean` | True |  |
| `ReadOnly` | Read Only | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Required` | Required | `Boolean` | False |  |
| `ValidationState` | Validation State | `String` | none | none|valid|invalid |
| `LabelAbove` | Label Above | `String` |  |  |
| `Description` | Description (slot) | `String` |  |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |

## 5. Declared Events
- `Input (Value As String)`
- `Changed (Value As String)`
- `Complete (Value As String)`
- `Focus`
- `Blur`
- `DescriptionClick`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `getLength As Int`
- `setLength(Value As Int)`
- `getInputType As String`
- `setInputType(Value As String)`
- `getValue As String`
- `setValue(Value As String)`
- `getSeparators As String`
- `setSeparators(Value As String)`
- `getPattern As String`
- `setPattern(Value As String)`
- `getShape As String`
- `setShape(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getFill As String`
- `setFill(Value As String)`
- `getSize As String`
- `setSize(Value As String)`
- `getGap As Int`
- `setGap(Value As Int)`
- `getVariant As String`
- `setVariant(Value As String)`
- `getFocusVariant As String`
- `setFocusVariant(Value As String)`
- `getEnabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getReadOnly As Boolean`
- `setReadOnly(Value As Boolean)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getRequired As Boolean`
- `setRequired(Value As Boolean)`
- `getValidationState As String`
- `setValidationState(Value As String)`
- `getLabelAbove As String`
- `setLabelAbove(Value As String)`
- `getDescription As String`
- `setDescription(Value As String)`
- `getHintText As String`
- `setHintText(Value As String)`
- `getErrorText As String`
- `setErrorText(Value As String)`
- `getIsComplete As Boolean`
- `getIsValid As Boolean`
- `getFocused As Boolean`
- `HandleDeleteKey`
- `Refresh`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `setFocus(Index As Int)`
- `Release`

## 7. Public Fields
- `mBase As B4XView`

