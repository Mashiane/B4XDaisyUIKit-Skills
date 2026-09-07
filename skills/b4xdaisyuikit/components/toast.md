# toast (`B4XDaisyToast`)

DaisyUI `Toast` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyToast`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyToast.bas`
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
Root = Root1

	toast.Initialize(Me, "toast")
	' Attach the toast container to the Root of this page.
	toast.SetRoot(Root)
	' We use a dummy view to trigger DesignerCreateView if needed, 
	' or just use code-only path.
	Dim dummy As Panel
	dummy.Initialize("")
	Dim b As B4XView = dummy
	b.SetLayoutAnimated(0, 0, 0, 1dip, 1dip)
	toast.DesignerCreateView(b, Null, CreateMap())

	Dim sv As ScrollView
	sv.Initialize(Max(1dip, Root.Height))
	Root.AddView(sv, 0, 0, Root.Width, Root.Height)
	Dim content As B4XView = sv.Panel
	content.Color = xui.Color_Transparent
	
	Dim currentY As Int = 20dip
	
	'Header
	Dim lblHeader As B4XDaisyText
	lblHeader.Initialize(Me, "")
	lblHeader.AddToParent(content, 10dip, currentY, 300dip, 40dip)
	lblHeader.Text = "Toast Notifications"
	lblHeader.TextSize = "text-sm"
	lblHeader.FontBold = True
	currentY = currentY + 60dip
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

## Canonical Creation Pattern & Recipe

`B4XDaisyToast` renders floating toast alerts on the screen.

```vb
' Mount toast coordinator onto root in B4XPage_Created:
Dim toast As B4XDaisyToast
toast.Initialize(Me, "toast")
toast.SetRoot(Root)

' Trigger toast anywhere in the page (see B4XPageToast.bas):
toast.SetPosition("end", "top")                 ' optional: position before showing
toast.Success("Count recorded successfully.")   ' variants: Info / Success / Warning / Error
toast.InfoWithDuration("New message arrived.", 3000)  ' auto-hide after 3000 ms
```
