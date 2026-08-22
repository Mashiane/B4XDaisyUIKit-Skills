# toast (`B4XDaisyToast`)

DaisyUI `Toast` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyToast`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyToast.bas`
- **Verified Demo Source**: B4XPageCard.bas (lines 17–17), B4XPageTagSphere.bas (lines 32–32), B4XPageToast.bas (lines 13–13)
- **Web DaisyUI Mapping**: `.toast` → `B4XDaisyToast`

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
| `HorizontalAlignment` | Horizontal Alignment | `String` | `end` | start|center|end |
| `VerticalAlignment` | Vertical Alignment | `String` | `bottom` | top|middle|bottom |
| `ShowProgress` | Show Progress | `Boolean` | `True` |  |

## 5. Declared Events
- `NotificationClosed (View As B4XView)`

## 6. Public Methods & APIs
- `ApplyDesignerProps(mProps As Map)`
- `AttachTo(vHostView As B4XView)`
- `AttachWithDuration(vHostView As B4XView, iDurationMs As Int)`
- `Base_Resize (iWidth As Int, iHeight As Int)`
- `BringToFront`
- `Clear`
- `CreateView As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `Detach(vHostView As B4XView)`
- `Error(sMessage As String)`
- `ErrorWithDuration(sMessage As String, iDurationMs As Int)`
- `GetComputedHeight As Int`
- `Hide`
- `Info(sMessage As String)`
- `InfoWithDuration(sMessage As String, iDurationMs As Int)`
- `Initialize (oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetPosition(sHorizontal As String, sVertical As String)`
- `SetRoot(vRoot1 As B4XView)`
- `Show`
- `Success(sMessage As String)`
- `SuccessWithDuration(sMessage As String, iDurationMs As Int)`
- `View As B4XView`
- `Warning(sMessage As String)`
- `WarningWithDuration(sMessage As String, iDurationMs As Int)`
- `getHeight As Int`
- `getHorizontalAlignment As String`
- `getLeft As Int`
- `getShowProgress As Boolean`
- `getTop As Int`
- `getVerticalAlignment As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setHeight(iValue As Int)`
- `setHorizontalAlignment(sValue As String)`
- `setLeft(iValue As Int)`
- `setShowProgress(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVerticalAlignment(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

