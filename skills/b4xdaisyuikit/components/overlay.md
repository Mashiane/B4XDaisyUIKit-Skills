# overlay (`B4XDaisyOverlay`)

Full-screen or container-level backdrop dimming overlay for modal dialogs, loading spinners, and side drawers.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyOverlay`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyOverlay.bas`
- **Verified Demos**: `B4XPageOverlay.bas`
- **Web DaisyUI Mapping**: `.overlay` → `B4XDaisyOverlay`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ovl As B4XDaisyOverlay
ovl.Initialize(Me, "ovl")
ovl.AddToParent(Root, 0, 0, Root.Width, Root.Height)
ovl.Visible = True
```

## 3. Native Composition Rules & Gotchas
- Full-screen dimming backdrop overlay for dialogs, drawers, and loading states.
- Mount over `Root` and call `BringToFront`.
- Configure `Opacity` (0.0 to 1.0) and `DimColor`.
- Set `DismissOnClick = True` to dismiss on backdrop tap; fires `Dismissed` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| OverlayColor | Overlay Color | Color | 0xFF000000 |  |
| Opacity | Opacity | Float | 0.4 |  |
| Rounded | Rounded | String | none | none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| PassThrough | Pass Through Touches | Boolean | False |  |
| Visible | Visible | Boolean | False |  |
| CloseOnClick | Close On Click | Boolean | False |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `Opened (Tag As Object)`
- `Closed (Tag As Object)`

## 6. Public Methods & APIs
- `AddChild(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Close`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetHostView As B4XView`
- `Initialize(Callback As Object, EventName As String)`
- `Open`
- `Resize(Width As Int, Height As Int)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getCloseOnClick As Boolean`
- `getHeight As Int`
- `getIsAttached As Boolean`
- `getIsOpen As Boolean`
- `getLeft As Int`
- `getOpacity As Float`
- `getOverlayColor As Int`
- `getPassThrough As Boolean`
- `getRounded As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setCloseOnClick(Value As Boolean)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setOpacity(Value As Float)`
- `setOverlayColor(Value As Int)`
- `setPassThrough(Value As Boolean)`
- `setRounded(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
