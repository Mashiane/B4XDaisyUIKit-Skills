# signature-pad (`B4XDaisySignaturePad`)

DaisyUI `SignaturePad` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySignaturePad`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisySignaturePad.bas`
- **Verified Demo Source**: B4XPageSignaturePad.bas (lines 15–16)
- **Web DaisyUI Mapping**: `.signature-pad` → `B4XDaisySignaturePad`

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
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySignaturePad` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, setEnabled, getEnabled` (+ 34 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `PenColor` | Pen Color | `Color` | `0xFF000000` |  |
| `BackgroundColor` | Background Color | `Color` | `0xFFFFFFFF` |  |
| `MinWidth` | Min Width | `Float` | `1.5` |  |
| `MaxWidth` | Max Width | `Float` | `4.0` |  |
| `VelocityFilterWeight` | Velocity Filter Weight | `Float` | `0.7` |  |
| `Variant` | Variant (Border) | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `BitMapFormat` | BitMap Format | `String` | `png` | png|jpg|webp|bmp |
| `BitMapQuality` | BitMap Quality | `Int` | `100` |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | `True` |  |
| `StrokeCap` | Stroke Cap | `String` | `ROUND` | BUTT|ROUND|SQUARE |
| `StrokeJoin` | Stroke Join | `String` | `ROUND` | BEVEL|MITER|ROUND |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `FieldsetMode` | Fieldset Mode | `Boolean` | `False` |  |
| `MinHeight` | Min Height | `Int` | `150` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `HintColor` | Hint Color | `Color` | `0x00000000` |  |

## 5. Declared Events
- `BeginStroke`
- `EndStroke`
- `Changed`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetBase64 As String`
- `GetBitmap As B4XBitmap`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsBase64(sValue As String) As Boolean`
- `IsEmpty As Boolean`
- `Refresh`
- `Release`
- `SetBase64(sBase64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `UpdateTheme`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getBitMapFormat As String`
- `getBitMapQuality As Int`
- `getDisallowParentIntercept As Boolean`
- `getEnabled As Boolean`
- `getFieldsetMode As Boolean`
- `getHeight As Int`
- `getHintColor As Int`
- `getHintText As String`
- `getMaxWidth As Float`
- `getMinHeight As Int`
- `getMinWidth As Float`
- `getPenColor As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getStrokeCap As String`
- `getStrokeJoin As String`
- `getVariant As String`
- `getVelocityFilterWeight As Float`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iValue As Int)`
- `setBitMapFormat(sValue As String)`
- `setBitMapQuality(iValue As Int)`
- `setDisallowParentIntercept(bValue As Boolean)`
- `setEnabled(bValue As Boolean)`
- `setFieldsetMode(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHintColor(iValue As Int)`
- `setHintText(sValue As String)`
- `setMaxWidth(fValue As Float)`
- `setMinHeight(iValue As Int)`
- `setMinWidth(fValue As Float)`
- `setPenColor(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setStrokeCap(sValue As String)`
- `setStrokeJoin(sValue As String)`
- `setVariant(sValue As String)`
- `setVelocityFilterWeight(fValue As Float)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

