# B4XDaisyUIKit Reference Manual
## Chapter 3 — App Navigation, Docks, and Tab Architecture

This reference chapter details the exact API signatures, event contracts, and structural integration patterns for the core navigation elements of the **B4XDaisyUIKit** framework: **`B4XDaisyNavbar`**, **`B4XDaisyDock`**, and **`B4XDaisyTab`**.

In accordance with our core design guidelines, all layouts are built utilizing the flat, sequential vertical coordinate accumulator pattern hosted directly inside a **`B4XDaisyPageScroll`** view container, completely bypassing programmatic grid or flex layouts.

---

## I. Component API Signature Registry

### 1. `B4XDaisyNavbar`
Exposes the top-level main screen header, hosting navigation icons, system back triggers, brand logos, titles, and action slots [544, 545].

*   **Initialization**: `Initialize(Callback As Object, EventName As String)` [545]
*   **Properties**:
    *   `Title` [String]: Centralized screen caption text [547].
    *   `TitleVisible` [Boolean]: Displays or hides the header title [547].
    *   `BackVisible` [Boolean]: Enables the navigation back button on the start slot [548].
    *   `BackLabel` [String]: Text displayed alongside the back icon; empty = icon-only [548].
    *   `BackSize` [Int]: Back button size in dip (default 48) [548].
    *   `HamburgerVisible` [Boolean]: Enables a hamburger toggle button on the start slot [548].
    *   `Glass` [Boolean]: Enables a blurred translucent background [547].
*   **Programmatic Mount Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView` [562]
    *   `AddButtonIconToEnd(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton` [555, 567]
    *   `AddButtonIconToStart(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton` [555, 567]
    *   `AddSVGIconToEnd(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon` [566, 567]
    *   `AddAvatarToEnd(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar` [566]
*   **Events Raised**:
    *   `_Back(Tag As Object)`: Raised when the user clicks the navigation back button [544, 551].
    *   `_Click(Payload As Object)`: Raised when slots are tapped [544].

> **Back button: prefer the designer property, not `AddBackButton`.** The back
> button is driven by three designer properties: `BackVisible`, `BackLabel`,
> `BackSize`. When the navbar is laid out in the visual designer with
> `BackVisible = True`, the back button is built during `DesignerCreateView`
> and the `_Back` event fires on tap with no runtime code. Do NOT also call
> `AddBackButton` in `B4XPage_Created`; it re-creates the view and doubles the
> wiring. For code-only pages (no designer, mounted via `AddToParent`), set the
> same properties at runtime: `navbar.BackVisible = True`,
> `navbar.BackLabel = "Home"`, `navbar.BackSize = 40dip` (optional, default 48).
> Reserve `AddBackButton(SizeDip, Label)` for the rare case where you need to
> (re)build the back button with an explicit size after creation.

---

### 2. `B4XDaisyDock`
The bottom-dock navigation toolbar wrapping SVG icons, text labels, unread count badges, and focus indicator lines [364, 366].

*   **Initialization**: `Initialize(Callback As Object, EventName As String)` [367]
*   **Properties**:
    *   `ActiveIndex` [Int]: 0-based index of the currently highlighted active tab [364, 366].
    *   `Size` [String]: Sizing token scales (`xs`, `sm`, `md`, `lg`, `xl`) [364, 365].
    *   `Glass` [Boolean]: Enables frosted-glass background styles [366].
    *   `Enabled` [Boolean]: Activates or suspends touch interactions [365, 366].
*   **Programmatic Mount Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView` [370, 371]
    *   `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int` [385]
    *   `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int` [385]
    *   `SetBadgeValue(Index As Int, Value As String)`: Adds a floating circular numeric alert above the tab icon [369, 385].
*   **Events Raised**:
    *   `_ItemClick(ItemId As String)`: Raised when a navigation tab button is tapped [364, 382].

---

### 3. `B4XDaisyTab`
A horizontal paging selector hosting multiple visual tab buttons aligned recursively with nested, page-switched scrolling panels [781, 783].

*   **Initialization**: `Initialize(Callback As Object, EventName As String)` [803]
*   **Properties**:
    *   `ActiveIndex` [Int]: Index of the currently visible tab page [783, 806].
    *   `Style` [String]: Visual style token (`default`, `box`, `lift`, `border`) [783, 806].
    *   `Size` [String]: Size metrics token (`xs`, `sm`, `md`, `lg`, `xl`) [783, 806].
    *   `Scrollable` [Boolean]: Enables horizontal swipe scrolling when tabs overflow widths [782, 783].
    *   `ActiveColor` [String]: Daisy variant color applied to the highlighted active tab [782, 783].
*   **Programmatic Mount & Content Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView` [804]
    *   `AddTab(Text As String)`: Appends a text tab page [784]
    *   `AddTabWithIcon(Text As String, IconText As String)`: Appends a tab with an icon [785].
    *   `SetTabContent(Index As Int, Content As B4XView)`: Mounts a layout container onto a specific tab index [786, 805].
    *   `SetTabContentText(Index As Int, Text As String)`: Embeds wrapping paragraph labels inside a specific tab [787, 805].
    *   `ClearTabs`: Cleans up all nested page nodes and panels [788, 805].
*   **Events Raised**:
    *   `_TabClick(Index As Int)`: Raised when a tab header is clicked [781, 802].

---

## II. The Core Navigation Layout Patterns

Navigation elements interact directly with the viewport bounds. Under the accumulator pattern, these layouts must dynamically anchor navbars and bottom docks to the screen edges, while letting body content flow freely in the middle [183, 370, 584].

### Pattern A: Pinned Navbar & Bottom Dock Layout (`PT_NAV_DOCK_PAGE`)
An absolute vertical coordinate stacking template establishing a top navbar and bottom-docked dashboard menu around a scrollable central host panel [171, 370, 545, 584]:

```
+------------------------------------------+ <-- Page Root View [171, 584]
|              B4XDaisyNavbar              | [545] y = PagePadding
+------------------------------------------+
| . . . . . . . . . . . . . . . . . . . .  | <-- Central y Scroll Area
|                                          |
|         pnlHost (pageScroll.Panel)       | [171, 584] Contains sequential body 
|                                          |            views stacked vertically
| . . . . . . . . . . . . . . . . . . . .  |
+------------------------------------------+
|               B4XDaisyDock               | [364] Anchored dynamically at bottom
+------------------------------------------+

```

---

## III. Layout Blueprints & Code Templates

### 1. Standard Flat Screen with Navbar & Dock Menu
This complete, production-ready `B4XPage` template shows how to cleanly structure a standard screen layout with a header navbar and bottom toolbar inside **`B4XDaisyPageScroll`** without overlapping:

```b4x
#IgnoreWarnings:12,9
Sub Class_Globals
    ' Viewport reference
    Private Root As B4XView
    Private xui As XUI
    
    ' Layout Infrastructure
    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost As B4XView
    
    ' Navigation Components
    Private navbar As B4XDaisyNavbar
    Private dockMenu As B4XDaisyDock

    ' Bar heights (dip) — navbar pinned top, dock pinned bottom, scroll inset between
    Private NAVBAR_H As Int = 56dip
    Private DOCK_H   As Int = 64dip

    ' Flat Sequential Content Views
    Private sectionTitle As B4XView
    Private inputField1 As B4XDaisyInput
    Private inputField2 As B4XDaisyInput
End Sub

Public Sub Initialize As Object
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.Color = xui.Color_White
    Root.RemoveAllViews

    ' 1. Inset PageScroll between navbar (top) and dock (bottom), sent to back
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, NAVBAR_H, Root.Width, Root.Height - NAVBAR_H - DOCK_H)
    pageScroll.SendToBack
    pnlHost = pageScroll.Panel

    ' 2. Navbar pinned to top of Root (never scrolls)
    navbar.Initialize(Me, "navbar")
    navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_H)
    navbar.BringToFront
    navbar.Title = "Inbox Messages"
    navbar.BackVisible = True
    navbar.BackLabel = "Home"

    ' 3. Bottom toolbar dock pinned to bottom of Root (never scrolls)
    dockMenu.Initialize(Me, "dock")
    dockMenu.Size = "md"
    dockMenu.ActiveIndex = 0
    dockMenu.AddToParent(Root, 0, Root.Height - DOCK_H, Root.Width, DOCK_H)
    dockMenu.AddItem("tab_inbox", "Inbox", "envelope-solid.svg")
    dockMenu.AddItem("tab_sent", "Sent", "paper-plane-solid.svg")
    dockMenu.AddItem("tab_settings", "Settings", "gear-solid.svg")
    dockMenu.SetItemBadgeValueByIndex(0, "12") ' 12 unread notifications on tab 0

    ' 4. Initialise sequential body views
    inputField1.Initialize(Me, "inputField1")
    inputField1.LabelAbove = "Recipient Email"
    inputField1.Placeholder = "example@domain.com"

    inputField2.Initialize(Me, "inputField2")
    inputField2.LabelAbove = "Message Subject"
    inputField2.Placeholder = "Enter subject lines"

    RenderBody
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If navbar.IsInitialized Then navbar.SetLayoutAnimated(0, 0, 0, Width, NAVBAR_H)
    If dockMenu.IsInitialized Then dockMenu.View.SetLayoutAnimated(0, 0, Height - DOCK_H, Width, DOCK_H)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height - NAVBAR_H - DOCK_H)
        RenderBody
    End If
End Sub

Private Sub RenderBody
    If pnlHost.IsInitialized = False Then Return

    ' Wipe previous coordinate layout structures
    pageScroll.Clear

    Dim pad As Int = pageScroll.PagePadding
    Dim gap As Int = pageScroll.YGap
    Dim maxW As Int = pageScroll.UsableWidth
    Dim y As Int = pad

    ' A. Section title (navbar is pinned to Root, not added to the scroll body)
    y = pageScroll.AddSectionTitle("Compose Direct Email", y, False)

    ' B. Sequential vertical stacking of form controls on pnlHost
    inputField1.AddToParent(pnlHost, pad, y, maxW, 72dip)
    y = y + inputField1.GetComputedHeight + gap

    inputField2.AddToParent(pnlHost, pad, y, maxW, 72dip)
    y = y + inputField2.GetComputedHeight + gap

    pageScroll.AutoFit
End Sub

'================================================================
' Navigation Callback Interactions
'================================================================

Private Sub navbar_Back(Tag As Object)
    B4XPages.MainPage.ClosePageWithLoader(Me)
End Sub

Private Sub dock_ItemClick(ItemId As String)
    Log("Tab clicked: " & ItemId)
    Select Case ItemId
        Case "tab_settings"
            ' Navigate to settings page instance via the global AppLoader
            B4XPages.MainPage.ShowPageWithLoader("B4XPageSettings")
    End Select
End Sub

```

---

### 2. Multi-Tab Segment Screen Layout
This blueprint demonstrates how to configure **`B4XDaisyTab`** programmatically to host separate content pages, utilizing nested panels swapped dynamically on tab clicked events:

```b4x
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    
    ' Main scrolling envelope
    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost As B4XView
    
    ' Navigation Tabs
    Private tabSwitcher As B4XDaisyTab
    
    ' Tab Sub-Panels (Nested content views)
    Private pnlDetailsTab As B4XView
    Private pnlSecurityTab As B4XView
    
    ' Sub-Panel Children
    Private inputUsername As B4XDaisyInput
    Private inputPassword As B4XDaisyInput
End Sub

Public Sub Initialize As Object
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    
    ' 1. Viewport Scroll Host
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnlHost = pageScroll.Panel
    
    ' 2. Initialize subpanels programmatically to hold tab details
    pnlDetailsTab = xui.CreatePanel("")
    pnlSecurityTab = xui.CreatePanel("")
    
    BuildTabPages
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    ReflowCoordinates(Width, Height)
End Sub

Private Sub BuildTabPages
    ' Configure nested Detail elements inside panel 1
    inputUsername.Initialize(Me, "inputUsername")
    inputUsername.LabelAbove = "Profile Username"
    inputUsername.Placeholder = "Type user handle"
    inputUsername.AddToParent(pnlDetailsTab, 0, 12dip, 280dip, 72dip)
    
    ' Configure nested Security elements inside panel 2
    inputPassword.Initialize(Me, "inputPassword")
    inputPassword.LabelAbove = "Secret Password"
    inputPassword.Placeholder = "Enter secret phrase"
    inputPassword.AddToParent(pnlSecurityTab, 0, 12dip, 280dip, 72dip)
    
    ' Configure Main Tab Switcher
    tabSwitcher.Initialize(Me, "tabs")
    tabSwitcher.Style = "lift" ' Premium lifting tab border style
    tabSwitcher.ActiveColor = "secondary"
    tabSwitcher.ActiveIndex = 0
    
    ' Populate Tab pages and bind their respective content view panels
    tabSwitcher.AddTab("Profile Details")
    tabSwitcher.SetTabContent(0, pnlDetailsTab)
    
    tabSwitcher.AddTab("Credentials")
    tabSwitcher.SetTabContent(1, pnlSecurityTab)
End Sub

Private Sub ReflowCoordinates(W As Int, H As Int)
    If pnlHost.IsInitialized = False Then Return
    
    pageScroll.Clear
    
    Dim pad As Int = pageScroll.PagePadding
    Dim gap As Int = pageScroll.YGap
    Dim maxW As Int = pageScroll.UsableWidth
    Dim y As Int = pad
    
    ' 1. Resize Nested child panels to match computed usable widths
    pnlDetailsTab.Width = maxW
    pnlDetailsTab.Height = 120dip
    inputUsername.Base_Resize(maxW, 72dip)
    
    pnlSecurityTab.Width = maxW
    pnlSecurityTab.Height = 120dip
    inputPassword.Base_Resize(maxW, 72dip)
    
    ' 2. Mount and Reflow tab container on scroll host panel
    If tabSwitcher.IsInitialized = False Then
        tabSwitcher.AddToParent(pnlHost, pad, y, maxW, 200dip)
    Else
        tabSwitcher.SetLayoutAnimated(0, pad, y, maxW, tabSwitcher.GetComputedHeight)
    End If
    y = y + tabSwitcher.GetComputedHeight + gap
    
    ' 3. Stretch page scroll layout dimensions
    pageScroll.AutoFit
End Sub

'================================================================
' Tab Selection Handler
'================================================================

Private Sub tabs_TabClick(Index As Int)
    Log("Switched to Tab Index: " & Index)
    ' Tab panel swaps are handled internally by B4XDaisyTab using visibility toggles on SetTabContent views.
End Sub

```
