# file-input (`B4XDaisyFileInput`)

DaisyUI `FileInput` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFileInput`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyFileInput.bas`
- **Verified Demo Source**: B4XPageAvatar.bas (lines 21–21), B4XPageFileInput.bas (lines 20–281), B4XPageFocus.bas (lines 24–120)
- **Web DaisyUI Mapping**: `.file-input` → `B4XDaisyFileInput`

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
| `ButtonText` | Button Text | `String` | `Choose file` |  |
| `Placeholder` | Placeholder | `String` | `No file chosen` |  |
| `FileName` | File Name | `String` | `` |  |
| `LabelAbove` | Label | `String` | `` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `md` | md|lg|xl |
| `Style` | Style | `String` | `default` | default|ghost |
| `Radius` | Corner Radius | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `PlaceholderColor` | Placeholder Color | `Color` | `0x00000000` |  |
| `ButtonColor` | Button Color | `Color` | `0x00000000` |  |
| `ButtonTextColor` | Button Text Color | `Color` | `0x00000000` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `Padding` | Padding | `String` | `` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Typeface` | Typeface | `String` | `DEFAULT` | DEFAULT|DEFAULT_BOLD|MONOSPACE|SANS_SERIF|SERIF |
| `Gravity` | Text Gravity | `String` | `LEFT` | LEFT|CENTER|RIGHT |
| `Alpha` | Alpha | `Float` | `1.0` |  |
| `Accept` | Accept | `String` | `` |  |
| `MaxSize` | Max Size (MB) | `Int` | `0` |  |
| `AppendIcon` | Append Icon | `String` | `` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `FileSelected (FileName As String)`
- `Cancelled ()`
- `FocusChanged (HasFocus As Boolean)`
- `AppendClick`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetBitmap As B4XBitmap`
- `GetComputedHeight As Int`
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
- `getAccept As String`
- `getAlpha As Float`
- `getAppendIcon As String`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getButtonColor As Int`
- `getButtonText As String`
- `getButtonTextColor As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getExceedsSize As Boolean`
- `getExtension As String`
- `getFileBase64 As String`
- `getFileBytes As Byte`
- `getFileDate As Long`
- `getFileInputStream As InputStream`
- `getFileName As String`
- `getFileSize As Long`
- `getGravity As String`
- `getHeight As Int`
- `getHintText As String`
- `getIsExcel As Boolean`
- `getIsImage As Boolean`
- `getIsPDF As Boolean`
- `getIsValid As Boolean`
- `getIsVideo As Boolean`
- `getIsWord As Boolean`
- `getLabelAbove As String`
- `getLeft As Int`
- `getMaxSize As Int`
- `getMimeType As String`
- `getPadding As String`
- `getPlaceholder As String`
- `getPlaceholderColor As Int`
- `getRadius As String`
- `getRequired As Boolean`
- `getRounded As String`
- `getShadow As String`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getTypeface As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAccept(sValue As String)`
- `setAlpha(fValue As Float)`
- `setAppendIcon(sValue As String)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBorderColor(iValue As Int)`
- `setButtonColor(iValue As Int)`
- `setButtonText(sValue As String)`
- `setButtonTextColor(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFileBase64(sValue As String)`
- `setFileDate(lValue As Long)`
- `setFileName(sValue As String)`
- `setFileSize(lValue As Long)`
- `setFocus(bValue As Boolean)`
- `setGravity(sValue As String)`
- `setHeight(iValue As Int)`
- `setHintText(sValue As String)`
- `setLabelAbove(sValue As String)`
- `setLeft(iValue As Int)`
- `setMaxSize(iValue As Int)`
- `setMimeType(sValue As String)`
- `setPadding(sValue As String)`
- `setPlaceholder(sValue As String)`
- `setPlaceholderColor(iValue As Int)`
- `setRadius(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setTypeface(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

