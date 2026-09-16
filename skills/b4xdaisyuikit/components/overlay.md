# overlay (`B4XDaisyOverlay`)

DaisyUI `Overlay` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyOverlay`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyOverlay.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyOverlay.bas)
- **Verified Demo Source**: B4XPageOverlay.bas
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
| `OverlayColor` | Overlay Color | `Color` | 0xFF000000 |  |
| `Opacity` | Opacity | `Float` | 0.4 |  |
| `Rounded` | Rounded | `String` | none | none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `PassThrough` | Pass Through Touches | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | False |  |
| `CloseOnClick` | Close On Click | `Boolean` | False |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `Opened (Tag As Object)`
- `Closed (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddChild(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetHostView As B4XView`
- `getOverlayColor As Int`
- `setOverlayColor(Value As Int)`
- `getOpacity As Float`
- `setOpacity(Value As Float)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getPassThrough As Boolean`
- `setPassThrough(Value As Boolean)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getTag As Object`
- `setTag(Value As Object)`
- `getCloseOnClick As Boolean`
- `setCloseOnClick(Value As Boolean)`
- `getIsAttached As Boolean`
- `getIsOpen As Boolean`
- `Open`
- `Close`
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

