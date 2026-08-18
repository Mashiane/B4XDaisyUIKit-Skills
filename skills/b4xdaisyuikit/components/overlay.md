# overlay (`B4XDaisyOverlay`)

Full-screen or container-level backdrop dimming overlay for modal dialogs, loading spinners, and side drawers.

## 1. Overview
- **Class**: `B4XDaisyOverlay`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyOverlay.bas`
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
- `AddChild(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Close`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `getCloseOnClick As Boolean`
- `GetComputedHeight As Int`
- `getHeight As Int`
- `GetHostView As B4XView`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Open`
- `Resize(iWidth As Int, iHeight As Int)`
- `SendToBack`
- `setCloseOnClick(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setOpacity(fValue As Float)`
- `setOverlayColor(iValue As Int)`
- `setPassThrough(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
