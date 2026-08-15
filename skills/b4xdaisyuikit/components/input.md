# input (`B4XDaisyInput`)

Single-line text input field with label, placeholder, icons, prefix/suffix, and validation.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyInput`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyInput.bas`
- **Verified Demos**: `B4XPageColorWheel.bas, B4XPageEnjoyHint.bas, B4XPageFieldset.bas, B4XPageFocus.bas, B4XPageInput.bas, B4XPageNavScrollDock.bas, B4XPageScrollDemo.bas, B4XPageSheetModal.bas, B4XPageTextarea.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `CheckValidation As Boolean`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetValidationError As String`
- `Initialize(Callback As Object, EventName As String)`
- `ReceiveFocus`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `Revalidate`
- `SelectAll`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetSelection(StartPos As Int, Length As Int)`
- `ShowError(ErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `getAllCaps As Boolean`
- `getAlpha As Float`
- `getAppendColor As Int`
- `getAppendIcon As String`
- `getAppendIconColor As Int`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getClearIcon As String`
- `getCursorVisible As Boolean`
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
- `getIsBlank As Boolean`
- `getIsFocused As Boolean`
- `getIsValid As Boolean`
- `getLabelAbove As String`
- `getLabelLeft As String`
- `getLabelRight As String`
- `getLeft As Int`
- `getLetterSpacing As Float`
- `getMaxLength As Int`
- `getMaxLengthErrorText As String`
- `getMaxLines As Int`
- `getMaxValue As String`
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
- `getTop As Int`
- `getTypeface As String`
- `getValidationPattern As String`
- `getValidationState As String`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAllCaps(Value As Boolean)`
- `setAlpha(Value As Float)`
- `setAppendColor(Value As Int)`
- `setAppendIcon(Value As String)`
- `setAppendIconColor(Value As Int)`
- `setAutoHeight(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setClearIcon(Value As String)`
- `setCursorVisible(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFloatingLabel(Value As Boolean)`
- `setFocus(Value As Boolean)`
- `setGravity(Value As String)`
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setIconLeft(Value As String)`
- `setIconRight(Value As String)`
- `setImeOptions(Value As String)`
- `setInputType(Value As String)`
- `setLabelAbove(Value As String)`
- `setLabelLeft(Value As String)`
- `setLabelRight(Value As String)`
- `setLeft(Value As Int)`
- `setLetterSpacing(Value As Float)`
- `setMaxLength(Value As Int)`
- `setMaxLengthErrorText(Value As String)`
- `setMaxLines(Value As Int)`
- `setMaxValue(Value As String)`
- `setMinLength(Value As Int)`
- `setMinLengthErrorText(Value As String)`
- `setMinLines(Value As Int)`
- `setMinValue(Value As String)`
- `setNoAutoFill(Value As Boolean)`
- `setPadding(Value As String)`
- `setPasswordChar(Value As String)`
- `setPatternErrorText(Value As String)`
- `setPlaceholder(Value As String)`
- `setPlaceholderColor(Value As Int)`
- `setRadius(Value As String)`
- `setReadOnly(Value As Boolean)`
- `setRequired(Value As Boolean)`
- `setRequiredErrorText(Value As String)`
- `setRounded(Value As String)`
- `setSearchIcon(Value As String)`
- `setShadow(Value As String)`
- `setShowClearButton(Value As String)`
- `setSingleLine(Value As Boolean)`
- `setSize(Value As String)`
- `setStepValue(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setTypeface(Value As String)`
- `setValidationPattern(Value As String)`
- `setValidationState(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
