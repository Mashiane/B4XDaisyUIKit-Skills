# signature (`B4XDaisySignature`)

DaisyUI `Signature` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySignature`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisySignature.bas`
- **Verified Demo Source**: B4XPageSignaturePad.bas (lines 15–417)
- **Web DaisyUI Mapping**: `.signature` → `B4XDaisySignature`

## 2. Verified B4X Syntax & Recipe
```b4x
y = pageScroll.AddSectionTitle("Interactive Drawing Area", y, False)
    
	spDemo.Initialize(Me, "spDemo")
	spDemo.AddToParent(pnlHost, padding, y, maxW, 220dip)
	spDemo.PenColor = xui.Color_Black
	spDemo.BackgroundColor = xui.Color_White
	spDemo.MinWidth = 2
	spDemo.MaxWidth = 6
	spDemo.BitMapFormat = "png"
	spDemo.BitMapQuality = 100
	spDemo.DisallowParentIntercept = True
	y = y + spDemo.GetComputedHeight + gap
    
	' -------------------------------------------------------------
	' Section 2: Drawing Actions & Settings
	' Buttons are stacked vertically (one per row) using full width.
	' -------------------------------------------------------------
	y = pageScroll.AddSectionTitle("Canvas Controls & Settings", y, False)
    
	btnClear.Initialize(Me, "btnClear")
	btnClear.AddToParent(pnlHost, padding, y, maxW, 36dip)
	btnClear.Text = "Clear"
	btnClear.Variant = "error"
	y = y + btnClear.GetComputedHeight + gap
    
	btnCheckEmpty.Initialize(Me, "btnCheckEmpty")
	btnCheckEmpty.AddToParent(pnlHost, padding, y, maxW, 36dip)
	btnCheckEmpty.Text = "Check Empty"
	btnCheckEmpty.Variant = "neutral"
	y = y + btnCheckEmpty.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySignature` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setPenColor, getPenColor, setPadBackgroundColor` (+ 61 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Legend` | Legend | `String` | `Signature` |  |
| `LegendSize` | Legend Size | `String` | `theme` | theme|text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | `False` |  |
| `LabelAbove` | Label Above | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | `outlined` | outlined|ghost|inset |
| `Padding` | Padding | `Int` | `16` |  |
| `AutoHeight` | Auto Height | `Boolean` | `True` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BorderSize` | Border Size | `Int` | `1` |  |
| `InputBorder` | Input Border | `Boolean` | `False` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |
| `PenColor` | Pen Color | `Color` | `0xFF000000` |  |
| `PadBackgroundColor` | Pad Background Color | `Color` | `0xFFFFFFFF` |  |
| `MinWidth` | Min Width | `Float` | `1.5` |  |
| `MaxWidth` | Max Width | `Float` | `4.0` |  |
| `VelocityFilterWeight` | Velocity Filter Weight | `Float` | `0.7` |  |
| `BitMapFormat` | BitMap Format | `String` | `png` | png|jpg|webp|bmp |
| `BitMapQuality` | BitMap Quality | `Int` | `100` |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | `True` |  |
| `StrokeCap` | Stroke Cap | `String` | `ROUND` | BUTT|ROUND|SQUARE |
| `StrokeJoin` | Stroke Join | `String` | `ROUND` | BEVEL|MITER|ROUND |
| `PadEnabled` | Pad Enabled | `Boolean` | `True` |  |
| `PadVisible` | Pad Visible | `Boolean` | `True` |  |
| `MinHeight` | Min Height | `Int` | `150` |  |
| `HintColor` | Hint Color | `Color` | `0x00000000` |  |
| `ClearButtonVisible` | Clear Button Visible | `Boolean` | `True` |  |
| `ClearButtonText` | Clear Button Text | `String` | `Clear` |  |
| `SaveButtonVisible` | Save Button Visible | `Boolean` | `True` |  |
| `SaveButtonText` | Save Button Text | `String` | `Save` |  |

## 5. Declared Events
- `BeginStroke`
- `EndStroke`
- `Changed`
- `Saved (Data As String)`
- `Cleared`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetBase64 As String`
- `GetBitmap As B4XBitmap`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsBase64(sValue As String) As Boolean`
- `IsEmpty As Boolean`
- `IsReady As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetBase64(sBase64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `Validate As Boolean`
- `View As B4XView`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBitMapFormat As String`
- `getBitMapQuality As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getClearButtonText As String`
- `getClearButtonVisible As Boolean`
- `getDisallowParentIntercept As Boolean`
- `getErrorText As String`
- `getHeight As Int`
- `getHintColor As Int`
- `getHintText As String`
- `getInputBorder As Boolean`
- `getIsValid As Boolean`
- `getLabelAbove As Boolean`
- `getLeft As Int`
- `getLegend As String`
- `getLegendBold As Boolean`
- `getLegendSize As String`
- `getMaxWidth As Float`
- `getMinHeight As Int`
- `getMinWidth As Float`
- `getPadBackgroundColor As Int`
- `getPadEnabled As Boolean`
- `getPadVisible As Boolean`
- `getPadding As Int`
- `getPenColor As Int`
- `getRequired As Boolean`
- `getRounded As String`
- `getSaveButtonText As String`
- `getSaveButtonVisible As Boolean`
- `getShadow As String`
- `getStrokeCap As String`
- `getStrokeJoin As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getVelocityFilterWeight As Float`
- `getVisible As Boolean`
- `getWidth As Int`
- `isRoundedBox As Boolean`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBitMapFormat(sValue As String)`
- `setBitMapQuality(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setClearButtonText(sValue As String)`
- `setClearButtonVisible(bValue As Boolean)`
- `setDisallowParentIntercept(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setHeight(iValue As Int)`
- `setHintColor(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputBorder(bValue As Boolean)`
- `setLabelAbove(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLegend(sValue As String)`
- `setLegendBold(bValue As Boolean)`
- `setLegendSize(sValue As String)`
- `setMaxWidth(fValue As Float)`
- `setMinHeight(iValue As Int)`
- `setMinWidth(fValue As Float)`
- `setPadBackgroundColor(iValue As Int)`
- `setPadEnabled(bValue As Boolean)`
- `setPadVisible(bValue As Boolean)`
- `setPadding(iValue As Int)`
- `setPenColor(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSaveButtonText(sValue As String)`
- `setSaveButtonVisible(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setStrokeCap(sValue As String)`
- `setStrokeJoin(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVelocityFilterWeight(fValue As Float)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisySignature` / `B4XDaisySignaturePad` captures digital touch signatures.

```vb
Dim sig As B4XDaisySignature
sig.Initialize(Me, "sig")
sig.AddToParent(pnlHost, pad, y, maxW, 160dip)
sig.StrokeColor = xui.Color_Black
sig.StrokeWidth = 3dip
sig.Rounded = "rounded-box"

' Actions:
' sig.Clear
' Dim bmp As B4XBitmap = sig.GetBitmap

y = y + 160dip + gap
```
