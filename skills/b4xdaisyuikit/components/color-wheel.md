# color-wheel (`B4XDaisyColorWheel`)

Interactive circular color picker wheel with hue/saturation spectrum, lightness slider, and hex value preview.

## 1. Overview
- **Class**: `B4XDaisyColorWheel`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyColorWheel.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getCenterOnParent As Boolean`
- `getColor As Int`
- `getHandleDiameter As Int`
- `getHandleSize As Int`
- `getHeight As Int`
- `getHex As String`
- `getHSL As Float`
- `getHSV As Float`
- `getIndicatorHeight As Int`
- `getInitialColor As Int`
- `getLeft As Int`
- `getRGB As Int`
- `getShadow As String`
- `getShowColorIndicator As Boolean`
- `getTop As Int`
- `getVisible As Boolean`
- `getWheelDiameter As Int`
- `getWheelReflectsSaturation As Boolean`
- `getWheelThickness As Int`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `SendToBack`
- `setCenterOnParent(bValue As Boolean)`
- `setColor(iNewColor As Int)`
- `setHandleDiameter(iSize As Int)`
- `setHandleSize(iSize As Int)`
- `setHeight(iValue As Int)`
- `setHex(sHexStr As String)`
- `setHSL(oHsl() As Float`
- `setHSV(oHsv() As Float`
- `setHSV3(fHue As Float, fSaturation As Float, fValue As Float)`
- `setIndicatorHeight(iHeightDip As Int)`
- `setInitialColor(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setRGB(oRgb() As Int`
- `setShadow(sValue As String)`
- `setShowColorIndicator(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWheelDiameter(iDiameter As Int)`
- `setWheelReflectsSaturation(bValue As Boolean)`
- `setWheelThickness(iThickness As Int)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
