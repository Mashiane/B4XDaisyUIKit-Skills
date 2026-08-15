# avatar (`B4XDaisyAvatar`)

Displays a user image, SVG, or initials in a circular/shaped frame with optional ring, online status indicator, and mask shapes.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAvatar`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAvatar.bas`
- **Verified Demos**: `B4XPageAvatar.bas, B4XPageAvatarGroup.bas, B4XPageDropdown.bas, B4XPageEnjoyHint.bas, B4XPageIndicator.bas, B4XPageList.bas, B4XPageMask.bas, B4XPageNavbar.bas, B4XPageScrollDemo.bas, B4XPageStack.bas, B4XPageStackPhotos.bas, B4XPageStat.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Release`
- `RemoveViewFromParent`
- `ResizeToParent(b4xV As B4XView)`
- `SendToBack`
- `SetBitmapAndFill (ImageView As B4XView, Bmp As B4XBitmap)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Float`
- `setAvatar(Path As String)`
- `setAvatarBitmap(bmp As B4XBitmap, Tag As Object)`
- `setAvatarBorder(Color As Int, Width As Float)`
- `setAvatarBorderInset(Inset As Float)`
- `setAvatarHeight(Value As Object)`
- `setAvatarMask(MaskName As String)`
- `setAvatarOnlineColor(OnlineColor As Int)`
- `setAvatarOnlineColorVariant(VariantName As String)`
- `setAvatarSize(Size As Object)`
- `setAvatarStatus(Mode As String)`
- `setAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `setAvatarType(Value As String)`
- `setAvatarWidth(Value As Object)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBlurRadius(Value As Int)`
- `setCenterOnParent(Value As Boolean)`
- `setChatImage(Value As Boolean)`
- `setClickable(Value As Boolean)`
- `setGlass(Value As Boolean)`
- `setGlobalMask(MaskName As String)`
- `setHeight(Value As Object)`
- `setImage(Path As String)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setMask(Value As String)`
- `setOfflineColor(OfflineColor As Int)`
- `setOnlineColor(OnlineColor As Int)`
- `setOnlineColorVariant(VariantName As String)`
- `setPadding(Value As String)`
- `setPlaceHolder(Value As String)`
- `setResizeMode(Value As String)`
- `setRingColor(Color As Int)`
- `setRingColorVariant(VariantName As String)`
- `setRingOffset(Offset As Float)`
- `setRingWidth(Width As Float)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setShowOnline(Show As Boolean)`
- `setStatus(Mode As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTextSize(Value As String)`
- `setTop(Value As Int)`
- `setUseVariantStatusColors(Enabled As Boolean)`
- `setVariant(Value As String)`
- `setVariantPalette(Palette As Map)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
