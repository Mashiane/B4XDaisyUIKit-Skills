# toast (`B4XDaisyToast`)

DaisyUI `Toast` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyToast`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyToast.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyToast.bas)
- **Verified Demo Source**: B4XPageCard.bas, B4XPageTagSphere.bas, B4XPageToast.bas
- **Web DaisyUI Mapping**: `.toast` → `B4XDaisyToast`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<div class="toast {MODIFIER}">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Initialize toast manager onto page Root:
Dim toast As B4XDaisyToast
toast.Initialize(Me, "toast")
toast.SetRoot(Root)

' Trigger toast anywhere in the page:
toast.SetPosition("end", "top")                 ' Position: start|center|end, top|middle|bottom
toast.Success("Settings saved successfully!")   ' Presets: Success, Error, Warning, Info
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyToast` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Deviation Mechanism
- CustomView lacks standard `AddToParent`; requires custom layout attachment or internal instantiation.; Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `ApplyDesignerProps, getHorizontalAlignment, getVerticalAlignment` (+ 10 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `HorizontalAlignment` | Horizontal Alignment | `String` | end | start|center|end |
| `VerticalAlignment` | Vertical Alignment | `String` | bottom | top|middle|bottom |
| `ShowProgress` | Show Progress | `Boolean` | True |  |

## 5. Declared Events
- `NotificationClosed (View As B4XView)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ApplyDesignerProps(Props As Map)`
- `getHorizontalAlignment As String`
- `setHorizontalAlignment(Value As String)`
- `getVerticalAlignment As String`
- `setVerticalAlignment(Value As String)`
- `SetPosition(Horizontal As String, Vertical As String)`
- `Show`
- `Hide`
- `SetRoot(Root1 As B4XView)`
- `AttachTo(HostView As B4XView)`
- `Detach(HostView As B4XView)`
- `Clear`
- `Success(Message As String)`
- `SuccessWithDuration(Message As String, DurationMs As Int)`
- `Info(Message As String)`
- `InfoWithDuration(Message As String, DurationMs As Int)`
- `Warning(Message As String)`
- `WarningWithDuration(Message As String, DurationMs As Int)`
- `Error(Message As String)`
- `ErrorWithDuration(Message As String, DurationMs As Int)`
- `AttachWithDuration(HostView As B4XView, DurationMs As Int)`
- `Base_Resize(Width As Int, Height As Int)`
- `setShowProgress(Value As Boolean)`
- `getShowProgress As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
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
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

