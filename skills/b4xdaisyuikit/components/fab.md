# fab (`B4XDaisyFab`)

DaisyUI `Fab` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFab`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyFab.bas`
- **Verified Demo Source**: B4XPageBoomMenu.bas (lines 105–105), B4XPageFab.bas (lines 16–16), B4XPageFabBasic.bas (lines 16–16), B4XPageFabFlower.bas (lines 16–16), B4XPageFabNavbar.bas (lines 18–18), B4XPageNavbar.bas (lines 20–20)
- **Web DaisyUI Mapping**: `.fab` → `B4XDaisyFab`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``fab`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``fab-close`, `fab-main-action`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `modifier` | ``fab-flower`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |

### Web DaisyUI HTML Syntax
A single FAB in the corner of screen
```html
<div class="fab">
  <button class="btn btn-lg btn-circle">{IconOriginal}</button>
</div>
```
A FAB that opens a 3 other buttons in the corner of page vertically
```html
<div class="fab">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <button class="btn btn-lg btn-circle">{Icon1}</button>
  <button class="btn btn-lg btn-circle">{Icon2}</button>
  <button class="btn btn-lg btn-circle">{Icon3}</button>
</div>
```
A FAB that opens a 3 other buttons in the corner of page vertically and they have label text
```html
<div class="fab">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <div>{Label1}<button class="btn btn-lg btn-circle">{Icon1}</button></div>
  <div>{Label2}<button class="btn btn-lg btn-circle">{Icon2}</button></div>
  <div>{Label3}<button class="btn btn-lg btn-circle">{Icon3}</button></div>
</div>
```
FAB with rectangle buttons. These are not circular buttons so they can have more content.
```html
<div class="fab">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <button class="btn btn-lg">{Label1}</button>
  <button class="btn btn-lg">{Label2}</button>
  <button class="btn btn-lg">{Label3}</button>
</div>
```
FAB with close button. When FAB is open, the original button is replaced with a close button
```html
<div class="fab">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <div class="fab-close">Close <span class="btn btn-circle btn-lg btn-error">×</span></div>
  <div>{Label1}<button class="btn btn-lg btn-circle">{Icon1}</button></div>
  <div>{Label2}<button class="btn btn-lg btn-circle">{Icon2}</button></div>
  <div>{Label3}<button class="btn btn-lg btn-circle">{Icon3}</button></div>
</div>
```
FAB with Main Action button. When FAB is open, the original button is replaced with a main action button
```html
<div class="fab">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <div class="fab-main-action">
    {LabelMainAction}<button class="btn btn-circle btn-secondary btn-lg">{IconMainAction}</button>
  </div>
  <div>{Label1}<button class="btn btn-lg btn-circle">{Icon1}</button></div>
  <div>{Label2}<button class="btn btn-lg btn-circle">{Icon2}</button></div>
  <div>{Label3}<button class="btn btn-lg btn-circle">{Icon3}</button></div>
</div>
```
FAB Flower. It opens the buttons in a flower shape (quarter circle) arrangement instead of vertical
```html
<div class="fab fab-flower">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <button class="fab-main-action btn btn-circle btn-lg">{IconMainAction}</button>
  <button class="btn btn-lg btn-circle">{Icon1}</button>
  <button class="btn btn-lg btn-circle">{Icon2}</button>
  <button class="btn btn-lg btn-circle">{Icon3}</button>
</div>
```
FAB Flower with tooltips. There's no space for a text label in a quarter circle, so tooltips are used to indicate the button's function
```html
<div class="fab fab-flower">
  <div tabindex="0" role="button" class="btn btn-lg btn-circle btn-primary">{IconOriginal}</div>
  <button class="fab-main-action btn btn-circle btn-lg">{IconMainAction}</button>
  <div class="tooltip tooltip-left" data-tip="{Label1}">
    <button class="btn btn-lg btn-circle">{Icon1}</button>
  </div>
  <div class="tooltip tooltip-left" data-tip="{Label2}">
    <button class="btn btn-lg btn-circle">{Icon2}</button>
  </div>
  <div class="tooltip tooltip-left" data-tip="{Label3}">
    <button class="btn btn-lg btn-circle">{Icon3}</button>
  </div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
If fab.IsInitialized = False Then
        fab.Initialize(Me, "fabdemo")
        fab.Tag = "speed-dial"
        fab.TriggerText = ""
        fab.TriggerIconName = "plus-solid.svg"
        fab.TriggerVariant = "primary"
        fab.UseCloseAction = True
        fab.CloseActionText = ""
        fab.CloseActionVariant = "error"
        fab.CloseActionIconName = "xmark-solid.svg"
        fab.Placement = "bottom-end"
        fab.Direction = "top"
        fab.AddAction("camera", "neutral", "camera-solid.svg")
        fab.AddAction("video", "success", "video-solid.svg")
        fab.AddAction("upload", "info", "upload-solid.svg")
        fab.AddToParent(Root, 0, 0, 56dip, 56dip)
    End If
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyFab` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Deviation Mechanism
- Floating action button with dynamic sub-item registration, placement manager, and circular/linear expansion animation.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, AddActionEx, AddActionDetailed` (+ 71 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Opened` | Opened | `Boolean` | `False` |  |
| `PlacementMode` | Placement Mode | `String` | `fixed` | fixed|anchored|manual |
| `Placement` | Placement | `String` | `bottom-end` | bottom-end|bottom-start|bottom-center|top-end|top-start|top-center|center-end|center-start|center |
| `AnchorAlignment` | Anchor Alignment | `String` | `start` | start|center|end |
| `OnEdge` | On Edge | `Boolean` | `False` |  |
| `OpenMode` | Open Mode | `String` | `click` | click|hover|focus |
| `LayoutMode` | Layout Mode | `String` | `vertical` | vertical|flower|toolbar |
| `Direction` | Direction | `String` | `top` | top|right|bottom|left |
| `BackdropEnabled` | Backdrop Enabled | `Boolean` | `True` |  |
| `AutoCloseOnActionClick` | Auto Close On Action Click | `Boolean` | `True` |  |
| `TriggerText` | Trigger Text | `String` | `F` |  |
| `TriggerVariant` | Trigger Variant | `String` | `primary` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `TriggerStyle` | Trigger Style | `String` | `solid` | solid|soft|outline|dash|ghost|link |
| `TriggerSize` | Trigger Size | `String` | `lg` | xs|sm|md|lg|xl |
| `ChildActionSize` | Child Action Size | `String` | `sm` | xs|sm|md|lg|xl |
| `TriggerIconName` | Trigger Icon Name | `String` | `` |  |
| `TriggerCircle` | Trigger Circle | `Boolean` | `True` |  |
| `UseMainAction` | Use Main Action | `Boolean` | `False` |  |
| `MainActionText` | Main Action Text | `String` | `M` |  |
| `MainActionVariant` | Main Action Variant | `String` | `secondary` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `MainActionIconName` | Main Action Icon Name | `String` | `` |  |
| `UseCloseAction` | Use Close Action | `Boolean` | `False` |  |
| `CloseActionText` | Close Action Text | `String` | `X` |  |
| `CloseActionVariant` | Close Action Variant | `String` | `error` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `CloseActionIconName` | Close Action Icon Name | `String` | `` |  |
| `TriggerSizeDip` | Trigger Size (dip) | `Int` | `56` |  |
| `TriggerIconSize` | Trigger Icon Size (dip) | `Int` | `24` |  |
| `ChildActionSizeDip` | Child Action Size (dip) | `Int` | `40` |  |
| `ChildActionIconSize` | Child Action Icon Size (dip) | `Int` | `20` |  |
| `Duration` | Duration | `Int` | `300` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Index As Int, Tag As Object)`
- `MainActionClick (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `AddAction(oTagValue As Object, sVariant As String, sIconName As String) As Int`
- `AddActionDetailed(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object) As Int`
- `AddActionEx(sText As String, sLabelText As String, sVariant As String, sStyle As String, sSize As String, sIconName As String, bCircle As Boolean, oTagValue As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearActions`
- `Close`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActionButtonView(iIndex As Int) As B4XView`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsOpen As Boolean`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `Resize(dWidth As Double, dHeight As Double)`
- `SendToBack`
- `SetActionVisible(iIndex As Int, bValue As Boolean)`
- `SetCloseAction(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetMainAction(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`
- `getAnchorAlignment As String`
- `getAnchorTarget As B4XView`
- `getAnchorView As B4XView`
- `getAutoCloseOnActionClick As Boolean`
- `getBackdropEnabled As Boolean`
- `getChildActionIconSize As Int`
- `getChildActionSize As String`
- `getChildActionSizeDip As Int`
- `getCloseActionIconName As String`
- `getCloseActionText As String`
- `getCloseActionVariant As String`
- `getDirection As String`
- `getDuration As Int`
- `getEnabled As Boolean`
- `getHeight As Int`
- `getLayoutMode As String`
- `getLeft As Int`
- `getMainActionIconName As String`
- `getMainActionText As String`
- `getMainActionVariant As String`
- `getOnEdge As Boolean`
- `getOpenMode As String`
- `getOpened As Boolean`
- `getOverlayHost As B4XView`
- `getPlacement As String`
- `getPlacementMode As String`
- `getTag As Object`
- `getTop As Int`
- `getTriggerCircle As Boolean`
- `getTriggerIconName As String`
- `getTriggerIconSize As Int`
- `getTriggerSize As String`
- `getTriggerSizeDip As Int`
- `getTriggerStyle As String`
- `getTriggerText As String`
- `getTriggerVariant As String`
- `getUseCloseAction As Boolean`
- `getUseMainAction As Boolean`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnchorAlignment(sValue As String)`
- `setAnchorTarget(vValue As B4XView)`
- `setAnchorView(vValue As B4XView)`
- `setAutoCloseOnActionClick(bValue As Boolean)`
- `setBackdropEnabled(bValue As Boolean)`
- `setChildActionIconSize(iValue As Int)`
- `setChildActionSize(sValue As String)`
- `setChildActionSizeDip(iValue As Int)`
- `setCloseActionIconName(sValue As String)`
- `setCloseActionText(sValue As String)`
- `setCloseActionVariant(sValue As String)`
- `setDirection(sValue As String)`
- `setDuration(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setLayoutMode(sValue As String)`
- `setLeft(iValue As Int)`
- `setMainActionIconName(sValue As String)`
- `setMainActionText(sValue As String)`
- `setMainActionVariant(sValue As String)`
- `setOnEdge(bValue As Boolean)`
- `setOpenMode(sValue As String)`
- `setOpened(bValue As Boolean)`
- `setOverlayHost(vValue As B4XView)`
- `setPlacement(sValue As String)`
- `setPlacementMode(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setTriggerCircle(bValue As Boolean)`
- `setTriggerIconName(sValue As String)`
- `setTriggerIconSize(iValue As Int)`
- `setTriggerSize(sValue As String)`
- `setTriggerSizeDip(iValue As Int)`
- `setTriggerStyle(sValue As String)`
- `setTriggerText(sValue As String)`
- `setTriggerVariant(sValue As String)`
- `setUseCloseAction(bValue As Boolean)`
- `setUseMainAction(bValue As Boolean)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

