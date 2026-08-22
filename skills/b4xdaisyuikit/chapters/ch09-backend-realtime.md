# Chapter 9: Realtime Backend Integration, Media Attachments & Signatures

This chapter demonstrates how to integrate `B4XDaisyPocketBase` for backend authentication, realtime live data streams, file attachments via `B4XDaisyFileHandler`, digital signature capture with `B4XDaisySignaturePad`, and document rendering with `B4XDaisyPDFView`.

---

## 9.1 Scenario: Field Service Work Order with Signature & PDF

```b4x
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private pnl As B4XView
    Private pad As Int
    Private gap As Int
    Private maxW As Int
    Private y As Int

    Private pb As B4XDaisyPocketBase
    Private fileHandler As B4XDaisyFileHandler
    
    Private titleText As B4XDaisyText
    Private orderStatusAlert As B4XDaisyAlert
    Private customerInput As B4XDaisyInput
    Private photoFileInput As B4XDaisyFileInput
    Private signatureTitle As B4XDaisyText
    Private sigPad As B4XDaisySignaturePad
    Private btnSaveOrder As B4XDaisyButton
    Private pdfViewer As B4XDaisyPDFView
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    
    ' Initialize Backend Services
    pb.Initialize(Me, "pb", "https://api.example.com", "work_orders")
    fileHandler.Initialize(Me, "fileHandler")

    RenderPage(Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    RenderPage(Width, Height)
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    ' 1. Title
    titleText.Initialize(Me, "titleText")
    titleText.AddToParent(pnl, pad, y, maxW, 36dip)
    titleText.Text = "Field Service Completion"
    titleText.Heading = "h1"
    titleText.FontBold = True
    y = y + titleText.GetComputedHeight + gap

    ' 2. Live Status Alert
    orderStatusAlert.Initialize(Me, "orderStatusAlert")
    orderStatusAlert.AddToParent(pnl, pad, y, maxW, 54dip)
    orderStatusAlert.Variant = "info"
    orderStatusAlert.AlertStyle = "soft"
    orderStatusAlert.Text = "Connected to RealTime PocketBase sync."
    y = y + orderStatusAlert.GetComputedHeight + gap

    ' 3. Customer Name
    customerInput.Initialize(Me, "customerInput")
    customerInput.AddToParent(pnl, pad, y, maxW, 64dip)
    customerInput.LabelAbove = "Customer Name"
    customerInput.Placeholder = "Enter client name"
    y = y + customerInput.GetComputedHeight + gap

    ' 4. Site Inspection Photo Attachment
    photoFileInput.Initialize(Me, "photoFileInput")
    photoFileInput.AddToParent(pnl, pad, y, maxW, 64dip)
    photoFileInput.ButtonText = "Take Site Photo"
    y = y + photoFileInput.GetComputedHeight + gap

    ' 5. Digital Signature Section
    signatureTitle.Initialize(Me, "signatureTitle")
    signatureTitle.AddToParent(pnl, pad, y, maxW, 24dip)
    signatureTitle.Text = "Customer Acceptance Signature:"
    signatureTitle.FontBold = True
    y = y + signatureTitle.GetComputedHeight + gap

    sigPad.Initialize(Me, "sigPad")
    sigPad.AddToParent(pnl, pad, y, maxW, 160dip)
    sigPad.PenColor = Colors.DarkGray
    sigPad.MinWidth = 2
    sigPad.MaxWidth = 5
    y = y + sigPad.GetComputedHeight + gap

    ' 6. Submit & Sync Button
    btnSaveOrder.Initialize(Me, "btnSaveOrder")
    btnSaveOrder.AddToParent(pnl, pad, y, maxW, 48dip)
    btnSaveOrder.Variant = "success"
    btnSaveOrder.Style = "solid"
    btnSaveOrder.Text = "Complete & Upload Order"
    y = y + btnSaveOrder.GetComputedHeight + gap

    ' 7. Signed Contract Preview
    pdfViewer.Initialize(Me, "pdfViewer")
    pdfViewer.AddToParent(pnl, pad, y, maxW, 240dip)
    pdfViewer.LoadAsset("service_contract.pdf")
    ' PDFView does not have GetComputedHeight - use fixed height passed to AddToParent
    y = y + 240dip + gap

    pageScroll.AutoFit
End Sub

Private Sub photoFileInput_Click (Tag As Object)
    ' Load accepts image MIME type filter to open image picker
    Wait For (fileHandler.LoadWithFilter("image/*", "Pick Image")) Complete (Loaded As LoadResult)
    If Loaded.Success Then
        photoFileInput.FileName = Loaded.FileName
        Log("Image selected: " & Loaded.FileName)
    End If
End Sub


Private Sub btnSaveOrder_Click (Tag As Object)
    If sigPad.IsEmpty Then
        orderStatusAlert.Variant = "error"
        orderStatusAlert.Text = "Please provide customer signature before submitting."
        Return
    End If

    btnSaveOrder.Loading = True
    
    Dim record As Map
    record.Initialize
    record.Put("customer", customerInput.Text)
    record.Put("status", "completed")
    
    Wait For (pb.Create(record)) pb_Success (Result As Map)
    btnSaveOrder.Loading = False
    orderStatusAlert.Variant = "success"
    orderStatusAlert.Text = "Order successfully synced to cloud!"
End Sub

```
