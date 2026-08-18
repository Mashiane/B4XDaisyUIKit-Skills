# tooltip (`B4XDaisyTooltip`)

Floating hint bubble anchored to a target view, shown on tap/hover with auto-positioning.

## 1. Overview
- **Class**: `B4XDaisyTooltip`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTooltip.bas`
- **Web DaisyUI Mapping**: `.tooltip` → `B4XDaisyTooltip`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tip As B4XDaisyTooltip
tip.Initialize(Me, "tip")
tip.AddToParent(pnlHost, pad, y, maxW, 0)
tip.Message = "This field is required."
tip.Variant = "error"
tip.Position = "top"
tip.ShowArrow = True
tip.ClickToClose = True

' Attach to a target view
tip.AttachTo(myInput.getView)

' Show/hide programmatically
tip.Show
y = y + tip.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Hint popover pointing to a target component on touch or hover.
- Wrap target view using `tip.Wrap(myButton.getView)`.
- Set `Text` and `Position` (`"top"`, `"bottom"`, `"left"`, `"right"`).
- Use `Open = True` to force tooltip visibility programmatically.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Message | Message | String | Tooltip message |  |
| Position | Position | String | top | top|bottom|left|right |
| Alignment | Alignment | String | center | start|center|end |
| Variant | Variant | String | neutral | none|neutral|primary|secondary|accent|info|success|warning|error |
| ShowArrow | Show Arrow | Boolean | True |  |
| ClickToClose | Click To Close | Boolean | True |  |
| TextWrapped | Text Wrapped | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| AutoResize | Auto Resize | Boolean | True |  |
| Duration | Duration | Int | 300 |  |

## 5. Declared Events
- `Shown`
- `Hidden`
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `DetachTarget`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `getAlignment As String`
- `getAutoResize As Boolean`
- `getClickToClose As Boolean`
- `GetComputedHeight As Int`
- `getDuration As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMessage As String`
- `getPosition As String`
- `getShowArrow As Boolean`
- `getTextWrapped As Boolean`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Hide`
- `HideAnimated(iDurationMs As Int)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setAlignment(sValue As String)`
- `setAutoResize(bValue As Boolean)`
- `setClickToClose(bValue As Boolean)`
- `SetCustomContent(vCustomView As B4XView)`
- `setDuration(iValue As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMessage(sValue As String)`
- `setPosition(sValue As String)`
- `setShowArrow(bValue As Boolean)`
- `setTextWrapped(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Show`
- `ShowAnimated(iDuration As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
