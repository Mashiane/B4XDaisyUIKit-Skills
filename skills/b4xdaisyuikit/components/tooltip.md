# tooltip (`B4XDaisyTooltip`)

DaisyUI `Tooltip` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyTooltip`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyTooltip.bas`
- **Verified Demo Source**: B4XPageTooltip.bas (lines 15–30)
- **Web DaisyUI Mapping**: `.tooltip` → `B4XDaisyTooltip`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``tooltip`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``tooltip-content`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `modifier` | ``tooltip-open`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `placement` | ``tooltip-top`, `tooltip-bottom`, `tooltip-left`, `tooltip-right`` | Member | `.SetPlacement(...)` | Native configuration |
| `alignment` | ``tooltip-start`, `tooltip-center`, `tooltip-end`` | Member | `.SetAlignment(...)` | Native configuration |
| `color` | ``tooltip-primary`, `tooltip-secondary`, `tooltip-accent`, `tooltip-info`, `tooltip-success`, `tooltip-warning`, `tooltip-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |

### Web DaisyUI HTML Syntax
```html
<div class="tooltip {MODIFIER}" data-tip="Tooltip text">
  <button class="btn">Hover me</button>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Dim btnInfo As B4XDaisyButton = CreateButton("Show Info Tooltip", "v_info")
	btnInfo.AddToParent(content, 20dip, currentY, 260dip, 40dip)
	ttInfo.Initialize(Me, "ttInfo")
	ttInfo.CreateView(100dip, 100dip)
	ttInfo.Message = "Info: System details"
	ttInfo.Variant = "info"
	ttInfo.AttachTo(btnInfo.View)
	currentY = currentY + 100dip ' Large gap for tooltip visibility
	
	Dim btnSuccess As B4XDaisyButton = CreateButton("Show Success Tooltip", "v_success")
	btnSuccess.AddToParent(content, 20dip, currentY, 260dip, 40dip)
	ttSuccess.Initialize(Me, "ttSuccess")
	ttSuccess.CreateView(100dip, 100dip)
	ttSuccess.Message = "Success: Task complete!"
	ttSuccess.Variant = "success"
	ttSuccess.AttachTo(btnSuccess.View)
	currentY = currentY + 100dip
	
	Dim btnWarning As B4XDaisyButton = CreateButton("Show Warning Tooltip", "v_warning")
	btnWarning.AddToParent(content, 20dip, currentY, 260dip, 40dip)
	ttWarning.Initialize(Me, "ttWarning")
	ttWarning.CreateView(100dip, 100dip)
	ttWarning.Message = "Warning: Check parameters"
	ttWarning.Variant = "warning"
	ttWarning.AttachTo(btnWarning.View)
	currentY = currentY + 100dip
	
	Dim btnError As B4XDaisyButton = CreateButton("Show Error Tooltip", "v_error")
	btnError.AddToParent(content, 20dip, currentY, 260dip, 40dip)
	ttError.Initialize(Me, "ttError")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyTooltip` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `DetachTarget, ShowAnimated, HideAnimated` (+ 19 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Message` | Message | `String` | `Tooltip message` |  |
| `Position` | Position | `String` | `top` | top|bottom|left|right |
| `Alignment` | Alignment | `String` | `center` | start|center|end |
| `Variant` | Variant | `String` | `neutral` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ShowArrow` | Show Arrow | `Boolean` | `True` |  |
| `ClickToClose` | Click To Close | `Boolean` | `True` |  |
| `TextWrapped` | Text Wrapped | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |
| `Duration` | Duration | `Int` | `300` |  |

## 5. Declared Events
- `Shown`
- `Hidden`
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `DetachTarget`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `Hide`
- `HideAnimated(iDurationMs As Int)`
- `Initialize (oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetCustomContent(vCustomView As B4XView)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Show`
- `ShowAnimated(iDuration As Int)`
- `View As B4XView`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `setAlignment(sValue As String)`
- `setAutoResize(bValue As Boolean)`
- `setClickToClose(bValue As Boolean)`
- `setDuration(iValue As Int)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setMessage(sValue As String)`
- `setPosition(sValue As String)`
- `setShowArrow(bValue As Boolean)`
- `setTextWrapped(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

