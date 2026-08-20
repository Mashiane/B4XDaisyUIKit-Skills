# toast (`B4XDaisyToast`)

Non-blocking notification overlay with severity variants, auto-dismiss, and positioning.

## 1. Overview
- **Class**: `B4XDaisyToast`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToast.bas`
- **Web DaisyUI Mapping**: `.toast` → `B4XDaisyToast`

## 2. Verified B4X Syntax & Recipe
```b4x
' Initialize once at screen level
Dim toast As B4XDaisyToast
toast.Initialize(Me, "toast")
toast.SetRoot(Root)
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
- `ApplyDesignerProps(mProps As Map)`
- `AttachTo(vHostView As B4XView)`
- `AttachWithDuration(vHostView As B4XView, iDurationMs As Int)`
- `Base_Resize(iWidth As Int, iHeight As Int)`
- `BringToFront`
- `Clear`
- `CreateView As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Detach(vHostView As B4XView)`
- `Error(sMessage As String)`
- `ErrorWithDuration(sMessage As String, iDurationMs As Int)`
- `GetComputedHeight As Int`
- `getHeight As Int`
- `getHorizontalAlignment As String`
- `getLeft As Int`
- `getShowProgress As Boolean`
- `getTop As Int`
- `getVerticalAlignment As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Hide`
- `Info(sMessage As String)`
- `InfoWithDuration(sMessage As String, iDurationMs As Int)`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setHeight(iValue As Int)`
- `setHorizontalAlignment(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `SetPosition(sHorizontal As String, sVertical As String)`
- `SetRoot(vRoot1 As B4XView)`
- `setShowProgress(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVerticalAlignment(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Show`
- `Success(sMessage As String)`
- `SuccessWithDuration(sMessage As String, iDurationMs As Int)`
- `View As B4XView`
- `Warning(sMessage As String)`
- `WarningWithDuration(sMessage As String, iDurationMs As Int)`


## 7. Public Fields
- `mBase As B4XView`
