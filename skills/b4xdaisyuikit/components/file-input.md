# file-input (`B4XDaisyFileInput`)

File upload picker control with label, accepted extensions, file info display, and validation.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFileInput`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFileInput.bas`
- **Verified Demos**: `B4XPageAvatar.bas, B4XPageFileInput.bas, B4XPageFocus.bas`
- **Web DaisyUI Mapping**: `.file-input` → `B4XDaisyFileInput`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim fi As B4XDaisyFileInput
fi.Initialize(Me, "fi")
fi.AddToParent(pnlHost, pad, y, maxW, 44dip)
fi.LabelAbove = "Upload File"
fi.Variant = "primary"
y = y + fi.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Styled document and photo attachment field with attach icon and file label.
- Tapping the field triggers the file selection workflow.
- Assign chosen filename to `FileName` property to display attached state.
- Validate required attachments with `.Validate()`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| ButtonText | Button Text | String | Choose file |  |
| Placeholder | Placeholder | String | No file chosen |  |
| FileName | File Name | String |  |  |
| LabelAbove | Label | String |  |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |
| Required | Required | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | md | md|lg|xl |
| Style | Style | String | default | default|ghost |
| Radius | Corner Radius | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| PlaceholderColor | Placeholder Color | Color | 0x00000000 |  |
| ButtonColor | Button Color | Color | 0x00000000 |  |
| ButtonTextColor | Button Text Color | Color | 0x00000000 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| Padding | Padding | String |  |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Typeface | Typeface | String | DEFAULT | DEFAULT|DEFAULT_BOLD|MONOSPACE|SANS_SERIF|SERIF |
| Gravity | Text Gravity | String | LEFT | LEFT|CENTER|RIGHT |
| Alpha | Alpha | Float | 1.0 |  |
| Accept | Accept | String |  |  |
| MaxSize | Max Size (MB) | Int | 0 |  |
| AppendIcon | Append Icon | String |  |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `FileSelected (FileName As String)`
- `Cancelled ()`
- `FocusChanged (HasFocus As Boolean)`
- `AppendClick`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetBitmap As B4XBitmap`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAccept(Value As String)`
- `setAlpha(Value As Float)`
- `setAppendIcon(Value As String)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `setButtonColor(Value As Int)`
- `setButtonText(Value As String)`
- `setButtonTextColor(Value As Int)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFileBase64(Value As String)`
- `setFileDate(Value As Long)`
- `setFileName(Value As String)`
- `setFileSize(Value As Long)`
- `setFocus(Value As Boolean)`
- `setGravity(Value As String)`
- `setHeight(Value As Int)`
- `setHintText(Value As String)`
- `setLabelAbove(Value As String)`
- `setLeft(Value As Int)`
- `setMaxSize(Value As Int)`
- `setMimeType(Value As String)`
- `setPadding(Value As String)`
- `setPlaceholder(Value As String)`
- `setPlaceholderColor(Value As Int)`
- `setRadius(Value As String)`
- `setRequired(Value As Boolean)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setTypeface(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
