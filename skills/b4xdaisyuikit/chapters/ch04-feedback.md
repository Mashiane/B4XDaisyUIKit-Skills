# Chapter 4: User Feedback & Interactive Overlays (ch04-feedback.md)
## B4XDaisyUIKit Application Layout Reference

This reference blueprint details the canonical, evidence-backed implementation of feedback components inside native B4X Pages: Alerts, Toasts, Centered Modals, SweetAlert dialogs, Swipeable SheetModals, Loading Spinners, Skeletons, and Tooltips.

---

## 🔔 1. INLINE ALERTS & NOTIFICATIONS

Inline alerts provide context-sensitive status feedback directly within the scrolling flow.

```b4x
' Top-level banner alert
Dim alertBox As B4XDaisyAlert
alertBox.Initialize(Me, "alertBox")
alertBox.AddToParent(pnlHost, pad, y, maxW, 60dip)
alertBox.Variant = "warning"
alertBox.IconAsset = "triangle-exclamation-solid.svg"
alertBox.Title = "Account Verification Needed"
alertBox.Message = "Please verify your email address to unlock all features."
' Alert closable via tap handler

' Add action button inside alert
Dim btnVerify As B4XDaisyButton
btnVerify.Initialize(Me, "btnVerify")
btnVerify.Text = "Verify Now"
btnVerify.Variant = "warning"
btnVerify.Style = "soft"
btnVerify.Size = "sm"
' alertBox actions can be wired via event callbacks

y = y + alertBox.GetComputedHeight + gap

```

---

## 🍞 2. TOAST NOTIFICATION SYSTEM

Toasts provide non-blocking feedback positioned over the entire screen.

```b4x
' Initialize once in B4XPage_Created
Private toast As B4XDaisyToast
toast.Initialize(Me, "toast")
toast.SetRoot(Activity.RootPanel)
toast.SetPosition("end", "bottom")
toast.ShowProgress = True

' Trigger from anywhere
Sub ShowFeedback(Success As Boolean, Msg As String)
    If Success Then
        toast.Success(Msg)
    Else
        toast.Error(Msg)
    End If
End Sub

```

---

## 💬 3. SWEETALERT ASYNC CONFIRMATION DIALOGS

SweetAlert provides asynchronous modal dialogs with rich icons, custom buttons, and input fields.

```b4x
Private Sub btnDelete_Click(Tag As Object)
    Dim swal As B4XDaisySweetAlert
    swal.Initialize(Me, Activity.RootPanel, "swal")
    swal.Title = "Delete Item?"
    swal.Text = "This action cannot be undone. Are you sure you want to proceed?"
    swal.Icon = "warning"
    swal.ShowCancelButton = True
    swal.ConfirmButtonText = "Yes, Delete"
    swal.CancelButtonText = "Cancel"
    swal.AllowOutsideClick = True

    Wait For (swal.ShowAsync) swal_Result(Result As B4XDaisySweetAlertResult)
    If Result.IsConfirmed Then
        ' Perform deletion
        toast.Success("Item deleted successfully.")
    End If
End Sub

```

---

## 📱 4. SWIPEABLE SHEET MODALS (Bottom Sheet)

Bottom sheets allow progressive disclosure and secondary workflows with drag-to-dismiss behavior.

```b4x
Private Sub OpenFilterSheet
    Dim sheet As B4XDaisySheetModal
    sheet.Initialize(Me, "sheet")
    sheet.AddToParent(Activity.RootPanel, 0, 0, Activity.RootPanel.Width, Activity.RootPanel.Height)
    sheet.InitialBreakpoint = 0.6
    sheet.Breakpoints = "0|0.3|0.6|1"
    sheet.BackdropBreakpoint = 0.3
    sheet.BackdropDismiss = True
    sheet.Handle = True
    sheet.HandleBehavior = "cycle"

    ' Add filter controls to content area
    Dim sheetTitle As B4XDaisyText
    sheetTitle.Initialize(Me, "sheetTitle")
    sheetTitle.Text = "Filter Products"
    sheetTitle.Heading = "h3"
    sheet.AddContentView(sheetTitle.getView, 16dip, 16dip, sheet.getContentWidth - 32dip, 36dip)

    Dim rg As B4XDaisyRadioGroup
    rg.Initialize(Me, "rg")
    rg.Legend = "Sort By"
    rg.AddItem("price_asc", "Price: Low to High")
    rg.AddItem("price_desc", "Price: High to Low")
    rg.AddItem("popular", "Most Popular")
    rg.setChecked("popular")
    sheet.AddContentView(rg.getView, 16dip, 60dip, sheet.getContentWidth - 32dip, 160dip)

    Wait For (sheet.Present) sheet_DidDismiss(Role As String, Data As Object)
    ' Apply selected filters
End Sub

```

---

## ⏳ 5. SKELETON PLACEHOLDERS & LOADING STATES

Show animated skeleton placeholders while asynchronously fetching remote data.

```b4x
Private Sub ShowLoadingState(pnl As B4XView, W As Int, H As Int)
    Dim skAvatar As B4XDaisySkeleton
    skAvatar.Initialize(Me, "skAvatar")
    skAvatar.AddToParent(pnl, 16dip, 16dip, 48dip, 48dip)
    skAvatar.Shape = "circle"
    skAvatar.Animated = True

    Dim skTitle As B4XDaisySkeleton
    skTitle.Initialize(Me, "skTitle")
    skTitle.AddToParent(pnl, 76dip, 16dip, W - 92dip, 20dip)
    skTitle.Shape = "rounded"
    skTitle.Animated = True

    Dim skBody As B4XDaisySkeleton
    skBody.Initialize(Me, "skBody")
    skBody.AddToParent(pnl, 76dip, 44dip, W - 140dip, 16dip)
    skBody.Shape = "rounded"
    skBody.Animated = True
End Sub

```
