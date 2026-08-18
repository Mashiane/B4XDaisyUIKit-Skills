# canvas-spinner (`B4XDaisyCanvasSpinner`)

Smooth vector loading spinner with multiple animation styles (dots, ring, bars, ball, infinity).

## 1. Overview
- **Class**: `B4XDaisyCanvasSpinner`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCanvasSpinner.bas`
- **Web DaisyUI Mapping**: `.canvas-spinner` → `B4XDaisyCanvasSpinner`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sp As B4XDaisyCanvasSpinner
sp.Initialize(Me, "sp")
sp.AddToParent(pnlHost, pad, y, 40dip, 40dip)
sp.Color = xui.Color_RGB(59, 130, 246)
y = y + 40dip + gap
```

## 3. Native Composition Rules & Gotchas
- High-performance vector spinner rendered on a hardware-accelerated canvas.
- Choose spinner animation style via `SpinnerType` (`"gear"`, `"arcs"`, `"orbit"`, `"pulse"`).
- Control playback explicitly using `Start` and `Stop` methods.
- Configure `PrimaryColor` and `Speed` to match your application's active theme.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Size | Size | String | 100dip |  |
| Color1 | Primary Color | Color | 0xFF3FC3EE |  |
| Color2 | Secondary Color | Color | 0xFFF27474 |  |
| Color3 | Tertiary Color | Color | 0xFFF8BB86 |  |
| StrokeWidth | Stroke Width | String | 4dip |  |
| OverlayColor | Overlay Color | Color | 0xFFFFFFFF |  |
| OverlayOpacity | Overlay Opacity | Float | 0.0 |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddChild(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getColor1 As Int`
- `getColor2 As Int`
- `getColor3 As Int`
- `GetComputedHeight As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getOverlayColor As Int`
- `getOverlayOpacity As Float`
- `getSize As String`
- `getStrokeWidth As Float`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `Hide`
- `Initialize(oCallback As Object, sEventName As String)`
- `Resize(iWidth As Int, iHeight As Int)`
- `SendToBack`
- `setColor1(iC As Int)`
- `setColor2(iC As Int)`
- `setColor3(iC As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setOverlayColor(iC As Int)`
- `setOverlayOpacity(fO As Float)`
- `setSize(sValue As String)`
- `setStrokeWidth(fS As Float)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Show(vTarget As B4XView)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
