# avatar (`B4XDaisyAvatar`)

Displays a user image, SVG, or initials in a circular/shaped frame with optional ring, online status indicator, and mask shapes.

## 1. Overview
- **Class**: `B4XDaisyAvatar`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAvatar.bas`
- **Web DaisyUI Mapping**: `.avatar` → `B4XDaisyAvatar`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim av As B4XDaisyAvatar
av.Initialize(Me, "av")
av.AddToParent(pnlHost, pad, y, 48dip, 48dip)
av.AvatarType = "image"
av.setImage("user.jpg")
av.Mask = "circle"
av.setStatus("online")
av.setRingWidth(2)
y = y + av.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Use `Mask` property (`"circle"`, `"squircle"`, `"hexagon"`, `"heart"`, `"diamond"`) for shape clipping.
- Set `Online = True` to render a green presence indicator dot on the avatar corner.
- Set `PlaceholderText = "JD"` with `Variant = "neutral"` when no user photo is available.
- For overlapping avatar stacks, wrap avatars inside `B4XDaisyAvatarGroup`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Image | Image Path | String | mashymain.jpg |  |
| Mask | Mask | String | circle | circle|square|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| RoundedBox | Rounded Box | Boolean | False |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Width | Width | String | w-10 |  |
| Height | Height | String | h-10 |  |
| AvatarType | Avatar Type | String | image | image|svg|text |
| PlaceHolder | Placeholder | String |  |  |
| TextSize | Text Size | String | text-sm |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| CenterOnParent | Center On Parent | Boolean | True |  |
| ChatImage | Chat Image Mode | Boolean | False |  |
| Status | Status | String | none | none|online|offline |
| ShowOnline | Show Online Indicator | Boolean | False |  |
| UseVariantStatusColors | Use Variant Colors | Boolean | False |  |
| OnlineColor | Online Color | Color | 0x00000000 |  |
| OfflineColor | Offline Color | Color | 0x00000000 |  |
| RingColor | Ring Color | Color | 0x00000000 |  |
| RingWidth | Ring Width | Int | 0 |  |
| RingOffset | Ring Offset | Int | 0 |  |
| Clickable | Clickable | Boolean | True |  |
| ResizeMode | Resize Mode | String | FILL_NO_DISTORTIONS | FIT|FILL|FILL_NO_DISTORTIONS|NONE |
| BlurRadius | Blur Radius | Int | 0 |  |
| Glass | Glass Effect | Boolean | False |  |

## 5. Declared Events
- `Click`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `applyActiveTheme`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
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
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Release`
- `RemoveViewFromParent`
- `ResizeToParent(vB4xV As B4XView)`
- `SendToBack`
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
- `SetBitmapAndFill(vImageView As B4XView, bmpBmp As B4XBitmap)`
- `setBlurRadius(iValue As Int)`
- `setCenterOnParent(bValue As Boolean)`
- `setChatImage(bValue As Boolean)`
- `setClickable(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setGlobalMask(sMaskName As String)`
- `setHeight(oValue As Object)`
- `setImage(sPath As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
