# color-wheel (`B4XDaisyColorWheel`)

DaisyUI `ColorWheel` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyColorWheel`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyColorWheel.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas (lines 15–32)
- **Web DaisyUI Mapping**: `.color-wheel` → `B4XDaisyColorWheel`

## 2. Verified B4X Syntax & Recipe
```b4x
y = pageScroll.AddSectionTitle("1. Medium-Thin Donut (16dip thickness)", y, False)
    
	cwBasic.Initialize(Me, "cwBasic")
	cwBasic.AddToParent(pnlHost, padding, y, 180dip, 212dip)
	cwBasic.setWheelThickness(16dip)
	cwBasic.setHandleSize(16dip)
    
	y = y + 220dip + gap

	' -------------------------------------------------------------
	' Example 2: Large Scaled Wheel (Thick Donut with Saturation Reflection)
	' -------------------------------------------------------------
	y = pageScroll.AddSectionTitle("2. Large Thick Donut (Reflects Saturation)", y, False)
    
	cwLarge.Initialize(Me, "cwLarge")
	cwLarge.AddToParent(pnlHost, padding, y, 240dip, 272dip)
	cwLarge.setColor(B4XDaisyVariants.GetTokenColor("--color-success", xui.Color_RGB(34, 197, 94)))
	cwLarge.setWheelThickness(32dip)
	cwLarge.setHandleDiameter(32dip)
	cwLarge.setWheelReflectsSaturation(True)
    
	y = y + 280dip + gap
 
	' -------------------------------------------------------------
	' Example 3: Programmatic API Control (Very Thick Donut)
	' -------------------------------------------------------------
	y = pageScroll.AddSectionTitle("3. Programmatic Control (Hex & HSL)", y, False)
    
	cwProgrammatic.Initialize(Me, "cwProgrammatic")
	cwProgrammatic.AddToParent(pnlHost, padding, y, 180dip, 212dip)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyColorWheel` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Deviation Mechanism
- Touch-drag color picker with `DisallowParentIntercept` to prevent parent scroll interception.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getHSV, setHSV, setHSV3` (+ 23 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `InitialColor` | Initial Color | `Color` | `0xFFEF4444` |  |
| `WheelThickness` | Wheel Thickness | `Int` | `24` |  |
| `HandleSize` | Handle Size | `Int` | `24` |  |
| `Shadow` | Handle Shadow | `String` | `md` | none|xs|sm|md|lg|xl|2xl |
| `WheelReflectsSaturation` | Reflect Saturation | `Boolean` | `False` |  |
| `ShowColorIndicator` | Show Color Indicator | `Boolean` | `True` |  |
| `CenterOnParent` | Center On Parent | `Boolean` | `False` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Changed (Color As Int)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWheelDiameter As Int`
- `getWheelReflectsSaturation As Boolean`
- `getWheelThickness As Int`
- `getWidth As Int`
- `setCenterOnParent(bValue As Boolean)`
- `setColor(iNewColor As Int)`
- `setHSL(oHsl() As Float`
- `setHSV(oHsv() As Float`
- `setHSV3(fHue As Float, fSaturation As Float, fValue As Float)`
- `setHandleDiameter(iSize As Int)`
- `setHandleSize(iSize As Int)`
- `setHeight(iValue As Int)`
- `setHex(sHexStr As String)`
- `setIndicatorHeight(iHeightDip As Int)`
- `setInitialColor(iValue As Int)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyColorWheel` provides a color picker hue wheel.

```vb
Dim wheel As B4XDaisyColorWheel
wheel.Initialize(Me, "wheel")
wheel.AddToParent(pnlHost, pad, y, maxW, 200dip)

' Color change event:
Private Sub wheel_ColorChange(Color As Int)
    Log("Selected color: " & Color)
End Sub

y = y + 200dip + gap
```
