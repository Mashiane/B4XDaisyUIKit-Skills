# input (`B4XDaisyInput`)

DaisyUI `Input` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyInput`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyInput.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas (lines 29–29), B4XPageEnjoyHint.bas (lines 24–25), B4XPageFieldset.bas (lines 176–176), B4XPageFocus.bas (lines 16–81), B4XPageInput.bas (lines 74–450), B4XPageNativeDialogs.bas (lines 17–21), B4XPageNavScrollDock.bas (lines 53–169), B4XPageScrollDemo.bas (lines 42–45), B4XPageSheetModal.bas (lines 157–319), B4XPageTextarea.bas (lines 55–277)
- **Web DaisyUI Mapping**: `.input` → `B4XDaisyInput`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``validator`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``validator-hint`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |

### Web DaisyUI HTML Syntax
```html
<input type="{type}" class="input validator" required />
<p class="validator-hint">Error message</p>
```

## 2. Verified B4X Syntax & Recipe
```b4x
'-
        'Example 1: Text input (base)
        '-
        AddSectionTitle("Text input")
        Dim c1 As B4XDaisyInput
        c1.Initialize(Me, "inp")
        c1.AddToParent(pnlContent, PAGE_PAD, 0, maxW, ITEM_HEIGHT)
        c1.LabelAbove = "Full name"
        c1.Placeholder = "Type here"
        c1.Tag = "base-text"
        Samples.Add(c1)

        '-
        'Example 2: Text input with icons
        '-
        AddSectionTitle("Input with icons")

        Dim c2a As B4XDaisyInput
        c2a.Initialize(Me, "inp")
        c2a.AddToParent(pnlContent, PAGE_PAD, 0, maxW, ITEM_HEIGHT)
        c2a.LabelAbove = "Search"
        c2a.IconLeft = "magnifying-glass-solid.svg"
        c2a.Placeholder = "Search"
        c2a.Tag = "input-search-icon"
        Samples.Add(c2a)

        Dim c2b As B4XDaisyInput
        c2b.Initialize(Me, "inp")
        c2b.AddToParent(pnlContent, PAGE_PAD, 0, maxW, ITEM_HEIGHT)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyInput` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getTag, RequestFocus, UpdateTheme` (+ 53 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Variant` | Variant | `String` | `none` | none|ghost|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `md` | md|lg|xl |
| `Text` | Text | `String` | `` |  |
| `Placeholder` | Placeholder | `String` | `Type here` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `RequiredErrorText` | Required Error Text | `String` | `` |  |
| `MinLengthErrorText` | Min Length Error Text | `String` | `` |  |
| `MaxLengthErrorText` | Max Length Error Text | `String` | `` |  |
| `PatternErrorText` | Pattern Error Text | `String` | `` |  |
| `LabelAbove` | Label | `String` | `` |  |
| `InputType` | Input Type | `String` | `text` | text|number|decimal|phone|email|url|password|date|time|datetime|stepper|search|color |
| `DateFormat` | Date Format | `String` | `yyyy-MM-dd` |  |
| `TimeFormat` | Time Format | `String` | `HH:mm` |  |
| `Is24Hours` | Is 24 Hours | `Boolean` | `True` |  |
| `MinValue` | Min Value | `String` | `0` |  |
| `MaxValue` | Max Value | `String` | `100` |  |
| `StepValue` | Step Value | `String` | `1` |  |
| `PasswordChar` | Password Character | `String` | `*` |  |
| `IconLeft` | Icon Left | `String` | `` |  |
| `IconRight` | Icon Right | `String` | `` |  |
| `LabelLeft` | Label Left | `String` | `` |  |
| `LabelRight` | Label Right | `String` | `` |  |
| `FloatingLabel` | Floating Label | `Boolean` | `False` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `ValidationPattern` | Validation Pattern | `String` | `` |  |
| `MinLength` | Min Length | `Int` | `0` |  |
| `MaxLength` | Max Length | `Int` | `0` |  |
| `Radius` | Corner Radius | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `SingleLine` | Single Line | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `PlaceholderColor` | Placeholder Color | `Color` | `0x00000000` |  |
| `Padding` | Padding | `String` | `` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `ImeOptions` | IME Options | `String` | `normal` | normal|actionNext|actionGo|actionSearch|actionSend|actionDone|actionNone |
| `SearchIcon` | Search Icon | `String` | `magnifying-glass-solid.svg` |  |
| `ClearIcon` | Clear Icon | `String` | `xmark-solid.svg` |  |
| `ShowClearButton` | Show Clear Button | `String` | `always` | never|focus|always |
| `Gravity` | Text Gravity | `String` | `LEFT` | LEFT|CENTER|RIGHT |
| `Typeface` | Typeface | `String` | `DEFAULT` | DEFAULT|DEFAULT_BOLD|MONOSPACE|SANS_SERIF|SERIF |
| `MaxLines` | Max Lines | `Int` | `1` |  |
| `MinLines` | Min Lines | `Int` | `1` |  |
| `AllCaps` | All Caps | `Boolean` | `False` |  |
| `ReadOnly` | Read Only | `Boolean` | `False` |  |
| `CursorVisible` | Cursor Visible | `Boolean` | `True` |  |
| `LetterSpacing` | Letter Spacing | `Float` | `0` |  |
| `Alpha` | Alpha | `Float` | `1.0` |  |
| `AutoHeight` | Auto Height | `Boolean` | `False` |  |
| `NoAutoFill` | No Autofill | `Boolean` | `True` |  |

## 5. Declared Events
- `TextChanged (Old As String, New As String)`
- `EnterPressed (Text As String)`
- `FocusChanged (HasFocus As Boolean)`
- `Click (Tag As Object)`
- `PrependClick`
- `AppendClick`
- `Clear`
- `DateSelected (DateTick As Long, FormattedDate As String)`
- `TimeSelected (Hour As Int, Minute As Int)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `BringToFront`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetValidationError As String`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SelectAll`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetSelection(iStartPos As Int, iLength As Int)`
- `ShowDatePicker`
- `ShowTimePicker`
- `UpdateTheme`
- `View As B4XView`
- `getAppendColor As Int`
- `getAppendIcon As String`
- `getAppendIconColor As Int`
- `getBackgroundColor As Int`
- `getClearIcon As String`
- `getDateFormat As String`
- `getEditText As B4XView`
- `getFloatingLabel As Boolean`
- `getHeight As Int`
- `getHintText As String`
- `getIs24Hours As Boolean`
- `getIsFocused As Boolean`
- `getLabelAbove As String`
- `getLabelLeft As String`
- `getLabelRight As String`
- `getLeft As Int`
- `getMaxDate As String`
- `getMinDate As String`
- `getPadding As String`
- `getPlaceholder As String`
- `getPlaceholderColor As Int`
- `getSearchIcon As String`
- `getShadow As String`
- `getShowClearButton As String`
- `getSingleLine As Boolean`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTimeFormat As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAppendColor(iValue As Int)`
- `setAppendIcon(sValue As String)`
- `setAppendIconColor(iValue As Int)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setClearIcon(sValue As String)`
- `setDateFormat(sValue As String)`
- `setFloatingLabel(bValue As Boolean)`
- `setFocus(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputType(sValue As String)`
- `setIs24Hours(bValue As Boolean)`
- `setLabelAbove(sValue As String)`
- `setLabelLeft(sValue As String)`
- `setLabelRight(sValue As String)`
- `setLeft(iValue As Int)`
- `setMaxDate(sValue As String)`
- `setMinDate(sValue As String)`
- `setPadding(sValue As String)`
- `setPasswordChar(sValue As String)`
- `setPlaceholder(sValue As String)`
- `setPlaceholderColor(iValue As Int)`
- `setSearchIcon(sValue As String)`
- `setShadow(sValue As String)`
- `setShowClearButton(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTimeFormat(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

