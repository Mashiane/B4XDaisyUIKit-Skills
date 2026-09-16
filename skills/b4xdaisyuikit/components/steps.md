# steps (`B4XDaisySteps`)

DaisyUI `Steps` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySteps`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisySteps.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisySteps.bas)
- **Verified Demo Source**: B4XPageSteps.bas
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
' Step progress wizard indicator:
Dim steps As B4XDaisySteps
steps.Initialize(Me, "steps")
steps.setConnectOnClick(True)
steps.setActiveColor("primary")

' Add step items (title, variant):
steps.AddStep("Register", "primary")
steps.AddStep("Choose Plan", "primary")
steps.AddStep("Payment", "")
steps.AddStep("Complete", "")

Dim stepsH As Int = steps.GetComputedHeight
steps.AddToParent(pnlHost, 16dip, y, maxW, stepsH)
y = y + stepsH + 16dip

' Step click event:
Private Sub steps_StepClick(Index As Int, StepName As String)
	If B4XDaisyApp.DebugLogs Then Log("Step tapped: " & Index & " - " & StepName)
End Sub
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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Orientation` | Orientation | `String` | horizontal | horizontal|vertical |
| `ActiveColor` | Active Color | `String` | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ActiveStep` | Active Step | `Int` | -1 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `CircleSize` | Circle Size | `Int` | 32 |  |
| `StepGap` | Step Gap | `Int` | 0 |  |
| `Scrollable` | Scrollable | `Boolean` | False |  |
| `ConnectOnClick` | Connect On Click | `Boolean` | False |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-auto |  |

## 5. Declared Events
- `StepClick (Index As Int, Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `View As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddStep(Text As String, Variant As String)`
- `AddStepWithContent(Text As String, Variant As String, Content As String)`
- `AddStepWithIcon(Text As String, Variant As String, Icon As String)`
- `AddStepWithSvgIcon(Text As String, Variant As String, SvgFileName As String)`
- `SetSteps(lstSteps As List)`
- `ClearSteps`
- `getStepCount As Int`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setActiveStep(Value As Int)`
- `getActiveStep As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `getCircleSize As Int`
- `setCircleSize(Value As Int)`
- `setConnectOnClick(Value As Boolean)`
- `getConnectOnClick As Boolean`
- `setStepGap(Value As Int)`
- `getStepGap As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

