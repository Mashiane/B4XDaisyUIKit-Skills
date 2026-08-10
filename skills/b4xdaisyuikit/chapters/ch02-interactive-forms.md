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
    selectRole.setOptions("user:Standard User|manager:Manager|admin:System Administrator")
    selectRole.setSelectedValue("user")
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

Validations are recursively dispatched using the static variants validator engine [90]. Successful fields serialize maps asynchronously directly to `B4XDaisyPocketBase` [521, 526]:

```b4x
Private Sub btnSave_Click(Tag As Object)
    ' 1. Dispatch recursive validator sweep across pnlHost
    ' Analyzes children for any custom controls exposing a Validate() method
    Dim isFormValid As Boolean = B4XDaisyVariants.ValidateRequiredControls(pnlHost)
    
    If isFormValid = False Then
        ' Re-layout to accommodate expanding error labels below invalid inputs
        pageScroll.AutoFit
        B4XPages.MainPage.ShowToastError("Form verification failed. Correct highlit fields.", True)
        Return
    End If
    
    ' 2. Pack form data into map object
    Dim payload As Map = CreateMap( _
        "name": inputName.getText, _
        "role": selectRole.getSelectedValue, _
        "tech_stack": badgesTech.getSelected, _
        "agreed": toggleTerms.getChecked _
    )
    
    ' 3. Perform Async pocketbase create-record promise
    SaveProfileToDatabase(payload)
End Sub

Private Sub SaveProfileToDatabase(ProfileMap As Map)
    ' Show non-blocking spinner loading block
    B4XPages.MainPage.AppLoader.Show(Root.Parent)
    
    Dim pb As B4XDaisyPocketBase
    pb.Initialize(Me, "pb", "https://my-daisy-backend.net", "profiles")
    pb.PrepareRecord
    pb.RecordFromMap(ProfileMap)
    
    ' Fire Async HTTP request and Wait For response completion
    Wait For (pb.CREATE_FETCH) Complete (newRecordId As String)
    
    ' Hide loader block
    B4XPages.MainPage.AppLoader.Hide
    
    If newRecordId.Length > 0 Then
        ' Trigger Swal Confirmation dialog and wait for backdrop dismiss
        Wait For (B4XPages.MainPage.ShowSwalAlert("Success", "Account has been registered successfully.", "success", True)) Complete (res As Object)
        B4XPages.ClosePage(Me)
    Else
        B4XPages.MainPage.ShowToastError("Database error. Please try again.", True)
    End If
End Sub
```
