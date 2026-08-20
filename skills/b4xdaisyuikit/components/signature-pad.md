# signature-pad (`B4XDaisySignaturePad`)

Interactive drawing surface for capturing handwritten signatures with stroke smoothing, clear/save buttons, and Base64 export.

## 1. Overview
- **Class**: `B4XDaisySignaturePad`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySignaturePad.bas`
- **Web DaisyUI Mapping**: `.signature-pad` → `B4XDaisySignaturePad`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sig As B4XDaisySignature
sig.Initialize(Me, "sig")
sig.AddToParent(pnlHost, pad, y, maxW, 220dip)
sig.Legend = "Customer Signature"
sig.PenColor = Colors.Black
sig.PadBackgroundColor = Colors.White
y = y + sig.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Touch-drawing vector canvas for digital signature capture.
- Must maintain `DisallowParentIntercept(Action)` during pen stroke drawing.
- Configure `PenColor` and `PenWidth`.
- Check signature presence via `IsBlank` and export bitmap with `GetBitmap`.
- Clear canvas via `Clear` method.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| PenColor | Pen Color | Color | 0xFF000000 |  |
| BackgroundColor | Background Color | Color | 0xFFFFFFFF |  |
| MinWidth | Min Width | Float | 1.5 |  |
| MaxWidth | Max Width | Float | 4.0 |  |
| VelocityFilterWeight | Velocity Filter Weight | Float | 0.7 |  |
| Variant | Variant (Border) | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| BitMapFormat | BitMap Format | String | png | png|jpg|webp|bmp |
| BitMapQuality | BitMap Quality | Int | 100 |  |
| DisallowParentIntercept | Disallow Parent Intercept | Boolean | True |  |
| StrokeCap | Stroke Cap | String | ROUND | BUTT|ROUND|SQUARE |
| StrokeJoin | Stroke Join | String | ROUND | BEVEL|MITER|ROUND |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| FieldsetMode | Fieldset Mode | Boolean | False |  |
| MinHeight | Min Height | Int | 150 |  |
| HintText | Hint Text | String |  |  |
| HintColor | Hint Color | Color | 0x00000000 |  |

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
- `getBackgroundColor As Int`
- `GetBase64 As String`
- `GetBitmap As B4XBitmap`
- `getBitMapFormat As String`
- `getBitMapQuality As Int`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `IsBase64(sValue As String) As Boolean`
- `IsEmpty As Boolean`
- `Refresh`
- `Release`
- `setBackgroundColor(iValue As Int)`
- `SetBase64(sBase64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
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
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `StrokeColor As Int`
- `StrokeWidth As Float`
- `mBase As B4XView`
