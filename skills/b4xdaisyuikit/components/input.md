# input (`B4XDaisyInput`)

Single-line text input field with label, placeholder, icons, prefix/suffix, and validation.

## 1. Overview
- **Class**: `B4XDaisyInput`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyInput.bas`
- **Web DaisyUI Mapping**: `.input` → `B4XDaisyInput`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim inp As B4XDaisyInput
inp.Initialize(Me, "inp")
inp.AddToParent(pnlHost, pad, y, maxW, 48dip)
inp.Variant = "primary"
inp.Size = "md"
inp.LabelAbove = "Email address"
inp.Placeholder = "you@example.com"
inp.InputType = "email"
inp.IconLeft = "envelope-solid.svg"
inp.Required = True
y = y + inp.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Single-line text field supporting floating labels, leading/trailing icons, and validation.
- Use `LabelAbove` for floating label text and `Placeholder` for guidance.
- Configure `InputType` (`"text"`, `"email"`, `"password"`, `"number"`, `"phone"`).
- Call `.Validate()` to check input requirements; displays inline error text automatically.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Variant | Variant | String | none | none|ghost|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | md | md|lg|xl |
| Text | Text | String |  |  |
| Placeholder | Placeholder | String | Type here |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |
| RequiredErrorText | Required Error Text | String |  |  |
| MinLengthErrorText | Min Length Error Text | String |  |  |
| MaxLengthErrorText | Max Length Error Text | String |  |  |
| PatternErrorText | Pattern Error Text | String |  |  |
| LabelAbove | Label | String |  |  |
| InputType | Input Type | String | text | text|number|decimal|phone|email|url|password|date|time|datetime|stepper|search|color |
| MinValue | Min Value | String | 0 |  |
| MaxValue | Max Value | String | 100 |  |
| StepValue | Step Value | String | 1 |  |
| PasswordChar | Password Character | String | * |  |
| IconLeft | Icon Left | String |  |  |
| IconRight | Icon Right | String |  |  |
| LabelLeft | Label Left | String |  |  |
| LabelRight | Label Right | String |  |  |
| FloatingLabel | Floating Label | Boolean | False |  |
| Required | Required | Boolean | False |  |
| ValidationPattern | Validation Pattern | String |  |  |
| MinLength | Min Length | Int | 0 |  |
| MaxLength | Max Length | Int | 0 |  |
| Radius | Corner Radius | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Enabled | Enabled | Boolean | True |  |
| SingleLine | Single Line | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| PlaceholderColor | Placeholder Color | Color | 0x00000000 |  |
| Padding | Padding | String |  |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| ImeOptions | IME Options | String | normal | normal|actionNext|actionGo|actionSearch|actionSend|actionDone|actionNone |
| SearchIcon | Search Icon | String | magnifying-glass-solid.svg |  |
| ClearIcon | Clear Icon | String | xmark-solid.svg |  |
| ShowClearButton | Show Clear Button | String | always | never|focus|always |
| Gravity | Text Gravity | String | LEFT | LEFT|CENTER|RIGHT |
| Typeface | Typeface | String | DEFAULT | DEFAULT|DEFAULT_BOLD|MONOSPACE|SANS_SERIF|SERIF |
| MaxLines | Max Lines | Int | 1 |  |
| MinLines | Min Lines | Int | 1 |  |
| AllCaps | All Caps | Boolean | False |  |
| ReadOnly | Read Only | Boolean | False |  |
| CursorVisible | Cursor Visible | Boolean | True |  |
| LetterSpacing | Letter Spacing | Float | 0 |  |
| Alpha | Alpha | Float | 1.0 |  |
| AutoHeight | Auto Height | Boolean | False |  |
| NoAutoFill | No Autofill | Boolean | True |  |

## 5. Declared Events
- `TextChanged (Old As String, New As String)`
- `EnterPressed (Text As String)`
- `FocusChanged (HasFocus As Boolean)`
- `Click (Tag As Object)`
- `PrependClick`
- `AppendClick`
- `Clear`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `CheckValidation As Boolean`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `getAllCaps As Boolean`
- `getAlpha As Float`
- `getAppendColor As Int`
- `getAppendIcon As String`
- `getAppendIconColor As Int`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getClearIcon As String`
- `GetComputedHeight As Int`
- `getCursorVisible As Boolean`
- `getDateFormat As String`
- `getEditText As B4XView`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getFloatingLabel As Boolean`
- `getGravity As String`
- `getHeight As Int`
- `getHintText As String`
- `getIconLeft As String`
- `getIconRight As String`
- `getImeOptions As String`
- `getInputType As String`
- `getIs24Hours As Boolean`
- `getIsBlank As Boolean`
- `getIsFocused As Boolean`
- `getIsValid As Boolean`
- `getLabelAbove As String`
- `getLabelLeft As String`
- `getLabelRight As String`
- `getLeft As Int`
- `getLetterSpacing As Float`
- `getMaxDate As String`
- `getMaxLength As Int`
- `getMaxLengthErrorText As String`
- `getMaxLines As Int`
- `getMaxValue As String`
- `getMinDate As String`
- `getMinLength As Int`
- `getMinLengthErrorText As String`
- `getMinLines As Int`
- `getMinValue As String`
- `getNoAutoFill As Boolean`
- `getPadding As String`
- `getPasswordChar As String`
- `getPatternErrorText As String`
- `getPlaceholder As String`
- `getPlaceholderColor As Int`
- `getRadius As String`
- `getReadOnly As Boolean`
- `getRequired As Boolean`
- `getRequiredErrorText As String`
- `getRounded As String`
- `getSearchIcon As String`
- `getShadow As String`
- `getShowClearButton As String`
- `getSingleLine As Boolean`
- `getSize As String`
- `getStepValue As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTimeFormat As String`
- `getTop As Int`
- `getTypeface As String`
- `GetValidationError As String`
- `getValidationPattern As String`
- `getValidationState As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `Revalidate`
- `SelectAll`
- `SendToBack`
- `setAllCaps(bValue As Boolean)`
- `setAlpha(fValue As Float)`
- `setAppendColor(iValue As Int)`
- `setAppendIcon(sValue As String)`
- `setAppendIconColor(iValue As Int)`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setClearIcon(sValue As String)`
- `setCursorVisible(bValue As Boolean)`
- `setDateFormat(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFloatingLabel(bValue As Boolean)`
- `setFocus(bValue As Boolean)`
- `setGravity(sValue As String)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setIconLeft(sValue As String)`
- `setIconRight(sValue As String)`
- `setImeOptions(sValue As String)`
- `setInputType(sValue As String)`
- `setIs24Hours(bValue As Boolean)`
- `setLabelAbove(sValue As String)`
- `setLabelLeft(sValue As String)`
- `setLabelRight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLetterSpacing(fValue As Float)`
- `setMaxDate(sValue As String)`
- `setMaxLength(iValue As Int)`
- `setMaxLengthErrorText(sValue As String)`
- `setMaxLines(iValue As Int)`
- `setMaxValue(sValue As String)`
- `setMinDate(sValue As String)`
- `setMinLength(iValue As Int)`
- `setMinLengthErrorText(sValue As String)`
- `setMinLines(iValue As Int)`
- `setMinValue(sValue As String)`
- `setNoAutoFill(bValue As Boolean)`
- `setPadding(sValue As String)`
- `setPasswordChar(sValue As String)`
- `setPatternErrorText(sValue As String)`
- `setPlaceholder(sValue As String)`
- `setPlaceholderColor(iValue As Int)`
- `setRadius(sValue As String)`
- `setReadOnly(bValue As Boolean)`
- `setRequired(bValue As Boolean)`
- `setRequiredErrorText(sValue As String)`
- `setRounded(sValue As String)`
- `setSearchIcon(sValue As String)`
- `SetSelection(iStartPos As Int, iLength As Int)`
- `setShadow(sValue As String)`
- `setShowClearButton(sValue As String)`
- `setSingleLine(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStepValue(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTimeFormat(sValue As String)`
- `setTop(iValue As Int)`
- `setTypeface(sValue As String)`
- `setValidationPattern(sValue As String)`
- `setValidationState(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ShowDatePicker`
- `ShowError(sErrorMessage As String)`
- `ShowTimePicker`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
