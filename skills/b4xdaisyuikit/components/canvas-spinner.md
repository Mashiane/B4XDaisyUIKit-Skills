# canvas-spinner (`B4XDaisyCanvasSpinner`)

DaisyUI `CanvasSpinner` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCanvasSpinner`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCanvasSpinner.bas`
- **Verified Demo Source**: B4XPageCanvasSpinner.bas
- **Web DaisyUI Mapping**: `.canvas-spinner` → `B4XDaisyCanvasSpinner`

## 2. Verified B4X Syntax & Recipe
```b4x
' Spinner XS: 24dip
    spinnerXS.Initialize(Me, "spinnerXS")
    spinnerXS.AddToParent(pnlHost, padding, y + (rowH - 24dip)/2, 24dip, 24dip)
    spinnerXS.setColor1(B4XDaisyVariants.GetTokenColor("--color-primary", 0xFF3FC3EE))
    spinnerXS.setColor2(B4XDaisyVariants.GetTokenColor("--color-secondary", 0xFFF27474))
    spinnerXS.setColor3(B4XDaisyVariants.GetTokenColor("--color-accent", 0xFFF8BB86))
    spinnerXS.setStrokeWidth(2dip)
    spinnerXS.Show(Null)

    ' Spinner SM: 40dip
    Dim x2 As Int = padding + 24dip + spinnerSpacing
    spinnerSM.Initialize(Me, "spinnerSM")
    spinnerSM.AddToParent(pnlHost, x2, y + (rowH - 40dip)/2, 40dip, 40dip)
    spinnerSM.setColor1(B4XDaisyVariants.GetTokenColor("--color-success", 0xFF22C55E))
    spinnerSM.setColor2(B4XDaisyVariants.GetTokenColor("--color-warning", 0xFFEAB308))
    spinnerSM.setColor3(B4XDaisyVariants.GetTokenColor("--color-error", 0xFFEF4444))
    spinnerSM.setStrokeWidth(3dip)
    spinnerSM.Show(Null)

    ' Spinner MD: 64dip
    Dim x3 As Int = x2 + 40dip + spinnerSpacing
    spinnerMD.Initialize(Me, "spinnerMD")
    spinnerMD.AddToParent(pnlHost, x3, y + (rowH - 64dip)/2, 64dip, 64dip)
    spinnerMD.setColor1(B4XDaisyVariants.GetTokenColor("--color-info", 0xFF3B82F6))
    spinnerMD.setColor2(B4XDaisyVariants.GetTokenColor("--color-secondary", 0xFFD946EF))
    spinnerMD.setColor3(B4XDaisyVariants.GetTokenColor("--color-neutral", 0xFF1F2937))
    spinnerMD.setStrokeWidth(4dip)
    spinnerMD.Show(Null)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCanvasSpinner` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddChild, getVisible, getSize` (+ 10 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Size` | Size | `String` | 100dip |  |
| `Color1` | Primary Color | `Color` | 0xFF3FC3EE |  |
| `Color2` | Secondary Color | `Color` | 0xFFF27474 |  |
| `Color3` | Tertiary Color | `Color` | 0xFFF8BB86 |  |
| `StrokeWidth` | Stroke Width | `String` | 4dip |  |
| `OverlayColor` | Overlay Color | `Color` | 0xFFFFFFFF |  |
| `OverlayOpacity` | Overlay Opacity | `Float` | 0.0 |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddChild(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show(Target As B4XView)`
- `Hide`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getSize As String`
- `setSize(Value As String)`
- `getColor1 As Int`
- `setColor1(C As Int)`
- `getColor2 As Int`
- `setColor2(C As Int)`
- `getColor3 As Int`
- `setColor3(C As Int)`
- `getStrokeWidth As Float`
- `setStrokeWidth(S As Float)`
- `getOverlayColor As Int`
- `setOverlayColor(C As Int)`
- `getOverlayOpacity As Float`
- `setOverlayOpacity(O As Float)`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

