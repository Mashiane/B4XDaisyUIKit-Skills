# toast (`B4XDaisyToast`)

Non-blocking notification overlay with severity variants, auto-dismiss, and positioning.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyToast`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToast.bas`
- **Verified Demos**: `B4XPageCard.bas, B4XPageTagSphere.bas, B4XPageToast.bas`
- **Web DaisyUI Mapping**: `.toast` → `B4XDaisyToast`

## 2. Verified B4X Syntax & Recipe
```b4x
' Initialize once at screen level
Dim toast As B4XDaisyToast
toast.Initialize(Me, "toast")
toast.SetRoot(Activity.RootPanel)
toast.SetPosition("end", "bottom")
toast.ShowProgress = True

' Show notifications
toast.Success("Item saved successfully!")
toast.Error("Failed to connect.")
toast.Warning("Low storage space.")
toast.Info("New update available.")

' Duration variants
toast.SuccessWithDuration("Saved!", 3000)

```

## 3. Native Composition Rules & Gotchas
- Non-blocking popup toast notification with auto-dismiss timer.
- Display using `toast.Show(Message, Variant, DurationMs, Position)`.
- Configure `Position` (`"top-center"`, `"bottom-center"`, `"top-right"`).
- Does not block user interaction and dismisses automatically.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| HorizontalAlignment | Horizontal Alignment | String | end | start|center|end |
| VerticalAlignment | Vertical Alignment | String | bottom | top|middle|bottom |
| ShowProgress | Show Progress | Boolean | True |  |

## 5. Declared Events
- `NotificationClosed (View As B4XView)`

## 6. Public Methods & APIs
- `ApplyDesignerProps(Props As Map)`
- `AttachTo(View As B4XView)`
- `AttachWithDuration(View As B4XView, DurationMs As Int)`
- `Base_Resize (Width As Int, Height As Int)`
- `BringToFront`
- `Clear`
- `CreateView As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `Detach(View As B4XView)`
- `Error(Message As String)`
- `ErrorWithDuration(Message As String, DurationMs As Int)`
- `GetComputedHeight As Int`
- `Hide`
- `Info(Message As String)`
- `InfoWithDuration(Message As String, DurationMs As Int)`
- `Initialize (Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetPosition(Horizontal As String, Vertical As String)`
- `SetRoot(Root1 As B4XView)`
- `Show`
- `Success(Message As String)`
- `SuccessWithDuration(Message As String, DurationMs As Int)`
- `Warning(Message As String)`
- `WarningWithDuration(Message As String, DurationMs As Int)`
- `getHeight As Int`
- `getHorizontalAlignment As String`
- `getLeft As Int`
- `getShowProgress As Boolean`
- `getTop As Int`
- `getVerticalAlignment As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `setHorizontalAlignment(Value As String)`
- `setLeft(Value As Int)`
- `setShowProgress(Value As Boolean)`
- `setTop(Value As Int)`
- `setVerticalAlignment(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
