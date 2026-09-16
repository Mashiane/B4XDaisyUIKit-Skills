# signature-pad (`B4XDaisySignaturePad`)

DaisyUI `SignaturePad` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySignaturePad`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisySignaturePad.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisySignaturePad.bas)
- **Verified Demo Source**: B4XPageSignaturePad.bas
- **Web DaisyUI Mapping**: `.signature-pad` → `B4XDaisySignaturePad`

## 2. Verified B4X Syntax & Recipe
```b4x
y = pageScroll.AddSectionTitle("Interactive Drawing Area", y, False)
    
	Dim spDemo As B4XDaisySignaturePad
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
| `PenColor` | Pen Color | `Color` | 0xFF000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0xFFFFFFFF |  |
| `MinWidth` | Min Width | `Float` | 1.5 |  |
| `MaxWidth` | Max Width | `Float` | 4.0 |  |
| `VelocityFilterWeight` | Velocity Filter Weight | `Float` | 0.7 |  |
| `Variant` | Variant (Border) | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `BitMapFormat` | BitMap Format | `String` | png | png|jpg|webp|bmp |
| `BitMapQuality` | BitMap Quality | `Int` | 100 |  |
| `DisallowParentIntercept` | Disallow Parent Intercept | `Boolean` | True |  |
| `StrokeCap` | Stroke Cap | `String` | ROUND | BUTT|ROUND|SQUARE |
| `StrokeJoin` | Stroke Join | `String` | ROUND | BEVEL|MITER|ROUND |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `FieldsetMode` | Fieldset Mode | `Boolean` | False |  |
| `MinHeight` | Min Height | `Int` | 150 |  |
| `HintText` | Hint Text | `String` |  |  |
| `HintColor` | Hint Color | `Color` | 0x00000000 |  |

## 5. Declared Events
- `BeginStroke`
- `EndStroke`
- `Changed`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `UpdateTheme`
- `Clear`
- `IsEmpty As Boolean`
- `GetBitmap As B4XBitmap`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setMinWidth(Value As Float)`
- `getMinWidth As Float`
- `setMaxWidth(Value As Float)`
- `getMaxWidth As Float`
- `setVelocityFilterWeight(Value As Float)`
- `getVelocityFilterWeight As Float`
- `setPenColor(Value As Int)`
- `getPenColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `View As B4XView`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `setBitMapFormat(Value As String)`
- `getBitMapFormat As String`
- `setBitMapQuality(Value As Int)`
- `getBitMapQuality As Int`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setStrokeCap(Value As String)`
- `getStrokeCap As String`
- `setStrokeJoin(Value As String)`
- `getStrokeJoin As String`
- `setFieldsetMode(Value As Boolean)`
- `getFieldsetMode As Boolean`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setMinHeight(Value As Int)`
- `getMinHeight As Int`
- `setHintText(Value As String)`
- `getHintText As String`
- `setHintColor(Value As Int)`
- `getHintColor As Int`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `GetBase64 As String`
- `SetBase64(Base64String As String)`
- `IsBase64(Value As String) As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `getRounded As String`
- `setRounded(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getVariant As String`
- `setVariant(Value As String)`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

