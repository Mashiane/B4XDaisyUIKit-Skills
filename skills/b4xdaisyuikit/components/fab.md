# fab (`B4XDaisyFab`)

DaisyUI `Fab` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFab`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyFab.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyFab.bas)
- **Verified Demo Source**: B4XPageBoomMenu.bas, B4XPageFab.bas, B4XPageFabBasic.bas, B4XPageFabFlower.bas, B4XPageFabNavbar.bas, B4XPageNavbar.bas
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
Dim fab As B4XDaisyFab
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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Opened` | Opened | `Boolean` | False |  |
| `PlacementMode` | Placement Mode | `String` | fixed | fixed|anchored|manual |
| `Placement` | Placement | `String` | bottom-end | bottom-end|bottom-start|bottom-center|top-end|top-start|top-center|center-end|center-start|center |
| `AnchorAlignment` | Anchor Alignment | `String` | start | start|center|end |
| `OnEdge` | On Edge | `Boolean` | False |  |
| `OpenMode` | Open Mode | `String` | click | click|hover|focus |
| `LayoutMode` | Layout Mode | `String` | vertical | vertical|flower|toolbar |
| `Direction` | Direction | `String` | top | top|right|bottom|left |
| `BackdropEnabled` | Backdrop Enabled | `Boolean` | True |  |
| `AutoCloseOnActionClick` | Auto Close On Action Click | `Boolean` | True |  |
| `TriggerText` | Trigger Text | `String` | F |  |
| `TriggerVariant` | Trigger Variant | `String` | primary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `TriggerStyle` | Trigger Style | `String` | solid | solid|soft|outline|dash|ghost|link |
| `TriggerSize` | Trigger Size | `String` | lg | xs|sm|md|lg|xl |
| `ChildActionSize` | Child Action Size | `String` | sm | xs|sm|md|lg|xl |
| `TriggerIconName` | Trigger Icon Name | `String` |  |  |
| `TriggerCircle` | Trigger Circle | `Boolean` | True |  |
| `UseMainAction` | Use Main Action | `Boolean` | False |  |
| `MainActionText` | Main Action Text | `String` | M |  |
| `MainActionVariant` | Main Action Variant | `String` | secondary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `MainActionIconName` | Main Action Icon Name | `String` |  |  |
| `UseCloseAction` | Use Close Action | `Boolean` | False |  |
| `CloseActionText` | Close Action Text | `String` | X |  |
| `CloseActionVariant` | Close Action Variant | `String` | error | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `CloseActionIconName` | Close Action Icon Name | `String` |  |  |
| `TriggerSizeDip` | Trigger Size (dip) | `Int` | 56, MinRange: 0 |  |
| `TriggerIconSize` | Trigger Icon Size (dip) | `Int` | 24, MinRange: 0 |  |
| `ChildActionSizeDip` | Child Action Size (dip) | `Int` | 40, MinRange: 0 |  |
| `ChildActionIconSize` | Child Action Icon Size (dip) | `Int` | 20, MinRange: 0 |  |
| `Duration` | Duration | `Int` | 300, MinRange: 0, MaxRange: 2000 |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Index As Int, Tag As Object)`
- `MainActionClick (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Refresh`
- `UpdateTheme`
- `Open`
- `Close`
- `Toggle`
- `ClearActions`
- `AddActionEx(Text As String, LabelText As String, Variant As String, Style As String, Size As String, IconName As String, Circle As Boolean, TagValue As Object) As Int`
- `AddAction(TagValue As Object, Variant As String, IconName As String) As Int`
- `AddActionDetailed(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object) As Int`
- `SetMainAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `SetCloseAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `GetActionButtonView(Index As Int) As B4XView`
- `SetActionVisible(Index As Int, Value As Boolean)`
- `setAnchorTarget(Value As B4XView)`
- `getAnchorTarget As B4XView`
- `setAnchorAlignment(Value As String)`
- `getAnchorAlignment As String`
- `setAnchorView(Value As B4XView)`
- `getAnchorView As B4XView`
- `setOverlayHost(Value As B4XView)`
- `getOverlayHost As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Resize(Width As Double, Height As Double)`
- `BringToFront`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`
- `IsOpen As Boolean`
- `setPlacementMode(Value As String)`
- `getPlacementMode As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setOnEdge(Value As Boolean)`
- `getOnEdge As Boolean`
- `setOpenMode(Value As String)`
- `getOpenMode As String`
- `setLayoutMode(Value As String)`
- `getLayoutMode As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setBackdropEnabled(Value As Boolean)`
- `getBackdropEnabled As Boolean`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `getAutoCloseOnActionClick As Boolean`
- `setTriggerText(Value As String)`
- `getTriggerText As String`
- `setTriggerVariant(Value As String)`
- `getTriggerVariant As String`
- `setTriggerStyle(Value As String)`
- `getTriggerStyle As String`
- `setTriggerSize(Value As String)`
- `getTriggerSize As String`
- `setChildActionSize(Value As String)`
- `getChildActionSize As String`
- `setTriggerSizeDip(Value As Int)`
- `getTriggerSizeDip As Int`
- `setTriggerIconSize(Value As Int)`
- `getTriggerIconSize As Int`
- `setChildActionSizeDip(Value As Int)`
- `getChildActionSizeDip As Int`
- `setChildActionIconSize(Value As Int)`
- `getChildActionIconSize As Int`
- `setTriggerIconName(Value As String)`
- `getTriggerIconName As String`
- `setTriggerCircle(Value As Boolean)`
- `getTriggerCircle As Boolean`
- `setUseMainAction(Value As Boolean)`
- `getUseMainAction As Boolean`
- `setMainActionText(Value As String)`
- `getMainActionText As String`
- `setMainActionVariant(Value As String)`
- `getMainActionVariant As String`
- `setMainActionIconName(Value As String)`
- `getMainActionIconName As String`
- `setUseCloseAction(Value As Boolean)`
- `getUseCloseAction As Boolean`
- `setCloseActionText(Value As String)`
- `getCloseActionText As String`
- `setCloseActionVariant(Value As String)`
- `getCloseActionVariant As String`
- `setCloseActionIconName(Value As String)`
- `getCloseActionIconName As String`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
(none declared in packaged source)

