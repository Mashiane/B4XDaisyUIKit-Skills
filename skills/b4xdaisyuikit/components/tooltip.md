# tooltip (`B4XDaisyTooltip`)

Floating hint bubble anchored to a target view, shown on tap/hover with auto-positioning.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTooltip`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTooltip.bas`
- **Verified Demos**: `B4XPageTooltip.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `DetachTarget`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `Hide`
- `HideAnimated(DurationMs As Int)`
- `Initialize (Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetCustomContent(View As B4XView)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show`
- `ShowAnimated(Duration As Int)`
- `getAlignment As String`
- `getAutoResize As Boolean`
- `getClickToClose As Boolean`
- `getDuration As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMessage As String`
- `getPosition As String`
- `getShowArrow As Boolean`
- `getTextWrapped As Boolean`
- `getTop As Int`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAlignment(Value As String)`
- `setAutoResize(Value As Boolean)`
- `setClickToClose(Value As Boolean)`
- `setDuration(Value As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setMessage(Value As String)`
- `setPosition(Value As String)`
- `setShowArrow(Value As Boolean)`
- `setTextWrapped(Value As Boolean)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(b As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
