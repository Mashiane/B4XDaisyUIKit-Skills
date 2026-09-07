# textarea (`B4XDaisyInput` in Multiline Mode)

> **Mode component**: `textarea` is not a standalone class. It is implemented by configuring `B4XDaisyInput` with `SingleLine = False`.

Multi-line text input with auto-height, label, validation, character counter, and placeholder.
In B4XDaisyUIKit, textareas are created by configuring `B4XDaisyInput` with `SingleLine = False`.

## 1. Overview
- **Class**: `B4XDaisyInput`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyInput.bas`
- **Reference Page**: `B4XPageTextarea.bas`
- **Web DaisyUI Mapping**: `.textarea` → `B4XDaisyInput (SingleLine = False)`

## 2. Verified B4X Syntax & Recipe

### Full lifecycle — create, initialize, add to parent, configure
```b4x
' 1. Declare the variable
Dim ta As B4XDaisyInput

' 2. Initialize (Me = callback host, "ta" = event prefix)
ta.Initialize(Me, "ta")

' 3. Switch to multiline mode BEFORE adding to parent
ta.SingleLine = False

' 4. Add to a parent view at position (x, y) and size (w, h)
ta.AddToParent(pnlHost, pad, y, maxW, 80dip)

' 5. Configure textarea appearance and behavior
ta.Variant = "primary"
ta.Size = "md"
ta.LabelAbove = "Your bio"
ta.Placeholder = "Type your bio here..."
ta.HintText = "Optional"
ta.MaxLines = 3
ta.Tag = "bio-textarea"

' 6. Advance layout cursor
y = y + ta.GetComputedHeight + gap
```

### Auto-Grow Textarea Pattern
```b4x
Dim taAuto As B4XDaisyInput
taAuto.Initialize(Me, "taAuto")
taAuto.SingleLine = False
taAuto.AddToParent(pnlHost, pad, y, maxW, 80dip)
taAuto.Placeholder = "Type here and press Enter to add more lines..."
taAuto.MaxLines = 6
taAuto.AutoHeight = True
taAuto.Tag = "auto-height-textarea"
```

## 3. Native Composition Rules & Gotchas
- **No separate `B4XDaisyTextarea` class exists**: Always instantiate `B4XDaisyInput` and set `ta.SingleLine = False`.
- Set `MaxLines` to control visible vertical line expansion (e.g. `ta.MaxLines = 3`).
- Set `AutoHeight = True` to allow dynamic expansion as content grows.
- Use `LabelAbove`, `HintText`, and `Required = True` for complete form controls.
- To listen for changes and reflow parent containers dynamically when `AutoHeight = True`, handle `TextChanged` event:
  ```b4x
  Private Sub taAuto_TextChanged(Old As String, New As String)
      LayoutInputs(Root.Width, Root.Height)
  End Sub
  ```

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `RemoveViewFromParent`
- `RequestFocus`
- `Release`
- `UpdateTheme`
- `setText(Value As String)`
- `getText As String`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `GetValidationError As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setInputType(Value As String)`
- `setAppendIcon(Value As String)`
- `getAppendIcon As String`
- `setAppendIconColor(Value As Int)`
- `getAppendIconColor As Int`
- `setAppendColor(Value As Int)`
- `getAppendColor As Int`
- `setSearchIcon(Value As String)`
- `getSearchIcon As String`
- `setClearIcon(Value As String)`
- `getClearIcon As String`
- `setShowClearButton(Value As String)`
- `getShowClearButton As String`
- `setPasswordChar(Value As String)`
- `getPasswordChar As String`
- `getInputType As String`
- `setMinValue(Value As String)`
- `getMinValue As String`
- `setMaxValue(Value As String)`
- `getMaxValue As String`
- `setStepValue(Value As String)`
- `getStepValue As String`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setPlaceholderColor(Value As Int)`
- `getPlaceholderColor As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setLabelLeft(Value As String)`
- `getLabelLeft As String`
- `setLabelRight(Value As String)`
- `getLabelRight As String`
- `setFloatingLabel(Value As Boolean)`
- `getFloatingLabel As Boolean`
- `setImeOptions(Value As String)`
- `getImeOptions As String`
- `setGravity(Value As String)`
- `getGravity As String`
- `setTypeface(Value As String)`
- `getTypeface As String`
- `setMaxLines(Value As Int)`
- `getMaxLines As Int`
- `setMinLines(Value As Int)`
- `getMinLines As Int`
- `setAllCaps(Value As Boolean)`
- `getAllCaps As Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnly As Boolean`
- `setCursorVisible(Value As Boolean)`
- `getCursorVisible As Boolean`
- `setLetterSpacing(Value As Float)`
- `getLetterSpacing As Float`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setNoAutoFill(Value As Boolean)`
- `getNoAutoFill As Boolean`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setValidationPattern(Value As String)`
- `getValidationPattern As String`
- `setMinLength(Value As Int)`
- `getMinLength As Int`
- `setMaxLength(Value As Int)`
- `getMaxLength As Int`
- `setValidationState(Value As String)`
- `getValidationState As String`
- `getIsValid As Boolean`
- `Revalidate`
- `setErrorText(Value As String)`
- `setRequiredErrorText(Value As String)`
- `getRequiredErrorText As String`
- `setMinLengthErrorText(Value As String)`
- `getMinLengthErrorText As String`
- `setMaxLengthErrorText(Value As String)`
- `getMaxLengthErrorText As String`
- `setPatternErrorText(Value As String)`
- `getPatternErrorText As String`
- `getErrorText As String`
- `getIsBlank As Boolean`
- `Validate As Boolean`
- `CheckValidation As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ReceiveFocus`
- `Blur`
- `setFocus(Value As Boolean)`
- `getIsFocused As Boolean`
- `getEditText As B4XView`
- `SelectAll`
- `SetSelection(StartPos As Int, Length As Int)`
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
- `setDateFormat(Value As String)`
- `getDateFormat As String`
- `setTimeFormat(Value As String)`
- `getTimeFormat As String`
- `setIs24Hours(Value As Boolean)`
- `getIs24Hours As Boolean`
- `setMinDate(Value As String)`
- `getMinDate As String`
- `setMaxDate(Value As String)`
- `getMaxDate As String`
- `ShowDatePicker`
- `ShowTimePicker`

