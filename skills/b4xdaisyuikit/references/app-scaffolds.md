# B4XDaisyUIKit App Scaffolds

Every code block in this file uses only methods confirmed in `component-manifest.md`. Method signatures are quoted exactly from the manifest.

---

## API Verification Legend

Each code block notes which manifest entries it relies on:

| Notation | Meaning |
|---|---|
| `[M]` | Method confirmed in component manifest |
| `[P]` | Designer property confirmed in manifest |
| `[B4X]` | Standard B4X/B4XPages platform API, not library-specific |

## 0. Standard .b4a Project File Template

When creating a new B4A project file (`[AppName].b4a`), use this exact template. It includes all 27 required library definitions (including `b4xdaisyuikit`), the full `ManifestCode`, and the exact delegates/inline code after `@EndOfDesignText@` from `B4XDaisyUIKitDemo.b4a`:

```ini
AppType=JavaObject
Build1=Default,b4a.example
FileGroup0=Default Group
Group=Default Group
Library1=ac_leafletview
Library2=b4xpages
Library3=bitmapcreator
Library4=bitmapcreatoreffectsext
Library5=contentresolver
Library6=core
Library7=fileprovider
Library8=fusedlocationprovider
Library9=geocoder
Library10=gps
Library11=ime
Library12=javaobject
Library13=json
Library14=mediachooser
Library15=okhttp
Library16=okhttputils2
Library17=reflection
Library18=runtimepermissions
Library19=simplemediamanager
Library20=sql
Library21=stringutils
Library22=xcustomlistview
Library23=xui
Library24=xui views
Library25=shinebutton
Library26=pdfium
Library27=b4xdaisyuikit
ManifestCode='This code will be applied to the manifest file during compilation.~\n~'You do not need to modify it in most cases.~\n~'See this link for for more information: https://www.b4x.com/forum/showthread.php?p=78136~\n~AddManifestText(~\n~<uses-sdk android:minSdkVersion="5" android:targetSdkVersion="35"/>~\n~<uses-permission android:name="android.permission.ACCESS_MOCK_LOCATION" />~\n~<supports-screens android:largeScreens="true" ~\n~    android:normalScreens="true" ~\n~    android:smallScreens="true" ~\n~    android:anyDensity="true"/>)~\n~SetApplicationAttribute(android:icon, "@drawable/icon")~\n~SetApplicationAttribute(android:label, "$LABEL$")~\n~SetApplicationAttribute(android:debuggable, "true")~\n~SetApplicationAttribute(android:theme, "@style/LightTheme")~\n~CreateResource(values, theme.xml,~\n~<resources>~\n~    <style~\n~        name="LightTheme" parent="@android:style/Theme.Material.Light">~\n~       <item name="android:actionMenuTextAppearance">@style/LowerCaseMenu</item>~\n~       <item name="android:windowOptOutEdgeToEdgeEnforcement">true</item>~\n~    </style>~\n~     <style name="LowerCaseMenu" parent="android:TextAppearance.Material.Widget.ActionBar.Menu">~\n~        <item name="android:textAllCaps">false</item>~\n~    </style>~\n~</resources>~\n~)~\n~'End of default text.~\n~SetActivityAttribute(Main, android:windowSoftInputMode, adjustResize|stateHidden)~\n~AddPermission(android.permission.CAMERA)~\n~AddApplicationText(~\n~  <provider~\n~  android:name="android.support.v4.content.FileProvider"~\n~  android:authorities="$PACKAGE$.provider"~\n~  android:exported="false"~\n~  android:grantUriPermissions="true">~\n~  <meta-data~\n~  android:name="android.support.FILE_PROVIDER_PATHS"~\n~  android:resource="@xml/provider_paths"/>~\n~  </provider>~\n~)~\n~CreateResource(xml, provider_paths,~\n~   <files-path name="name" path="shared" />~\n~)~\n~AddPermission(android.permission.RECORD_AUDIO)~\n~AddManifestText(<uses-permission~\n~    android:name="android.permission.WRITE_EXTERNAL_STORAGE"~\n~    android:maxSdkVersion="19" />~\n~)~\n~CreateResourceFromFile(Macro, Core.NetworkClearText)~\n~AddPermission(android.permission.FOREGROUND_SERVICE)~\n~SetServiceAttribute(KeepRunningService, android:foregroundServiceType, shortService)~\n~AddPermission(android.permission.ACCESS_FINE_LOCATION)~\n~AddPermission(android.permission.ACCESS_COARSE_LOCATION)~\n~AddApplicationText(<meta-data~\n~    android:name="com.google.android.gms.version"~\n~    android:value="@integer/google_play_services_version" />)
Module1=B4XMainPage
Module2=B4XPageLogin
Module3=B4XPageDashboard
Module4=B4XPageSettings
NumberOfFiles=0
NumberOfLibraries=27
NumberOfModules=4
Version=13.7
@EndOfDesignText@
#Region  Project Attributes
	#ApplicationLabel: B4XDaisy UIKit App
	#VersionCode: 1
	#VersionName: 1.0.0
	#SupportedOrientations: portrait
	#CanInstallToExternalStorage: True
	#LibraryAuthor: Anele Mbanga (Mashy)
#End Region

#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
	#DebuggerForceStandardAssets: true	
	#BridgeLogger: True
	#EdgeToEdgeOldDevices: False
#End Region

#Macro: After Save, Sync Layouts, ide://run?File=%ADDITIONAL%\JsonLayouts.jar&Args=%PROJECT%&Args=%PROJECT_NAME%
#Macro: Title, JsonLayouts folder, ide://run?File=%WINDIR%\explorer.exe&Args=%PROJECT%\JsonLayouts
#Macro: Title, Code bundle, ide://run?File=%ADDITIONAL%\CodeBundle.jar&Args=%PROJECT_NAME%
'Ctrl + click to build b4xlib: ide://run?file=%JAVABIN%\jar.exe&WorkingDirectory=%PROJECT%\..&Args=-cMf&Args=%PROJECT_NAME%.b4xlib&&Args=..&Args=*.bas&Args=manifest.txt
#Macro: Title, PowerShell, ide://run?File=%WINDIR%\System32\cmd.exe&args=/c&args=start&args=""&args=powershell.exe&args=-WorkingDirectory&args=%PROJECT%
#Macro: Title, Claude, ide://run?File=%COMSPEC%&args=/c&args=start&args=claude://

'#AdditionalJar: yoga-3.2.1-release.aar
'#AdditionalJar: soloader-0.10.5.aar
'#AdditionalJar: nativeloader-0.10.5.jar
'getting gps location
#AdditionalJar: com.android.support:support-v4
#AdditionalJar: com.google.android.gms:play-services-location
#AdditionalJar: android-pdf-viewer.aar
#AdditionalJar: com.android.support:support-v4
#AdditionalJar: Pdfium.aar

Sub Process_Globals
	Public ActionBarHomeClicked As Boolean
End Sub

Sub Globals

End Sub

Sub Activity_Create (FirstTime As Boolean)
	Dim pm As B4XPagesManager
	pm.Initialize(Activity)
End Sub

Public Sub ShowResolutionDialog (SettingsStatus As LocationSettingsStatus) As ResumableSub
	SettingsStatus.StartResolutionDialog("srd")
	Wait For srd_ResolutionDialogDismissed(LocationSettingsUpdated As Boolean)
	Return LocationSettingsUpdated
End Sub

#Region Pin to Home Screen
Private Sub FirstRunPinNeeded As Boolean
	#If B4A
	Dim flagFile As String = "daisy_pin_asked.dat"
	If File.Exists(File.DirInternal, flagFile) Then Return False
	Try
		File.WriteString(File.DirInternal, flagFile, "1")
	Catch
		Log("PinToHome flag write failed: " & LastException)
	End Try
	Return True
	#Else
		Return False
	#End If
End Sub

Private Sub TryPinToHomeScreen
	#If B4A
	Try
		Dim jo As JavaObject
		jo.InitializeStatic("com.sithaso.daisyuikit.main")
		jo.RunMethod("_pinToHome", Null)
	Catch
		Log("TryPinToHomeScreen failed: " & LastException)
	End Try
	#End If
End Sub
#End Region

#Region Delegates
Sub Activity_ActionBarHomeClick
	ActionBarHomeClicked = True
	B4XPages.Delegate.Activity_ActionBarHomeClick
	ActionBarHomeClicked = False
End Sub

Sub Activity_KeyPress (KeyCode As Int) As Boolean
	Return B4XPages.Delegate.Activity_KeyPress(KeyCode)
End Sub

Sub Activity_Resume
	Try
		If FirstRunPinNeeded Then TryPinToHomeScreen
	Catch
		Log("PinToHome: " & LastException)
	End Try
	B4XPages.Delegate.Activity_Resume
End Sub

Sub Activity_Pause (UserClosed As Boolean)
	B4XPages.Delegate.Activity_Pause
End Sub

Sub Activity_PermissionResult (Permission As String, Result As Boolean)
	B4XPages.Delegate.Activity_PermissionResult(Permission, Result)
End Sub

Sub Create_Menu (Menu As Object)
	'B4XPages.Delegate.Create_Menu(Menu)
End Sub
#End Region

#If Java
public static void _pinToHome() {
	try {
		android.app.Activity act = mostCurrent;
		if (act == null) return;
		if (android.os.Build.VERSION.SDK_INT < 26) return;
		android.content.Context ctx = act;
		android.content.pm.ShortcutManager sm =
			(android.content.pm.ShortcutManager) ctx.getSystemService(android.content.Context.SHORTCUT_SERVICE);
		if (sm == null) return;
		if (!sm.isRequestPinShortcutSupported()) return;
		String pkg = ctx.getPackageName();
		int iconResId = ctx.getResources().getIdentifier("icon", "drawable", pkg);
		android.content.pm.ShortcutInfo.Builder b = new android.content.pm.ShortcutInfo.Builder(ctx, "daisy_main");
		b.setShortLabel("Daisy UIKit");
		b.setLongLabel("B4XDaisy UIKit");
		if (iconResId != 0) b.setIcon(android.graphics.drawable.Icon.createWithResource(ctx, iconResId));
		android.content.Intent intent = new android.content.Intent(android.content.Intent.ACTION_MAIN);
		intent.addCategory(android.content.Intent.CATEGORY_LAUNCHER);
		intent.setClassName(pkg, pkg + ".main");
		b.setIntent(intent);
		sm.requestPinShortcut(b.build(), null);
	} catch (Throwable t) {
		android.util.Log.w("B4A", "PinToHome failed", t);
	}
}
#End If
```

---

## 1. B4XMainPage.bas — App Entry Point

Every B4XPages app has exactly one `B4XMainPage` class module. It registers all pages and holds global overlays.

**Manifest refs
** `B4XDaisyCanvasSpinner.Initialize(Callback, EventName)` [M], `B4XDaisySweetAlert.Initialize(Callback, Parent As B4XView, EventName)` [M], `B4XDaisyCanvasSpinner.Show(Target As B4XView)` [M], `B4XDaisyCanvasSpinner.Hide` [M]


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI

    ' Global overlays — accessible from any page via B4XPages.MainPage
    Public AppLoader As B4XDaisyCanvasSpinner
    Public AppSweetAlert As B4XDaisySweetAlert

    ' Declare all app page instances here — use your own class names
    ' Public HomePage  As B4XPageHome
    ' Public LoginPage As B4XPageLogin
End Sub

Public Sub Initialize
    B4XPages.GetManager.LogEvents = True
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews

    ' Initialize loader: Initialize(Callback, EventName) [M]
    AppLoader.Initialize(Me, "AppLoader")
    AppLoader.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    AppLoader.setVisible(False)

    ' Initialize SweetAlert: Initialize(Callback, Parent As B4XView, EventName) [M]
    AppSweetAlert.Initialize(Me, Root, "AppSweetAlert")

    ' Register pages with B4XPages [B4X]
    ' Dim home As B4XPageHome
    ' home.Initialize
    ' B4XPages.AddPage("home", home)

    ' Show first page [B4X]
    ' B4XPages.ShowPage("home")
End Sub

' Forward navigation with a brief loading overlay.
' Pages call B4XPages.MainPage.ShowPageWithLoader("pageId") from a button/dock handler,
' then hide the loader by raising Page_Ready from their B4XPage_Appear:
'   Private Sub B4XPage_Appear
'       CallSubDelayed(B4XPages.MainPage, "Page_Ready")   ' [B4X]
'   End Sub
' Without that CallSubDelayed in B4XPage_Appear the spinner stays on screen.
' [B4X: B4XPages.ShowPage, M: CanvasSpinner.Show/Hide]
Public Sub ShowPageWithLoader(PageId As String)
    Try
        AppLoader.Show(Root.Parent)
        Sleep(150)
        B4XPages.ShowPage(PageId)
    Catch
        Log("B4XMainPage.ShowPageWithLoader: " & LastException.Message)
        If AppLoader.IsInitialized Then AppLoader.Hide
    End Try
End Sub

' Back/close navigation with a brief loading overlay.
' Called from the page being closed: B4XPages.MainPage.ClosePageWithLoader(Me)
' [B4X: B4XPages.ClosePage, M: CanvasSpinner.Show/Hide]
Public Sub ClosePageWithLoader(Page As Object)
    Try
        AppLoader.Show(Root.Parent)
        Sleep(150)
        B4XPages.ClosePage(Page)
    Catch
        Log("B4XMainPage.ClosePageWithLoader: " & LastException.Message)
        If AppLoader.IsInitialized Then AppLoader.Hide
    End Try
End Sub

' Hides the global AppLoader. Called from each page's B4XPage_Appear via
' CallSubDelayed(B4XPages.MainPage, "Page_Ready"). [M: CanvasSpinner.Hide]
Public Sub Page_Ready
    If AppLoader.IsInitialized Then AppLoader.Hide
End Sub
```

> Note
Remove the comment markers on page declarations once you have created your page class modules.
> Do NOT name a navigation sub `NavigateWithLoader` — it is not part of the real
> B4XMainPage API. Use `ShowPageWithLoader` (forward) and `ClosePageWithLoader` (back).

---

## 2. Standard Content Page

Use for any page with scrollable body content.

**Manifest refs
** `B4XDaisyPageScroll.Initialize(Callback, EventName)` [M], `B4XDaisyPageScroll.AddToParent(...)` [M], `B4XDaisyPageScroll.Clear` [M], `B4XDaisyPageScroll.AutoFit` [M], `B4XDaisyPageScroll.Panel As B4XView` [M], `B4XDaisyPageScroll.PagePadding As Int` [M], `B4XDaisyPageScroll.YGap As Int` [M], `B4XDaisyPageScroll.UsableWidth As Int` [M], `B4XDaisyPageScroll.Base_Resize(Width, Height)` [M]


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI

    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost    As B4XView

    ' Declare your page-level components here
    Private inputName  As B4XDaisyInput
    Private chkAgree   As B4XDaisyCheckbox
    Private togNotify  As B4XDaisyToggle
    Private btnSave    As B4XDaisyButton
End Sub

Public Sub Initialize As Object
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews

    ' Initialize scroll container [M]
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnlHost = pageScroll.Panel                                          ' [M]

    BuildForm
End Sub

Private Sub B4XPage_Appear
    ' Hide the global AppLoader shown by B4XMainPage.ShowPageWithLoader [B4X]
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")
    If inputName.IsInitialized Then inputName.Focus = True              ' [P]
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height)                           ' [M]
        BuildForm
    End If
End Sub

Private Sub BuildForm
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear                           ' [M] — always first

    Dim pad  As Int = pageScroll.PagePadding   ' [M]
    Dim gap  As Int = pageScroll.YGap          ' [M]
    Dim maxW As Int = pageScroll.UsableWidth   ' [M]
    Dim y    As Int = pad

    ' --- Input field ---
    ' Initialize(Callback, EventName) [M]
    inputName.Initialize(Me, "inputName")
    ' LabelAbove / Placeholder / Required are properties [P] (getter+setter pairs exist).
    inputName.AddToParent(pnlHost, pad, y, maxW, 60dip)                 ' [M]
    inputName.LabelAbove = "Full Name"
    inputName.Placeholder = "Enter your name"
    inputName.Required = True
    y = y + inputName.GetComputedHeight + gap                          ' [M]

    ' --- Checkbox ---
    ' Text is the label setter on Checkbox/Toggle/Radio [P]. NO setLabelRight/setLabelLeft.
    chkAgree.Initialize(Me, "chkAgree")
    chkAgree.AddToParent(pnlHost, pad, y, maxW, 36dip)
    chkAgree.Text = "I agree to the terms"
    chkAgree.Checked = True                                            ' [P]
    y = y + chkAgree.GetComputedHeight + gap

    ' --- Toggle ---
    togNotify.Initialize(Me, "togNotify")
    togNotify.AddToParent(pnlHost, pad, y, maxW, 40dip)
    togNotify.Text = "Email notifications"                             ' [P] — same label property
    togNotify.Checked = False
    y = y + togNotify.GetComputedHeight + gap

    ' --- Submit button ---
    btnSave.Initialize(Me, "btnSave")
    btnSave.AddToParent(pnlHost, pad, y, maxW, 44dip)
    btnSave.Text = "Save"                                               ' [P]
    btnSave.Variant = "primary"                                        ' [P]
    btnSave.Block = True                                               ' [P] — full width
    y = y + btnSave.GetComputedHeight + gap

    pageScroll.AutoFit                         ' [M] — always last
End Sub

Private Sub btnSave_Click(Tag As Object)
    ' Validate each required input directly — the B4XPage demo methodology
    ' (B4XPageRange.bas:492-504, B4XPageRating.bas:510-522). Validate() [M] sets
    ' the error UI and returns True when valid/none. Do NOT route through
    ' B4XDaisyVariants.ValidateControls(List) or ValidateRequiredControls(Parent).
    Dim okName As Boolean = inputName.Validate
    If okName = False Then
        pageScroll.AutoFit
        Return
    End If
    ' getText As String [M]
    Dim name As String = inputName.getText
    Log("Saving: " & name)
End Sub
```

---

## 3. Navbar + Scrollable Body + Bottom Dock

Use when the page needs a top navbar and a bottom navigation dock. The navbar
and dock are pinned to `Root` (never scroll); the `pageScroll` is inset between
them so body content can never slide under either bar. This mirrors
`B4XPageNavScrollDock.bas` in the B4A demo project.

**Additional manifest refs
** `B4XDaisyNavbar.Initialize(Callback, EventName)` [M], `B4XDaisyNavbar.AddToParent(...)` [M], `B4XDaisyNavbar.BringToFront` [M], `B4XDaisyNavbar.View As B4XView` [M], `B4XDaisyNavbar.Title / Variant / BackVisible / BackLabel / BackSize` [P] (set `BackVisible = True` + `BackLabel` + `BackSize` instead of `AddBackButton`; the designer property builds the back button at design time, so do not call `AddBackButton` in code), `B4XDaisyDock.Initialize(Callback, EventName)` [M], `B4XDaisyDock.AddItem(Id, Text, SvgAssetFile) As Int` [M], `B4XDaisyDock.Size / ActiveIndex` [P], `B4XDaisyDock.View As B4XView` [M], `B4XDaisyPageScroll.SendToBack` [M], `B4XDaisyPageScroll.Base_Resize(Width, Height)` [M]


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI

    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost    As B4XView
    Private navbar     As B4XDaisyNavbar
    Private dock       As B4XDaisyDock
    Private NAVBAR_H   As Int
    Private DOCK_H     As Int
End Sub

Public Sub Initialize As Object
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    NAVBAR_H = 56dip
    DOCK_H   = 64dip

    ' Order matters: build the scroll layer first so it sits beneath the bars.
    BuildScroll
    BuildNavbar
    BuildDock
    RenderContent
End Sub

Private Sub B4XPage_Appear
    ' Hide the global AppLoader shown by B4XMainPage.ShowPageWithLoader [B4X]
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If navbar.IsInitialized Then navbar.SetLayoutAnimated(0, 0, 0, Width, NAVBAR_H)
    If dock.IsInitialized Then dock.View.SetLayoutAnimated(0, 0, Height - DOCK_H, Width, DOCK_H)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height - NAVBAR_H - DOCK_H)  ' [M]
        RenderContent
    End If
End Sub

' pageScroll is inset between the navbar and dock — not full-screen.
Private Sub BuildScroll
    Dim scrollTop As Int = NAVBAR_H
    Dim scrollH   As Int = Root.Height - NAVBAR_H - DOCK_H
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, scrollTop, Root.Width, scrollH)  ' [M]
    pageScroll.SendToBack                                            ' [M] — keep beneath bars
    pnlHost = pageScroll.Panel                                        ' [M]
End Sub

' Navbar pinned to the top of Root; BringToFront so it never scrolls under content.
Private Sub BuildNavbar
    navbar.Initialize(Me, "navbar")
    navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_H)             ' [M]
    navbar.BringToFront                                               ' [M]
    navbar.Title = "My App"                                           ' [P]
    navbar.Variant = "primary"                                        ' [P]
End Sub

' Dock pinned to the bottom of Root.
Private Sub BuildDock
    dock.Initialize(Me, "dock")
    dock.Size = "md"                                                  ' [P]
    dock.ActiveIndex = 0                                              ' [P] — highlight the page's own tab
    dock.AddToParent(Root, 0, Root.Height - DOCK_H, Root.Width, DOCK_H) ' [M]
    dock.AddItem("home",     "Home",     "home-solid.svg")           ' [M]
    dock.AddItem("settings", "Settings", "cog-6-tooth-solid.svg")
End Sub

Private Sub RenderContent
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear                                                  ' [M]

    Dim pad  As Int = pageScroll.PagePadding                          ' [M]
    Dim gap  As Int = pageScroll.YGap                                  ' [M]
    Dim maxW As Int = pageScroll.UsableWidth                           ' [M]
    Dim y    As Int = pad

    ' --- Body content (navbar/dock are NOT added here) ---
    y = pageScroll.AddSectionTitle("Overview", y, False) + gap
    ' ... add components here using y-cursor ...

    pageScroll.AutoFit                                                ' [M]
End Sub

Private Sub dock_ItemClick(ItemId As String)
    Select Case ItemId
        Case "home"
            ' handle home tap
        Case "settings"
            B4XPages.MainPage.ShowPageWithLoader("settings")           ' [M on B4XMainPage]
    End Select
End Sub
```

> Do NOT put the navbar inside `pageScroll.Panel` (it would scroll away) and do
> NOT extend `pnl.Height` by `dockH` to dodge the dock. Inset the scroll area
> between the bars instead, as above.

---

## 4. Tab Pages

Use when the page has multiple tabs of content.

**Additional manifest refs
** `B4XDaisyTab.Initialize(Callback, EventName)` [M], `B4XDaisyTab.AddItem(Id, Text, SvgIcon) As Int` [M], `B4XDaisyTab.setActiveIndex(Value)` [M], `B4XDaisyTab.GetComputedHeight As Int` [M], `B4XDaisyTab.Refresh` [M]


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private tabs       As B4XDaisyTab
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Appear
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")   ' [B4X]
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height)   ' [M]
        RenderPage(Width, Height)
    End If
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    ' Tab bar
    tabs.Initialize(Me, "tabs")
    tabs.setStyle("box")            ' setStyle(Value) [M]: default|box|lift|border
    tabs.AddTab("tab1", "Profile", "")
    tabs.AddTab("tab2", "Activity", "")
    tabs.AddTab("tab3", "Settings", "")
    tabs.setActiveIndex(1)
    tabs.AddToParent(pnl, pad, y, maxW, 44dip)
    tabs.Refresh
    y = y + tabs.GetComputedHeight + gap

    ' Placeholder content for active tab
    y = pageScroll.AddSectionTitle("Profile", y, False) + gap
    ' ... add tab content here ...

    pageScroll.AutoFit
End Sub

Private Sub tabs_ItemClick(ItemId As String, Index As Int)
    ' Re-render with new tab content
    RenderPage(Root.Width, Root.Height)
End Sub
```

---

## 5. Accordion (FAQ / Collapsible Sections)

**Manifest refs
** `B4XDaisyAccordion.Initialize(Callback, EventName)` [M], `B4XDaisyAccordion.AddItemBasic(ItemTag, Icon, Title) As B4XDaisyCollapse` [M], `B4XDaisyAccordion.setOpenOnlyOne(Value)` [M], `B4XDaisyAccordion.setIcon(Value)` [M], `B4XDaisyAccordion.AddToParent(...)` [M], `B4XDaisyAccordion.GetComputedHeight As Int` [M], `B4XDaisyAccordion.Refresh` [M]

> **IMPORTANT
** `B4XDaisyAccordion` has NO `GetItem` method. The only way to get a `B4XDaisyCollapse` reference is to capture the return value of `AddItemBasic`.


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private accordion  As B4XDaisyAccordion
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Appear
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")   ' [B4X]
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height)   ' [M]
        RenderPage(Width, Height)
    End If
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    y = pageScroll.AddSectionTitle("FAQ", y, False) + gap

    accordion.Initialize(Me, "accordion")
    accordion.setOpenOnlyOne(True)   ' setOpenOnlyOne(Value) [M]
    accordion.setIcon("arrow")       ' setIcon(Value) [M]: none|arrow|plus
    accordion.AddToParent(pnl, pad, y, maxW, 10dip)

    ' AddItemBasic(ItemTag, Icon, Title) As B4XDaisyCollapse [M]
    ' Icon is an SVG asset filename — use "" for no icon
    ' After adding, configure the returned collapse:
    '   setTitleText(Value) [M] — changes the header text
    '   setOpen(Value) [M] — opens or closes the panel
    '   CollapseContent As B4XDaisyCollapseContent [M] — returns the content sub-component
    '   getContentView As B4XView [M] — returns the raw content panel view for adding child views

    Dim c1 As B4XDaisyCollapse = accordion.AddItemBasic("q1", "", "What is B4XDaisyUIKit?")
    ' Note: SetContentText does NOT exist. To set plain text content, add a B4XDaisyText
    ' to the content panel returned by getContentView:
    Dim pnlC1 As B4XView = c1.getContentView   ' getContentView As B4XView [M]
    Dim txt1 As B4XDaisyText
    txt1.Initialize(Me, "txt1")
    txt1.setText("B4XDaisyUIKit is a native Android UI library inspired by DaisyUI.")
    txt1.setAutoResize(True)
    txt1.AddToParent(pnlC1, 8dip, 8dip, pnlC1.Width - 16dip, 30dip)

    Dim c2 As B4XDaisyCollapse = accordion.AddItemBasic("q2", "", "Which platform does it support?")
    Dim pnlC2 As B4XView = c2.getContentView
    Dim txt2 As B4XDaisyText
    txt2.Initialize(Me, "txt2")
    txt2.setText("Android (B4A) with B4XPages.")
    txt2.setAutoResize(True)
    txt2.AddToParent(pnlC2, 8dip, 8dip, pnlC2.Width - 16dip, 30dip)

    accordion.Refresh   ' Refresh [M]
    y = y + accordion.GetComputedHeight + gap

    pageScroll.AutoFit
End Sub
```

---

## 6. Confirm Dialog with SweetAlert

**Manifest refs
** `B4XDaisySweetAlert.Initialize(Callback, Parent As B4XView, EventName)` [M], `B4XDaisySweetAlert.setTitle(Value)` [M], `B4XDaisySweetAlert.setText(Value)` [M], `B4XDaisySweetAlert.setIcon(Value)` [M], `B4XDaisySweetAlert.setShowConfirmButton(Value)` [M], `B4XDaisySweetAlert.setShowDenyButton(Value)` [M], `B4XDaisySweetAlert.setConfirmButtonText(Value)` [M], `B4XDaisySweetAlert.setDenyButtonText(Value)` [M], `B4XDaisySweetAlert.ShowAsync As ResumableSub` [M]

> The event raised is `Result (Result As B4XDaisySweetAlertResult)`. Use `Wait For` targeting that event name.


```vb
' In Class_Globals:
Private swal As B4XDaisySweetAlert

' In B4XPage_Created:
swal.Initialize(Me, Root, "swal")   ' 3 params — Callback, Parent, EventName [M]

' Called from a button or any handler:
Private Sub DeleteRecord_Click(Tag As Object)
    swal.setTitle("Delete?")
    swal.setText("This action cannot be undone.")
    swal.setIcon("warning")                    ' [M]: none|warning|error|success|info|question|loading
    swal.setShowConfirmButton(True)
    swal.setConfirmButtonText("Yes, delete")
    swal.setShowDenyButton(True)
    swal.setDenyButtonText("Cancel")

    ' Wait For targets the event name suffix "Result" from the EventName "swal"
    Wait For (swal.ShowAsync) swal_Result (result As B4XDaisySweetAlertResult)
    If result.IsConfirmed Then
        ' Perform the delete
    End If
End Sub
```

---

## 7. KPI Dashboard Page

**Manifest refs
** `B4XDaisyStat.Initialize(Callback, EventName)` [M], `B4XDaisyStat.setOrientation(Value)` [M], `B4XDaisyStat.setShadow(Value)` [M], `B4XDaisyStat.setRounded(Value)` [M], `B4XDaisyStat.AddItem(Item As B4XDaisyStatItem)` [M], `B4XDaisyStat.Refresh` [M], `B4XDaisyStat.GetComputedHeight As Int` [M], `B4XDaisyStatItem.Initialize(Callback, EventName)` [M], `B4XDaisyStatItem.setTitle(Value)` [M], `B4XDaisyStatItem.setValue(Value)` [M], `B4XDaisyStatItem.setDescription(Value)` [M], `B4XDaisyStatItem.setFigureType(Value)` [M — allowed
none|svg|image|radial], `B4XDaisyStatItem.setFigureSource(Value)` [M], `B4XDaisyStatItem.setFigureColor(Value)` [M], `B4XDaisyStatItem.setFigureValue(Value As Int)` [M]


```vb
#IgnoreWarnings:12,9
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private statRow    As B4XDaisyStat
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Appear
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")   ' [B4X]
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height)   ' [M]
        RenderPage(Width, Height)
    End If
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    ' KPI stats row
    statRow.Initialize(Me, "statRow")
    statRow.setOrientation("horizontal")   ' horizontal|vertical [M]
    statRow.setShadow("md")                ' shadow tokens [M]
    statRow.setRounded("box")              ' rounded tokens [M]

    Dim s1 As B4XDaisyStatItem
    s1.Initialize(Me, "s1")
    s1.setTitle("Revenue")
    s1.setValue("$12,450")
    s1.setDescription("+14% this month")
    s1.setFigureType("svg")                ' none|svg|image|radial [M]
    s1.setFigureSource("bolt-solid.svg")   ' SVG file in Assets/Files [M]
    s1.setFigureColor("success")           ' variant token [M]
    statRow.AddItem(s1)

    Dim s2 As B4XDaisyStatItem
    s2.Initialize(Me, "s2")
    s2.setTitle("Completion")
    s2.setValue("78%")
    s2.setDescription("Target: 90%")
    s2.setFigureType("radial")
    s2.setFigureValue(78)                  ' setFigureValue(Value As Int) [M — for radial type]
    s2.setFigureColor("primary")
    statRow.AddItem(s2)

    statRow.AddToParent(pnl, pad, y, maxW, 120dip)
    statRow.Refresh                        ' Refresh [M]
    y = y + statRow.GetComputedHeight + gap

    pageScroll.AutoFit
End Sub
```

---

## Collapse Content Handling

`B4XDaisyCollapse` does not have a direct text content setter method. As shown in Scaffold 5, get the content container via `c1.getContentView As B4XView` and add child views (such as `B4XDaisyText`) to that panel.
