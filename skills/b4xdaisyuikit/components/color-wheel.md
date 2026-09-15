# color-wheel (`B4XDaisyColorWheel`)

DaisyUI `ColorWheel` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyColorWheel`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyColorWheel.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas
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
| `InitialColor` | Initial Color | `Color` | 0xFFEF4444 |  |
| `WheelThickness` | Wheel Thickness | `Int` | 24 |  |
| `HandleSize` | Handle Size | `Int` | 24 |  |
| `Shadow` | Handle Shadow | `String` | md | none|xs|sm|md|lg|xl|2xl |
| `WheelReflectsSaturation` | Reflect Saturation | `Boolean` | False |  |
| `ShowColorIndicator` | Show Color Indicator | `Boolean` | True |  |
| `CenterOnParent` | Center On Parent | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Changed (Color As Int)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `getColor As Int`
- `setColor(NewColor As Int)`
- `setHSV3(Hue As Float, Saturation As Float, Value As Float)`
- `getHex As String`
- `setHex(HexStr As String)`
- `getWheelDiameter As Int`
- `setWheelDiameter(Diameter As Int)`
- `getWheelReflectsSaturation As Boolean`
- `setWheelReflectsSaturation(Value As Boolean)`
- `setShowColorIndicator(Value As Boolean)`
- `getShowColorIndicator As Boolean`
- `setIndicatorHeight(HeightDip As Int)`
- `getIndicatorHeight As Int`
- `setInitialColor(Value As Int)`
- `getInitialColor As Int`
- `View As B4XView`
- `setTag(Value As Object)`
- `setWheelThickness(Thickness As Int)`
- `setCenterOnParent(Value As Boolean)`
- `getCenterOnParent As Boolean`
- `getWheelThickness As Int`
- `setHandleSize(Size As Int)`
- `getHandleSize As Int`
- `setHandleDiameter(Size As Int)`
- `getHandleDiameter As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AttachTo(Target As B4XView)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `getShadow As String`
- `setShadow(Value As String)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `Release`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyColorWheel` provides a color picker hue wheel.

```vb
Dim wheel As B4XDaisyColorWheel
wheel.Initialize(Me, "wheel")
wheel.AddToParent(pnlHost, pad, y, maxW, 200dip)

' Color change event:
Private Sub wheel_ColorChange(Color As Int)
    If B4XDaisyApp.DebugLogs Then Log("Selected color: " & Color)
End Sub

y = y + 200dip + gap
```
