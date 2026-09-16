# file-input (`B4XDaisyFileInput`)

DaisyUI `FileInput` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFileInput`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyFileInput.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyFileInput.bas)
- **Verified Demo Source**: B4XPageAvatar.bas, B4XPageFileInput.bas, B4XPageFocus.bas
- **Web DaisyUI Mapping**: `.file-input` → `B4XDaisyFileInput`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<input type="file" class="file-input {MODIFIER}" />
```

## 2. Verified B4X Syntax & Recipe
```b4x
' #region Example 1: Base (default)
    y = AddSectionTitle("File input", y, maxW)
    Dim c1 As B4XDaisyFileInput
    c1.Initialize(Me, "component")
    c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, SizeHeightDip("md"))
    c1.LabelAbove = "Default file input"
    c1.Tag = c1
    y = y + c1.GetComputedHeight + EXAMPLE_GAP
    ' #endregion

    ' #region Example 2: Ghost style
    y = AddSectionTitle("File input ghost", y, maxW)
    Dim c2 As B4XDaisyFileInput
    c2.Initialize(Me, "component")
    c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, SizeHeightDip("md"))
    c2.LabelAbove = "Ghost file input"
    c2.Style = "ghost"
    c2.Tag = c2
    y = y + c2.GetComputedHeight + EXAMPLE_GAP
    ' #endregion

    ' #region Example 3: With label above and hint (fieldset + label composition)
    y = AddSectionTitle("With label and hint", y, maxW)
    Dim c3 As B4XDaisyFileInput
    c3.Initialize(Me, "component")
    c3.AddToParent(pnlHost, PAGE_PAD, y, maxW, SizeHeightDip("md"))
    c3.LabelAbove = "Pick a file"
    c3.HintText = "Max size 2MB"
    c3.Tag = c3
    y = y + c3.GetComputedHeight + SECTION_GAP
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyFileInput` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setAppendIcon, getAppendIcon, setButtonText` (+ 54 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `ButtonText` | Button Text | `String` | Choose file |  |
| `Placeholder` | Placeholder | `String` | No file chosen |  |
| `FileName` | File Name | `String` |  |  |
| `LabelAbove` | Label | `String` |  |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |
| `Required` | Required | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | md | md|lg|xl |
| `Style` | Style | `String` | default | default|ghost |
| `Radius` | Corner Radius | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `PlaceholderColor` | Placeholder Color | `Color` | 0x00000000 |  |
| `ButtonColor` | Button Color | `Color` | 0x00000000 |  |
| `ButtonTextColor` | Button Text Color | `Color` | 0x00000000 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `Padding` | Padding | `String` |  |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Typeface` | Typeface | `String` | DEFAULT | DEFAULT|DEFAULT_BOLD|MONOSPACE|SANS_SERIF|SERIF |
| `Gravity` | Text Gravity | `String` | LEFT | LEFT|CENTER|RIGHT |
| `Alpha` | Alpha | `Float` | 1.0 |  |
| `Accept` | Accept | `String` |  |  |
| `MaxSize` | Max Size (MB) | `Int` | 0 |  |
| `AppendIcon` | Append Icon | `String` |  |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `FileSelected (FileName As String)`
- `Cancelled`
- `FocusChanged (HasFocus As Boolean)`
- `AppendClick`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setAppendIcon(Value As String)`
- `getAppendIcon As String`
- `setButtonText(Value As String)`
- `getButtonText As String`
- `setAccept(Value As String)`
- `getAccept As String`
- `setFileDate(Value As Long)`
- `getFileDate As Long`
- `setFileSize(Value As Long)`
- `getFileSize As Long`
- `setFileBase64(Value As String)`
- `getFileBase64 As String`
- `setMimeType(Value As String)`
- `getMimeType As String`
- `setMaxSize(Value As Int)`
- `getMaxSize As Int`
- `getExceedsSize As Boolean`
- `getFileInputStream As InputStream`
- `GetBitmap As B4XBitmap`
- `getExtension As String`
- `getIsImage As Boolean`
- `getIsVideo As Boolean`
- `getIsPDF As Boolean`
- `getIsExcel As Boolean`
- `getIsWord As Boolean`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setFileName(Value As String)`
- `getFileName As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
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
- `setButtonColor(Value As Int)`
- `getButtonColor As Int`
- `setButtonTextColor(Value As Int)`
- `getButtonTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTypeface(Value As String)`
- `getTypeface As String`
- `setGravity(Value As String)`
- `getGravity As String`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `RemoveViewFromParent`
- `Release`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Clear`
- `getLeft As Int`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

