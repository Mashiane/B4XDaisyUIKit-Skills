# canvas-spinner (`B4XDaisyCanvasSpinner`)

Smooth vector loading spinner with multiple animation styles (dots, ring, bars, ball, infinity).

## 1. Overview & Verification Status
- **Class**: `B4XDaisyCanvasSpinner`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCanvasSpinner.bas`
- **Verified Demos**: `B4XPageCanvasSpinner.bas`
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
- `AddChild(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize (Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Hide`
- `Initialize(Callback As Object, EventName As String)`
- `Resize(Width As Int, Height As Int)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show(Target As B4XView)`
- `getColor1 As Int`
- `getColor2 As Int`
- `getColor3 As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getOverlayColor As Int`
- `getOverlayOpacity As Float`
- `getSize As String`
- `getStrokeWidth As Float`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setColor1(c As Int)`
- `setColor2(c As Int)`
- `setColor3(c As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setOverlayColor(c As Int)`
- `setOverlayOpacity(o As Float)`
- `setSize(s As String)`
- `setStrokeWidth(s As Float)`
- `setTop(Value As Int)`
- `setVisible(b As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
