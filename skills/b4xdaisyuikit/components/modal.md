# modal (`B4XDaisyModal`)

DaisyUI `Modal` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyModal`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyModal.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas, B4XPageModal.bas, B4XPagePicker.bas
- **Web DaisyUI Mapping**: `.modal` → `B4XDaisyModal`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``modal`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``modal-box`, `modal-action`, `modal-backdrop`, `modal-toggle`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `modifier` | ``modal-open`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `placement` | ``modal-top`, `modal-middle`, `modal-bottom`, `modal-start`, `modal-end`` | Member | `.SetPlacement(...)` | Native configuration |

### Web DaisyUI HTML Syntax
Using HTML dialog element (recommended)
```html
<button onclick="my_modal.showModal()">Open modal</button>
<dialog id="my_modal" class="modal">
  <div class="modal-box">{CONTENT}</div>
  <form method="dialog" class="modal-backdrop"><button>close</button></form>
</dialog>
```
If we want it to close when clicking outside:
```html
<button class="btn" onclick="my_modal.showModal()">open modal</button>
<dialog id="my_modal" class="modal">
  <div class="modal-box">
    <h3 class="text-lg font-bold">Hello!</h3>
    <p class="py-4">Press ESC key or click outside to close</p>
  </div>
  <form method="dialog" class="modal-backdrop">
    <button>close</button>
  </form>
</dialog>
```


Using popover API (recommended only if we DON'T want to trap the keyboard navigation in the modal)
```html
<button popovertarget="my_modal" class="btn">Open modal</button>
<div class="modal" popover id="my_modal">
  <div class="modal-box">
    {CONTENT}
    <div class="modal-action">
      <button popovertarget="my_modal" popovertargetaction="hide">close</button>
    </div>
  </div>
</div>
```
If we want it to close when clicking outside:
```html
<button class="btn" popovertarget="my_modal">Open</button>

<div class="modal" id="my_modal" popover>
  <div class="modal-box">
    <h3 class="font-bold text-lg">Hello!</h3>
    <p class="py-4">Press ESC key or click the button below to close</p>
  </div>
  <div class="modal-backdrop">
    <button popovertarget="my_modal" popovertargetaction="hide">close</button>
  </div>
</div>
```

Using checkbox (legacy)
```html
<label for="my-modal" class="btn">Open modal</label>
<input type="checkbox" id="my-modal" class="modal-toggle" />
<div class="modal">
  <div class="modal-box">{CONTENT}</div>
  <label class="modal-backdrop" for="my-modal">Close</label>
</div>
```

Using anchor links (legacy)
```html
<a href="#my-modal" class="btn">Open modal</a>
<div class="modal" id="my-modal">
  <div class="modal-box">{CONTENT}</div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddLabel(m As B4XDaisyModal, Text As String)
    Dim body As B4XView = m.getBodyContainer
    Dim bodyW As Int = Max(1dip, body.Width)
    Dim lbl As B4XDaisyText
    lbl.Initialize(Me, "")
    lbl.Text = Text
    lbl.TextSize = "text-base"
    lbl.SingleLine = False        ' wrap long text across multiple lines
    ' Add at the body's inner width; the text view auto-resizes its height to
    ' fit the wrapped content.
    lbl.AddToParent(body, 0, 0, bodyW, 24dip)
    ' Measure the wrapped height for this content width and apply it explicitly
    ' so the modal's h-auto box sizes to fit the (possibly multi-line) label.
    Dim prefH As Int = Max(24dip, lbl.GetPreferredHeight(bodyW))
    If lbl.View.Height <> prefH Then
        lbl.View.SetLayoutAnimated(0, 0, 0, bodyW, prefH)
        lbl.RefreshText
    End If
    ' Re-calculate modal auto-height so the box fits the label.
    m.Refresh
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyModal` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Deviation Mechanism
- Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getTag, getAnimated, setAnimated` (+ 71 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `ClickOutsideToClose` | Click Outside To Close | `Boolean` | True |  |
| `FullScreen` | Full Screen | `Boolean` | False |  |
| `GlassSize` | Glass Size | `String` | none | none|glass-xs|glass-sm|glass-md|glass-lg|glass-xl|glass-2xl |
| `Placement` | Placement | `String` | middle | top|middle|bottom |
| `Width` | Width | `String` | w-[91.6%] |  |
| `Height` | Height | `String` | h-auto |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| `BackgroundColor` | Background Color | `String` | base-100 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `BackdropColor` | Backdrop Color | `String` | black | black|transparent |
| `BackdropOpacity` | Backdrop Opacity | `Int` | 40, MinRange: 0, MaxRange: 100 |  |
| `Title` | Title | `String` | Modal Title |  |
| `Padding` | Padding | `String` | p-6 |  |
| `ActionsJustify` | Actions Justify | `String` | end | start|center|end |
| `ActionsVariant` | Actions Variant | `String` | primary | none|primary|secondary|accent|neutral|ghost|link|outline |
| `ShowCloseButton` | Show Close Button | `Boolean` | False |  |
| `Sidebar` | Sidebar | `Boolean` | False |  |
| `SidebarSide` | Sidebar Side | `String` | left | left|right |
| `Shadow` | Shadow | `String` | lg | none|xs|sm|md|lg|xl|2xl |
| `Animated` | Animated | `Boolean` | True |  |
| `Duration` | Animation Duration (ms) | `Int` | 300, MinRange: 0, MaxRange: 2000 |  |
| `ActionType` | Action Type | `String` | none | none|yes|no|cancel|yes-no|yes-no-cancel|ok-cancel|retry-cancel|abort-retry-ignore |
| `YesCaption` | Yes/Ok/Retry/Abort Caption | `String` | Yes |  |
| `YesVariant` | Yes Variant | `String` | success | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| `YesVisible` | Yes Visible | `Boolean` | True |  |
| `NoCaption` | No/Retry Caption | `String` | No |  |
| `NoVariant` | No Variant | `String` | error | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| `NoVisible` | No Visible | `Boolean` | True |  |
| `CancelCaption` | Cancel/Ignore Caption | `String` | Cancel |  |
| `CancelVariant` | Cancel Variant | `String` | ghost | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| `CancelVisible` | Cancel Visible | `Boolean` | True |  |
| `ButtonsWidth` | Buttons Width | `String` | auto |  |
| `ButtonsSize` | Buttons Size | `String` | md | xs|sm|md|lg |

## 5. Declared Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `YesClick (Tag As Object)`
- `NoClick (Tag As Object)`
- `CancelClick (Tag As Object)`
- `OkClick (Tag As Object)`
- `RetryClick (Tag As Object)`
- `AbortClick (Tag As Object)`
- `IgnoreClick (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Parent As B4XView, Tag As Object)`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `getAnimated As Boolean`
- `setAnimated(Value As Boolean)`
- `getDuration As Int`
- `setDuration(Value As Int)`
- `getActionsContainer As B4XView`
- `AddActionButton(ButtonID As String, ButtonText As String, ButtonColor As String) As B4XDaisyButton`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCount As Int`
- `ClearActions`
- `Show`
- `ShowModal`
- `Close`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setFullScreen(Value As Boolean)`
- `getFullScreen As Boolean`
- `setGlassSize(Value As String)`
- `getGlassSize As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setClickOutsideToClose(Value As Boolean)`
- `getClickOutsideToClose As Boolean`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setBackdropColor(Value As String)`
- `getBackdropColor As String`
- `setBackdropOpacity(Value As Int)`
- `getBackdropOpacity As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setTitleColor(Value As String)`
- `getTitleColor As String`
- `setTitleTextColor(Value As String)`
- `getTitleTextColor As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButton As Boolean`
- `setSidebar(Value As Boolean)`
- `getSidebar As Boolean`
- `setSidebarSide(Value As String)`
- `getSidebarSide As String`
- `setActionsJustify(Value As String)`
- `getActionsJustify As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `Refresh`
- `AddToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getBodyContainer As B4XView`
- `BodyWidth As Int`
- `ClearBody`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `getActionsVariant As String`
- `setActionsVariant(Value As String)`
- `setActionType(Value As String)`
- `getActionType As String`
- `setYesCaption(Value As String)`
- `getYesCaption As String`
- `setYesVariant(Value As String)`
- `getYesVariant As String`
- `setYesVisible(Value As Boolean)`
- `getYesVisible As Boolean`
- `setNoCaption(Value As String)`
- `getNoCaption As String`
- `setNoVariant(Value As String)`
- `getNoVariant As String`
- `setNoVisible(Value As Boolean)`
- `getNoVisible As Boolean`
- `setCancelCaption(Value As String)`
- `getCancelCaption As String`
- `setCancelVariant(Value As String)`
- `getCancelVariant As String`
- `setCancelVisible(Value As Boolean)`
- `getCancelVisible As Boolean`
- `setButtonsWidth(Value As String)`
- `getButtonsWidth As String`
- `setButtonsSize(Value As String)`
- `getButtonsSize As String`
- `getYesButton As B4XDaisyButton`
- `getNoButton As B4XDaisyButton`
- `getCancelButton As B4XDaisyButton`

## 7. Public Fields
(none declared in packaged source)

## Canonical Creation Pattern & Recipe

`B4XDaisyModal` is a modal dialog container overlaying the page root.

```vb
' In RenderPage / B4XPage_Created:
Dim modal As B4XDaisyModal
modal.Initialize(Me, "modal")
modal.AddToParent(Root, 0, 0, Root.Width, Root.Height)
modal.Title = "Dialog Title"
modal.ClickOutsideToClose = True
modal.Visible = False                          ' Hidden by default

' Add body content:
Dim pnlBody As B4XView = modal.GetContentPanel
Dim txtDesc As B4XDaisyText
txtDesc.Initialize(Me, "")
txtDesc.AddToParent(pnlBody, 0, 0, pnlBody.Width, 40dip)
txtDesc.Text = "Modal description message."

' Add action buttons:
modal.AddActionButton("confirm", "Confirm", "primary")
modal.AddActionButton("cancel", "Cancel", "ghost")
modal.Refresh

' Open/Close:
modal.Show                                     ' or modal.Hide

' Action click handler:
Private Sub modal_ActionClick(Action As String)
    If Action = "confirm" Then
        Log("Confirmed")
    End If
    modal.Hide
End Sub
```
