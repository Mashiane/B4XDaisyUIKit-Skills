B4A=true
Group=Default Group\Pages
ModulesStructureVersion=1
Type=Class
Version=13.70
@EndOfDesignText@

#IgnoreWarnings:12,9
Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI

	' Page Frame & Navigation (Navbar only - No bottom dock)
	Private pageScroll As B4XDaisyPageScroll
	Private pnlHost    As B4XView
	Private navbar     As B4XDaisyNavbar

	' Coordinate Accumulator & Layout Metrics
	Private pad        As Int
	Private gap        As Int
	Private maxW       As Int
	Private y          As Int
	Private NAVBAR_H   As Int = 56dip

	' Page UI Components
	' Private inputName  As B4XDaisyInput
	' Private btnSave    As B4XDaisyButton
End Sub

Public Sub Initialize As Object
	Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
	Root = Root1
	Root.RemoveAllViews

	BuildScroll
	BuildNavbar
	RenderContent
End Sub

Private Sub B4XPage_Appear
	CallSubDelayed(B4XPages.MainPage, "Page_Ready")
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
	If navbar.IsInitialized Then navbar.SetLayoutAnimated(0, 0, 0, Width, NAVBAR_H)
	If pageScroll.IsInitialized Then
		pageScroll.Base_Resize(Width, Height - NAVBAR_H)
		RenderContent
	End If
End Sub

Private Sub BuildScroll
	Dim scrollTop As Int = NAVBAR_H
	Dim scrollH   As Int = Root.Height - NAVBAR_H
	pageScroll.Initialize(Me, "pageScroll")
	pageScroll.AddToParent(Root, 0, scrollTop, Root.Width, scrollH)
	pageScroll.SendToBack
	pnlHost = pageScroll.Panel
End Sub

Private Sub BuildNavbar
	navbar.Initialize(Me, "navbar")
	navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_H)
	navbar.BringToFront
	navbar.Title = "Details"
	navbar.Variant = "primary"
	' Back button properties
	navbar.BackVisible = True
	navbar.BackLabel = ""
End Sub

Private Sub RenderContent
	If pageScroll.IsInitialized = False Then Return
	pageScroll.Clear

	pad  = pageScroll.PagePadding
	gap  = pageScroll.YGap
	maxW = pageScroll.UsableWidth
	y    = pad

	' Responsive Grid Metrics (Adapts automatically between Phone single-column vs Tablet/Landscape dual-column)
	Dim isTablet As Boolean = (Root.Width >= 600dip)
	Dim colW As Int = IIf(isTablet, (maxW - gap) / 2, maxW)

	' Compose components sequentially using the Vertical Coordinate Accumulator
	' Example:
	' y = pageScroll.AddSectionTitle("Details Section", y, False) + gap

	pageScroll.AutoFit
End Sub

Private Sub navbar_Back (Tag As Object)
	B4XPages.ClosePage(Me)
End Sub

' Intercepts Android hardware BACK key or close requests (return True to close, False to cancel)
' Private Sub B4XPage_CloseRequest As ResumableSub
' 	Return True
' End Sub

' Triggered when app enters foreground
Private Sub B4XPage_Foreground
End Sub

' Triggered when app enters background (pause timers/subscriptions)
Private Sub B4XPage_Background
End Sub
