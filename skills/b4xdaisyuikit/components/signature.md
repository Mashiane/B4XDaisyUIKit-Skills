# signature (`B4XDaisySignature`)

DaisyUI `Signature` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySignature`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisySignature.bas`
- **Verified Demo Source**: B4XPageSignaturePad.bas
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
| `Legend` | Legend | `String` | Signature |  |
| `LegendSize` | Legend Size | `String` | theme | theme|text-xs|text-sm|text-base|text-lg|text-xl |
| `LegendBold` | Legend Bold | `Boolean` | False |  |
| `LabelAbove` | Label Above | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BorderStyle` | Border Style | `String` | outlined | outlined|ghost|inset |
| `Padding` | Padding | `Int` | 16 |  |
| `AutoHeight` | Auto Height | `Boolean` | True |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BorderSize` | Border Size | `Int` | 1 |  |
| `InputBorder` | Input Border | `Boolean` | False |  |
| `Required` | Required | `Boolean` | False |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |
| `PenColor` | Pen Color | `Color` | 0xFF000000 |  |
| `PadBackgroundColor` | Pad Background Color | `Color` | 0xFFFFFFFF |  |
| `MinWidth` | Min Width | `Float` | 1.5 |  |
| `MaxWidth` | Max Width | `Float` | 4.0 |  |
| `VelocityFilterWeight` | Velocity Filter Weight | `Float` | 0.7 |  |
| `BitMapFormat` | BitMap Format | `String` | png | png|jpg|webp|bmp |
| `BitMapQuality` | BitMap Quality | `Int` | 100 |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | True |  |
| `StrokeCap` | Stroke Cap | `String` | ROUND | BUTT|ROUND|SQUARE |
| `StrokeJoin` | Stroke Join | `String` | ROUND | BEVEL|MITER|ROUND |
| `PadEnabled` | Pad Enabled | `Boolean` | True |  |
| `PadVisible` | Pad Visible | `Boolean` | True |  |
| `MinHeight` | Min Height | `Int` | 150 |  |
| `HintColor` | Hint Color | `Color` | 0x00000000 |  |
| `ClearButtonVisible` | Clear Button Visible | `Boolean` | True |  |
| `ClearButtonText` | Clear Button Text | `String` | Clear |  |
| `SaveButtonVisible` | Save Button Visible | `Boolean` | True |  |
| `SaveButtonText` | Save Button Text | `String` | Save |  |

## 5. Declared Events
- `BeginStroke`
- `EndStroke`
- `Changed`
- `Saved (Data As String)`
- `Cleared`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `setPenColor(Value As Int)`
- `getPenColor As Int`
- `setPadBackgroundColor(Value As Int)`
- `getPadBackgroundColor As Int`
- `setMinWidth(Value As Float)`
- `getMinWidth As Float`
- `setMaxWidth(Value As Float)`
- `getMaxWidth As Float`
- `setVelocityFilterWeight(Value As Float)`
- `getVelocityFilterWeight As Float`
- `setBitMapFormat(Value As String)`
- `getBitMapFormat As String`
- `setBitMapQuality(Value As Int)`
- `getBitMapQuality As Int`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setStrokeCap(Value As String)`
- `getStrokeCap As String`
- `setStrokeJoin(Value As String)`
- `getStrokeJoin As String`
- `setPadEnabled(Value As Boolean)`
- `getPadEnabled As Boolean`
- `setPadVisible(Value As Boolean)`
- `getPadVisible As Boolean`
- `setMinHeight(Value As Int)`
- `getMinHeight As Int`
- `setHintColor(Value As Int)`
- `getHintColor As Int`
- `setClearButtonVisible(Value As Boolean)`
- `getClearButtonVisible As Boolean`
- `setClearButtonText(Value As String)`
- `getClearButtonText As String`
- `setSaveButtonVisible(Value As Boolean)`
- `getSaveButtonVisible As Boolean`
- `setSaveButtonText(Value As String)`
- `getSaveButtonText As String`
- `Clear`
- `IsEmpty As Boolean`
- `GetBitmap As B4XBitmap`
- `GetBase64 As String`
- `SetBase64(Base64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `IsBase64(Value As String) As Boolean`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
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
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `RemoveViewFromParent`
- `Release`

## 7. Public Fields
- `mBase As B4XView`

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
