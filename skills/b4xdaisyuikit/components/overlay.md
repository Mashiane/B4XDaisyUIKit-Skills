# overlay (`B4XDaisyOverlay`)

DaisyUI `Overlay` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyOverlay`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyOverlay.bas`
- **Verified Demo Source**: B4XPageOverlay.bas (lines 9–300)
- **Web DaisyUI Mapping**: `.overlay` → `B4XDaisyOverlay`

## 2. Verified B4X Syntax & Recipe
```b4x
lbl1bg.setAutoResize(False)

    Dim ov1 As B4XDaisyOverlay
    ov1.Initialize(Me, "ov1")
    ov1.OverlayColor = xui.Color_Black
    ov1.Opacity = 0.4
    ov1.AttachTo(base1)
    ov1.Visible = True

    ' Foreground label - added after AttachTo so it renders above the overlay
    Dim lbl1fg As B4XDaisyText
    lbl1fg.Initialize(Me, "")
    lbl1fg.AddToParent(base1, 0, 64dip, maxW, 56dip)
    lbl1fg.Text = "This text is above the overlay"
    lbl1fg.setTextColor(xui.Color_White)
    lbl1fg.setHAlign("CENTER")
    lbl1fg.setVAlign("CENTER")
    lbl1fg.setAutoResize(False)

    currentY = currentY + 120dip + 20dip

    ' -
    ' Example 2: Colored overlay (error/red tint, 50%)
    ' Demonstrates using a custom overlay colour to create a danger-state tint.
    ' -
    currentY = AddSectionTitle("Coloured overlay (error 50%)", currentY, maxW)
    Dim pnl2 As Panel
    pnl2.Initialize("")
    Dim base2 As B4XView = pnl2
    base2.Color = xui.Color_RGB(209, 213, 219)    ' light grey card background
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyOverlay` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddChild, getOverlayColor, getOpacity` (+ 14 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `OverlayColor` | Overlay Color | `Color` | `0xFF000000` |  |
| `Opacity` | Opacity | `Float` | `0.4` |  |
| `Rounded` | Rounded | `String` | `none` | none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `PassThrough` | Pass Through Touches | `Boolean` | `False` |  |
| `Visible` | Visible | `Boolean` | `False` |  |
| `CloseOnClick` | Close On Click | `Boolean` | `False` |  |

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
- `GetComputedHeight As Int`
- `GetHostView As B4XView`
- `Initialize(oCallback As Object, sEventName As String)`
- `Open`
- `Resize(iWidth As Int, iHeight As Int)`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
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
- `setCloseOnClick(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setOpacity(fValue As Float)`
- `setOverlayColor(iValue As Int)`
- `setPassThrough(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

