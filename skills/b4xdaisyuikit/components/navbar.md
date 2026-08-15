# navbar (`B4XDaisyNavbar`)

App top bar with logo/title, action items, menu trigger, and optional search.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyNavbar`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyNavbar.bas`
- **Verified Demos**: `B4XPageColorWheel.bas, B4XPageEnjoyHint.bas, B4XPageFabNavbar.bas, B4XPageNavbar.bas, B4XPageNavScrollDock.bas, B4XPagePDFView.bas, B4XPagePicker.bas, B4XPageSheetModal.bas`
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
- `AddAvatarToEnd(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddAvatarToStart(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddBackButton(SizeDip As Int, Label As String)`
- `AddButtonIconToCenter(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonIconToEnd(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonIconToStart(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToCenter(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToEnd(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddButtonToStart(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
- `AddFabToCenter(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `AddFabToEnd(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `AddFabToStart(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`
- `AddHamburger(SizeDip As Int)`
- `AddLogo(ImagePath As String, WidthDip As Int, HeightDip As Int, Mask As String) As B4XDaisyAvatar`
- `AddSVGIconToEnd(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon`
- `AddSVGIconToStart(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon`
- `AddTitleToCenter(Title As String)`
- `AddTitleToEnd(Title As String)`
- `AddTitleToStart(Title As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToCenter(v As B4XView, Width As Int, Height As Int)`
- `AddViewToEnd(v As B4XView, Width As Int, Height As Int)`
- `AddViewToStart(v As B4XView, Width As Int, Height As Int)`
- `BackBtn_Click(Tag As Object)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearCenterSlot`
- `ClearEndSlot`
- `ClearStartSlot`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetCenterPanel As B4XView`
- `GetComputedHeight As Int`
- `GetEndPanel As B4XView`
- `GetStartPanel As B4XView`
- `Hamburger_Changed(State As String, Checked As Boolean)`
- `Initialize(Callback As Object, EventName As String)`
- `LogoAvatar_Click`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getBackLabel As String`
- `getBackNudge As Int`
- `getBackSize As Int`
- `getBackVisible As Boolean`
- `getBackgroundColor As Int`
- `getGlass As Boolean`
- `getGlassSize As String`
- `getHamburgerSize As Int`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Float`
- `setBackLabel(Value As String)`
- `setBackNudge(Value As Int)`
- `setBackSize(Value As Int)`
- `setBackVisible(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setGlass(Value As Boolean)`
- `setGlassSize(Value As String)`
- `setHamburgerSize(Value As Int)`
- `setHamburgerVisible(Value As Boolean)`
- `setHeight(Value As Object)`
- `setLeft(Value As Int)`
- `setLogoHeight(Value As Int)`
- `setLogoImage(Value As String)`
- `setLogoMask(Value As String)`
- `setLogoPosition(Value As String)`
- `setLogoVisible(Value As Boolean)`
- `setLogoWidth(Value As Int)`
- `setPadding(Value As Int)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTitle(Value As String)`
- `setTitlePosition(Value As String)`
- `setTitleVisible(Value As Boolean)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `BackButton As B4XDaisyButton`
- `LogoAvatar As B4XDaisyAvatar`
- `mBase As B4XView`
