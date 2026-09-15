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
	Private focusedInput As B4XDaisyInput
	#If B4A
	Private ime As IME
	#End If

	' Page Frame & Navigation Containers (Navbar + Bottom Dock)
	Private pageScroll As B4XDaisyPageScroll
	Private pnlHost    As B4XView
	Private navbar     As B4XDaisyNavbar
	Private dock       As B4XDaisyDock

	' Coordinate Accumulator & Layout Metrics
	Private pad        As Int
	Private gap        As Int
	Private maxW       As Int
	Private y          As Int
	Private NAVBAR_H   As Int = 56dip
	Private DOCK_H     As Int = 64dip
	Private lastWidth  As Int

	' Page UI Components
	' Private statRow  As B4XDaisyStat
	' Private btnSubmit As B4XDaisyButton
End Sub

Public Sub Initialize As Object
	Return Me
End Sub

Private Sub B4XPage_Created(vRoot As B4XView)
	Root = vRoot
	Root.RemoveAllViews

	#If B4A
	ime.Initialize("IME")
	#End If

	BuildScroll
	BuildNavbar
	BuildDock
	lastWidth = vRoot.Width
	RenderContent
End Sub

Private Sub B4XPage_Appear
	CallSubDelayed(B4XPages.MainPage, "Page_Ready")
	' Reset/sync the dock active tab to this page's own item index
	If dock.IsInitialized Then dock.ActiveIndex = 0
End Sub

Private Sub B4XPage_Resize(iWidth As Int, iHeight As Int)
	If navbar.IsInitialized Then navbar.SetLayoutAnimated(0, 0, 0, iWidth, NAVBAR_H)
	If dock.IsInitialized Then dock.View.SetLayoutAnimated(0, 0, iHeight - DOCK_H, iWidth, DOCK_H)
	If pageScroll.IsInitialized Then
		pageScroll.Base_Resize(iWidth, iHeight - NAVBAR_H - DOCK_H)
		If lastWidth <> iWidth Then
			lastWidth = iWidth
			RenderContent
		End If
	End If
End Sub

Private Sub BuildScroll
	Dim scrollTop As Int = NAVBAR_H
	Dim scrollH   As Int = Root.Height - NAVBAR_H - DOCK_H
	pageScroll.Initialize(Me, "pageScroll")
	pageScroll.AddToParent(Root, 0, scrollTop, Root.Width, scrollH)
	pageScroll.SendToBack
	pnlHost = pageScroll.Panel
End Sub

Private Sub BuildNavbar
	navbar.Initialize(Me, "navbar")
	navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_H)
	navbar.BringToFront
	navbar.Title = "Dashboard"
	navbar.Variant = "primary"
End Sub

Private Sub BuildDock
	dock.Initialize(Me, "dock")
	dock.Size = "md"
	dock.ActivePosition = "top"
	dock.ActiveIndex = 0
	dock.AddToParent(Root, 0, Root.Height - DOCK_H, Root.Width, DOCK_H)
	dock.AddItem("home",     "Home",     "bars-solid.svg")
	dock.AddItem("settings", "Settings", "palette-solid-full.svg")
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
	' y = pageScroll.AddSectionTitle("Section Heading", y, False) + gap

	pageScroll.AutoFit
End Sub

Private Sub dock_ItemClick (sTag As String)
	Select Case sTag
		Case "home"
			' B4XPages.MainPage.ShowPageWithLoader("home")
		Case "settings"
			' B4XPages.MainPage.ShowPageWithLoader("settings")
	End Select
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

#Region Keyboard & Focus Management
#If B4A
Public Sub IME_HeightChanged(iNewHeight As Int, iOldHeight As Int)
	Try
		If pageScroll.IsInitialized = False Then Return
		If iNewHeight < iOldHeight Then
			' Keyboard opened: hide dock, shrink scroll view to available viewport height
			If dock.IsInitialized Then dock.Visible = False
			pageScroll.SetLayoutAnimated(0, 0, NAVBAR_H, Root.Width, iNewHeight - NAVBAR_H)
			Sleep(50)
			ScrollFocusedInputIntoView
		Else
			' Keyboard closed: restore dock and scroll view to full page height
			If dock.IsInitialized Then dock.Visible = True
			pageScroll.SetLayoutAnimated(0, 0, NAVBAR_H, Root.Width, Root.Height - NAVBAR_H - DOCK_H)
		End If
	Catch
		If B4XDaisyApp.DebugLogs Then Log("B4XPageNavDock.IME_HeightChanged: " & LastException.Message)
	End Try
End Sub

Public Sub ScrollFocusedInputIntoView
	Try
		If focusedInput.IsInitialized = False Or pageScroll.IsInitialized = False Then Return
		pageScroll.ScrollToViewWithMargin(focusedInput.View, 28dip, True)
	Catch
		If B4XDaisyApp.DebugLogs Then Log("B4XPageNavDock.ScrollFocusedInputIntoView: " & LastException.Message)
	End Try
End Sub

Private Sub HandleInputFocus(bHasFocus As Boolean)
	Try
		If bHasFocus Then
			If Sender Is B4XDaisyInput Then
				focusedInput = Sender
				If pageScroll.IsInitialized And pageScroll.mBase.Height < Root.Height Then
					Sleep(50)
					ScrollFocusedInputIntoView
				End If
			End If
		Else
			If Sender = focusedInput Then
				Dim emptyInput As B4XDaisyInput
				focusedInput = emptyInput
			End If
		End If
	Catch
		If B4XDaisyApp.DebugLogs Then Log("B4XPageNavDock.HandleInputFocus: " & LastException.Message)
	End Try
End Sub

Public Sub HideKeyboard
	ime.HideKeyboard
End Sub

Public Sub ShowKeyboard(inpTarget As B4XDaisyInput)
	If inpTarget.IsInitialized Then
		inpTarget.RequestFocus
		ime.ShowKeyboard(inpTarget.EditText)
	End If
End Sub

Private Sub HandleInputEnter(sText As String)
	HideKeyboard
End Sub
#End If
#End Region
