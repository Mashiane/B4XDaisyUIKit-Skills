# navbar (`B4XDaisyNavbar`)

DaisyUI `Navbar` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyNavbar`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyNavbar.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyNavbar.bas)
- **Verified Demo Source**: B4XPageColorWheel.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDualRange.bas, B4XPageEnjoyHint.bas, B4XPageFabNavbar.bas, B4XPageNavScrollDock.bas, B4XPageNavbar.bas, B4XPagePDFView.bas, B4XPagePicker.bas, B4XPageSheetModal.bas
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
| `Variant` | Variant | `String` | none | none|primary|secondary|accent|neutral|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `Shadow` | Shadow | `String` | sm | none|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | none | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| `Glass` | Glass | `Boolean` | False |  |
| `GlassSize` | Glass Size | `String` | none | none|glass-xs|glass-sm|glass-md|glass-lg|glass-xl|glass-2xl |
| `Padding` | Padding | `Int` | 8 |  |
| `Width` | Width | `String` | full |  |
| `Height` | Height | `String` | h-64 |  |
| `Title` | Title | `String` |  |  |
| `TitlePosition` | Title Position | `String` | start | start|center|end |
| `TitleVisible` | Title Visible | `Boolean` | True |  |
| `HamburgerVisible` | Hamburger Visible | `Boolean` | False |  |
| `HamburgerSize` | Hamburger Size | `Int` | 48 |  |
| `BackVisible` | Back Visible | `Boolean` | False |  |
| `BackSize` | Back Size | `Int` | 48 |  |
| `BackLabel` | Back Label | `String` |  |  |
| `BackNudge` | Back Nudge | `Int` | 10 |  |
| `LogoImage` | Logo Image | `String` |  |  |
| `LogoWidth` | Logo Width | `Int` | 32 |  |
| `LogoHeight` | Logo Height | `Int` | 32 |  |
| `LogoMask` | Logo Mask | `String` | none | none|mask-circle|mask-squircle|mask-heart|mask-hexagon|mask-decagon|mask-pentagon|mask-diamond|mask-square |
| `LogoVisible` | Logo Visible | `Boolean` | True |  |
| `LogoPosition` | Logo Position | `String` | start | start|center|end |

## 5. Declared Events
- `Click (Payload As Object)`
- `Opened`
- `Closed`
- `Back (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetStartPanel As B4XView`
- `GetCenterPanel As B4XView`
- `GetEndPanel As B4XView`
- `AddViewToStart(View As B4XView, Width As Int, Height As Int)`
- `AddViewToCenter(View As B4XView, Width As Int, Height As Int)`
- `AddViewToEnd(View As B4XView, Width As Int, Height As Int)`
- `ClearStartSlot`
- `ClearCenterSlot`
- `ClearEndSlot`
- `AddTitleToCenter(Title As String)`
- `AddTitleToStart(Title As String)`
- `AddTitleToEnd(Title As String)`
- `AddBackButton(SizeDip As Int, Label As String)`
- `BackBtn_Click(Tag As Object)`
- `AddHamburger(SizeDip As Int)`
- `Hamburger_Changed(State As String, Checked As Boolean)`
- `LogoAvatar_Click`
- `AddLogo(ImagePath As String, WidthDip As Int, HeightDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddAvatarToEnd(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddAvatarToStart(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddSVGIconToEnd(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon`
- `AddSVGIconToStart(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon`
- `AddButtonIconToStart(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonIconToEnd(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonIconToCenter(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToStart(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToCenter(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToEnd(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddFabToEnd(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `AddFabToStart(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `AddFabToCenter(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `setVariant(Value As String)`
- `getVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `setGlassSize(Value As String)`
- `getGlassSize As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setLogoImage(Value As String)`
- `getLogoImage As String`
- `setLogoWidth(Value As Int)`
- `getLogoWidth As Int`
- `setLogoHeight(Value As Int)`
- `getLogoHeight As Int`
- `setLogoMask(Value As String)`
- `getLogoMask As String`
- `setLogoVisible(Value As Boolean)`
- `getLogoVisible As Boolean`
- `setLogoPosition(Value As String)`
- `getLogoPosition As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTitle(Value As String)`
- `getTitle As String`
- `setTitlePosition(Value As String)`
- `getTitlePosition As String`
- `setTitleVisible(Value As Boolean)`
- `getTitleVisible As Boolean`
- `setHamburgerVisible(Value As Boolean)`
- `getHamburgerVisible As Boolean`
- `setHamburgerSize(Value As Int)`
- `getHamburgerSize As Int`
- `ToggleHamburger`
- `setHamburgerChecked(Value As Boolean)`
- `getHamburgerChecked As Boolean`
- `getHamburgerSwap As B4XDaisySwap`
- `setBackVisible(Value As Boolean)`
- `getBackVisible As Boolean`
- `setBackSize(Value As Int)`
- `getBackSize As Int`
- `setBackLabel(Value As String)`
- `getBackLabel As String`
- `setBackNudge(Value As Int)`
- `getBackNudge As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `View As B4XView`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SendToBack`
- `BringToFront`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`
- `BackButton As B4XDaisyButton`
- `LogoAvatar As B4XDaisyAvatar`

