# steps (`B4XDaisySteps`)

DaisyUI `Steps` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySteps`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySteps.bas`
- **Verified Demo Source**: B4XPageSteps.bas (lines 65–403)
- **Web DaisyUI Mapping**: `.steps` → `B4XDaisySteps`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<ul class="steps {DIRECTION}">
  <li class="step step-primary">{completed step}</li>
  <li class="step">{upcoming step}</li>
</ul>
```

## 2. Verified B4X Syntax & Recipe
```b4x
y = AddDescription(contentLeft, y, maxW, "Completed steps use step-primary; pending steps use the default base color. ConnectOnClick is enabled ? tap any step to fill the connector line and circles up to and including that step.")

    Dim ex1 As B4XDaisySteps
    ex1.Initialize(Me, "steps")
    ex1.setConnectOnClick(True)
    ex1.setActiveColor("primary")
    ex1.AddStep("Register", "primary")
    ex1.AddStep("Choose plan", "primary")
    ex1.AddStep("Purchase", "")
    ex1.AddStep("Receive", "")
    Dim ex1H As Int = ex1.GetComputedHeight
    ex1.AddToParent(pnlHost, contentLeft, y, maxW, ex1H)
    y = y + ex1H + 20dip

    ' -
    ''' <summary>
    ''' Example 2: Vertical steps.
    ''' Mirrors the steps-vertical DaisyUI docs example.
    ''' </summary>
    y = AddSectionTitle(contentLeft, y, maxW, "2. Vertical steps")
    y = AddDescription(contentLeft, y, maxW, "Same steps rendered vertically ? connector bars become vertical lines.")

    Dim ex2 As B4XDaisySteps
    ex2.Initialize(Me, "steps")
    ex2.setOrientation("vertical")
    ex2.AddStep("Register", "primary")
    ex2.AddStep("Choose plan", "primary")
    ex2.AddStep("Purchase", "")
    ex2.AddStep("Receive Product", "")
    Dim ex2H As Int = ex2.GetComputedHeight
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySteps` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Step indicator requiring sequential step items definition before rendering step states.

### Deviation Mechanism
- Step indicator requiring sequential step items definition before rendering step states.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddStepWithIcon, SetSteps, ClearSteps` (+ 20 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Orientation` | Orientation | `String` | `horizontal` | horizontal|vertical |
| `ActiveColor` | Active Color | `String` | `primary` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ActiveStep` | Active Step | `Int` | `-1` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `CircleSize` | Circle Size | `Int` | `32` |  |
| `StepGap` | Step Gap | `Int` | `0` |  |
| `Scrollable` | Scrollable | `Boolean` | `False` |  |
| `ConnectOnClick` | Connect On Click | `Boolean` | `False` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-auto` |  |

## 5. Declared Events
- `StepClick (Index As Int, Tag As Object)`

## 6. Public Methods & APIs
- `AddStep(sText As String, sVariant As String)`
- `AddStepWithContent(sText As String, sVariant As String, sContent As String)`
- `AddStepWithIcon(sText As String, sVariant As String, sIcon As String)`
- `AddStepWithSvgIcon(sText As String, sVariant As String, sSvgFileName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearSteps`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetSteps(lstSteps As List)`
- `UpdateTheme`
- `View As B4XView`
- `getActiveColor As String`
- `getActiveStep As Int`
- `getCircleSize As Int`
- `getConnectOnClick As Boolean`
- `getEnabled As Boolean`
- `getHeight As String`
- `getLeft As Int`
- `getMargin As String`
- `getOrientation As String`
- `getPadding As String`
- `getScrollable As Boolean`
- `getStepCount As Int`
- `getStepGap As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `setActiveColor(sValue As String)`
- `setActiveStep(iValue As Int)`
- `setCircleSize(iValue As Int)`
- `setConnectOnClick(bValue As Boolean)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setStepGap(iValue As Int)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisySteps` renders a horizontal or vertical step progress wizard indicator.

```vb
Dim steps As B4XDaisySteps
steps.Initialize(Me, "steps")
steps.AddToParent(pnlHost, pad, y, maxW, 60dip)
steps.Direction = "horizontal"                 ' "horizontal" | "vertical"

' Add step items:
steps.AddItem("1", "Scan")
steps.AddItem("2", "Variance")
steps.AddItem("3", "Resolve")

' Mark active step:
steps.ActiveIndex = 1                          ' 0-indexed: Step 2 is active
steps.SetStepDone("1", True)                   ' Step 1 completed (primary color)

y = y + steps.GetComputedHeight + gap
```
