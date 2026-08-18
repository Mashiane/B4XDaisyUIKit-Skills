# steps (`B4XDaisySteps`)

Step-by-step progress indicator with numbered/icon steps, vertical or horizontal layout, and click-to-advance.

## 1. Overview
- **Class**: `B4XDaisySteps`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySteps.bas`
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
- `AddStep(sText As String, sVariant As String)`
- `AddStepWithContent(sText As String, sVariant As String, sContent As String)`
- `AddStepWithIcon(sText As String, sVariant As String, sIcon As String)`
- `AddStepWithSvgIcon(sText As String, sVariant As String, sSvgFileName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearSteps`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As String`
- `getActiveStep As Int`
- `getCircleSize As Int`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `SendToBack`
- `setActiveColor(sValue As String)`
- `setActiveStep(iValue As Int)`
- `setCircleSize(iValue As Int)`
- `setConnectOnClick(bValue As Boolean)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setStepGap(iValue As Int)`
- `SetSteps(lstSteps As List)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
