# Chapter 2: On-Demand Form & Input Validation Blueprints (ch02_interactive_forms.md)
## B4XDaisyUIKit Application Layout Reference

This reference blueprint details the canonical, evidence-backed implementation of interactive form pages, validation flows, and asynchronous backend integration in native B4X Pages. In accordance with audited patterns, forms are stacked as flat children directly inside the `pnlHost` panel of `B4XDaisyPageScroll`, using `B4XDaisyFieldset` purely as an optional visual grouping container when requested [358].

---

## 📝 FLAT SCROLL FORM BOILERPLATE (svHost-Hosting Parity)

Form input fields, selection badging groups, and call-to-actions are aligned sequentially using an absolute vertical coordinate cursor `y` [140, 141]. Manual grids and coordinates offsets are explicitly bypassed:

```b4x
#IgnoreWarnings:12,9
Sub Class_Globals
    ' View viewport hooks
    Private Root As B4XView
    Private xui As XUI
    
    ' Layout Infrastructure (Required)
    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost As B4XView
    
    ' Form Fields (Flat sequential mounting)
    Private inputName As B4XDaisyInput
    Private selectRole As B4XDaisySelect
    Private badgesTech As B4XDaisyBadgeGroupSelect
    Private toggleTerms As B4XDaisyToggle
    Private btnSave As B4XDaisyButton
End Sub

Public Sub Initialize As Object
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.Color = xui.Color_White
    Root.RemoveAllViews
    
    ' Initialize standard scrolling parent
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnlHost = pageScroll.Panel
    
    RenderForm(Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    RenderForm(Width, Height)
End Sub

```

---

## ⚙️ SEQUENTIAL COORDINATE LAYOUT COMPILER

Form layout compilation completely clears and reinstantiates child controls to prevent layout overlapping on screen resize cascades [134, 135]:

```b4x
Private Sub RenderForm(W As Int, H As Int)
    If pnlHost.IsInitialized = False Then Return
    
    ' 1. Clear previous view instances
    pageScroll.Clear
    
    Dim pad As Int = pageScroll.PagePadding
    Dim gap As Int = pageScroll.YGap
    Dim maxW As Int = pageScroll.UsableWidth
    Dim y As Int = pad
    
    ' 2. Flat Sequential Accumulator Stack Loop
    
    ' Profile Title Caption
    y = pageScroll.AddSectionTitle("User Account Setup", y, False) + gap
    
    ' Full Name Text Input
    inputName.Initialize(Me, "inputName")
    inputName.AddToParent(pnlHost, pad, y, maxW, 60dip)
    inputName.LabelAbove = "Full Name"
    inputName.Placeholder = "Enter your full name"
    inputName.Required = True
    inputName.Variant = "neutral"
    y = y + inputName.GetComputedHeight + gap
    
    ' Account Role Dropdown Selection
    selectRole.Initialize(Me, "selectRole")
    selectRole.AddToParent(pnlHost, pad, y, maxW, 60dip)
    selectRole.LabelAbove = "Access Role"
    selectRole.Required = True
    selectRole.AddItem("user", "Standard User")
    selectRole.AddItem("manager", "Manager")
    selectRole.AddItem("admin", "System Administrator")
    selectRole.Value = "user"
    y = y + selectRole.GetComputedHeight + gap
    
    ' Preferred Technology Chip Badges
    badgesTech.Initialize(Me, "badgesTech")
    badgesTech.AddToParent(pnlHost, pad, y, maxW, 1dip) ' AutoHeight manages bounds
    badgesTech.setLabelAbove(True)
    badgesTech.setRequired(True)
    badgesTech.setLegend("Preferred Technologies")
    badgesTech.setBadgeSelectionMode("multi")
    badgesTech.setItemsSpec("b4x:B4X Pages|tw:Tailwind CSS|pb:PocketBase")
    badgesTech.setChecked("b4x;tw")
    badgesTech.InputBorder = True
    y = y + badgesTech.GetComputedHeight + gap
    
    ' Agreement Toggle Switch
    toggleTerms.Initialize(Me, "toggleTerms")
    toggleTerms.AddToParent(pnlHost, pad, y, maxW, 40dip)
    toggleTerms.Text = "Accept subscription terms & guidelines"
    toggleTerms.Required = True
    y = y + toggleTerms.GetComputedHeight + gap
    
    ' Submit Button
    btnSave.Initialize(Me, "btnSave")
    btnSave.AddToParent(pnlHost, pad, y, maxW, 44dip)
    btnSave.Text = "Register Account"
    btnSave.Variant = "primary"
    y = y + btnSave.GetComputedHeight + pad
    
    ' 3. Expand scrolling height dynamically
    pageScroll.AutoFit
End Sub

```

---

## 🔒 FORM VALIDATION & ASYNC POCKETBASE WORKFLOWS [511]

Validation follows the B4XPage demo methodology: call `Validate()` on each required component directly and branch on its boolean (evidence: `B4XPageRange.bas:492-504`, `B4XPageRating.bas:510-522`). Do NOT use `B4XDaisyVariants.ValidateRequiredControls(Parent)` — it recurses into native `TextView` children and silently no-ops; see [negative-knowledge.md](../references/negative-knowledge.md) §3a. Successful fields serialize maps asynchronously directly to `B4XDaisyPocketBase` [521, 526]:

```b4x
Private Sub btnSave_Click(Tag As Object)
    ' 1. Validate each required input directly. Validate() sets the error UI
    ' (red border + error text + height shift) and returns True when valid/none.
    Dim okName  As Boolean = inputName.Validate
    Dim okRole As Boolean = selectRole.Validate
    If okName = False Or okRole = False Then
        ' Re-layout to accommodate expanding error labels below invalid inputs
        pageScroll.AutoFit
        B4XPages.MainPage.ShowToastError("Form verification failed. Correct highlit fields.", True)
        Return
    End If
    
    ' 2. Pack form data into map object
    Dim payload As Map = CreateMap( _
        "name"
        inputName.getText, _
        "role"
        selectRole.getSelectedValue, _
        "tech_stack"
        badgesTech.getSelected, _
        "agreed"
        toggleTerms.getChecked _
    )
    
    ' 3. Perform Async pocketbase create-record promise
    SaveProfileToDatabase(payload)
End Sub

Private Sub SaveProfileToDatabase(ProfileMap As Map)
    ' Show non-blocking spinner loading block
    B4XPages.MainPage.AppLoader.Show(Root.Parent)
    
    Dim pb As B4XDaisyPocketBase
    pb.Initialize(Me, "pb", "https://my-daisy-backend.net", "profiles")
    ' Set fields from profile map
    For Each k As String In ProfileMap.Keys
        pb.SetField(k, ProfileMap.Get(k))
    Next
    
    ' Fire Async HTTP request and Wait For response completion
    Wait For (pb.CREATE) Complete (res As Map)
    
    ' Hide loader block
    B4XPages.MainPage.AppLoader.Hide
    
    If pb.Success Then
        ' Trigger Swal Confirmation dialog and wait for backdrop dismiss
        Wait For (B4XPages.MainPage.ShowSwalAlert("Success", "Account has been registered successfully.", "success", True)) Complete (res2 As Object)
        B4XPages.ClosePage(Me)
    Else
        B4XPages.MainPage.ShowToastError("Database error. Please try again.", True)
    End If
End Sub

```

## Android IME, Focus Order, and Form Navigation

Every form that uses `B4XDaisyInput` must define its keyboard behavior as part
of the form contract. The soft-keyboard action key, hardware Tab traversal,
and TalkBack accessibility focus are separate paths; verify each that the
form supports. The viewport and Enter mapping below follow the user's
device-tested Kuza Mobility implementation. Do not assume
`ImeOptions = "actionNext"` alone moves focus.

The documented `B4XDaisyInput` API has no `TabOrder` property. Do not invent
one; record the desired order in the screen contract and verify the platform's
actual hardware-keyboard traversal separately.

### Establish the input sequence

Mount fields in the intended reading and completion order. Set `ImeOptions`
per field: use `actionNext` only when Enter should move to a specific next
input, and choose a final action such as `actionDone` when the next action is
submission or completion. Use the same event name for inputs whose shared
`EnterPressed` and `FocusChanged` handlers dispatch on `Sender`.

```b4x
' In RenderForm, after each input is initialized and mounted:
inputEmail.Initialize(Me, "inp")
inputEmail.AddToParent(pnlHost, pad, y, maxW, 60dip)
inputEmail.ImeOptions = "actionNext"

inputPassword.Initialize(Me, "inp")
inputPassword.AddToParent(pnlHost, pad, y, maxW, 60dip)
inputPassword.ImeOptions = "actionDone"
```

Map Enter explicitly. Do not infer the next field by walking every view in the
scroll panel: forms may have selects, checkboxes, radio groups, conditional
fields, or submit actions between text inputs. Route those cases deliberately.

```b4x
Private Sub inp_EnterPressed(Text As String)
    Dim activeInput As B4XDaisyInput = Sender
    If activeInput = inputEmail Then
        If inputPassword.IsInitialized Then inputPassword.RequestFocus
    Else If activeInput = inputPassword Then
        HideKeyboard
        ' Call this form's validated submit routine here.
    End If
End Sub

Private Sub inp_FocusChanged(HasFocus As Boolean)
    Dim activeInput As B4XDaisyInput = Sender
    HandleInputFocus(activeInput, HasFocus)
End Sub
```

The event handler name and parameters must match the shared event name and
`B4XDaisyInput` declarations. For every branch, ensure the target exists and is
currently enabled/visible. Keep multiline inputs' newline behavior unless the
screen contract explicitly assigns Enter another action. Do not skip an
intervening non-text control without an intentional, accessible transition.

### Resize and reveal the focused field

The project template already sets `android:windowSoftInputMode` to
`adjustResize|stateHidden`, initializes one Activity-level `IME`, and forwards
`IME_HeightChanged` to the active B4XPage. Keep `AddHeightChangedEvent` at
Activity scope only; page-level IME objects may provide Show/HideKeyboard but
must not register another height-change event source.
Each page owns only its own scroll geometry: account for fixed navbar/dock
heights, resize the page scroll viewport, and restore its full available height
when the keyboard closes.

On focus, save `pageScroll.GetScrollPosition`, reset a per-focus
`imeScrollHandled` flag, and track the active `B4XDaisyInput`. After the IME
resize settles, inspect `Input.getEditText` (the native editor), not
`Input.View` (the wrapper). Convert the editor's top coordinate to the scroll
content by summing ancestor offsets up to `pnlHost`. Scroll only if the editor
is completely below the visible viewport; if it is already visible or partly
visible, restore the saved scroll position to avoid Android auto-scroll jumps.
Handle this once per focus transition. The full page templates implement the
geometry-specific callback and guard logic; adapt their navbar/dock offsets,
never copy one layout's constants into another.

`B4XDaisyPageScroll.ScrollToViewWithMargin` is available, but do not call it
unconditionally from every focus or IME event. Use it only after the
visibility check and pass the native editor view. The component's convenience
IME callback does not replace page-specific inset calculations.

### Keyboard and accessibility verification

- Physically test each text input's soft-keyboard action: expected next field,
  intentional non-text stop, multiline newline, and final Done/submit behavior.
- Test hardware Tab and Shift+Tab separately where a hardware keyboard is in
  scope. Confirm traversal order, no hidden/disabled targets, and no focus
  traps. Do not claim this is guaranteed by IME action configuration.
- Test TalkBack focus separately; check labels, focus visibility, and that
  moving focus does not unexpectedly submit or dismiss the form.
- Open the keyboard on fields near the top, middle, and bottom, including
  numeric/decimal editors; confirm the focused text is visible, partial native
  scroll is not undone incorrectly, and closing the keyboard restores the
  expected viewport.
- Record device/OS and keyboard used for runtime claims. A source-level check
  is not device verification.
