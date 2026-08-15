# steps (`B4XDaisySteps`)

Step-by-step progress indicator with numbered/icon steps, vertical or horizontal layout, and click-to-advance.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySteps`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySteps.bas`
- **Verified Demos**: `B4XPageSteps.bas`
- **Web DaisyUI Mapping**: `.steps` → `B4XDaisySteps`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim stp As B4XDaisySteps
stp.Initialize(Me, "stp")
stp.AddToParent(pnlHost, pad, y, maxW, 80dip)
stp.ActiveColor = "primary"
stp.ActiveStep = 1
stp.Orientation = "horizontal"
stp.ConnectOnClick = True

stp.AddStep("Account", "neutral")
stp.AddStep("Profile", "neutral")
stp.AddStep("Payment", "neutral")
stp.AddStep("Done", "neutral")
y = y + stp.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Multi-step progress tracker for checkouts and multi-stage wizards.
- Add steps sequentially using `AddStep(Id, Title, Subtitle, IconAsset)`.
- Set `CurrentStep` (0-based) to highlight completed stages.
- Set `Direction = "horizontal"` (default) or `"vertical"` for long workflows.
- Handle step clicks in the `StepClick (StepIndex As Int, StepId As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Orientation | Orientation | String | horizontal | horizontal|vertical |
| ActiveColor | Active Color | String | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| ActiveStep | Active Step | Int | -1 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| CircleSize | Circle Size | Int | 32 |  |
| StepGap | Step Gap | Int | 0 |  |
| Scrollable | Scrollable | Boolean | False |  |
| ConnectOnClick | Connect On Click | Boolean | False |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-auto |  |

## 5. Declared Events
- `StepClick (Index As Int, Tag As Object)`

## 6. Public Methods & APIs
- `AddStep(Text As String, Variant As String)`
- `AddStepWithContent(Text As String, Variant As String, Content As String)`
- `AddStepWithIcon(Text As String, Variant As String, Icon As String)`
- `AddStepWithSvgIcon(Text As String, Variant As String, SvgFileName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearSteps`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetSteps(Steps As List)`
- `UpdateTheme`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As String`
- `setActiveColor(Value As String)`
- `setActiveStep(Value As Int)`
- `setCircleSize(Value As Int)`
- `setConnectOnClick(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setOrientation(Value As String)`
- `setPadding(Value As String)`
- `setScrollable(Value As Boolean)`
- `setStepGap(Value As Int)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
