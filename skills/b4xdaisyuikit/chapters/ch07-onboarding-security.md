# Chapter 7: Onboarding, Radial Actions & Multi-Factor Security

This chapter demonstrates how to build an interactive user onboarding experience, PIN/OTP 2-factor authentication, wheel selection, and radial quick actions.

---

## 7.1 Scenario: 2-Factor PIN/OTP Verification Page with Resend Countdown

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

    Private titleText As B4XDaisyText
    Private subText As B4XDaisyText
    Private otpInput As B4XDaisyOTP
    Private timerCountdown As B4XDaisyCountdown
    Private btnVerify As B4XDaisyButton
    Private btnResend As B4XDaisyButton
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    
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

    ' 1. Header Title
    titleText.Initialize(Me, "titleText")
    titleText.AddToParent(pnl, pad, y, maxW, 36dip)
    titleText.Text = "Two-Factor Authentication"
    titleText.Heading = "h1"
    titleText.FontBold = True
    y = y + titleText.GetComputedHeight + gap

    ' 2. Subtitle instructions
    subText.Initialize(Me, "subText")
    subText.AddToParent(pnl, pad, y, maxW, 40dip)
    subText.Text = "Enter the 6-digit code sent to your registered mobile number."
    subText.Variant = "neutral"
    y = y + subText.GetComputedHeight + (gap * 2)

    ' 3. OTP 6-Digit Box
    otpInput.Initialize(Me, "otpInput")
    otpInput.AddToParent(pnl, pad, y, maxW, 64dip)
    otpInput.Length = 6
    otpInput.Variant = "primary"
    otpInput.Enabled = True
    y = y + otpInput.GetComputedHeight + (gap * 2)

    ' 4. Countdown Timer for Resend
    timerCountdown.Initialize(Me, "timerCountdown")
    timerCountdown.AddToParent(pnl, pad, y, maxW, 50dip)
    ' Countdown displays units added to it
    ' Countdown displays seconds
    y = y + timerCountdown.GetComputedHeight + gap

    ' 5. Verify Action Button
    btnVerify.Initialize(Me, "btnVerify")
    btnVerify.AddToParent(pnl, pad, y, maxW, 48dip)
    btnVerify.Variant = "primary"
    btnVerify.Style = "solid"
    btnVerify.Text = "Verify Code"
    y = y + btnVerify.GetComputedHeight + gap

    ' 6. Resend Code Button
    btnResend.Initialize(Me, "btnResend")
    btnResend.AddToParent(pnl, pad, y, maxW, 44dip)
    btnResend.Variant = "neutral"
    btnResend.Style = "ghost"
    btnResend.Text = "Didn't receive code? Resend"
    y = y + btnResend.GetComputedHeight + gap

    pageScroll.AutoFit
End Sub

Private Sub otpInput_Complete (Code As String)
    Log("OTP Code Filled: " & Code)
    btnVerify_Click(Null)
End Sub

Private Sub btnVerify_Click (Tag As Object)
    Dim code As String = otpInput.getValue
    If code.Length < 6 Then
        otpInput.ErrorText = "Please enter all 6 digits."
        Return
    End If
    
    btnVerify.Loading = True
    ' Process verification...
End Sub

```

---

## 7.2 Scenario: Feature Tour & Onboarding Spotlight (`B4XDaisyEnjoyHint`)

```b4x
Private Sub StartFeatureTour
    Dim tour As B4XDaisyEnjoyHint
    ' Initialize with Root as the overlay host
    tour.Initialize(Me, "tour", Root)
    
    ' AddStep(vTarget, sMessage, sShape, iMargin, iTimeoutMs, sArrowPosition)
    tour.AddStep(otpInput.View, "Enter your 6-digit SMS verification code here.", "rect", 4dip, 0, "bottom")
    tour.AddStep(btnVerify.View, "Tap Verify to confirm your identity and enter your dashboard.", "circle", 4dip, 0, "top")
    
    tour.RunWithResume
End Sub

```

---

## 7.3 Scenario: Drum Wheel Multi-Column Picker (`B4XDaisyPicker`)

```b4x
Dim pkr As B4XDaisyPicker
pkr.Initialize(Me, "pkr")
pkr.AddToParent(pnl, pad, y, maxW, 160dip)
pkr.AddColumn("month", Array As String("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
pkr.AddColumn("year", Array As String("2024", "2025", "2026", "2027", "2028"))
' Picker selections are retrieved via SelectedIndex / SelectedItem
' Picker selections are retrieved via SelectedIndex / SelectedItem
y = y + pkr.GetComputedHeight + gap

```
