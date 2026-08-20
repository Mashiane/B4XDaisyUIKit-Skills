# navbar (`B4XDaisyNavbar`)

App top bar with logo/title, action items, menu trigger, and optional search.

## 1. Overview
- **Class**: `B4XDaisyNavbar`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyNavbar.bas`
- **Web DaisyUI Mapping**: `.navbar` → `B4XDaisyNavbar`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim nv As B4XDaisyNavbar
nv.Initialize(Me, "nv")
nv.AddToParent(Root, 0, 0, Root.Width, 56dip)
nv.Title = "App Header"
nv.BackVisible = True
nv.BackLabel = "Back"
```

## 3. Native Composition Rules & Gotchas
- Top application header navigation bar with title, back button, and action buttons.
- Set `Title` and `ShowBackButton = True` for sub-page navigation.
- Add action icons using `AddStartAction(Id, IconAsset)` and `AddEndAction(Id, IconAsset)`.
- Handle navigation taps in `BackClick` and `ActionClick (ActionId As String)` events.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Variant | Variant | String | none | none|primary|secondary|accent|neutral|info|success|warning|error |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| Shadow | Shadow | String | sm | none|sm|md|lg|xl|2xl |
| Rounded | Rounded | String | none | theme|none|sm|rounded|md|lg|xl|2xl|3xl|full |
| Glass | Glass | Boolean | False |  |
| GlassSize | Glass Size | String | none | none|glass-xs|glass-sm|glass-md|glass-lg|glass-xl|glass-2xl |
| Padding | Padding | Int | 8 |  |
| Width | Width | String | full |  |
| Height | Height | String | h-64 |  |
| Title | Title | String |  |  |
| TitlePosition | Title Position | String | start | start|center|end |
| TitleVisible | Title Visible | Boolean | True |  |
| HamburgerVisible | Hamburger Visible | Boolean | False |  |
| HamburgerSize | Hamburger Size | Int | 48 |  |
| BackVisible | Back Visible | Boolean | False |  |
| BackSize | Back Size | Int | 48 |  |
| BackLabel | Back Label | String |  |  |
| BackNudge | Back Nudge | Int | 10 |  |
| LogoImage | Logo Image | String |  |  |
| LogoWidth | Logo Width | Int | 32 |  |
| LogoHeight | Logo Height | Int | 32 |  |
| LogoMask | Logo Mask | String | none | none|mask-circle|mask-squircle|mask-heart|mask-hexagon|mask-decagon|mask-pentagon|mask-diamond|mask-square |
| LogoVisible | Logo Visible | Boolean | True |  |
| LogoPosition | Logo Position | String | start | start|center|end |

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
- `getBackgroundColor As Int`
- `getBackLabel As String`
- `getBackNudge As Int`
- `getBackSize As Int`
- `getBackVisible As Boolean`
- `GetCenterPanel As B4XView`
- `GetComputedHeight As Int`
- `GetEndPanel As B4XView`
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
- `GetStartPanel As B4XView`
- `getTag As Object`
- `getTextColor As Int`
- `getTitle As String`
- `getTitlePosition As String`
- `getTitleVisible As Boolean`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `Hamburger_Changed(sState As String, bChecked As Boolean)`
- `Initialize(oCallback As Object, sEventName As String)`
- `LogoAvatar_Click`
- `RemoveViewFromParent`
- `SendToBack`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBackLabel(sValue As String)`
- `setBackNudge(iValue As Int)`
- `setBackSize(iValue As Int)`
- `setBackVisible(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setGlassSize(sValue As String)`
- `setHamburgerChecked(bValue As Boolean)`
- `setHamburgerSize(iValue As Int)`
- `setHamburgerVisible(bValue As Boolean)`
- `setHeight(oValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `ToggleHamburger`
- `View As B4XView`


## 7. Public Fields
- `BackButton As B4XDaisyButton`
- `LogoAvatar As B4XDaisyAvatar`
- `mBase As B4XView`
