# navbar (`B4XDaisyNavbar`)

DaisyUI `Navbar` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyNavbar`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyNavbar.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas (lines 31–31), B4XPageDrawer.bas (lines 16–16), B4XPageDrawerRail.bas (lines 16–16), B4XPageDrawerTree.bas (lines 16–16), B4XPageDualRange.bas (lines 17–17), B4XPageEnjoyHint.bas (lines 14–14), B4XPageFabNavbar.bas (lines 13–13), B4XPageNavScrollDock.bas (lines 37–37), B4XPageNavbar.bas (lines 16–559), B4XPagePDFView.bas (lines 11–11), B4XPagePicker.bas (lines 444–444), B4XPageSheetModal.bas (lines 142–142)
- **Web DaisyUI Mapping**: `.navbar` → `B4XDaisyNavbar`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``navbar`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``navbar-start`, `navbar-center`, `navbar-end`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |

### Web DaisyUI HTML Syntax
```html
<div class="navbar">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddNavbarTitleOnly
	Dim nb As B4XDaisyNavbar
	nb.Initialize(Me, "nb1")
	Dim nbView As B4XView = nb.AddToParent(pnlContent, 10dip, currentY, Root.Width - 20dip, 64dip)
	nb.Title = "Anele Mbanga (Mashy)"
	currentY = currentY + 64dip + gap

	' --- FAB example: fixed bottom-end placement on Root ---
	' Using PlacementMode=fixed keeps the FAB at a stable screen position
	' regardless of the ScrollView scroll offset. This is the correct
	' approach when the navbar lives inside a scrollable container.
	If nb1Fab.IsInitialized = False Then
		nb1Fab.Initialize(Me, "nb1_fab")
		nb1Fab.PlacementMode = "fixed"
		nb1Fab.Placement = "bottom-end"
		nb1Fab.TriggerText = ""
		nb1Fab.TriggerIconName = "plus-solid.svg"
		nb1Fab.TriggerVariant = "primary"
		nb1Fab.TriggerCircle = True
		nb1Fab.UseCloseAction = True
		nb1Fab.CloseActionText = ""
		nb1Fab.CloseActionVariant = "error"
		nb1Fab.CloseActionIconName = "xmark-solid.svg"
		nb1Fab.AddAction("camera", "neutral", "camera-solid.svg")
		nb1Fab.AddAction("share", "info", "upload-solid.svg")
		nb1Fab.AddToParent(Root, 0, 0, 56dip, 56dip)
		nb1Fab.BringToFront
	End If
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyNavbar` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `GetStartPanel, GetCenterPanel, GetEndPanel` (+ 59 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Variant` | Variant | `String` | `none` | none|primary|secondary|accent|neutral|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `Shadow` | Shadow | `String` | `sm` | none|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | `none` | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| `Glass` | Glass | `Boolean` | `False` |  |
| `GlassSize` | Glass Size | `String` | `none` | none|glass-xs|glass-sm|glass-md|glass-lg|glass-xl|glass-2xl |
| `Padding` | Padding | `Int` | `8` |  |
| `Width` | Width | `String` | `full` |  |
| `Height` | Height | `String` | `h-64` |  |
| `Title` | Title | `String` | `` |  |
| `TitlePosition` | Title Position | `String` | `start` | start|center|end |
| `TitleVisible` | Title Visible | `Boolean` | `True` |  |
| `HamburgerVisible` | Hamburger Visible | `Boolean` | `False` |  |
| `HamburgerSize` | Hamburger Size | `Int` | `48` |  |
| `BackVisible` | Back Visible | `Boolean` | `False` |  |
| `BackSize` | Back Size | `Int` | `48` |  |
| `BackLabel` | Back Label | `String` | `` |  |
| `BackNudge` | Back Nudge | `Int` | `10` |  |
| `LogoImage` | Logo Image | `String` | `` |  |
| `LogoWidth` | Logo Width | `Int` | `32` |  |
| `LogoHeight` | Logo Height | `Int` | `32` |  |
| `LogoMask` | Logo Mask | `String` | `none` | none|mask-circle|mask-squircle|mask-heart|mask-hexagon|mask-decagon|mask-pentagon|mask-diamond|mask-square |
| `LogoVisible` | Logo Visible | `Boolean` | `True` |  |
| `LogoPosition` | Logo Position | `String` | `start` | start|center|end |

## 5. Declared Events
- `Click (Payload As Object)`
- `Opened`
- `Closed`
- `Back (Tag As Object)`

## 6. Public Methods & APIs
- `AddAvatarToEnd(sID As String, sImagePath As String, iSizeDip As Int, sMask As String) As B4XDaisyAvatar`
- `AddAvatarToStart(sID As String, sImagePath As String, iSizeDip As Int, sMask As String) As B4XDaisyAvatar`
- `AddBackButton(iSizeDip As Int, sLabel As String)`
- `AddButtonIconToCenter(sID As String, iSizeDip As Int, sIcon As String, iColor As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddButtonIconToEnd(sID As String, iSizeDip As Int, sIcon As String, iColor As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddButtonIconToStart(sID As String, iSizeDip As Int, sIcon As String, iColor As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddButtonToCenter(sID As String, sButtonText As String, sVariant As String, iWidthDip As Int, iHeightDip As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddButtonToEnd(sID As String, sButtonText As String, sVariant As String, iWidthDip As Int, iHeightDip As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddButtonToStart(sID As String, sButtonText As String, sVariant As String, iWidthDip As Int, iHeightDip As Int, bGhost As Boolean) As B4XDaisyButton`
- `AddFabToCenter(sID As String, vOverlayHost As B4XView, iSizeDip As Int) As B4XDaisyFab`
- `AddFabToEnd(sID As String, vOverlayHost As B4XView, iSizeDip As Int) As B4XDaisyFab`
- `AddFabToStart(sID As String, vOverlayHost As B4XView, iSizeDip As Int) As B4XDaisyFab`
- `AddHamburger(iSizeDip As Int)`
- `AddLogo(sImagePath As String, iWidthDip As Int, iHeightDip As Int, sMask As String) As B4XDaisyAvatar`
- `AddSVGIconToEnd(sID As String, sAssetPath As String, iSizeDip As Int, iColor As Int) As B4XDaisySvgIcon`
- `AddSVGIconToStart(sID As String, sAssetPath As String, iSizeDip As Int, iColor As Int) As B4XDaisySvgIcon`
- `AddTitleToCenter(sTitle As String)`
- `AddTitleToEnd(sTitle As String)`
- `AddTitleToStart(sTitle As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToCenter(vView As B4XView, iWidth As Int, iHeight As Int)`
- `AddViewToEnd(vView As B4XView, iWidth As Int, iHeight As Int)`
- `AddViewToStart(vView As B4XView, iWidth As Int, iHeight As Int)`
- `BackBtn_Click(oTag As Object)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearCenterSlot`
- `ClearEndSlot`
- `ClearStartSlot`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetCenterPanel As B4XView`
- `GetComputedHeight As Int`
- `GetEndPanel As B4XView`
- `GetStartPanel As B4XView`
- `Hamburger_Changed(sState As String, bChecked As Boolean)`
- `Initialize(oCallback As Object, sEventName As String)`
- `LogoAvatar_Click`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ToggleHamburger`
- `View As B4XView`
- `getBackLabel As String`
- `getBackNudge As Int`
- `getBackSize As Int`
- `getBackVisible As Boolean`
- `getBackgroundColor As Int`
- `getGlass As Boolean`
- `getGlassSize As String`
- `getHamburgerChecked As Boolean`
- `getHamburgerSize As Int`
- `getHamburgerSwap As B4XDaisySwap`
- `getHamburgerVisible As Boolean`
- `getHeight As Float`
- `getLeft As Int`
- `getLogoHeight As Int`
- `getLogoImage As String`
- `getLogoMask As String`
- `getLogoPosition As String`
- `getLogoVisible As Boolean`
- `getLogoWidth As Int`
- `getPadding As Int`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTitle As String`
- `getTitlePosition As String`
- `getTitleVisible As Boolean`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `setBackLabel(sValue As String)`
- `setBackNudge(iValue As Int)`
- `setBackSize(iValue As Int)`
- `setBackVisible(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setGlass(bValue As Boolean)`
- `setGlassSize(sValue As String)`
- `setHamburgerChecked(bValue As Boolean)`
- `setHamburgerSize(iValue As Int)`
- `setHamburgerVisible(bValue As Boolean)`
- `setHeight(oValue As Object)`
- `setLeft(iValue As Int)`
- `setLogoHeight(iValue As Int)`
- `setLogoImage(sValue As String)`
- `setLogoMask(sValue As String)`
- `setLogoPosition(sValue As String)`
- `setLogoVisible(bValue As Boolean)`
- `setLogoWidth(iValue As Int)`
- `setPadding(iValue As Int)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTitle(sValue As String)`
- `setTitlePosition(sValue As String)`
- `setTitleVisible(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

