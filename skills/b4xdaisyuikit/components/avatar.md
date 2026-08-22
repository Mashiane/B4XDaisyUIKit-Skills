# avatar (`B4XDaisyAvatar`)

DaisyUI `Avatar` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyAvatar`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyAvatar.bas`
- **Verified Demo Source**: B4XPageAvatar.bas (lines 20–1211), B4XPageDropdown.bas (lines 345–345), B4XPageEnjoyHint.bas (lines 34–34), B4XPageIndicator.bas (lines 263–263), B4XPageList.bas (lines 201–397), B4XPageMask.bas (lines 52–675), B4XPageNavbar.bas (lines 241–241), B4XPageScrollDemo.bas (lines 51–51), B4XPageStack.bas (lines 181–200), B4XPageStat.bas (lines 355–355)
- **Web DaisyUI Mapping**: `.avatar` → `B4XDaisyAvatar`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub CreateSamples As ResumableSub
	'Clear and recreate all sample cards from scratch.
	AvatarCards.Clear
	AvatarById.Clear
	pnlHost.RemoveAllViews
	'Sample: sz-24 rounded
	Dim card1 As B4XView = xui.CreatePanel("")
	card1.SetColorAndBorder(xui.Color_White, 1dip, xui.Color_RGB(226, 232, 240), 14dip)
	pnlHost.AddView(card1, 0, 0, 10dip, 10dip)

	Dim avatar1 As B4XDaisyAvatar
	avatar1.Initialize(Me, "avatar")
	Dim avatarView1 As B4XView = avatar1.AddToParent(card1, 0, 0, 120dip, 120dip)

	
	avatar1.SetImage("face11.jpg")
	avatar1.SetWidth("24")
	avatar1.SetHeight("24")
	avatar1.SetCenterOnParent(True)
	avatar1.SetVariant("none")
	avatar1.SetStatus("none")
	avatar1.SetAvatarMask("rounded")
	avatar1.SetShadow("none")
	avatar1.SetRingOffset(4dip)
	avatar1.SetShowOnline(False)

'	Dim avatarView1 As B4XView = avatar1.AddToParent(card1, 0, 0, 120dip, 120dip)
	avatarView1.Tag = "sz-24 rounded"

	Dim lblTitle1 As Label
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAvatar` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddViewToContent, getVariant, getShadow` (+ 58 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Image` | Image Path | `String` | `mashymain.jpg` |  |
| `Mask` | Mask | `String` | `circle` | circle|square|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| `Rounded` | Rounded | `String` | `rounded-full` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Width` | Width | `String` | `w-10` |  |
| `Height` | Height | `String` | `h-10` |  |
| `AvatarType` | Avatar Type | `String` | `image` | image|svg|text |
| `PlaceHolder` | Placeholder | `String` | `` |  |
| `TextSize` | Text Size | `String` | `text-sm` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `CenterOnParent` | Center On Parent | `Boolean` | `True` |  |
| `ChatImage` | Chat Image Mode | `Boolean` | `False` |  |
| `Status` | Status | `String` | `none` | none|online|offline |
| `ShowOnline` | Show Online Indicator | `Boolean` | `False` |  |
| `UseVariantStatusColors` | Use Variant Colors | `Boolean` | `False` |  |
| `OnlineColor` | Online Color | `Color` | `0x00000000` |  |
| `OfflineColor` | Offline Color | `Color` | `0x00000000` |  |
| `RingColor` | Ring Color | `Color` | `0x00000000` |  |
| `RingWidth` | Ring Width | `Int` | `0` |  |
| `RingOffset` | Ring Offset | `Int` | `0` |  |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `ResizeMode` | Resize Mode | `String` | `FILL_NO_DISTORTIONS` | FIT|FILL|FILL_NO_DISTORTIONS|NONE |
| `BlurRadius` | Blur Radius | `Int` | `0` |  |
| `Glass` | Glass Effect | `Boolean` | `False` |  |

## 5. Declared Events
- `Click`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `Release`
- `RemoveViewFromParent`
- `ResizeToParent(vB4xV As B4XView)`
- `SendToBack`
- `SetBitmapAndFill (vImageView As B4XView, bmpBmp As B4XBitmap)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `applyActiveTheme`
- `getAvatar As String`
- `getAvatarHeight As Float`
- `getAvatarMask As String`
- `getAvatarOfflineColor As Int`
- `getAvatarOnlineColor As Int`
- `getAvatarStatus As String`
- `getAvatarTag As Object`
- `getAvatarType As String`
- `getAvatarWidth As Float`
- `getBackgroundColor As Int`
- `getBlurRadius As Int`
- `getCenterOnParent As Boolean`
- `getChatImage As Boolean`
- `getClickable As Boolean`
- `getGlass As Boolean`
- `getHeight As Float`
- `getImage As String`
- `getLeft As Int`
- `getMargin As String`
- `getMask As String`
- `getOfflineColor As Int`
- `getOnlineColor As Int`
- `getPadding As String`
- `getPlaceHolder As String`
- `getResizeMode As String`
- `getRingColor As Int`
- `getRingOffset As Float`
- `getRingWidth As Float`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getShowOnline As Boolean`
- `getStatus As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTextSize As String`
- `getTop As Int`
- `getUseVariantStatusColors As Boolean`
- `getVariant As String`
- `getVariantPalette As Map`
- `getVisible As Boolean`
- `getWidth As Float`
- `setAvatar(sPath As String)`
- `setAvatarBitmap(bmpBmp As B4XBitmap, oTag As Object)`
- `setAvatarBorder(iColor As Int, fWidth As Float)`
- `setAvatarBorderInset(fInset As Float)`
- `setAvatarHeight(oValue As Object)`
- `setAvatarMask(sMaskName As String)`
- `setAvatarOnlineColor(iOnlineColor As Int)`
- `setAvatarOnlineColorVariant(sVariantName As String)`
- `setAvatarSize(oSize As Object)`
- `setAvatarStatus(sMode As String)`
- `setAvatarStatusColors(iOnlineColor As Int, iOfflineColor As Int)`
- `setAvatarType(sValue As String)`
- `setAvatarWidth(oValue As Object)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBlurRadius(iValue As Int)`
- `setCenterOnParent(bValue As Boolean)`
- `setChatImage(bValue As Boolean)`
- `setClickable(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setGlobalMask(sMaskName As String)`
- `setHeight(oValue As Object)`
- `setImage(sPath As String)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setMask(sValue As String)`
- `setOfflineColor(iOfflineColor As Int)`
- `setOnlineColor(iOnlineColor As Int)`
- `setOnlineColorVariant(sVariantName As String)`
- `setPadding(sValue As String)`
- `setPlaceHolder(sValue As String)`
- `setResizeMode(sValue As String)`
- `setRingColor(iColor As Int)`
- `setRingColorVariant(sVariantName As String)`
- `setRingOffset(fOffset As Float)`
- `setRingWidth(fWidth As Float)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setShowOnline(bShow As Boolean)`
- `setStatus(sMode As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setUseVariantStatusColors(bEnabled As Boolean)`
- `setVariant(sValue As String)`
- `setVariantPalette(mPalette As Map)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

