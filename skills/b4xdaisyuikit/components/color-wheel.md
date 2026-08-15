# color-wheel (`B4XDaisyColorWheel`)

Interactive circular color picker wheel with hue/saturation spectrum, lightness slider, and hex value preview.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyColorWheel`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyColorWheel.bas`
- **Verified Demos**: `B4XPageColorWheel.bas`
- **Web DaisyUI Mapping**: `.color-wheel` → `B4XDaisyColorWheel`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim cw As B4XDaisyColorWheel
cw.Initialize(Me, "cw")
cw.AddToParent(pnlHost, pad, y, 200dip, 200dip)
cw.Color = xui.Color_Red
y = y + 200dip + gap
```

## 3. Native Composition Rules & Gotchas
- Interactive HSV color wheel with brightness slider and alpha channel.
- Must maintain `DisallowParentIntercept(Action)` so `B4XDaisyPageScroll` does not steal wheel drag gestures.
- Read selected color via `SelectedColor` (ARGB Int) or hex string.
- Handle realtime color adjustments in the `ColorChanged (Color As Int)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| InitialColor | Initial Color | Color | 0xFFEF4444 |  |
| WheelThickness | Wheel Thickness | Int | 24 |  |
| HandleSize | Handle Size | Int | 24 |  |
| Shadow | Handle Shadow | String | md | none|xs|sm|md|lg|xl|2xl |
| WheelReflectsSaturation | Reflect Saturation | Boolean | False |  |
| ShowColorIndicator | Show Color Indicator | Boolean | True |  |
| CenterOnParent | Center On Parent | Boolean | False |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Changed (Color As Int)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getCenterOnParent As Boolean`
- `getColor As Int`
- `getHSL As Float`
- `getHSV As Float`
- `getHandleDiameter As Int`
- `getHandleSize As Int`
- `getHeight As Int`
- `getHex As String`
- `getIndicatorHeight As Int`
- `getInitialColor As Int`
- `getLeft As Int`
- `getRGB As Int`
- `getShadow As String`
- `getShowColorIndicator As Boolean`
- `getTop As Int`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWheelDiameter As Int`
- `getWheelReflectsSaturation As Boolean`
- `getWheelThickness As Int`
- `getWidth As Int`
- `setCenterOnParent(Value As Boolean)`
- `setColor(NewColor As Int)`
- `setHSL(hsl() As Float`
- `setHSV(hsv() As Float`
- `setHSV3(Hue As Float, Saturation As Float, Value As Float)`
- `setHandleDiameter(Size As Int)`
- `setHandleSize(Size As Int)`
- `setHeight(Value As Int)`
- `setHex(hexStr As String)`
- `setIndicatorHeight(HeightDip As Int)`
- `setInitialColor(Value As Int)`
- `setLeft(Value As Int)`
- `setRGB(rgb() As Int`
- `setShadow(Value As String)`
- `setShowColorIndicator(Value As Boolean)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWheelDiameter(Diameter As Int)`
- `setWheelReflectsSaturation(Value As Boolean)`
- `setWheelThickness(Thickness As Int)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
