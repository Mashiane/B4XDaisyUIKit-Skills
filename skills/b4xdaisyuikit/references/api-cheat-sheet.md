# SithasoDaisyUIKit B4X Component API Cheat Sheet

This document lists all available custom views, their event hooks, designer properties, and public methods. Use this reference when building user interfaces dynamically.

## Table of Contents

- [B4XDaisyAccordion](#b4xdaisyaccordion)
- [B4XDaisyAlert](#b4xdaisyalert)
- [B4XDaisyApp](#b4xdaisyapp)
- [B4XDaisyAvatar](#b4xdaisyavatar)
- [B4XDaisyAvatarGroup](#b4xdaisyavatargroup)
- [B4XDaisyBadge](#b4xdaisybadge)
- [B4XDaisyBadgeGroupSelect](#b4xdaisybadgegroupselect)
- [B4XDaisyBoxModel](#b4xdaisyboxmodel)
- [B4XDaisyBreadcrumbs](#b4xdaisybreadcrumbs)
- [B4XDaisyButton](#b4xdaisybutton)
- [B4XDaisyCanvasSpinner](#b4xdaisycanvasspinner)
- [B4XDaisyCard](#b4xdaisycard)
- [B4XDaisyCardActions](#b4xdaisycardactions)
- [B4XDaisyCardBody](#b4xdaisycardbody)
- [B4XDaisyCardTitle](#b4xdaisycardtitle)
- [B4XDaisyCarousel](#b4xdaisycarousel)
- [B4XDaisyCarouselItem](#b4xdaisycarouselitem)
- [B4XDaisyChat](#b4xdaisychat)
- [B4XDaisyChatBubble](#b4xdaisychatbubble)
- [B4XDaisyCheckbox](#b4xdaisycheckbox)
- [B4XDaisyCheckboxGroup](#b4xdaisycheckboxgroup)
- [B4XDaisyCollapse](#b4xdaisycollapse)
- [B4XDaisyCollapseContent](#b4xdaisycollapsecontent)
- [B4XDaisyCollapseTitle](#b4xdaisycollapsetitle)
- [B4XDaisyCountdown](#b4xdaisycountdown)
- [B4XDaisyCountdownItem](#b4xdaisycountdownitem)
- [B4XDaisyDashboard](#b4xdaisydashboard)
- [B4XDaisyDiff](#b4xdaisydiff)
- [B4XDaisyDivider](#b4xdaisydivider)
- [B4XDaisyDivision](#b4xdaisydivision)
- [B4XDaisyDock](#b4xdaisydock)
- [B4XDaisyDropdown](#b4xdaisydropdown)
- [B4XDaisyFab](#b4xdaisyfab)
- [B4XDaisyFieldset](#b4xdaisyfieldset)
- [B4XDaisyFileHandler](#b4xdaisyfilehandler)
- [B4XDaisyFileInput](#b4xdaisyfileinput)
- [B4XDaisyFilter](#b4xdaisyfilter)
- [B4XDaisyFlexItem](#b4xdaisyflexitem)
- [B4XDaisyFlexLayout](#b4xdaisyflexlayout)
- [B4XDaisyFlexPanel](#b4xdaisyflexpanel)
- [B4XDaisyGrid](#b4xdaisygrid)
- [B4XDaisyHero](#b4xdaisyhero)
- [B4XDaisyHover3d](#b4xdaisyhover3d)
- [B4XDaisyIconButton](#b4xdaisyiconbutton)
- [B4XDaisyImage](#b4xdaisyimage)
- [B4XDaisyIndicator](#b4xdaisyindicator)
- [B4XDaisyInput](#b4xdaisyinput)
- [B4XDaisyKbd](#b4xdaisykbd)
- [B4XDaisyLabel](#b4xdaisylabel)
- [B4XDaisyList](#b4xdaisylist)
- [B4XDaisyLoading](#b4xdaisyloading)
- [B4XDaisyMenu](#b4xdaisymenu)
- [B4XDaisyModal](#b4xdaisymodal)
- [B4XDaisyNavbar](#b4xdaisynavbar)
- [B4XDaisyOverlay](#b4xdaisyoverlay)
- [B4XDaisyPageScroll](#b4xdaisypagescroll)
- [B4XDaisyPagination](#b4xdaisypagination)
- [B4XDaisyProgress](#b4xdaisyprogress)
- [B4XDaisyRadialProgress](#b4xdaisyradialprogress)
- [B4XDaisyRadio](#b4xdaisyradio)
- [B4XDaisyRadioGroup](#b4xdaisyradiogroup)
- [B4XDaisyRange](#b4xdaisyrange)
- [B4XDaisyRating](#b4xdaisyrating)
- [B4XDaisySelect](#b4xdaisyselect)
- [B4XDaisyStack](#b4xdaisystack)
- [B4XDaisyStat](#b4xdaisystat)
- [B4XDaisyStatItem](#b4xdaisystatitem)
- [B4XDaisyStatus](#b4xdaisystatus)
- [B4XDaisySteps](#b4xdaisysteps)
- [B4XDaisySvgIcon](#b4xdaisysvgicon)
- [B4XDaisySwap](#b4xdaisyswap)
- [B4XDaisySweetAlert](#b4xdaisysweetalert)
- [B4XDaisySweetAlertIcon](#b4xdaisysweetalerticon)
- [B4XDaisyTab](#b4xdaisytab)
- [B4XDaisyText](#b4xdaisytext)
- [B4XDaisyTextRotate](#b4xdaisytextrotate)
- [B4XDaisyTimeline](#b4xdaisytimeline)
- [B4XDaisyToast](#b4xdaisytoast)
- [B4XDaisyToggle](#b4xdaisytoggle)
- [B4XDaisyToggleGroup](#b4xdaisytogglegroup)
- [B4XDaisyTooltip](#b4xdaisytooltip)
- [B4XDaisyVariants](#b4xdaisyvariants)
- [B4XDaisyWindow](#b4xdaisywindow)

---

## B4XDaisyAccordion

### Events
- `Change (ActiveTag As Object, Status As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `OpenOnlyOne` | Boolean | `True` | If True, only one collapse can be open at a time. |
| `IconPosition` | String | `right` | Default icon position for all children. |
| `Icon` | String | `arrow` | Expansion indicator icon for all children. |
| `Visible` | Boolean | `True` | Visible state. |
| `SpaceY` | Int | `2` | Vertical gap (in dip) between collapse items. |
| `Shadow` | String | `none` | Elevation level applied to all children. |
| `Rounded` | String | `theme` | Radius mode applied to all children. |
| `GroupName` | String | `` | Explicit group name shared by all child collapses (used for single-open enforcement). Leave empty to auto-generate from component tag. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `AddItem(Item As B4XDaisyCollapse)`
- `HandleChildRequestOpen(RequestedChild As B4XDaisyCollapse)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOpenOnlyOne(Value As Boolean)`
- `getOpenOnlyOneAs Boolean`
- `setIconPosition(Value As String)`
- `getIconPositionAs String`
- `setIcon(Value As String)`
- `getIconAs String`
- `setSpaceY(Value As Int)`
- `getSpaceYAs Int`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`
- `SetItemActive(ItemTag As Object, Value As Boolean)`
- `SetItemTitle(ItemTag As Object, Title As String)`
- `SetItemVariant(ItemTag As Object, Variant As String)`
- `SetItemTitleIcon(ItemTag As Object, IconName As String)`
- `SetItemVisible(ItemTag As Object, Value As Boolean)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyAlert

### Events
- `Click (Tag As Object)`
- `ActionClick (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `full` | Tailwind size token or CSS size (eg full, 72, 320px, 20rem) |
| `Height` | String | `h-12` | Tailwind size token or CSS size (eg h-12, 80px, 5rem) |
| `Variant` | String | `none` | Daisy variant used for alert colors |
| `AlertStyle` | String | `solid` | Alert visual style |
| `Direction` | String | `horizontal` | Horizontal or vertical layout |
| `Title` | String | `` | Optional title text |
| `Text` | String | `12 unread messages. Tap to see.` | Main alert message |
| `Description` | String | `` | Optional secondary description |
| `IconAsset` | String | `` | SVG file name from assets (empty uses variant default icon) |
| `IconSize` | String | `6` | Tailwind size token or CSS size for icon |
| `RoundedBox` | Boolean | `True` | Use rounded corners similar to Daisy rounded-box |
| `BorderWidth` | Int | `1` | Border width in dip |
| `Shadow` | String | `none` | Elevation shadow level |
| `ActionSpacing` | Int | `6` | Spacing in dip between action views |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit content. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearActions`
- `GetContentPanelAs B4XView`
- `AddActionButton(Text As String, Tag As Object) As B4XView`
- `IsReadyAs Boolean`
- `GetVisualColorsAs Map`
- `SizeToFit(AvailableWidth As Int)`
- `RaiseActionClick(Tag As Object)`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setAlertStyle(Value As String)`
- `getAlertStyleAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setText(Value As String)`
- `getTextAs String`
- `setMessage(Value As String)`
- `getMessageAs String`
- `setDescription(Value As String)`
- `getDescriptionAs String`
- `setIconVisible(Value As Boolean)`
- `getIconVisibleAs Boolean`
- `setIconAsset(Path As String)`
- `getIconAssetAs String`
- `setIconSize(Value As Object)`
- `getIconSizeAs Float`
- `setIconColor(Value As Object)`
- `getIconColorAs Int`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidthAs Float`
- `resetBorderWidthToTheme`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setActionSpacing(Value As Float)`
- `getActionSpacingAs Float`
- `setVariantPalette(Palette As Map)`
- `getVariantPaletteAs Map`
- `applyActiveTheme`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Color As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Color As Int)`
- `getBorderColorAs Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyApp

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `ClearSvgTextCache`
- `GetCachedSvgText(Path As String, DefaultText As String) As String`


---

## B4XDaisyAvatar

### Events
- `Click`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Image` | String | `` | Full image path on device |
| `Mask` | String | `circle` | Avatar mask shape |
| `RoundedBox` | Boolean | `False` | Use rounded box mask (radius: 4dip). Overrides mask setting. |
| `Shadow` | String | `none` | Elevation shadow level (Tailwind/Daisy scale) |
| `Variant` | String | `none` | Variant used for placeholder and status colors |
| `Width` | String | `w-10` | Tailwind size token or CSS size (eg w-12, 80px, 4em, 5rem) |
| `Height` | String | `h-10` | Tailwind size token or CSS size (eg h-12, 80px, 4em, 5rem) |
| `AvatarType` | String | `image` | Content type rendered inside avatar |
| `PlaceHolder` | String | `` | Placeholder text for text type (and image/svg fallback) |
| `TextSize` | String | `text-sm` | Placeholder text size token (eg text-sm, text-lg). Empty = auto-fit |
| `TextColor` | Color | `0x00000000` | Placeholder text color (0 = theme base-content) |
| `BackgroundColor` | Color | `0x00000000` | Placeholder background color (0 = variant/theme fallback) |
| `Padding` | String | `` | Padding utility/value for avatar drawing area (eg p-2, px-1, 2) |
| `Margin` | String | `` | Margin utility/value for avatar host insets (eg m-2, mx-1.5, 1) |
| `CenterOnParent` | Boolean | `True` | Center avatar inside parent bounds |
| `ChatImage` | Boolean | `False` | Apply chat-image rendering defaults (shared with chat bubble usage) |
| `Status` | String | `none` | Online indicator status |
| `ShowOnline` | Boolean | `False` | Show online/offline indicator dot |
| `UseVariantStatusColors` | Boolean | `False` | Derive online/offline colors from current variant (default keeps success green / gray) |
| `OnlineColor` | Color | `0x00000000` | Override online color (0 means auto) |
| `OfflineColor` | Color | `0x00000000` | Override offline color (0 means auto) |
| `RingColor` | Color | `0x00000000` | Ring color override (0 means auto by variant) |
| `RingWidth` | Int | `0` | Ring stroke width in dip |
| `RingOffset` | Int | `0` | Space between image and ring in dip |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |
| `ResizeMode` | String | `FILL_NO_DISTORTIONS` | Aspect scaling mode (similar to B4XImageView ResizeMode) |
| `BlurRadius` | Int | `0` | Image blur level (0 = disabled, 1 to 25 = scale-down blur factor) |
| `Glass` | Boolean | `False` | Enable translucent glass shine and highlight borders |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `getViewAs B4XView`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ResizeToParent(b4xV As B4XView)`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setResizeMode(Value As String)`
- `getResizeModeAs String`
- `setBlurRadius(Value As Int)`
- `getBlurRadiusAs Int`
- `setGlass(Value As Boolean)`
- `getGlassAs Boolean`
- `setChatImage(Value As Boolean)`
- `getChatImageAs Boolean`
- `setVariantPalette(Palette As Map)`
- `getVariantPaletteAs Map`
- `applyActiveTheme`
- `setUseVariantStatusColors(Enabled As Boolean)`
- `getUseVariantStatusColorsAs Boolean`
- `setAvatar(Path As String)`
- `getAvatarAs String`
- `setImage(Path As String)`
- `getImageAs String`
- `setMask(Value As String)`
- `getMaskAs String`
- `setAvatarBitmap(bmp As B4XBitmap, Tag As Object)`
- `getAvatarTagAs Object`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setAvatarStatus(Mode As String)`
- `setStatus(Mode As String)`
- `getAvatarStatusAs String`
- `getStatusAs String`
- `setAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `setAvatarOnlineColor(OnlineColor As Int)`
- `getOnlineColorAs Int`
- `setOfflineColor(OfflineColor As Int)`
- `getOfflineColorAs Int`
- `setAvatarOnlineColorVariant(VariantName As String)`
- `setOnlineColor(OnlineColor As Int)`
- `setOnlineColorVariant(VariantName As String)`
- `getAvatarOnlineColorAs Int`
- `getAvatarOfflineColorAs Int`
- `setShowOnline(Show As Boolean)`
- `getShowOnlineAs Boolean`
- `setAvatarType(Value As String)`
- `getAvatarTypeAs String`
- `setPlaceHolder(Value As String)`
- `getPlaceHolderAs String`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setAvatarMask(MaskName As String)`
- `getAvatarMaskAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setGlobalMask(MaskName As String)`
- `setAvatarSize(Size As Object)`
- `setWidth(Value As Object)`
- `setHeight(Value As Object)`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setCenterOnParent(Value As Boolean)`
- `getCenterOnParentAs Boolean`
- `getWidthAs Float`
- `getHeightAs Float`
- `setAvatarWidth(Value As Object)`
- `setAvatarHeight(Value As Object)`
- `getAvatarWidthAs Float`
- `getAvatarHeightAs Float`
- `setAvatarBorder(Color As Int, Width As Float)`
- `setAvatarBorderInset(Inset As Float)`
- `setRingColor(Color As Int)`
- `getRingColorAs Int`
- `setRingColorVariant(VariantName As String)`
- `setRingWidth(Width As Float)`
- `getRingWidthAs Float`
- `setRingOffset(Offset As Float)`
- `getRingOffsetAs Float`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`
- `SetBitmapAndFill(ImageView As B4XView, Bmp As B4XBitmap)`


---

## B4XDaisyAvatarGroup

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `full` | Tailwind size token or CSS size (eg full, 72, 320px, 20rem) |
| `Height` | String | `h-12` | Tailwind size token or CSS size (eg h-12, 80px, 5rem) |
| `Padding` | String | `` | Padding utility/value for group content (eg p-2, px-3, 2) |
| `Margin` | String | `` | Margin utility/value for group host insets (eg m-2, mx-1.5, 1) |
| `Spacing` | String | `-space-x-6` | Overlap or gap utility (eg -space-x-6, space-x-4) |
| `AvatarSize` | String | `12` | Tailwind size for avatars (e.g. 12, 16, 24) |
| `LimitTo` | Int | `5` | Max avatars shown before overflow placeholder (+N) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddAvatar(Avatar As B4XDaisyAvatar) As Int`
- `AddAvatarView(ChildView As B4XView, Tag As Object) As Int`
- `Clear`
- `getCountAs Int`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setSpacing(Value As String)`
- `getSpacingAs String`
- `applyActiveTheme`
- `setAvatarSize(Value As Object)`
- `getAvatarSizeAs Object`
- `setLimitTo(Value As Int)`
- `getLimitToAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyBadge

### Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Checked (Id As String, Checked As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `fit-content` | Tailwind size token, CSS size, or fit-content |
| `Height` | String | `h-6` | Tailwind size token or CSS size (eg h-6, 24px, 1.5rem) |
| `Size` | String | `md` | Badge size token |
| `Variant` | String | `none` | Daisy variant used for colors |
| `BadgeStyle` | String | `solid` | Badge visual style |
| `Text` | String | `Badge` | Text displayed inside badge |
| `Padding` | String | `` | Tailwind spacing utilities (eg px-2, py-1, p-1.5) |
| `Margin` | String | `` | Tailwind spacing utilities (eg m-1, mx-2) |
| `Visible` | Boolean | `True` | Show or hide badge view |
| `AvatarVisible` | Boolean | `False` | Show avatar inside badge |
| `AvatarImage` | String | `` | Avatar image path from assets or full path |
| `AvatarText` | String | `` | Avatar placeholder text when image is empty |
| `AvatarPosition` | String | `left` | Avatar placement relative to text |
| `IconAsset` | String | `` | SVG asset used for left icon |
| `Toggle` | Boolean | `False` | Enables checked/unchecked toggle behavior |
| `Checked` | Boolean | `False` | Current checked state (effective when Toggle is true) |
| `CheckedColor` | Color | `0x00000000` | Background color used when checked (0 uses variant fallback) |
| `CheckedTextColor` | Color | `0x00000000` | Text/icon color used when checked (0 uses variant fallback) |
| `ID` | String | `` | Optional chip identifier returned in checked event |
| `Closable` | Boolean | `False` | Show close icon on the right side |
| `CloseIconAsset` | String | `xmark-solid.svg` | SVG asset used for close icon |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use selector radius from active theme |
| `CapValue` | Int | `99` | Numeric cap - values above this display as cap+ (0 disables capping) |
| `Shadow` | String | `none` | Elevation shadow level |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setSize(Value As String)`
- `getSizeAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyleAs String`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setText(Value As String)`
- `getTextAs String`
- `setTextCentered(Value As Boolean)`
- `getTextCenteredAs Boolean`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setAvatarVisible(Value As Boolean)`
- `getAvatarVisibleAs Boolean`
- `setAvatarImage(Value As String)`
- `getAvatarImageAs String`
- `setAvatarText(Value As String)`
- `getAvatarTextAs String`
- `setAvatarPosition(Value As String)`
- `getAvatarPositionAs String`
- `setIconAsset(Value As String)`
- `getIconAssetAs String`
- `setToggle(Value As Boolean)`
- `getToggleAs Boolean`
- `setChecked(Value As Boolean)`
- `getCheckedAs Boolean`
- `setCheckedColor(Value As Int)`
- `getCheckedColorAs Int`
- `setCheckedTextColor(Value As Int)`
- `getCheckedTextColorAs Int`
- `setId(Value As String)`
- `getIdAs String`
- `setClosable(Value As Boolean)`
- `getClosableAs Boolean`
- `setCloseIconAsset(Value As String)`
- `getCloseIconAssetAs String`
- `setCapValue(Value As Int)`
- `getCapValueAs Int`
- `setValue(Value As Int)`
- `getValueAs Int`
- `incrementAs Int`
- `incrementBy(Amount As Int) As Int`
- `decrementAs Int`
- `decrementBy(Amount As Int) As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`


---

## B4XDaisyBadgeGroupSelect

### Events
- `ItemChanged (Item As Map)`
- `FocusChanged (HasFocus As Boolean)`
- `Changed (SelectedIds As List)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Select options` | Fieldset legend text |
| `LegendSize` | String | `text-sm` | Tailwind-like text size token for legend |
| `LegendBold` | Boolean | `False` | Render the fieldset legend caption in bold |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip (p-4) |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use box radius for container |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `BadgeSelectionMode` | String | `multi` | Single allows one checked badge, multi allows many |
| `BadgeSize` | String | `md` | Badge size token |
| `BadgeHeight` | String | `8` | Badge height token (tailwind/css size) |
| `BadgeColor` | String | `neutral` | Default (unchecked) badge color variant |
| `BadgeCheckedColor` | Color | `0x00000000` | Checked badge background color (0 uses success) |
| `BadgeCheckedTextColor` | Color | `0x00000000` | Checked badge text color (0 uses success text/white fallback) |
| `Gap` | Int | `8` | Horizontal gap between badges in dip |
| `RowGap` | Int | `8` | Vertical gap between badge rows in dip |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `AddBadgeItem(Id As String, Text As String)`
- `RemoveBadgeItem(Id As String)`
- `ClearBadgeItems`
- `setItems(Items As Object)`
- `getItemsAs List`
- `setItemsSpec(Value As String)`
- `getItemsSpecAs String`
- `setBadgeSelectionMode(Value As String)`
- `getBadgeSelectionModeAs String`
- `setSelected(Value As String)`
- `getSelectedAs String`
- `setChecked(CheckedIds As String)`
- `getCheckedAs String`
- `IsItemSelected(Id As String) As Boolean`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `ClearSelection`
- `setLegend(Value As String)`
- `getLegendAs String`
- `setLegendSize(Value As String)`
- `getLegendSizeAs String`
- `setLegendBold(Value As Boolean)`
- `getLegendBoldAs Boolean`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `isRoundedAs Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Object)`
- `getTextColorAs Int`
- `setBorderColor(Value As Object)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setBadgeSize(Value As String)`
- `getBadgeSizeAs String`
- `setBadgeHeight(Value As String)`
- `getBadgeHeightAs String`
- `setBadgeColor(Value As String)`
- `getBadgeColorAs String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyleAs String`
- `setBadgeCheckedColor(Value As Object)`
- `getBadgeCheckedColorAs Int`
- `setBadgeCheckedTextColor(Value As Object)`
- `getBadgeCheckedTextColorAs Int`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setRowGap(Value As Int)`
- `getRowGapAs Int`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `ReceiveFocus`
- `Blur`
- `setTag(Value As Object)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyBoxModel

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `GetDefaultSpacingScaleAs Map`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `CreateDefaultModelAs Map`
- `ResolveLength(Value As Object, ParentSize As Float, DefaultDip As Float) As Float`
- `ApplyPaddingUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyPaddingUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyMarginUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyMarginUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyRadiusUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyRadiusUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `GetCornerRadius(Model As Map, Corner As String, Fallback As Float) As Float`
- `ResolveOuterRect(HostRect As B4XRect, Model As Map) As B4XRect`
- `ResolveBorderRect(OuterRect As B4XRect, Model As Map) As B4XRect`
- `ResolvePaddingRect(BorderRect As B4XRect, Model As Map) As B4XRect`
- `ResolveContentRect(BorderRect As B4XRect, Model As Map) As B4XRect`
- `ExpandContentWidth(ContentWidth As Float, Model As Map) As Float`
- `ExpandContentHeight(ContentHeight As Float, Model As Map) As Float`
- `ToLocalRect(AbsoluteRect As B4XRect, OriginRect As B4XRect) As B4XRect`


---

## B4XDaisyBreadcrumbs

### Events
- `ItemClick (ItemId As String)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables breadcrumb interaction. |
| `Visible` | Boolean | `True` | Shows or hides the component. |
| `TextSize` | String | `text-sm` | Tailwind text size token used by all crumbs. |
| `CurrentIndex` | Int | `-1` | Active breadcrumb index. -1 uses the last item. |
| `RTL` | Boolean | `False` | Flips chevron direction for RTL languages. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `GetComputedHeightAs Int`
- `SetItems(Items As List)`
- `getItemsAs List`
- `ClearItems`
- `AddItem(Id As String, Text As String, IconPath As String, Clickable As Boolean)`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setCurrentIndex(Value As Int)`
- `getCurrentIndexAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `RemoveViewFromParent`


---

## B4XDaisyButton

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `Button` | Button label. |
| `Class` | String | `btn` | Daisy class tokens (for example: btn btn-primary btn-outline). |
| `Variant` | String | `default` | Semantic color variant. |
| `Style` | String | `solid` | Daisy button style. |
| `Size` | String | `md` | Daisy button size token. |
| `Rounded` | String | `theme` | Border radius token. |
| `Padding` | String | `` | Tailwind padding utility tokens (For example: px-3 py-1). |
| `Margin` | String | `` | Tailwind margin utility tokens. |
| `Width` | String | `40px` | Tailwind/CSS width token (For example: auto, 40px, w-40, [12rem]). |
| `Height` | String | `auto` | Tailwind/CSS height token (For example: auto, 40px, h-10, [3rem]). |
| `IconName` | String | `` | SVG icon asset file name. |
| `IconColor` | Color | `0x00FFFFFF` | Optional icon color override. |
| `Wide` | Boolean | `False` | Applies btn-wide behavior. |
| `Block` | Boolean | `False` | Applies btn-block behavior. |
| `Square` | Boolean | `False` | Applies btn-square behavior. |
| `Circle` | Boolean | `False` | Applies btn-circle behavior. |
| `Active` | Boolean | `False` | Applies btn-active behavior. |
| `Disabled` | Boolean | `False` | Applies disabled behavior. |
| `Loading` | Boolean | `False` | Shows loading indicator. |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `TextColor` | Color | `0x00FFFFFF` | Override text color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `Visible` | Boolean | `True` | Show Or hide component. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetEstimateContentWidthAs Int`
- `setText(Value As String)`
- `getTextAs String`
- `setClass(Value As String)`
- `getClassAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setIconName(Value As String)`
- `getIconNameAs String`
- `setIconColor(Value As Int)`
- `getIconColorAs Int`
- `setWide(Value As Boolean)`
- `getWideAs Boolean`
- `setBlock(Value As Boolean)`
- `getBlockAs Boolean`
- `setSquare(Value As Boolean)`
- `getSquareAs Boolean`
- `setCircle(Value As Boolean)`
- `getCircleAs Boolean`
- `setActive(Value As Boolean)`
- `getActiveAs Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabledAs Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setLoading(Value As Boolean)`
- `getLoadingAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getViewAs B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `setFocus(Value As Boolean)`
- `getIsFocusedAs Boolean`
- `RequestFocus`


---

## B4XDaisyCanvasSpinner

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `100dip` | Width/height of the spinner (px, %, dip, etc). |
| `Color1` | Color | `0xFF3FC3EE` | First ring color. |
| `Color2` | Color | `0xFFF27474` | Second ring color. |
| `Color3` | Color | `0xFFF8BB86` | Third ring color. |
| `StrokeWidth` | String | `4dip` | Ring border thickness. |
| `OverlayColor` | Color | `0xFFFFFFFF` | Backdrop color when overlay is shown. |
| `OverlayOpacity` | Float | `0.0` | Backdrop opacity from 0.0 (transparent) to 1.0 (opaque). |
| `Visible` | Boolean | `True` | Shows or hides the spinner. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `GetComputedHeightAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Resize(Width As Int, Height As Int)`
- `AddChild(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show(Target As B4XView)`
- `Hide`
- `getVisibleAs Boolean`
- `setVisible(b As Boolean)`
- `getSizeAs String`
- `setSize(s As String)`
- `getColor1As Int`
- `setColor1(c As Int)`
- `getColor2As Int`
- `setColor2(c As Int)`
- `getColor3As Int`
- `setColor3(c As Int)`
- `getStrokeWidthAs Float`
- `setStrokeWidth(s As Float)`
- `getOverlayColorAs Int`
- `setOverlayColor(c As Int)`
- `getOverlayOpacityAs Float`
- `setOverlayOpacity(o As Float)`


---

## B4XDaisyCard

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-full` | Card width token. |
| `Height` | String | `auto` | Card height token (auto, h-64, h-[500px], etc). |
| `Title` | String | `Card Title` | Title text. |
| `ImagePath` | String | `` | Asset Or full path. |
| `ImageWidth` | String | `w-full` | Image width token. |
| `ImageHeight` | String | `h-full` | Image height token. |
| `ImageClasses` | String | `` | Extra image utility classes. |
| `Size` | String | `md` | Size token. |
| `Style` | String | `none` | Border style. |
| `Variant` | String | `none` | Semantic variant For full-card background/text colors. |
| `LayoutMode` | String | `top` | Figure placement. |
| `BackgroundColor` | Color | `0x00000000` | Explicit card background color override (0 uses theme token). |
| `TextColor` | Color | `0x00000000` | Explicit text color override For all content inside card body (0 uses theme token). |
| `PlaceItemsCenter` | Boolean | `False` | Centers title/actions content similar To place-items-center. |
| `Rounded` | String | `theme` | Radius mode. |
| `Shadow` | String | `sm` | Elevation level. |
| `Visible` | Boolean | `True` | Show Or hide card. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getFigureContainerAs B4XView`
- `getCardBodyAs B4XView`
- `getBodyPartContainerAs B4XView`
- `getTitleContainerAs B4XView`
- `getCardTitleAs B4XView`
- `getCardActionsAs B4XView`
- `getContainerAs B4XView`
- `getBodyContainerAs B4XView`
- `getTitleExtrasContainerAs B4XView`
- `getActionsContainerAs B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCountAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setImagePath(Value As String)`
- `setImageWidth(Value As String)`
- `getImageWidthAs String`
- `setImageHeight(Value As String)`
- `getImageHeightAs String`
- `setImageClasses(Value As String)`
- `getImageClassesAs String`
- `SetImage(Image As B4XBitmap)`
- `ClearImage`
- `setSize(Value As String)`
- `getSizeAs String`
- `setStyle(Value As String)`
- `setPlaceItemsCenter(Value As Boolean)`
- `getPlaceItemsCenterAs Boolean`
- `ShowTitle`
- `HideTitle`
- `ShowActions`
- `HideActions`
- `ShowImage`
- `HideImage`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setLayoutMode(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setVisible(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`


---

## B4XDaisyCardActions

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `GapDip` | Int | `8` | Gap between action items. |
| `Wrap` | Boolean | `True` | Wrap action items when row is full. |
| `Justify` | String | `start` | Horizontal row alignment. |
| `Visible` | Boolean | `True` | Show Or hide actions. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Relayout`
- `setGapDip(Value As Int)`
- `getGapDipAs Int`
- `setWrap(Value As Boolean)`
- `getWrapAs Boolean`
- `setJustify(Value As String)`
- `getJustifyAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getContainerAs B4XView`


---

## B4XDaisyCardBody

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `md` | Body size token. |
| `Height` | String | `auto` | Body height token (auto, h-32, h-[120px], etc). |
| `Visible` | Boolean | `True` | Show or hide body container. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setSize(Value As String)`
- `getSizeAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `getPaddingDipAs Int`
- `getGapDipAs Int`
- `getBodyTextSizeAs Float`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getContainerAs B4XView`


---

## B4XDaisyCardTitle

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `Card Title` | Title text. |
| `Size` | String | `md` | Title size token. |
| `Centered` | Boolean | `False` | Center align title text. |
| `Gap` | Int | `8` | Horizontal gap between title text and extra components. |
| `SingleLine` | Boolean | `False` | Prevent text wrapping. |
| `Ellipsize` | String | `none` | Truncate with ellipsis when text overflows. |
| `Visible` | Boolean | `True` | Show or hide title. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit text and extra components. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setText(Value As String)`
- `getTextAs String`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setSize(Value As String)`
- `getSizeAs String`
- `setCentered(Value As Boolean)`
- `getCenteredAs Boolean`
- `setGapDip(Value As Int)`
- `getGapDipAs Int`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLineAs Boolean`
- `setEllipsize(Value As String)`
- `getEllipsizeAs String`
- `getTextSizeAs Float`
- `getLabelAs B4XView`
- `getExtrasContainerAs B4XView`
- `getContainerAs B4XView`
- `Relayout`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`


---

## B4XDaisyCarousel

### Events
- `Click (Tag As Object)`
- `PageChanged (Index As Int)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `horizontal` | Carousel scroll orientation. |
| `Snap` | String | `start` | Carousel snapping behavior. |
| `Rounded` | String | `theme` | Corner radius variant. |
| `RoundedBox` | Boolean | `False` | Apply the DaisyUI rounded-box semantic corner radius. Takes priority over the Rounded property when True. |
| `Shadow` | String | `none` | Box shadow elevation level. |
| `NavigationButtons` | Boolean | `False` | Show prev/next navigation buttons overlaid on the carousel. |
| `IndicatorButtons` | Boolean | `False` | Show indicator dot buttons overlaid at the bottom of the carousel. |
| `AutoPlay` | Boolean | `False` | Automatically advance slides on a timed interval. |
| `AutoPlayInterval` | Int | `3000` | Milliseconds between auto-advance steps when AutoPlay is enabled. |
| `ItemGap` | Int | `0` | Gap in pixels between carousel items (space-x-N / space-y-N equivalent). |
| `Gap` | String | `` | Space between items as a Tailwind/DaisyUI spacing token: space-x-4, gap-2, 16px etc. Overrides Item Gap when non-empty. |
| `ContentPadding` | Int | `0` | Inner padding in pixels of the scroll area inside the carousel container (p-N equivalent). |
| `Padding` | String | `` | Inner content padding as a Tailwind/DaisyUI spacing token: p-4, p-2, 8px etc. Overrides Content Padding when non-empty. |
| `Width` | String | `w-full` | Width as a Tailwind class: w-full, w-64, w-1/2, w-[300px] etc. |
| `Height` | String | `h-[300px]` | Height as a Tailwind class: h-[300px], h-48, h-full, h-[200px], h-auto (auto-fits tallest item) etc. |
| `BackgroundColor` | String | `` | Background color as a DaisyUI/Tailwind token: neutral, base-200, primary, transparent etc. |
| `IndicatorBackgroundColor` | Color | `0x50000000` | Color of the indicator strip background. |
| `IndicatorActiveColor` | Color | `0xFFFFFFFF` | Color of the active indicator dot. |
| `IndicatorInactiveColor` | Color | `0x78FFFFFF` | Color of the inactive indicator dots. |
| `IndicatorDotSize` | Int | `10` | Size of the indicator dots. |
| `IndicatorDotGap` | Int | `6` | Spacing between indicator dots. |
| `IndicatorOffset` | Int | `0` | Distance to offset the indicator dots strip from its default edge. |
| `Visible` | Boolean | `True` | Visible state. |
| `Enabled` | Boolean | `True` | Enabled state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddItem(Item As B4XDaisyCarouselItem)`
- `RemoveItem(Item As B4XDaisyCarouselItem)`
- `ClearItems`
- `ScrollToItem(Index As Int)`
- `getOrientationAs String`
- `setOrientation(Value As String)`
- `getSnapAs String`
- `setSnap(Value As String)`
- `getRoundedAs String`
- `setRounded(Value As String)`
- `getTagAs Object`
- `setTag(Value As Object)`
- `getItemGapAs Int`
- `setItemGap(Value As Int)`
- `getGapAs String`
- `setGap(Value As String)`
- `getContentPaddingAs Int`
- `setContentPadding(Value As Int)`
- `getPaddingAs String`
- `setPadding(Value As String)`
- `getWidthAs String`
- `setWidth(Value As String)`
- `getHeightAs String`
- `setHeight(Value As String)`
- `getBackgroundColorAs String`
- `setBackgroundColor(Value As String)`
- `getNavigationButtonsAs Boolean`
- `setNavigationButtons(Value As Boolean)`
- `getIndicatorButtonsAs Boolean`
- `setIndicatorButtons(Value As Boolean)`
- `getAutoPlayAs Boolean`
- `setAutoPlay(Value As Boolean)`
- `getAutoPlayIntervalAs Int`
- `setAutoPlayInterval(Value As Int)`
- `StartAutoPlay`
- `StopAutoPlay`
- `getCurrentIndexAs Int`
- `getVisibleAs Boolean`
- `setVisible(Value As Boolean)`
- `getEnabledAs Boolean`
- `setEnabled(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setRoundedBox(Value As Boolean)`
- `getShadowAs String`
- `setShadow(Value As String)`
- `getIndicatorBackgroundColorAs Int`
- `setIndicatorBackgroundColor(Value As Int)`
- `getIndicatorActiveColorAs Int`
- `setIndicatorActiveColor(Value As Int)`
- `getIndicatorInactiveColorAs Int`
- `setIndicatorInactiveColor(Value As Int)`
- `getIndicatorDotSizeAs Int`
- `setIndicatorDotSize(Value As Int)`
- `getIndicatorDotGapAs Int`
- `setIndicatorDotGap(Value As Int)`
- `getIndicatorOffsetAs Int`
- `setIndicatorOffset(Value As Int)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyCarouselItem

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `ItemType` | String | `image` | Type of content to display. |
| `Source` | String | `` | Image file or SVG content/asset. |
| `Snap` | String | `start` | Carousel snapping position. |
| `Rounded` | String | `rounded-none` | Corner radius variant. |
| `Width` | String | `w-full` | Item width as a Tailwind class: w-full, w-1/2, w-64, w-[150px] etc. |
| `Height` | String | `h-full` | Item height as a Tailwind class: h-full, h-48, h-[200px] etc. |
| `ImageWidth` | String | `w-full` | Width of the image/content inside the item frame. w-full = 100% of item width. |
| `ImageHeight` | String | `h-full` | Height of the image/content inside the item frame. h-full = 100% of item height. |
| `ImageResizeMode` | String | `FILL_NO_DISTORTIONS` | How to scale the image within the carousel item frame. |
| `Visible` | Boolean | `True` | Visible state. |
| `Enabled` | Boolean | `True` | Enabled state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getItemTypeAs String`
- `setItemType(Value As String)`
- `getSourceAs String`
- `setSource(Value As String)`
- `getSnapAs String`
- `setSnap(Value As String)`
- `getRoundedAs String`
- `setRounded(Value As String)`
- `getTagAs Object`
- `setTag(Value As Object)`
- `getContainerAs B4XView`
- `getWidthAs String`
- `setWidth(Value As String)`
- `getHeightAs String`
- `setHeight(Value As String)`
- `getImageWidthAs String`
- `setImageWidth(Value As String)`
- `getImageHeightAs String`
- `setImageHeight(Value As String)`
- `getVisibleAs Boolean`
- `setVisible(Value As Boolean)`
- `getEnabledAs Boolean`
- `setEnabled(Value As Boolean)`
- `getImageResizeModeAs String`
- `setImageResizeMode(Value As String)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyChat

### Events
- `AvatarClick (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `AvatarMask` | String | `squircle` | Mask shape used for message avatars |
| `AvatarSize` | Int | `40` | Avatar size in dip for each message row |
| `FromBackgroundColor` | Color | `0xFF4338CA` | Background color for outgoing (from) bubbles |
| `FromTextColor` | Color | `0xFFFFFFFF` | Text color for outgoing (from) bubbles |
| `ToBackgroundColor` | Color | `0xFF0EA5E9` | Background color for incoming (to) bubbles |
| `ToTextColor` | Color | `0xFF082F49` | Text color for incoming (to) bubbles |
| `UseFromToColors` | Boolean | `True` | Use explicit from/to colors instead of theme defaults |
| `Theme` | String | `light` | Theme preset used for default chat colors |
| `DateTimeFormat` | String | `D` | Accepts Java DateFormat or flatpickr tokens (eg H:i, Y-m-d H:i) |
| `UseTimeAgo` | Boolean | `False` | Show relative timestamps (for example, 5m ago) |
| `ShowTimeAgoForToday` | Boolean | `True` | When enabled and UseTimeAgo is true, today's times show as time-ago while older dates use DateTimeFormat |
| `VerticalGap` | Int | `8` | Vertical spacing in dip between message rows |
| `Width` | Int | `0` | Explicit chat width in dip (0 uses base width) |
| `Height` | Int | `0` | Explicit chat height in dip (0 uses base height) |
| `Padding` | String | `` | Tailwind/spacing padding utilities (eg p-2, px-3, 2) |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ViewAs B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `Clear`
- `setConversations(Messages As List)`
- `ClearConversations`
- `AppendMessage(Message As Map) As String`
- `AppendMessageAndScroll(Message As Map, Smooth As Boolean) As String`
- `ScrollToMessage(BubbleId As String)`
- `ScrollToTop`
- `ScrollToBottom`
- `SmoothScrollToTop(DurationMs As Int) As ResumableSub`
- `SmoothScrollToBottom(DurationMs As Int) As ResumableSub`
- `SmoothScrollToMessage(BubbleId As String, DurationMs As Int) As ResumableSub`
- `SmoothScrollToPosition(Target As Int, DurationMs As Int) As ResumableSub`
- `getMessageById(BubbleId As String) As Map`
- `getMessage(BubbleId As String) As Map`
- `UpdateMessageById(BubbleId As String, Fields As Map) As Boolean`
- `UpdateMessage(Message As Map) As Boolean`
- `UpdateHeaderById(BubbleId As String, HeaderName As String, HeaderTime As String) As Boolean`
- `UpdateFooterById(BubbleId As String, FooterText As String) As Boolean`
- `UpdateAvatarById(BubbleId As String, AvatarBitmap As B4XBitmap) As Boolean`
- `UpdateOnlineStatusById(BubbleId As String, Status As String, OnlineColor As Int) As Boolean`
- `ReplaceMessageById(BubbleId As String, Message As Map) As Boolean`
- `DeleteMessageById(BubbleId As String) As Boolean`
- `AddMessage(Message As Map, ScrollTo As Boolean) As String`
- `LoadAvatarFilesFromAssets(Files As List)`
- `setAvatarFiles(Files As List)`
- `getAvatarFilesAs List`
- `RandomAvatarFileOrBlank(BlankPct As Int) As String`
- `RandomAvatarStatusAs String`
- `setBubbleAvatarStatusById(BubbleId As String, Mode As String)`
- `getBubbleIdsAs List`
- `setAvatarMask(Mask As String)`
- `getAvatarMaskAs String`
- `setMask(Mask As String)`
- `setAvatarSize(Size As Int)`
- `getAvatarSizeAs Int`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColorAs Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColorAs Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColorAs Int`
- `setToTextColor(Color As Int)`
- `getToTextColorAs Int`
- `setFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColorsAs Boolean`
- `setTheme(Name As String)`
- `getThemeAs String`
- `setDateTimeFormat(Value As String)`
- `getDateTimeFormatAs String`
- `setUseTimeAgo(Enabled As Boolean)`
- `getUseTimeAgoAs Boolean`
- `setShowTimeAgoForToday(Enabled As Boolean)`
- `getShowTimeAgoForTodayAs Boolean`
- `RegisterTheme(Name As String, PaletteMap As Map)`
- `getPaletteAs Map`
- `CreateVariant(BackColor As Int, TextColor As Int) As Map`
- `ShowOnline(Enabled As Boolean)`
- `setOnlineStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `getOnlineStatusColorAs Int`
- `getOfflineStatusColorAs Int`
- `setVerticalGap(Gap As Int)`
- `getVerticalGapAs Int`
- `setWidth(Value As Int)`
- `getWidthAs Int`
- `setHeight(Value As Int)`
- `getHeightAs Int`
- `setSize(Width As Int, Height As Int)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyChatBubble

### Events
- `AvatarClick (Payload As Object)`
- `BubbleClick (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `AvatarMask` | String | `squircle` | Mask shape used for the bubble avatar |
| `AvatarSize` | Int | `40` | Avatar size in dip |
| `Id` | String | `` | Message author id |
| `FromId` | String | `` | Current user id used to resolve outgoing side |
| `Variant` | String | `neutral` | Daisy variant for bubble colors |
| `Side` | String | `start` | Bubble alignment when id-based side is not used |
| `BubbleStyle` | String | `rounded` | Bubble visual style |
| `MaxWidthPercent` | Int | `90` | Maximum bubble width as a percent of row width |
| `UseFromToColors` | Boolean | `False` | Use explicit from/to colors instead of variant defaults |
| `FromBackgroundColor` | Color | `0xFFE5E7EB` | Background color for outgoing (from) bubbles |
| `FromTextColor` | Color | `0xFF111827` | Text color for outgoing (from) bubbles |
| `ToBackgroundColor` | Color | `0xFFDBEAFE` | Background color for incoming (to) bubbles |
| `ToTextColor` | Color | `0xFF1E3A8A` | Text color for incoming (to) bubbles |
| `ShowOnline` | Boolean | `True` | Show avatar online/offline indicator |
| `Padding` | String | `` | Tailwind/spacing padding utilities (eg p-2, px-3, 2) |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ViewAs B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setId(Value As String)`
- `getIdAs String`
- `setFromId(Value As String)`
- `getFromIdAs String`
- `GetUsedHeightAs Int`
- `setSide(s As String)`
- `getSideAs String`
- `setVariant(v As String)`
- `getVariantAs String`
- `setBubbleStyle(StyleName As String)`
- `SetOutline(Enabled As Boolean, Color As Int, Width As Float)`
- `getBubbleStyleAs String`
- `setMaxWidthPercent(p As Float)`
- `getMaxWidthPercentAs Float`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `SetAvatarVisible(b As Boolean)`
- `SetAvatarBitmap(bmp As B4XBitmap, Tag As Object)`
- `SetAvatarStatus(Mode As String)`
- `SetAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `GetAvatarOnlineColorAs Int`
- `GetAvatarOfflineColorAs Int`
- `SetAvatarBorder(Color As Int, Width As Float)`
- `SetAvatarBorderInset(Inset As Float)`
- `setAvatarMask(MaskName As String)`
- `getAvatarMaskAs String`
- `SetGlobalMask(MaskName As String)`
- `setAvatarSize(Size As Float)`
- `SetAvatarWidth(Width As Float)`
- `SetAvatarHeight(Height As Float)`
- `GetAvatarWidthAs Float`
- `GetAvatarHeightAs Float`
- `getAvatarSizeAs Float`
- `setShowOnline(Show As Boolean)`
- `getShowOnlineAs Boolean`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColorAs Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColorAs Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColorAs Int`
- `setToTextColor(Color As Int)`
- `getToTextColorAs Int`
- `SetFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColorsAs Boolean`
- `SetVariantPalette(Palette As Map)`
- `GetVariantPaletteAs Map`
- `SetColors(BackOverride As Int, TextOverride As Int, MutedOverride As Int)`
- `SetHeader(Text As String)`
- `SetHeaderTime(Text As String)`
- `SetHeaderParts(NameText As String, TimeText As String)`
- `SetHeaderVisible(b As Boolean)`
- `SetHeaderNameVisible(b As Boolean)`
- `SetHeaderTimeVisible(b As Boolean)`
- `SetFooter(Text As String)`
- `SetFooterVisible(b As Boolean)`
- `SetMessage(Text As String)`
- `SetBubbleVisible(b As Boolean)`
- `SetDebugBorders(Enabled As Boolean)`
- `GetDebugBordersAs Boolean`
- `SetStatus(Mode As String, ExtraText As String)`
- `SetImage(bmp As B4XBitmap, MaxHeight As Int)`
- `SetCustomContent(v As B4XView)`
- `SetContentAll(Header As String, Body As String, Footer As String, SideNow As String, VariantNow As String)`
- `MeasureHeight(AvailableWidth As Int) As Int`
- `RaiseBubbleClick(Tag As Object)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyCheckbox

### Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `GroupName` | String | `` | Checkbox group name. |
| `Checked` | Boolean | `False` | Checked state. |
| `Indeterminate` | Boolean | `False` | Indeterminate state. |
| `Value` | String | `` | Value assigned to the checkbox. |
| `Text` | String | `` | Label text. |
| `Variant` | String | `none` | Color variant. |
| `Size` | String | `md` | Size variant. |
| `Position` | String | `start` | Position alignment. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked checkmark/text color. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setChecked(Value As Boolean)`
- `getCheckedAs Boolean`
- `setValue(Value As String)`
- `getValueAs String`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `getRoleAs String`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminateAs Boolean`
- `setText(Value As String)`
- `getTextAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setPosition(Value As String)`
- `getPositionAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `getIsValidAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ValidateAs Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColorAs Int`
- `setBorderColor(Color As Int)`
- `getBorderColorAs Int`
- `setTextColor(Color As Int)`
- `getTextColorAs Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColorAs Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColorAs Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColorAs Int`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getComputedHeightAs Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisyCheckboxGroup

### Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Select options` | Fieldset legend text |
| `LegendSize` | String | `theme` | Legend text size token |
| `LegendBold` | Boolean | `False` | Render the fieldset legend caption in bold |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use box radius for container |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `Direction` | String | `vertical` | Items layout direction |
| `Alignment` | String | `start` | Checkbox element check position |
| `CheckboxColor` | String | `neutral` | Default checkbox color variant |
| `CheckboxSize` | String | `md` | Checkbox size token |
| `Gap` | Int | `8` | Gap between elements in dip |
| `RowGap` | Int | `8` | Row gap for wrapped flow mode in dip |
| `Required` | Boolean | `False` | Whether at least one option must be selected. |
| `HintText` | String | `` | Helper text displayed below the group. |
| `ErrorText` | String | `` | Error text displayed below the group when validation fails. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `ClearItems`
- `setItems(Items As Map)`
- `getItemsAs Map`
- `setChecked(CheckedIds As String)`
- `getCheckedAs String`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `IsItemChecked(Id As String) As Boolean`
- `setLegend(Value As String)`
- `getLegendAs String`
- `setLegendSize(Value As String)`
- `getLegendSizeAs String`
- `setLegendBold(Value As Boolean)`
- `getLegendBoldAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setAlignment(Value As String)`
- `getAlignmentAs String`
- `setCheckboxColor(Value As String)`
- `getCheckboxColorAs String`
- `setCheckboxSize(Value As String)`
- `getCheckboxSizeAs String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setRowGap(Value As Int)`
- `getRowGapAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `isRoundedAs Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorderAs Boolean`
- `GetComputedHeightAs Int`
- `Release`
- `RemoveViewFromParent`


---

## B4XDaisyCollapse

### Events
- `Click (Tag As Object)`
- `StateChanged (Open As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Open` | Boolean | `False` | Initial expanded state. |
| `Icon` | String | `none` | Expansion indicator icon. |
| `Variant` | String | `none` | Semantic variant. |
| `Rounded` | String | `theme` | Radius mode. |
| `Shadow` | String | `none` | Elevation level. |
| `Visible` | Boolean | `True` | Show or hide component. |
| `TitleText` | String | `Click to expand` | Text shown in the collapse title bar. |
| `TitleVariant` | String | `none` | Semantic color variant applied to the title background. |
| `TitleSize` | String | `text-sm` | Font size token for title text. |
| `TitleIconName` | String | `` | SVG asset filename shown on the left of the title text (e.g. home-solid.svg). |
| `TitleColor` | Color | `0x00000000` | Override title text color (wins over variant and TitleTextColor; 0 = unset). |
| `TitleIconColor` | Color | `0x00000000` | Override title icon color independently (0 = follow text color). |
| `Width` | String | `w-full` | Component width as Tailwind fraction of parent (w-full = fill parent). |
| `BorderWidth` | String | `border` | Tailwind border width utility (e.g. border, border-2, border-0) |
| `BorderStyle` | String | `solid` | The style of the border. |
| `BorderColor` | String | `border-base-300` | Tailwind border color utility (e.g. border-primary, border-base-300) |
| `IconPosition` | String | `right` | Position of the expansion indicator (arrow/plus). |
| `GroupName` | String | `` | Join multiple collapses into an accordion group. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `setOpen(Value As Boolean)`
- `getOpenAs Boolean`
- `Toggle`
- `setIcon(Value As String)`
- `getIconAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTitleText(Value As String)`
- `getTitleTextAs String`
- `setTitleVariant(Value As String)`
- `getTitleVariantAs String`
- `setTitleSize(Value As String)`
- `getTitleSizeAs String`
- `setTitleBackgroundColor(Value As Int)`
- `getTitleBackgroundColorAs Int`
- `setTitleTextColor(Value As Int)`
- `getTitleTextColorAs Int`
- `setTitleIconName(Value As String)`
- `getTitleIconNameAs String`
- `setTitleColor(Value As Int)`
- `getTitleColorAs Int`
- `setTitleIconColor(Value As Int)`
- `getTitleIconColorAs Int`
- `RefreshContent`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setBorderWidth(Value As String)`
- `getBorderWidthAs String`
- `setBorderColor(Value As String)`
- `getBorderColorAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setIconPosition(Value As String)`
- `getIconPositionAs String`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `CollapseTitleAs B4XDaisyCollapseTitle`
- `CollapseContentAs B4XDaisyCollapseContent`
- `getContentViewAs B4XView`


---

## B4XDaisyCollapseContent

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `BackgroundColor` | Color | `0x00000000` | Explicit background color override (0 uses parent/theme). |
| `TextColor` | Color | `0x00000000` | Explicit text color override for child labels (0 uses theme token). |
| `Visible` | Boolean | `True` | Show or hide content. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit child views. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Relayout`
- `getContainerAs B4XView`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`


---

## B4XDaisyCollapseTitle

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `Collapse Title` | Title text. |
| `Size` | String | `md` | Title size token. |
| `BackgroundColor` | Color | `0x00000000` | Explicit background color override (0 uses parent/theme). |
| `TextColor` | Color | `0x00000000` | Explicit text color override (0 uses theme token). |
| `IconName` | String | `` | SVG asset filename shown on the left (e.g. home-solid.svg). |
| `Variant` | String | `none` | Semantic color variant � overrides background and text colors. |
| `IconColor` | Color | `0x00000000` | Override icon color independently (0 = follow text color). |
| `Visible` | Boolean | `True` | Show or hide title. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setText(Value As String)`
- `getTextAs String`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setSize(Value As String)`
- `getSizeAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setIconName(Value As String)`
- `getIconNameAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setIconColor(Value As Int)`
- `getIconColorAs Int`


---

## B4XDaisyCountdown

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `horizontal` | Layout orientation for the segments. |
| `Gap` | String | `gap-2` | Spacing between segments. |
| `BackgroundColor` | String | `transparent` | Background color for the container. |
| `Border` | Boolean | `False` | Show a border around the container (standard base-300 border). |
| `Rounded` | String | `none` | Corner radius token applied to the container and child items. |
| `Shadow` | String | `none` | Shadow effect applied to child items. |
| `Padding` | String | `p-0` | Inner padding for the container. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `AddItem(Item As B4XDaisyCountdownItem)`
- `getViewAs B4XView`
- `getIsInitializedAs Boolean`
- `RemoveItem(Item As B4XDaisyCountdownItem)`
- `ClearItems`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getOrientationAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setOrientation(Value As String)`
- `getGapAs String`
- `setGap(Value As String)`
- `getBackgroundColorAs String`
- `setBackgroundColor(Value As String)`
- `getBorderAs Boolean`
- `setBorder(Value As Boolean)`
- `getPaddingAs String`
- `setPadding(Value As String)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyCountdownItem

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Int | `0` | Current numeric value (0-999). |
| `Digits` | Int | `1` | Minimum number of digits to display. |
| `Label` | String | `` | Text label for this segment (e.g. days, hours). |
| `LabelPosition` | String | `RIGHT` | Where to place the label relative to the number. |
| `Separator` | String | `` | Optional separator string (e.g. ":") shown after the number. |
| `TextSize` | String | `text-base` | Typography size token. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getIsInitializedAs Boolean`
- `getValueAs Int`
- `setValue(Value As Int)`
- `getDigitsAs Int`
- `setDigits(Value As Int)`
- `getLabelAs String`
- `setLabel(Value As String)`
- `getLabelPositionAs String`
- `setLabelPosition(Value As String)`
- `getSeparatorAs String`
- `setSeparator(Value As String)`
- `getTextSizeAs String`
- `setTextSize(Value As String)`
- `getVariantAs String`
- `setVariant(Value As String)`
- `getRoundedAs String`
- `setRounded(Value As String)`
- `getShadowAs String`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyDashboard

### Events
- `ButtonClick (ButtonId As String, ButtonDef As Map)`
- `PageChanged (PageIndex As Int, PageCount As Int)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `RowsPerPage` | Int | `6` | Number of grid rows per page. |
| `ColumnsPerPage` | Int | `4` | Number of grid columns per page when Auto Grid is False. |
| `AutoGrid` | Boolean | `False` | Automatically calculate rows and columns from available size. |
| `MinCellWidth` | Int | `72` | Minimum tile width in dip used by Auto Grid. |
| `MinCellHeight` | Int | `100` | Minimum tile height in dip used by Auto Grid. |
| `PagePadding` | Int | `16` | Outer page padding in dip. |
| `CellSpacing` | Int | `12` | Spacing between grid cells horizontally in dip. |
| `CellSpacingY` | Int | `0` | Spacing between grid cells vertically in dip. |
| `ActiveIndicatorColor` | Color | `0xFF3B82F6` | Active page indicator color. |
| `InactiveIndicatorColor` | Color | `0x553B82F6` | Inactive page indicator color. |
| `BackgroundImage` | String | `` | Full image path or asset file name used as dashboard wallpaper. |
| `TextColor` | Color | `0xFFFFFFFF` | Text color for all button labels. |
| `GridTopOffset` | Int | `12` | Extra top offset in dip applied before the first dashboard row. |
| `Width` | String | `100%` | Dashboard width relative to parent. Examples: 100%, 320dip, 300. |
| `Height` | String | `100%` | Dashboard height relative to parent. Examples: 100%, 600dip, 300. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Resize(Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView)`
- `IsReadyAs Boolean`
- `SetButtons(NewButtons As List)`
- `AddButton(Id As String, Label As String, ImagePath As String, SvgPath As String)`
- `AddButtonWithImagePath(Id As String, Label As String, FullImagePath As String) As Boolean`
- `AddButtonWithSvgPath(Id As String, Label As String, FullSvgPath As String) As Boolean`
- `UpdateButton(ButtonId As String, Updates As Map) As Boolean`
- `RemoveButton(ButtonId As String) As Boolean`
- `UpdateButtonLabel(ButtonId As String, NewLabel As String) As Boolean`
- `UpdateButtonImage(ButtonId As String, NewImagePath As String) As Boolean`
- `UpdateButtonBadge(ButtonId As String, NewBadgeValue As Object) As Boolean`
- `UpdateButtonValue(ButtonId As String, Key As String, Value As Object) As Boolean`
- `ClearButtons`
- `getButtonCountAs Int`
- `getButtonsPerPageAs Int`
- `getPageCountAs Int`
- `getCurrentPageAs Int`
- `SetCurrentPage(Index As Int)`
- `setRowsPerPage(Value As Int)`
- `getRowsPerPageAs Int`
- `setColumnsPerPage(Value As Int)`
- `getColumnsPerPageAs Int`
- `setAutoGrid(Value As Boolean)`
- `getAutoGridAs Boolean`
- `setMinCellWidth(Value As Int)`
- `getMinCellWidthAs Float`
- `setMinCellHeight(Value As Int)`
- `getMinCellHeightAs Float`
- `setPagePadding(Value As Int)`
- `getPagePaddingAs Float`
- `setCellSpacing(Value As Int)`
- `getCellSpacingAs Float`
- `setGridTopOffset(Value As Int)`
- `getGridTopOffsetAs Float`
- `setActiveIndicatorColor(Value As Int)`
- `getActiveIndicatorColorAs Int`
- `setActiveIndicatorColorVariant(VariantName As String)`
- `setInactiveIndicatorColor(Value As Int)`
- `getInactiveIndicatorColorAs Int`
- `setInactiveIndicatorColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setWidth(Value As Object)`
- `getWidthAs String`
- `setHeight(Value As Object)`
- `getHeightAs String`
- `setBackgroundImage(Path As String)`
- `getBackgroundImageAs String`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyDiff

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-full` | Width token or CSS size (for example w-full, 80%, 320px). |
| `Height` | String | `h-[300px]` | Height token or CSS size (for example h-[300px], 200px, 50%). |
| `Rounded` | String | `rounded-xl` | Radius mode. |
| `Shadow` | String | `none` | Elevation level. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `DiffType` | String | `auto` | Rendering mode for diff content. |
| `Position` | String | `0.5` | Split position from 0 to 1. |
| `Image1` | String | `photo-1560717789-0ac7c58ac90a.webp` | Asset file name for first image slot. |
| `Image2` | String | `photo-1560717789-0ac7c58ac90a-blur.webp` | Asset file name for second image slot. |
| `Text1` | String | `DAISY` | Text shown on the first side when DiffType is text. |
| `Text2` | String | `DAISY` | Text shown on the second side when DiffType is text. |
| `TextSize` | String | `text-4xl` | Tailwind text-size token for text mode. |
| `Text1Color` | String | `primary` | Daisy variant applied to text-side 1 (background + text color). |
| `Text2Color` | String | `success` | Daisy variant applied to text-side 2 (background + text color). |
| `Visible` | Boolean | `True` | Visible state. |
| `Enabled` | Boolean | `True` | Enabled state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getItem1ViewAs B4XView`
- `getItem2ViewAs B4XView`
- `setItem1(View As B4XView)`
- `setItem2(View As B4XView)`
- `setPosition(Value As Float)`
- `getPositionAs Float`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setDiffType(Value As String)`
- `getDiffTypeAs String`
- `setImage1(Value As String)`
- `getImage1As String`
- `setImage2(Value As String)`
- `getImage2As String`
- `setText1(Value As String)`
- `getText1As String`
- `setText2(Value As String)`
- `getText2As String`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setText1Color(Value As String)`
- `getText1ColorAs String`
- `setText2Color(Value As String)`
- `getText2ColorAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyDivider

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `` | Optional width token (Tailwind/CSS). Leave empty for direction-based auto sizing. |
| `Height` | String | `` | Optional height token (Tailwind/CSS). Leave empty for direction-based auto sizing. |
| `Direction` | String | `vertical` | vertical = classic divider line; horizontal = side divider. |
| `Placement` | String | `default` | Push text to start / center / end. |
| `Text` | String | `` | Optional divider label. |
| `TextSize` | String | `text-sm` | Tailwind text size token (for example: text-sm, text-lg, text-2xl). |
| `Gap` | String | `4` | Gap between text and lines (Tailwind spacing token or size). |
| `LineThickness` | String | `0.5` | Divider stroke thickness (Tailwind spacing token or size). |
| `Variant` | String | `none` | Daisy semantic divider color variant. |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override divider line color. |
| `TextColor` | Color | `0x00FFFFFF` | Override divider text color. |
| `Padding` | String | `` | Optional padding utility token(s). |
| `Margin` | String | `` | Optional margin utility token(s). Empty uses direction defaults: my-4 (vertical), mx-4 (horizontal). |
| `DebugBorders` | Boolean | `False` | Draw red debug borders around divider parts and text. |
| `Visible` | Boolean | `True` | Show or hide divider. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setPlacement(Value As String)`
- `getPlacementAs String`
- `setText(Value As String)`
- `getTextAs String`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setGap(Value As Object)`
- `getGapAs Float`
- `setLineThickness(Value As Object)`
- `getLineThicknessAs Float`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setDebugBorders(Value As Boolean)`
- `getDebugBordersAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `GetComputedHeightAs Int`
- `GetActualHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyDivision

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-10` | Tailwind size token or CSS size (eg w-12, 80px, 4em, 5rem) |
| `Height` | String | `h-10` | Tailwind size token or CSS size (eg h-12, 80px, 4em, 5rem) |
| `Padding` | String | `` | Tailwind/spacing padding utilities (eg p-2, px-3, 2) |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |
| `BackgroundColor` | Color | `0x00FFFFFF` | Background color of the container. |
| `TextColor` | Color | `0xFF000000` | Color of the text content. |
| `TextSize` | String | `text-sm` | Number in dip or Tailwind token (eg 12, text-sm, text-lg). |
| `Text` | String | `` | Text to display in the container. |
| `RoundedBox` | Boolean | `False` | Apply 16px rounded corners. |
| `Rounded` | String | `none` | Border radius utility. |
| `Shadow` | String | `none` | Shadow depth (elevation). |
| `PlaceContentCenter` | Boolean | `False` | Center content horizontally and vertically. |
| `BorderWidth` | Int | `0` | Border width in dips. |
| `BorderColor` | Color | `0xFF000000` | Border color. |
| `BorderStyle` | String | `solid` | HTML-like border style token. |
| `BorderReliefStrength` | Int | `55` | 0-100 strength for groove/ridge/inset/outset shading. |
| `AutoReliefByStyle` | Boolean | `True` | Use built-in per-style relief presets for groove/ridge/inset/outset. |
| `IsSkeleton` | Boolean | `False` | Show skeleton loading state. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `AutoResize` | Boolean | `False` | Automatically resize height to fit content. Text-only divisions grow like a paragraph (height:auto). Divisions with child views fit the bottom-most child. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAnimation`
- `StopAnimation`
- `setWidth(Value As Object)`
- `getWidthAs Object`
- `setHeight(Value As Object)`
- `getHeightAs Object`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Color As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setTextSize(Value As Object)`
- `getTextSizeAs Float`
- `setText(Text As String)`
- `getTextAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setPlaceContentCenter(Value As Boolean)`
- `getPlaceContentCenterAs Boolean`
- `setBorderWidth(Value As Int)`
- `getBorderWidthAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderColorVariant(VariantName As String)`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setBorderReliefStrength(Value As Int)`
- `getBorderReliefStrengthAs Int`
- `setAutoReliefByStyle(Value As Boolean)`
- `getAutoReliefByStyleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setIsSkeleton(Value As Boolean)`
- `getIsSkeletonAs Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyDock

### Events
- `ItemClick (ItemId As String)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `md` | Daisy dock size token. |
| `ActiveIndex` | Int | `1` | Zero-based active item index. Use -1 for no active item. |
| `BackgroundColor` | Color | `0x00000000` | Dock background color (0 = theme base-100). |
| `TextColor` | Color | `0x00000000` | Dock text/icon color (0 = theme base-content). |
| `Shadow` | String | `none` | Elevation shadow level. |
| `Rounded` | String | `none` | Corner radius style. |
| `Width` | String | `w-full` | Tailwind size token or CSS size string. |
| `Height` | String | `auto` | Tailwind size token or CSS size string. auto follows the dock size token. |
| `Enabled` | Boolean | `True` | Enable or disable dock interactions. |
| `Visible` | Boolean | `True` | Show or hide the dock. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int`
- `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int`
- `ClearItems`
- `SetItemTagByIndex(Index As Int, TagValue As Object)`
- `SetItemTag(ItemId As String, TagValue As Object)`
- `SetItemEnabledByIndex(Index As Int, Value As Boolean)`
- `SetItemEnabled(ItemId As String, Value As Boolean)`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `setSize(Value As String)`
- `getSizeAs String`
- `setActiveIndex(Value As Int)`
- `getActiveIndexAs Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`


---

## B4XDaisyDropdown

### Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, IsOpen As Boolean)`
- `Opened`
- `Closed`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables dropdown interactions. |
| `Visible` | Boolean | `True` | Shows or hides the dropdown. |
| `Open` | Boolean | `False` | Initial open state. |
| `Placement` | String | `start` | Alignment of the popup relative to the trigger. Default start keeps the popup left edge aligned with the target for top/bottom dropdowns. |
| `Direction` | String | `bottom` | Direction used when opening the dropdown. Together with Placement=start, the default behavior is bottom-left on the target unless changed. |
| `HoverOpen` | Boolean | `False` | Hover-style mode. On B4A this falls back to click behavior. |
| `ForceOpen` | Boolean | `False` | Forces the popup to stay open. |
| `ForceClose` | Boolean | `False` | Forces the popup to stay closed. |
| `MenuWidth` | String | `w-52` | Tailwind or CSS width token used for the popup menu. |
| `MenuPadding` | String | `p-2` | Tailwind padding applied to the popup menu. |
| `MenuRounded` | String | `theme` | Rounded token applied to the popup menu. |
| `MenuShadow` | String | `sm` | Shadow level applied to the popup menu. |
| `BringToFront` | Boolean | `True` | Brings the trigger and popup to the front when opened. |
| `MenuBackgroundColor` | Color | `0x00000000` | Optional popup menu background override. |
| `MenuTextColor` | Color | `0x00000000` | Optional popup menu text color override. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Open`
- `Close`
- `Toggle`
- `AddTitle(Text As String) As Int`
- `AddDividerAs Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `getMenuAs B4XDaisyMenu`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `ScrollToItem(TagValue As Object)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `GetPreferredWidthAs Int`
- `GetPreferredHeightAs Int`
- `GetPreferredMenuWidthAs Int`
- `GetPreferredMenuHeightAs Int`
- `AttachTo(Target As B4XView) As B4XView`
- `Detach`
- `UpdateTheme`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `ViewAs B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setOpen(Value As Boolean)`
- `getOpenAs Boolean`
- `setPlacement(Value As String)`
- `getPlacementAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setHoverOpen(Value As Boolean)`
- `getHoverOpenAs Boolean`
- `setForceOpen(Value As Boolean)`
- `getForceOpenAs Boolean`
- `setForceClose(Value As Boolean)`
- `getForceCloseAs Boolean`
- `setAnchorTarget(Value As B4XView)`
- `getAnchorTargetAs B4XView`
- `getAttachedModeAs Boolean`
- `setMenuWidth(Value As String)`
- `getMenuWidthAs String`
- `setMenuPadding(Value As String)`
- `getMenuPaddingAs String`
- `setMenuRounded(Value As String)`
- `getMenuRoundedAs String`
- `setMenuShadow(Value As String)`
- `getMenuShadowAs String`
- `setBringToFront(Value As Boolean)`
- `getBringToFrontAs Boolean`
- `setMenuBackgroundColor(Value As Int)`
- `getMenuBackgroundColorAs Int`
- `setMenuTextColor(Value As Int)`
- `getMenuTextColorAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`


---

## B4XDaisyFab

### Events
- `Click (Tag As Object)`
- `ActionClick (Index As Int, Tag As Object)`
- `MainActionClick (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Opened`
- `Closed`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enable or disable the FAB. |
| `Visible` | Boolean | `True` | Show or hide the FAB. |
| `Open` | Boolean | `False` | Initial open state. |
| `PlacementMode` | String | `fixed` | How the FAB is positioned. |
| `Placement` | String | `bottom-end` | Fixed placement preset. |
| `AnchorAlignment` | String | `start` | Horizontal alignment used with anchored placement. |
| `OnEdge` | Boolean | `False` | Overlap the active edge by half the trigger size. |
| `OpenMode` | String | `click` | Interaction mode used to open the FAB. |
| `LayoutMode` | String | `vertical` | Layout used when the FAB opens. |
| `Direction` | String | `top` | Expansion direction. |
| `BackdropEnabled` | Boolean | `True` | Show a backdrop and close on outside click. |
| `AutoCloseOnActionClick` | Boolean | `True` | Close after a regular action click. |
| `TriggerText` | String | `F` | Trigger button text. |
| `TriggerVariant` | String | `primary` | Trigger variant. |
| `TriggerStyle` | String | `solid` | Trigger style. |
| `TriggerSize` | String | `lg` | Trigger size. |
| `ChildActionSize` | String | `sm` | Child action button size. |
| `TriggerIconName` | String | `` | Optional trigger icon asset file name. |
| `TriggerCircle` | Boolean | `True` | Use circular trigger button. |
| `UseMainAction` | Boolean | `False` | Replace the trigger with a main action when open. |
| `MainActionText` | String | `M` | Main action button text. |
| `MainActionVariant` | String | `secondary` | Main action variant. |
| `MainActionIconName` | String | `` | Optional main action icon. |
| `UseCloseAction` | Boolean | `False` | Replace the trigger with a close action when open. |
| `CloseActionText` | String | `X` | Close action button text. |
| `CloseActionVariant` | String | `error` | Close action variant. |
| `CloseActionIconName` | String | `` | Optional close action icon. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Open`
- `Close`
- `Toggle`
- `ClearActions`
- `AddActionEx(Text As String, LabelText As String, Variant As String, Style As String, Size As String, IconName As String, Circle As Boolean, TagValue As Object) As Int`
- `AddAction(TagValue As Object, Variant As String, IconName As String) As Int`
- `AddActionDetailed(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object) As Int`
- `SetMainAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `SetCloseAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `GetActionButtonView(Index As Int) As B4XView`
- `SetActionVisible(Index As Int, Value As Boolean)`
- `setAnchorTarget(Value As B4XView)`
- `getAnchorTargetAs B4XView`
- `setAnchorAlignment(Value As String)`
- `getAnchorAlignmentAs String`
- `setAnchorView(Value As B4XView)`
- `getAnchorViewAs B4XView`
- `setOverlayHost(Value As B4XView)`
- `getOverlayHostAs B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Resize(Width As Double, Height As Double)`
- `BringToFront`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setOpen(Value As Boolean)`
- `getOpenAs Boolean`
- `setPlacementMode(Value As String)`
- `getPlacementModeAs String`
- `setPlacement(Value As String)`
- `getPlacementAs String`
- `setOnEdge(Value As Boolean)`
- `getOnEdgeAs Boolean`
- `setOpenMode(Value As String)`
- `getOpenModeAs String`
- `setLayoutMode(Value As String)`
- `getLayoutModeAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setBackdropEnabled(Value As Boolean)`
- `getBackdropEnabledAs Boolean`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `getAutoCloseOnActionClickAs Boolean`
- `setTriggerText(Value As String)`
- `getTriggerTextAs String`
- `setTriggerVariant(Value As String)`
- `getTriggerVariantAs String`
- `setTriggerStyle(Value As String)`
- `getTriggerStyleAs String`
- `setTriggerSize(Value As String)`
- `getTriggerSizeAs String`
- `setChildActionSize(Value As String)`
- `getChildActionSizeAs String`
- `setTriggerIconName(Value As String)`
- `getTriggerIconNameAs String`
- `setTriggerCircle(Value As Boolean)`
- `getTriggerCircleAs Boolean`
- `setUseMainAction(Value As Boolean)`
- `getUseMainActionAs Boolean`
- `setMainActionText(Value As String)`
- `getMainActionTextAs String`
- `setMainActionVariant(Value As String)`
- `getMainActionVariantAs String`
- `setMainActionIconName(Value As String)`
- `getMainActionIconNameAs String`
- `setUseCloseAction(Value As Boolean)`
- `getUseCloseActionAs Boolean`
- `setCloseActionText(Value As String)`
- `getCloseActionTextAs String`
- `setCloseActionVariant(Value As String)`
- `getCloseActionVariantAs String`
- `setCloseActionIconName(Value As String)`
- `getCloseActionIconNameAs String`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyFieldset

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Legend Caption` | Caption text shown in the fieldset header |
| `LegendSize` | String | `text-sm` | Tailwind-like text size token for legend |
| `LegendBold` | Boolean | `False` | Render the legend caption in bold |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip (p-4) |
| `AutoHeight` | Boolean | `False` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use box radius for container |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `ApplyDesignerProps(Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setLegend(l As String)`
- `getLegendAs String`
- `setLegendSize(s As String)`
- `getLegendSizeAs String`
- `setLegendBold(Value As Boolean)`
- `getLegendBoldAs Boolean`
- `setVariant(v As String)`
- `getVariantAs String`
- `setBorderStyle(s As String)`
- `getBorderStyleAs String`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Object)`
- `getTextColorAs Int`
- `setBorderColor(Value As Object)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorderAs Boolean`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `isRoundedAs Boolean`
- `setRoundedBox(b As Boolean)`
- `isRoundedBoxAs Boolean`
- `setShadow(s As String)`
- `getShadowAs String`
- `GetContentPanelAs B4XView`
- `AddContentView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `getTagAs Object`
- `setTag(Value As Object)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyFileHandler

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `Initialize`
- `SaveAs(Source As InputStream, MimeType As String, Title As String) As ResumableSub`
- `LoadAs ResumableSub`
- `CheckForReceivedFilesAs LoadResult`
- `SaveAs(ParentPage As Object, AnchorView As Object, Text As String) As ResumableSub`
- `Load(ParentPage As Object, AnchorView As Object) As ResumableSub`
- `UrlToLoadResult(url As String) As LoadResult`


---

## B4XDaisyFileInput

### Events
- `Click (Tag As Object)`
- `FileSelected (FileName As String)`
- `Cancelled ()`
- `FocusChanged (HasFocus As Boolean)`
- `AppendClick`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `ButtonText` | String | `Choose file` | Label shown on the file selector button (maps to CSS ::file-selector-button text). |
| `Placeholder` | String | `No file chosen` | Text shown in the filename area when no file is selected. |
| `FileName` | String | `` | Currently selected file name displayed in the input. |
| `LabelAbove` | String | `` | Label text shown above the input (maps to fieldset-legend in docs fieldset example). |
| `HintText` | String | `` | Helper text displayed below the input (maps to CSS .label standalone pattern, e.g. Max size 2MB). |
| `ErrorText` | String | `` | Error text displayed below the input in the error color. When non-empty it replaces the hint and turns the border error-colored. |
| `Required` | Boolean | `False` | Whether a file must be selected. |
| `Variant` | String | `none` | DaisyUI color variant applied to the selector button and input border. |
| `Size` | String | `md` | DaisyUI size variant controlling height and font-size (xs/sm intentionally omitted). |
| `Style` | String | `default` | file-input-ghost style (transparent surface, no border). |
| `Radius` | String | `theme` | Corner radius token. |
| `Enabled` | Boolean | `True` | Whether the file input is enabled. |
| `Visible` | Boolean | `True` | Controls view visibility. |
| `BackgroundColor` | Color | `0x00000000` | Override input surface background color. |
| `TextColor` | Color | `0x00000000` | Override filename text color. |
| `PlaceholderColor` | Color | `0x00000000` | Override empty-state filename text color. |
| `ButtonColor` | Color | `0x00000000` | Override selector button background color. |
| `ButtonTextColor` | Color | `0x00000000` | Override selector button text color. |
| `BorderColor` | Color | `0x00000000` | Override input border color. |
| `Padding` | String | `` | Tailwind spacing utility for the filename padding-inline-end (e.g. pe-4, p-4). |
| `Shadow` | String | `none` | Elevation shadow level applied to the input surface. |
| `Typeface` | String | `DEFAULT` | Font family for the filename text. |
| `Gravity` | String | `LEFT` | Horizontal alignment of the filename text. |
| `Alpha` | Float | `1.0` | View opacity from 0 (invisible) to 1 (fully opaque). |
| `Accept` | String | `` | File type filter for the content chooser (e.g. image/*, .pdf, .jpg,.png). Maps to HTML accept attribute. |
| `MaxSize` | Int | `0` | Maximum file size allowed in megabytes. A value of 0 means no limit. |
| `AppendIcon` | String | `` | SVG icon asset filename to display on the right end of the file input (e.g. x-solid-full.svg). |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setAppendIcon(Value As String)`
- `getAppendIconAs String`
- `setButtonText(Value As String)`
- `getButtonTextAs String`
- `setAccept(Value As String)`
- `getAcceptAs String`
- `setFileDate(Value As Long)`
- `getFileDateAs Long`
- `setFileSize(Value As Long)`
- `getFileSizeAs Long`
- `setFileBase64(Value As String)`
- `getFileBase64As String`
- `setMimeType(Value As String)`
- `getMimeTypeAs String`
- `setMaxSize(Value As Int)`
- `getMaxSizeAs Int`
- `getExceedsSizeAs Boolean`
- `getFileInputStreamAs InputStream`
- `getFileBytesAs Byte()`
- `GetBitmapAs B4XBitmap`
- `getExtensionAs String`
- `getIsImageAs Boolean`
- `getIsVideoAs Boolean`
- `getIsPDFAs Boolean`
- `getIsExcelAs Boolean`
- `getIsWordAs Boolean`
- `setPlaceholder(Value As String)`
- `getPlaceholderAs String`
- `setFileName(Value As String)`
- `getFileNameAs String`
- `setLabelAbove(Value As String)`
- `getLabelAboveAs String`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setRadius(Value As String)`
- `getRadiusAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setPlaceholderColor(Value As Int)`
- `getPlaceholderColorAs Int`
- `setButtonColor(Value As Int)`
- `getButtonColorAs Int`
- `setButtonTextColor(Value As Int)`
- `getButtonTextColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setTypeface(Value As String)`
- `getTypefaceAs String`
- `setGravity(Value As String)`
- `getGravityAs String`
- `setAlpha(Value As Float)`
- `getAlphaAs Float`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getViewAs B4XView`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `RemoveViewFromParent`
- `Release`
- `GetComputedHeightAs Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Clear`


---

## B4XDaisyFilter

### Events
- `ResetClick`
- `Changed (Keys As List)`
- `ItemChanged (Id As String, Text As String, Checked As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables or disables the component. |
| `Visible` | Boolean | `True` | Shows or hides the component. |
| `Options` | String | `svelte:Svelte` | Comma-separated or pipe-separated key:value pairs. |
| `ActiveKey` | String | `` | Key of the active option. |
| `Rounded` | String | `theme` | Corner radius option. |
| `Variant` | String | `none` | Daisy color variant. |
| `FilterStyle` | String | `solid` | Styling of choices. |
| `Size` | String | `md` | Sizing variant. |
| `ResetPosition` | String | `left` | Position of the reset button. |
| `ResetText` | String | `×` | Text for the reset button. |
| `MultiSelect` | Boolean | `False` | Allow multiple selection like checkboxes. |
| `Orientation` | String | `horizontal` | Layout orientation. |
| `AnimationDuration` | Int | `200` | Layout transition duration in milliseconds (0 to disable). |
| `Width` | String | `w-full` | Sizing width token. |
| `Height` | String | `h-auto` | Sizing height token. |
| `Padding` | String | `` | Spacing padding token. |
| `Margin` | String | `` | Spacing margin token. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setOptions(Value As String)`
- `getOptionsAs String`
- `setActiveKey(Value As String)`
- `getActiveKeyAs String`
- `setOptionsMap(Value As Map)`
- `getOptionsMapAs Map`
- `setOptionsList(Value As List)`
- `getOptionsListAs List`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setFilterStyle(Value As String)`
- `getFilterStyleAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setResetPosition(Value As String)`
- `getResetPositionAs String`
- `setResetText(Value As String)`
- `getResetTextAs String`
- `setMultiSelect(Value As Boolean)`
- `getMultiSelectAs Boolean`
- `setOrientation(Value As String)`
- `getOrientationAs String`
- `setAnimationDuration(Value As Int)`
- `getAnimationDurationAs Int`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setItemChecked(Key As String, Checked As Boolean)`
- `isItemChecked(Key As String) As Boolean`
- `getCheckedKeysAs List`
- `setChecked(CheckedKeys As String)`
- `getCheckedAs String`
- `setItems(Value As Map)`
- `getItemsAs Map`
- `setSelectedIds(Ids As List)`
- `getSelectedIdsAs List`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `RemoveViewFromParent`
- `GetComputedHeightAs Int`


---

## B4XDaisyFlexItem

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `Initialize(Owner As B4XDaisyFlexPanel, v As B4XView)`
- `ResetAs B4XDaisyFlexItem`
- `Grow(Value As Float) As B4XDaisyFlexItem`
- `Shrink(Value As Float) As B4XDaisyFlexItem`
- `Flex(GrowValue As Float, ShrinkValue As Float) As B4XDaisyFlexItem`
- `Flex1As B4XDaisyFlexItem`
- `FlexAutoAs B4XDaisyFlexItem`
- `FlexInitialAs B4XDaisyFlexItem`
- `FlexNoneAs B4XDaisyFlexItem`
- `MinW(Value As Int) As B4XDaisyFlexItem`
- `MaxW(Value As Int) As B4XDaisyFlexItem`
- `MinH(Value As Int) As B4XDaisyFlexItem`
- `MaxH(Value As Int) As B4XDaisyFlexItem`
- `MinSize(W As Int, H As Int) As B4XDaisyFlexItem`
- `MaxSize(W As Int, H As Int) As B4XDaisyFlexItem`
- `Basis(W As Int, H As Int) As B4XDaisyFlexItem`
- `BasisPercent(MainPct As Float, CrossPct As Float) As B4XDaisyFlexItem`
- `Margins(Left As Int, Top As Int, Right As Int, Bottom As Int) As B4XDaisyFlexItem`
- `MarginAll(Value As Int) As B4XDaisyFlexItem`
- `MarginX(Value As Int) As B4XDaisyFlexItem`
- `MarginY(Value As Int) As B4XDaisyFlexItem`
- `AlignSelf(Value As String) As B4XDaisyFlexItem`
- `Order(Value As Int) As B4XDaisyFlexItem`
- `WrapBefore(Value As Boolean) As B4XDaisyFlexItem`
- `ApplyAs B4XDaisyFlexItem`
- `ApplyNoRelayoutAs B4XDaisyFlexItem`
- `ApplyEx(DoRelayout As Boolean) As B4XDaisyFlexItem`
- `getViewAs B4XView`


---

## B4XDaisyFlexLayout

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `Initialize(Container As B4XView)`
- `SetContainer(Container As B4XView)`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
- `SetItemFlexEx(v As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis(v As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent(v As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent(v As B4XView)`
- `SetItemMargins(v As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf(v As B4XView, AlignSelf As String)`
- `SetItemOrder(v As B4XView, OrderValue As Int)`
- `SetItemWrapBefore(v As B4XView, Value As Boolean)`
- `ClearItemMeta(v As B4XView)`
- `ClearAllItemMeta`
- `Relayout`
- `GetContentWidthAs Int`
- `GetContentHeightAs Int`


---

## B4XDaisyFlexPanel

### Events
- `Ready`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Direction` | String | `row` |  |
| `WrapMode` | String | `wrap` |  |
| `GapX` | Int | `8` |  |
| `GapY` | Int | `8` |  |
| `PaddingLeft` | Int | `8` |  |
| `PaddingTop` | Int | `8` |  |
| `PaddingRight` | Int | `8` |  |
| `PaddingBottom` | Int | `8` |  |
| `JustifyContent` | String | `start` |  |
| `AlignItems` | String | `start` |  |
| `AlignContent` | String | `start` |  |
| `AnimateDuration` | Int | `0` |  |
| `AllowShrinkWhenWrap` | Boolean | `False` |  |
| `AutoRelayout` | Boolean | `True` |  |

### Public Methods
- `Initialize`
- `InitForCode(Callback As Object, EventName As String, Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetComputedHeightAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getIsInitializedAs Boolean`
- `GetContentPanelAs B4XView`
- `Relayout`
- `GetMeasuredWidthAs Int`
- `GetMeasuredHeightAs Int`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setWrapMode(Value As String)`
- `getWrapModeAs String`
- `setJustifyContent(Value As String)`
- `getJustifyContentAs String`
- `setAlignItems(Value As String)`
- `getAlignItemsAs String`
- `setAlignContent(Value As String)`
- `getAlignContentAs String`
- `setGapX(Value As Int)`
- `getGapXAs Int`
- `setGapY(Value As Int)`
- `getGapYAs Int`
- `setPaddingLeft(Value As Int)`
- `getPaddingLeftAs Int`
- `setPaddingTop(Value As Int)`
- `getPaddingTopAs Int`
- `setPaddingRight(Value As Int)`
- `getPaddingRightAs Int`
- `setPaddingBottom(Value As Int)`
- `getPaddingBottomAs Int`
- `setAnimateDuration(Value As Int)`
- `getAnimateDurationAs Int`
- `setAllowShrinkWhenWrap(Value As Boolean)`
- `getAllowShrinkWhenWrapAs Boolean`
- `setAutoRelayout(Value As Boolean)`
- `getAutoRelayoutAs Boolean`
- `AddItem(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddItemEx(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XDaisyFlexItem`
- `Item(v As B4XView) As B4XDaisyFlexItem`
- `RemoveItem(v As B4XView)`
- `ClearItems`
- `getNumberOfItemsAs Int`
- `GetItem(Index As Int) As B4XView`
- `SetItemFlexEx(v As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis(v As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent(v As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent(v As B4XView)`
- `SetItemMargins(v As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf(v As B4XView, AlignSelf As String)`
- `SetItemOrder(v As B4XView, OrderValue As Int)`
- `SetItemWrapBefore(v As B4XView, Value As Boolean)`
- `ClearItemMeta(v As B4XView)`
- `ClearAllItemMeta`
- `SetItemFlexEx_NoRelayout(v As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis_NoRelayout(v As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent_NoRelayout(v As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent_NoRelayout(v As B4XView)`
- `SetItemMargins_NoRelayout(v As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf_NoRelayout(v As B4XView, AlignSelf As String)`
- `SetItemOrder_NoRelayout(v As B4XView, OrderValue As Int)`
- `SetItemWrapBefore_NoRelayout(v As B4XView, Value As Boolean)`
- `BeginUpdate`
- `EndUpdate(DoRelayout As Boolean)`


---

## B4XDaisyGrid

### Events
- `LayoutChanged (ContentHeight As Float)`
- `ItemPlaced (Info As Map)`
- `BeforePlace (Key As String, Info As Map)`
- `AfterPlace (Key As String, Info As Map)`
- `LayoutDiff (Changes As List)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `ClassName` | String | `grid grid-cols-1 gap-4` | Tailwind-like grid utility string |
| `Cols` | Int | `1` | Fallback columns when no class token is set |
| `Gap` | String | `4` | Tailwind spacing token or CSS/dip value |
| `GapX` | String | `` | Optional horizontal gap override |
| `GapY` | String | `` | Optional vertical gap override |
| `AutoRows` | String | `minmax(72dip` | Grid auto-rows template |
| `TemplateRows` | String | `` | Explicit row template (e.g., "100dip 1fr 200dip") |
| `Padding` | String | `0` | Padding shorthand |
| `Dense` | Boolean | `False` | Enable dense packing algorithm |
| `Debug` | Boolean | `False` | Enable debug logging |
| `DebugOverlay` | Boolean | `False` | Draw grid lines and labels |
| `AutoRegisterChildrenFromTag` | Boolean | `False` | Register child views using Tag metadata |
| `EmitLayoutDiff` | Boolean | `False` | Raise LayoutDiff event with changed items |
| `DefaultAnimMs` | Int | `0` | Default placement animation in ms |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `getViewAs B4XView`
- `getIsInitializedAs Boolean`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setClassName(ClassText As String)`
- `getClassNameAs String`
- `setCols(Value As Int)`
- `getColsAs Int`
- `setGap(Value As Object)`
- `getGapAs Float`
- `setGapX(Value As Object)`
- `getGapXAs Float`
- `setGapY(Value As Object)`
- `getGapYAs Float`
- `SetGapXY(ValueX As Float, ValueY As Float)`
- `SetAutoRowsTemplate(Template As String)`
- `setAutoRows(Template As String)`
- `getAutoRowsAs String`
- `setTemplateRows(Template As String)`
- `getTemplateRowsAs String`
- `setPadding(Value As Object)`
- `getPaddingAs Float`
- `SetPaddingLTRB(Left As Float, Top As Float, Right As Float, Bottom As Float)`
- `SetBreakpoint(Name As String, MinWidth As Float)`
- `setDense(Value As Boolean)`
- `getDenseAs Boolean`
- `setDebug(Value As Boolean)`
- `getDebugAs Boolean`
- `setDebugOverlay(Value As Boolean)`
- `getDebugOverlayAs Boolean`
- `setAutoRegisterChildrenFromTag(Value As Boolean)`
- `getAutoRegisterChildrenFromTagAs Boolean`
- `setEmitLayoutDiff(Value As Boolean)`
- `getEmitLayoutDiffAs Boolean`
- `setDefaultAnimMs(Value As Int)`
- `getDefaultAnimMsAs Int`
- `AddItem(View As B4XView, ClassText As String) As String`
- `AddItemWithKey(Key As String, View As B4XView, ClassText As String)`
- `UpdateItemClass(Key As String, ClassText As String)`
- `RemoveItem(Key As String)`
- `SetItemVisible(Key As String, Visible As Boolean)`
- `SetItemOrder(Key As String, Order As Int)`
- `SetItemRowSpan(Key As String, RowSpan As Int, Bp As String)`
- `SetItemColSpan(Key As String, ColSpan As Int, Bp As String)`
- `SetItemColStart(Key As String, ColStart As Int, Bp As String)`
- `SetItemRowStart(Key As String, RowStart As Int, Bp As String)`
- `SetItemJustify(Key As String, Value As String, Bp As String)`
- `SetItemAlign(Key As String, Value As String, Bp As String)`
- `SetItemHidden(Key As String, Hidden As Boolean, Bp As String)`
- `GetItemPlacement(Key As String) As GridPlacement`
- `BeginUpdate`
- `EndUpdate`
- `Relayout`
- `RegisterChildrenFromTag(OptionalDefaultClass As String)`
- `GetLayoutSnapshotAs List`
- `DebugDumpSnapshotAs String`
- `GetCollisionDiagnosticsAs List`
- `GetCollisionReportAs String`
- `GetResolvedItemRules(Key As String, Width As Float) As Map`
- `GetResolvedItemRulesNow(Key As String) As Map`
- `GetResolvedContainerRulesNowAs Map`
- `GetItemSpec(Key As String) As GridItemSpec`
- `ApplyItemSpec(Spec As GridItemSpec)`
- `GetAllItemSpecsAs List`
- `ExportLayoutSpecsAs List`
- `ImportLayoutSpecs(Specs As List, IgnoreMissing As Boolean)`
- `ExportLayoutProfile(ProfileName As String) As Map`
- `ImportLayoutProfile(Profile As Map, IgnoreMissing As Boolean)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyHero

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `BackgroundImage` | String | `` | Background image asset name. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `BackgroundColor` | Color | `0xFFF3F4F6` | Hero background color (base-200). |
| `TextColor` | Color | `0xFF000000` | Hero text color. |
| `Rounded` | String | `rounded-none` | Corner radius mode. |
| `RoundedBox` | Boolean | `False` | Use rounded-box radius when Rounded is theme. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `OverlayVisible` | Boolean | `False` | Show/Hide the hero overlay. |
| `OverlayColor` | Color | `0x80000000` | Hero overlay color (with alpha). |
| `Width` | String | `w-full` | Tailwind width class (eg 80, full, 500px). |
| `Height` | String | `h-[320px]` | Tailwind height class (eg 80, screen, 500px). |
| `Direction` | String | `vertical` | Layout direction. |
| `ContentAlignment` | String | `center` | Content alignment. |
| `Gap` | String | `4` | Tailwind gap token (eg 2, 4, 8). |
| `Padding` | String | `4` | Tailwind padding token (eg 4, 8, 12). |
| `Visible` | Boolean | `True` | Visible state. |
| `AutoResize` | Boolean | `False` | Automatically resize height to fit child content. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setBackgroundImage(Value As String)`
- `getBackgroundImageAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColorVariant(Value As String)`
- `getBackgroundColorVariantAs String`
- `setTextColorVariant(Value As String)`
- `getTextColorVariantAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setOverlayVisible(Value As Boolean)`
- `getOverlayVisibleAs Boolean`
- `setOverlayColor(Value As Int)`
- `getOverlayColorAs Int`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setContentAlignment(Value As String)`
- `getContentAlignmentAs String`
- `setGap(Value As String)`
- `getGapAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `GetContentPanelAs B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyHover3d

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enable or disable pointer interaction. |
| `Visible` | Boolean | `True` | Controls visibility. |
| `MaxTilt` | Float | `10` | Maximum tilt angle in degrees for the hover surface. |
| `ScaleOnHover` | Float | `1.05` | Surface scale applied while hovering. |
| `ShineEffect` | Boolean | `True` | Shows a highlight sheen on hover. |
| `Perspective` | Float | `1200` | 3D camera distance for the surface. |
| `ResetDuration` | Int | `500` | Reset animation duration in milliseconds. |
| `Variant` | String | `none` | Theme variant for the surface background. |
| `Rounded` | String | `rounded-2xl` | Border radius token for the hover surface. |
| `Shadow` | String | `none` | Hover shadow intensity. |
| `Padding` | String | `p-0` | Tailwind-style padding utilities for hosted content. |
| `Margin` | String | `` | Tailwind-style margin utilities for the outer host. |
| `Width` | String | `w-full` | Tailwind size token or CSS size for the host width. |
| `Height` | String | `h-content` | Tailwind size token or CSS size for the host height. Use h-content or h-auto to fit hosted content. |
| `ContentType` | String | `custom` | Mutually exclusive content mode. Use image for internal image rendering or custom for hosted child content. |
| `Image` | String | `` | Asset name or path used when Content Type is image. |
| `ContentBackgroundColor` | Color | `0x00000000` | Optional background override for the custom content shell. |
| `ContentRounded` | String | `none` | Border radius token for the custom content shell. |
| `ContentPadding` | String | `` | Tailwind-style padding utilities for the custom content shell. |
| `ContentShadow` | String | `none` | Shadow intensity for the custom content shell. |
| `BackgroundColor` | Color | `0x00000000` | Optional explicit surface background override. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setMaxTilt(Value As Float)`
- `getMaxTiltAs Float`
- `setScaleOnHover(Value As Float)`
- `getScaleOnHoverAs Float`
- `setShineEffect(Value As Boolean)`
- `getShineEffectAs Boolean`
- `setPerspective(Value As Float)`
- `getPerspectiveAs Float`
- `setResetDuration(Value As Int)`
- `getResetDurationAs Int`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setContentType(Value As String)`
- `getContentTypeAs String`
- `setImage(Value As String)`
- `getImageAs String`
- `setContentBackgroundColor(Value As Int)`
- `getContentBackgroundColorAs Int`
- `setContentRounded(Value As String)`
- `getContentRoundedAs String`
- `setContentPadding(Value As String)`
- `getContentPaddingAs String`
- `setContentShadow(Value As String)`
- `getContentShadowAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RemoveAllViews`
- `getContentPanelAs B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyIconButton

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `IconAsset` | String | `` | SVG icon asset file name. |
| `IconColor` | Color | `0x00FFFFFF` | Override icon color (0 = auto from variant). |
| `Variant` | String | `default` | Semantic color variant. |
| `Style` | String | `solid` | Daisy button style. |
| `Size` | String | `md` | Daisy button size token. |
| `CustomSize` | Int | `0` | Custom width/height in dip. When > 0, overrides the Size token. |
| `Shape` | String | `square` | Icon button shape (square uses Rounded for corners; circle is always rounded-full). |
| `Rounded` | String | `theme` | Border radius for square shape. Ignored when Shape=circle. |
| `Padding` | String | `` | Tailwind padding utility tokens. |
| `Margin` | String | `` | Tailwind margin utility tokens. |
| `Loading` | Boolean | `False` | Shows loading spinner and disables button. |
| `Disabled` | Boolean | `False` | Applies disabled behavior. |
| `Active` | Boolean | `False` | Applies btn-active behavior. |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `Visible` | Boolean | `True` | Show or hide component. |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(SizeDip As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setIconAsset(Value As String)`
- `getIconAssetAs String`
- `setIconColor(Value As Int)`
- `getIconColorAs Int`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setCustomSize(Value As Int)`
- `getCustomSizeAs Int`
- `setShape(Value As String)`
- `getShapeAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setLoading(Value As Boolean)`
- `getLoadingAs Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabledAs Boolean`
- `setActive(Value As Boolean)`
- `getActiveAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getViewAs B4XView`
- `GetComputedHeightAs Int`
- `GetComputedWidthAs Int`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisyImage

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `ResizeMode` | String | `FIT` |  |
| `Round` | Boolean | `False` |  |
| `CornersRadius` | Int | `0` |  |
| `BackgroundColor` | Color | `0xFFAAAAAA` |  |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getRoundedImageAs Boolean`
- `setRoundedImage(b As Boolean)`
- `getCornersRadiusAs Int`
- `setCornersRadius(i As Int)`
- `getResizeModeAs String`
- `setResizeMode(s As String)`
- `Update`
- `Load(Dir As String, FileName As String)`
- `Clear`
- `setBitmap(Bmp As B4XBitmap)`
- `getBitmapAs B4XBitmap`


---

## B4XDaisyIndicator

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `HorizontalPlacement` | String | `end` | Horizontal indicator placement. |
| `VerticalPlacement` | String | `top` | Vertical indicator placement. |
| `OffsetX` | String | `0` | Horizontal offset (Tailwind/CSS size token). |
| `OffsetY` | String | `0` | Vertical offset (Tailwind/CSS size token). |
| `Text` | String | `` | Indicator text content. |
| `Counter` | Boolean | `False` | Counter mode: 0 hides, 1..99 shows number, >99 shows 99+. |
| `CapValue` | Int | `99` | Numeric cap - values above this display as cap+ (0 disables capping). |
| `Variant` | String | `none` | Badge variant for indicator content. |
| `Size` | String | `sm` | Badge size token for indicator content. |
| `IconAsset` | String | `` | Optional SVG icon asset. |
| `Rounded` | String | `rounded` | Rounded mode for indicator content. |
| `TextColor` | Color | `0x00000000` | Optional text color override (0 = auto). |
| `BackgroundColor` | Color | `0x00000000` | Optional background color override (0 = auto). |
| `Visible` | Boolean | `True` | Show or hide indicator. |
| `Clickable` | Boolean | `False` | When True, the indicator handles clicks via the Click event. When False (default), touches pass through to the parent. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `AttachToTarget(Target As B4XView)`
- `DetachTarget`
- `RefreshPlacement`
- `setHorizontalPlacement(Value As String)`
- `getHorizontalPlacementAs String`
- `setVerticalPlacement(Value As String)`
- `getVerticalPlacementAs String`
- `setOffsetX(Value As Object)`
- `getOffsetXAs Float`
- `setOffsetY(Value As Object)`
- `getOffsetYAs Float`
- `setText(Value As String)`
- `getTextAs String`
- `setCounter(Value As Boolean)`
- `getCounterAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setIconAsset(Value As String)`
- `getIconAssetAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColorVariant(VariantName As String)`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setCapValue(Value As Int)`
- `getCapValueAs Int`
- `setValue(Value As Int)`
- `getValueAs Int`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`
- `IncrementAs Int`
- `IncrementBy(Amount As Int) As Int`
- `DecrementAs Int`
- `DecrementBy(Amount As Int) As Int`


---

## B4XDaisyInput

### Events
- `TextChanged (Old As String, New As String)`
- `EnterPressed (Text As String)`
- `FocusChanged (HasFocus As Boolean)`
- `Click (Tag As Object)`
- `PrependClick`
- `AppendClick`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Variant` | String | `none` | DaisyUI color variant applied To border color. |
| `Size` | String | `md` | DaisyUI size variant controlling height And font-size. |
| `Text` | String | `` | Current input text value. |
| `Placeholder` | String | `Type here` | Placeholder text shown inside the input when empty. |
| `HintText` | String | `` | Helper text displayed below the input (maps To CSS .label standalone pattern). |
| `ErrorText` | String | `` | Text displayed below the input when in the error validation state. |
| `RequiredErrorText` | String | `` | Error text shown when the required field is empty. |
| `MinLengthErrorText` | String | `` | Error text shown when the input is shorter than Min Length. |
| `MaxLengthErrorText` | String | `` | Error text shown when the input exceeds Max Length. |
| `PatternErrorText` | String | `` | Error text shown when the Validation Pattern does not match. |
| `LabelAbove` | String | `` | Label text. When FloatingLabel=True this becomes the floating label; otherwise shown above the input. |
| `InputType` | String | `text` | Keyboard input Type For the native EditText. |
| `MinValue` | String | `0` | Minimum value for stepper input type. |
| `MaxValue` | String | `100` | Maximum value for stepper input type. |
| `StepValue` | String | `1` | Increment/decrement amount for stepper input type. |
| `PasswordChar` | String | `*` | Character to use for password masking. Defaults to * (asterisk). |
| `IconLeft` | String | `` | Left-side SVG icon asset filename. |
| `IconRight` | String | `` | Right-side SVG icon asset filename. |
| `LabelLeft` | String | `` | Left-side text label inside input. |
| `LabelRight` | String | `` | Right-side text label inside input. |
| `FloatingLabel` | Boolean | `False` | If True the label floats between placeholder and above-input positions. |
| `Required` | Boolean | `False` | Whether this field is required. |
| `ValidationPattern` | String | `` | Regular expression pattern For validation. |
| `MinLength` | Int | `0` | Minimum character count. |
| `MaxLength` | Int | `0` | Maximum character count. |
| `Radius` | String | `theme` | Corner radius token. |
| `Enabled` | Boolean | `True` | Whether the input is enabled. |
| `SingleLine` | Boolean | `True` | Restrict input To a single line. |
| `Visible` | Boolean | `True` | Controls view visibility. |
| `BackgroundColor` | Color | `0x00000000` | Override background color. |
| `TextColor` | Color | `0x00000000` | Override text color. |
| `PlaceholderColor` | Color | `0x00000000` | Override placeholder color. |
| `Padding` | String | `` | Tailwind spacing utility. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `ImeOptions` | String | `normal` | Keyboard action button (IME options) For the native EditText. |
| `Gravity` | String | `LEFT` | Horizontal text alignment within the input. |
| `Typeface` | String | `DEFAULT` | Font family For the input text. |
| `MaxLines` | Int | `1` | Maximum visible lines (set > 1 For multiline input). |
| `MinLines` | Int | `1` | Minimum visible lines For multiline input. |
| `AllCaps` | Boolean | `False` | Force all input text To uppercase. |
| `ReadOnly` | Boolean | `False` | Makes the input read-only (selectable but Not editable). |
| `CursorVisible` | Boolean | `True` | Whether the text cursor is visible. |
| `LetterSpacing` | Float | `0` | Extra spacing between characters (em units, 0 = normal). |
| `Alpha` | Float | `1.0` | View opacity from 0 (invisible) To 1 (fully opaque). |
| `AutoHeight` | Boolean | `False` | Auto-grow height based on text lines (multiline only). |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `RemoveViewFromParent`
- `RequestFocus`
- `Release`
- `UpdateTheme`
- `setText(Value As String)`
- `getTextAs String`
- `setPlaceholder(Value As String)`
- `getPlaceholderAs String`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `GetValidationErrorAs String`
- `setLabelAbove(Value As String)`
- `getLabelAboveAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setInputType(Value As String)`
- `setPasswordChar(Value As String)`
- `getPasswordCharAs String`
- `getInputTypeAs String`
- `setMinValue(Value As String)`
- `getMinValueAs String`
- `setMaxValue(Value As String)`
- `getMaxValueAs String`
- `setStepValue(Value As String)`
- `getStepValueAs String`
- `setIconLeft(Value As String)`
- `getIconLeftAs String`
- `setIconRight(Value As String)`
- `getIconRightAs String`
- `setRadius(Value As String)`
- `getRadiusAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLineAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setPlaceholderColor(Value As Int)`
- `getPlaceholderColorAs Int`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setLabelLeft(Value As String)`
- `getLabelLeftAs String`
- `setLabelRight(Value As String)`
- `getLabelRightAs String`
- `setFloatingLabel(Value As Boolean)`
- `getFloatingLabelAs Boolean`
- `setImeOptions(Value As String)`
- `getImeOptionsAs String`
- `setGravity(Value As String)`
- `getGravityAs String`
- `setTypeface(Value As String)`
- `getTypefaceAs String`
- `setMaxLines(Value As Int)`
- `getMaxLinesAs Int`
- `setMinLines(Value As Int)`
- `getMinLinesAs Int`
- `setAllCaps(Value As Boolean)`
- `getAllCapsAs Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnlyAs Boolean`
- `setCursorVisible(Value As Boolean)`
- `getCursorVisibleAs Boolean`
- `setLetterSpacing(Value As Float)`
- `getLetterSpacingAs Float`
- `setAlpha(Value As Float)`
- `getAlphaAs Float`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setValidationPattern(Value As String)`
- `getValidationPatternAs String`
- `setMinLength(Value As Int)`
- `getMinLengthAs Int`
- `setMaxLength(Value As Int)`
- `getMaxLengthAs Int`
- `setValidationState(Value As String)`
- `getValidationStateAs String`
- `getIsValidAs Boolean`
- `Revalidate`
- `setErrorText(Value As String)`
- `setRequiredErrorText(Value As String)`
- `getRequiredErrorTextAs String`
- `setMinLengthErrorText(Value As String)`
- `getMinLengthErrorTextAs String`
- `setMaxLengthErrorText(Value As String)`
- `getMaxLengthErrorTextAs String`
- `setPatternErrorText(Value As String)`
- `getPatternErrorTextAs String`
- `getErrorTextAs String`
- `getIsBlankAs Boolean`
- `ValidateAs Boolean`
- `CheckValidationAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ReceiveFocus`
- `Blur`
- `setFocus(Value As Boolean)`
- `getIsFocusedAs Boolean`
- `getEditTextAs B4XView`
- `SelectAll`
- `SetSelection(StartPos As Int, Length As Int)`


---

## B4XDaisyKbd

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `K` | Kbd label text. |
| `Size` | String | `md` | Daisy kbd size token. |
| `Rounded` | String | `theme` | Border radius token. |
| `Padding` | String | `` | Tailwind padding utility tokens (for example: px-2 py-1). |
| `Margin` | String | `` | Tailwind margin utility tokens. |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `TextColor` | Color | `0x00FFFFFF` | Override text color. |
| `Visible` | Boolean | `True` | Show or hide component. |
| `AutoResize` | Boolean | `True` | Automatically resize width to fit text content. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setText(Value As String)`
- `getTextAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyLabel

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `` | The label text. |
| `TextColor` | Color | `0xFF000000` | Text color (overrides theme token when set). |
| `TextColorVariant` | String | `text-current/60` | DaisyUI text color token. |
| `TextSize` | String | `text-sm` | Tailwind text size token (e.g., text-xs, text-sm, text-md, text-lg, text-xl). |
| `FontBold` | Boolean | `False` | Whether the text is bold. |
| `SingleLine` | Boolean | `True` | Whether the text is single-line (whitespace-nowrap). |
| `HAlign` | String | `LEFT` | Horizontal text alignment. |
| `VAlign` | String | `CENTER` | Vertical text alignment. |
| `Padding` | String | `` | Tailwind padding token(s) (e.g., px-3 For input/Select context). |
| `Gap` | Int | `0` | Gap In dip when used In flex/grid context (maps To gap-1.5 = 6dip default). |
| `IsInsideInput` | Boolean | `False` | When True, applies input/Select child styling (px-3, border separator). |
| `Position` | String | `NONE` | Position inside input/Select (FIRST = -ms-3 me-3, LAST = ms-3 -me-3). |
| `Enabled` | Boolean | `True` | Whether the label is enabled. |
| `Visible` | Boolean | `True` | Whether the label is visible. |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setText(Value As String)`
- `getTextAs String`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(Variant As String)`
- `getTextColorVariantAs String`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setFontBold(Value As Boolean)`
- `getFontBoldAs Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLineAs Boolean`
- `setHAlign(Value As String)`
- `getHAlignAs String`
- `setVAlign(Value As String)`
- `getVAlignAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setIsInsideInput(Value As Boolean)`
- `getIsInsideInputAs Boolean`
- `setPosition(Value As String)`
- `getPositionAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `getViewAs B4XView`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`


---

## B4XDaisyList

### Events
- `ItemClick (Index As Int, Tag As Object)`
- `ItemLongClick (Index As Int, Tag As Object)`
- `CreateRowContent (Index As Int)`
- `ReachEnd`
- `ScrollChanged (Offset As Int)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `full` | Tailwind size token or CSS size (eg full, 72, 320px, 80%) |
| `Height` | String | `300` | Viewport height in dip |
| `BackgroundColor` | String | `base-100` | DaisyUI background color token |
| `TextColor` | String | `` | DaisyUI text color token |
| `Rounded` | String | `rounded-box` | Border radius mode |
| `Shadow` | String | `shadow-md` | DaisyUI shadow class |
| `Padding` | String | `0` | Container padding in dip |
| `RowPadding` | String | `4` | Gap around row content in dip |
| `RowGap` | String | `4` | Gap between row items in dip |
| `DividerColor` | String | `base-content/5` | Divider border color token |
| `Divider` | Boolean | `True` | Show divider line between rows |
| `RowHeight` | Int | `72` | Default row height in dip for recycling |
| `AutoHeight` | Boolean | `False` | Automatically resize list height to fit all rows |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `ResizeToFitContent`
- `RegisterTemplate(TemplateName As String, Callback As Object, EventName As String)`
- `AddRowDataWithTemplate(Data As Map, TemplateName As String) As Int`
- `AddRowData(Data As Map) As Int`
- `AddHeader(Title As String) As Int`
- `AddRowDataBatch(Items As List)`
- `SetRowCount(Count As Int)`
- `AddRow(Data As Map) As Int`
- `Clear`
- `getRowCountAs Int`
- `GetRowData(Index As Int) As Map`
- `GetRow(Index As Int) As Map`
- `RemoveRow(Index As Int)`
- `InsertRowAt(Index As Int, Data As Map)`
- `RefreshRow(Index As Int)`
- `RefreshAllRows`
- `ScrollToIndex(Index As Int)`
- `SmoothScrollToIndex(Index As Int)`
- `getScrollPositionAs Int`
- `getFirstVisibleIndexAs Int`
- `getLastVisibleIndexAs Int`
- `GetItemFromView(v As B4XView) As Int`
- `setBackgroundColor(Value As String)`
- `getBackgroundColorAs String`
- `setTextColor(Value As String)`
- `getTextColorAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setRowPadding(Value As Int)`
- `getRowPaddingAs Int`
- `setRowGap(Value As Int)`
- `getRowGapAs Int`
- `setDivider(Value As Boolean)`
- `getDividerAs Boolean`
- `setDividerColor(Value As String)`
- `getDividerColorAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setRowHeight(Value As Int)`
- `getRowHeightAs Int`
- `setWidth(Value As Object)`
- `getWidthAs Int`
- `setHeight(Value As Object)`
- `getHeightAs Int`
- `getContentHeightAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `GetComputedHeightAs Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `RemoveViewFromParent`
- `getViewAs B4XView`
- `Release`
- `GetCurrentRowPanelAs B4XView`
- `GetCurrentRowDataAs Map`
- `AddTextRow(Title As String, OptionalSubtitle As String) As Int`
- `CreateTextItemView(Text As String, Width As Int, Height As Int, TextSize As Object, TextColor As Int, Bold As Boolean, SingleLine As Boolean) As B4XView`
- `CreateStackedTextView(Title As String, Subtitle As String, Width As Int, TitleSize As Object, SubtitleSize As Object, TitleColor As Int, SubtitleColor As Int) As B4XView`
- `GetCLVAs CustomListView`


---

## B4XDaisyLoading

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `LoadingStyle` | String | `spinner` | The loading animation style. |
| `Size` | String | `md` | Size of the loading indicator (xs, sm, md, lg, xl). |
| `Speed` | Int | `100` | Animation speed percentage (100 = normal). |
| `Visible` | Boolean | `True` | Visibility of the component. |
| `Variant` | String | `none` | DaisyUI semantic color variant (sets spinner color). |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `StopAnimation`
- `getStyleAs String`
- `setStyle(Value As String)`
- `getSizeAs String`
- `setSize(Value As String)`
- `getSpeedAs Int`
- `setSpeed(Value As Int)`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setTag(Tag As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `setColor(Value As Int)`
- `getColorAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyMenu

### Events
- `Click (Tag As Object)`
- `ItemClick (Tag As Object, Text As String)`
- `SubmenuToggle (Tag As Object, Open As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables menu interactions. |
| `Visible` | Boolean | `True` | Shows or hides the menu. |
| `Width` | String | `w-full` | Tailwind size token or CSS size used as preferred width. |
| `Height` | String | `h-auto` | Tailwind size token, CSS size, or h-auto. |
| `Padding` | String | `p-2` | Tailwind padding utilities for the menu surface. |
| `Margin` | String | `` | Tailwind margin utilities for the menu container. |
| `Dividers` | Boolean | `True` | Adds automatic dividers between clickable menu items. |
| `DividerGap` | String | `1` | Gap around automatic dividers using Tailwind spacing token or CSS size. |
| `Size` | String | `md` | Daisy menu size token. |
| `Orientation` | String | `vertical` | Top-level menu layout direction. |
| `Rounded` | String | `theme` | Corner radius mode. |
| `RoundedBox` | Boolean | `True` | Uses theme rounded-box radius when Rounded=theme. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `BringToFront` | Boolean | `True` | Brings the full menu view above siblings after layout. |
| `BackgroundColor` | Color | `0x00000000` | Optional surface background override. |
| `TextColor` | Color | `0x00000000` | Optional menu text color override. |
| `ActiveColor` | Color | `0x00000000` | Active menu color. Used as border or background based on ActiveBorder. |
| `ActiveTextColor` | Color | `0x00000000` | Active item text color when ActiveBorder is False. |
| `ActiveBorder` | Boolean | `False` | Shows a left border for the active item instead of filling the item background. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit menu items. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Clear`
- `AddTitle(Text As String) As Int`
- `AddDividerAs Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `ClearActive`
- `ScrollToItem(TagValue As Object)`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `GetItemView(Index As Int) As B4XView`
- `GetPreferredHeightAs Int`
- `GetPreferredWidthAs Int`
- `SetLevelInternal(Level As Int)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetPopupMode(Value As Boolean)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `ViewAs B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setDividers(Value As Boolean)`
- `getDividersAs Boolean`
- `setDividerGap(Value As String)`
- `getDividerGapAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setOrientation(Value As String)`
- `getOrientationAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setBringToFront(Value As Boolean)`
- `getBringToFrontAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setActiveColor(Value As Int)`
- `getActiveColorAs Int`
- `setActiveTextColor(Value As Int)`
- `getActiveTextColorAs Int`
- `setActiveBorder(Value As Boolean)`
- `getActiveBorderAs Boolean`
- `setDebugDividerBorders(Value As Boolean)`
- `getDebugDividerBordersAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`


---

## B4XDaisyModal

### Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Auto-generated property for Enabled. |
| `Visible` | Boolean | `True` | Auto-generated property for Visible. |
| `ClickOutsideToClose` | Boolean | `True` |  |
| `FullScreen` | Boolean | `False` |  |
| `GlassSize` | String | `none` |  |
| `Placement` | String | `middle` |  |
| `Width` | String | `w-[91.6%]` |  |
| `Height` | String | `h-auto` |  |
| `Rounded` | String | `rounded-box` |  |
| `BackgroundColor` | String | `base-100` |  |
| `BackdropColor` | String | `black` |  |
| `BackdropOpacity` | Int | `40` |  |
| `Title` | String | `Modal Title` |  |
| `Padding` | String | `p-6` |  |
| `ActionsJustify` | String | `end` | Horizontal alignment of action buttons in the footer. |
| `ActionsVariant` | String | `primary` | Visual variant/style of action buttons. |
| `ShowCloseButton` | Boolean | `False` |  |
| `Sidebar` | Boolean | `False` | When True the modal slides in as a side panel, ignoring Placement. |
| `SidebarSide` | String | `left` |  |
| `SidebarDuration` | Int | `300` |  |
| `Shadow` | String | `lg` | Elevation shadow on the modal content box. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `GetComputedHeightAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Parent As B4XView, Tag As Object)`
- `getViewAs B4XView`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getActionsContainerAs B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCountAs Int`
- `ClearActions`
- `Show`
- `ShowModal`
- `Close`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setFullScreen(Value As Boolean)`
- `getFullScreenAs Boolean`
- `setGlassSize(Value As String)`
- `getGlassSizeAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setClickOutsideToClose(Value As Boolean)`
- `getClickOutsideToCloseAs Boolean`
- `setPlacement(Value As String)`
- `getPlacementAs String`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setBackgroundColor(Value As String)`
- `getBackgroundColorAs String`
- `setBackdropColor(Value As String)`
- `getBackdropColorAs String`
- `setBackdropOpacity(Value As Int)`
- `getBackdropOpacityAs Int`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButtonAs Boolean`
- `setSidebar(Value As Boolean)`
- `getSidebarAs Boolean`
- `setSidebarSide(Value As String)`
- `getSidebarSideAs String`
- `setSidebarDuration(Value As Int)`
- `getSidebarDurationAs Int`
- `setActionsJustify(Value As String)`
- `getActionsJustifyAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `AddToContent(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getBodyContainerAs B4XView`


---

## B4XDaisyNavbar

### Events
- `Click (Payload As Object)`
- `Opened`
- `Closed`
- `Back (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Variant` | String | `none` | Daisy variant for coloring |
| `BackgroundColor` | Color | `0x00000000` | Navbar background color (0 = theme base-100/variant) |
| `TextColor` | Color | `0x00000000` | Navbar text color (0 = theme base-content/variant) |
| `Shadow` | String | `sm` | Shadow level |
| `Rounded` | String | `none` | Corner radius style |
| `Glass` | Boolean | `False` | Enable glass effect |
| `GlassSize` | String | `none` | Glass opacity scale; overrides Glass when not none |
| `Padding` | Int | `8` | Internal padding in dip |
| `Width` | String | `full` | Tailwind size token or CSS size (eg full, 72, 320px, 20rem) |
| `Height` | String | `h-64` | Tailwind size token or CSS size (eg h-64, 4rem, 80px) |
| `Title` | String | `` | Navbar title text |
| `TitlePosition` | String | `start` | Title position in navbar |
| `TitleVisible` | Boolean | `True` | Show/hide the title |
| `HamburgerVisible` | Boolean | `False` | Show hamburger menu button |
| `HamburgerSize` | Int | `48` | Size of the hamburger menu button in dip |
| `BackVisible` | Boolean | `False` | Show a back button in the start slot |
| `BackSize` | Int | `48` | Size of the back button in dip |
| `BackLabel` | String | `` | Label text on the back button; leave empty for icon-only |
| `BackNudge` | Int | `10` | Left-offset in dip for the back button (nudges start slot left) |
| `LogoImage` | String | `` | Path to the logo image |
| `LogoWidth` | Int | `32` | Logo width in dip |
| `LogoHeight` | Int | `32` | Logo height in dip |
| `LogoMask` | String | `none` | Logo mask shape |
| `LogoVisible` | Boolean | `True` | Show/hide the logo |
| `LogoPosition` | String | `start` | Logo slot position |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `GetStartPanelAs B4XView`
- `GetCenterPanelAs B4XView`
- `GetEndPanelAs B4XView`
- `AddViewToStart(v As B4XView, Width As Int, Height As Int)`
- `AddViewToCenter(v As B4XView, Width As Int, Height As Int)`
- `AddViewToEnd(v As B4XView, Width As Int, Height As Int)`
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
- `getVariantAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setGlass(Value As Boolean)`
- `getGlassAs Boolean`
- `setGlassSize(Value As String)`
- `getGlassSizeAs String`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setLogoImage(Value As String)`
- `getLogoImageAs String`
- `setLogoWidth(Value As Int)`
- `getLogoWidthAs Int`
- `setLogoHeight(Value As Int)`
- `getLogoHeightAs Int`
- `setLogoMask(Value As String)`
- `getLogoMaskAs String`
- `setLogoVisible(Value As Boolean)`
- `getLogoVisibleAs Boolean`
- `setLogoPosition(Value As String)`
- `getLogoPositionAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setTitlePosition(Value As String)`
- `getTitlePositionAs String`
- `setTitleVisible(Value As Boolean)`
- `getTitleVisibleAs Boolean`
- `setHamburgerVisible(Value As Boolean)`
- `getHamburgerVisibleAs Boolean`
- `setHamburgerSize(Value As Int)`
- `getHamburgerSizeAs Int`
- `setBackVisible(Value As Boolean)`
- `getBackVisibleAs Boolean`
- `setBackSize(Value As Int)`
- `getBackSizeAs Int`
- `setBackLabel(Value As String)`
- `getBackLabelAs String`
- `setBackNudge(Value As Int)`
- `getBackNudgeAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `getViewAs B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SendToBack`
- `BringToFront`


---

## B4XDaisyOverlay

### Events
- `Click (Tag As Object)`
- `Opened (Tag As Object)`
- `Closed (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `OverlayColor` | Color | `0xFF000000` | Base RGB color of the overlay surface. Alpha channel is overridden by Opacity. |
| `Opacity` | Float | `0.4` | Surface opacity from 0.0 (fully transparent) to 1.0 (fully opaque). |
| `Rounded` | String | `none` | Corner radius token applied to the overlay surface. |
| `PassThrough` | Boolean | `False` | When True the overlay does not intercept touch events (Enabled = False). |
| `Visible` | Boolean | `False` | Show or hide the overlay. |
| `CloseOnClick` | Boolean | `False` | When True, clicking the overlay automatically closes it and fires the Closed event. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `GetComputedHeightAs Int`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Resize(Width As Int, Height As Int)`
- `AddChild(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetHostViewAs B4XView`
- `getOverlayColorAs Int`
- `setOverlayColor(Value As Int)`
- `getOpacityAs Float`
- `setOpacity(Value As Float)`
- `getRoundedAs String`
- `setRounded(Value As String)`
- `getPassThroughAs Boolean`
- `setPassThrough(Value As Boolean)`
- `getVisibleAs Boolean`
- `setVisible(Value As Boolean)`
- `getTagAs Object`
- `setTag(Value As Object)`
- `getCloseOnClickAs Boolean`
- `setCloseOnClick(Value As Boolean)`
- `getIsAttachedAs Boolean`
- `getIsOpenAs Boolean`
- `Open`
- `Close`


---

## B4XDaisyPageScroll

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `PagePadding` | Int | `12` | Content padding in dip from page edges. |
| `BackgroundColor` | Color | `0x00000000` | Background color for the page (0 uses default light gray). |
| `RootColor` | Color | `0x00000000` | Background color for the page parent panel (0 uses default light gray). |
| `Transparent` | Boolean | `False` | Set to True to make the page background transparent. |
| `AutoFitHeight` | Boolean | `True` | Automatically resize scroll view panel to fit content. |
| `YGap` | Int | `12` | Vertical spacing between added elements in dip. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SendToBack`
- `BringToFront`
- `getPanelAs B4XView`
- `getScrollViewAs ScrollView`
- `getUsableWidthAs Int`
- `AutoFit`
- `Clear`
- `AddSectionTitle(Text As String, Y As Int, Center As Boolean) As Int`
- `AddDivider(Y As Int) As Int`
- `getPagePaddingAs Int`
- `setPagePadding(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColor(Value As Int)`
- `getRootColorAs Int`
- `setRootColor(Value As Int)`
- `getTransparentAs Boolean`
- `setTransparent(Value As Boolean)`
- `getYGapAs Int`
- `setYGap(Value As Int)`
- `getAutoFitHeightAs Boolean`
- `setAutoFitHeight(Value As Boolean)`
- `getTagAs Object`
- `setTag(Value As Object)`


---

## B4XDaisyPagination

### Events
- `PageChanged (PageIndex As Int, ItemId As String)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `md` | Button size token |
| `Style` | String | `solid` | Button style variant |
| `ActiveColor` | String | `primary` | Variant color applied to the active button |
| `ActiveIndex` | Int | `0` | Zero-based index of the active page |
| `Disabled` | Boolean | `False` | Disable all pagination buttons |
| `ShowPrevNext` | Boolean | `True` | Show previous/next navigation buttons |
| `PrevText` | String | `chevron-left-solid.svg` | Text or SVG icon for the previous button |
| `NextText` | String | `chevron-right-solid.svg` | Text or SVG icon for the next button |
| `ShowFirstLast` | Boolean | `False` | Show first/last navigation buttons |
| `FirstText` | String | `angles-left-solid.svg` | Text or SVG icon for the first button |
| `LastText` | String | `angles-right-solid.svg` | Text or SVG icon for the last button |
| `ShowPageNumbers` | Boolean | `True` | Show numbered page buttons |
| `PageCount` | Int | `5` | Number of page buttons to display |
| `EqualWidth` | Boolean | `False` | Make prev/next buttons equal width (grid-cols-2 mode) |
| `Shadow` | String | `none` | Shadow applied to each button |
| `Circle` | Boolean | `True` | Each button is square — combine with Rounded=full for circle shape |
| `GapX` | Int | `1` | Horizontal gap between pagination buttons in dip |
| `Visible` | Boolean | `True` | Show or hide component |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getVisibleAs Boolean`
- `setVisible(Value As Boolean)`
- `getSizeAs String`
- `setSize(Value As String)`
- `getStyleAs String`
- `setStyle(Value As String)`
- `getActiveColorAs String`
- `setActiveColor(Value As String)`
- `getActiveIndexAs Int`
- `setActiveIndex(Value As Int)`
- `getDisabledAs Boolean`
- `setDisabled(Value As Boolean)`
- `getShowPrevNextAs Boolean`
- `setShowPrevNext(Value As Boolean)`
- `getShowFirstLastAs Boolean`
- `setShowFirstLast(Value As Boolean)`
- `getFirstTextAs String`
- `setFirstText(Value As String)`
- `getLastTextAs String`
- `setLastText(Value As String)`
- `getShadowAs String`
- `setShadow(Value As String)`
- `getPrevTextAs String`
- `setPrevText(Value As String)`
- `getNextTextAs String`
- `setNextText(Value As String)`
- `getShowPageNumbersAs Boolean`
- `setShowPageNumbers(Value As Boolean)`
- `getPageCountAs Int`
- `setPageCount(Value As Int)`
- `getEqualWidthAs Boolean`
- `setEqualWidth(Value As Boolean)`
- `getCircleAs Boolean`
- `setCircle(Value As Boolean)`
- `getGapXAs Int`
- `setGapX(Value As Int)`
- `getTagAs Object`
- `setTag(Value As Object)`
- `getViewAs B4XView`
- `GetActualPageCountAs Int`
- `PrevPage`
- `NextPage`
- `GoToPage(Index As Int)`
- `GetItemCountAs Int`
- `GetItemIdAt(Index As Int) As String`
- `SetItemDisabled(Id As String, Disabled As Boolean)`


---

## B4XDaisyProgress

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Int | `0` | Current progress value. |
| `MaxValue` | Int | `100` | Maximum progress bound. |
| `Variant` | String | `none` |  |
| `Size` | String | `none` |  |
| `Visible` | Boolean | `True` |  |
| `Width` | String | `w-full` |  |
| `Height` | String | `h-2` |  |
| `ShowTooltip` | Boolean | `False` |  |
| `TooltipPosition` | String | `top` |  |
| `Indeterminate` | Boolean | `False` | Shows animated repeating-gradient progress (no value needed). |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `SetValueColor(Color As Int)`
- `SetTrackColor(Color As Int)`
- `setVariant(VariantName As String)`
- `getVariantAs String`
- `setValue(Value As Float)`
- `getValueAs Float`
- `SetValueAnimated(Value As Float, Duration As Int)`
- `StartTimer(DurationMs As Int)`
- `setMaxValue(MaxValue As Float)`
- `getMaxValueAs Float`
- `setSize(Size As String)`
- `getSizeAs String`
- `setShowTooltip(b As Boolean)`
- `getShowTooltipAs Boolean`
- `setTooltipPosition(s As String)`
- `getTooltipPositionAs String`
- `setIndeterminate(b As Boolean)`
- `getIndeterminateAs Boolean`
- `setTag(Tag As Object)`
- `getTagAs Object`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `StopAnimation`
- `GetComputedHeightAs Int`
- `getViewAs B4XView`
- `RemoveViewFromParent`


---

## B4XDaisyRadialProgress

### Events
- `None`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Int | `0` | Current progress value |
| `MinValue` | Int | `0` | Minimum possible value |
| `MaxValue` | Int | `100` | Maximum possible value |
| `StepValue` | Int | `1` | Step size for increments |
| `Size` | String | `80px` | Tailwind size token or CSS size (eg 20, 80dip, 5rem, 80px) |
| `Thickness` | String | `10%` | Stroke thickness (e.g. 10%, 4dip, 8px) |
| `Variant` | String | `none` | Semantic color variant |
| `DisplayType` | String | `text` | Content shown in the center |
| `Text` | String | `0` | Base text to show when DisplayType is text |
| `Prefix` | String | `` | Text shown before the value |
| `Suffix` | String | `%` | Text shown after the value |
| `TextCountUp` | Boolean | `False` | Animate text value incrementally |
| `CountUpSpeed` | Int | `300` | Duration for Text CountUp in ms |
| `SvgAsset` | String | `` | SVG file used when DisplayType is svg |
| `TrackColor` | Color | `0x00000000` | Color of the background ring (0 uses default base-200) |
| `BackgroundColor` | Color | `0x00000000` | 0/transparent |
| `TextColor` | Color | `0xFF000000` | Default text/arc color |
| `BorderColor` | Color | `0x00000000` | 0/variant fallback |
| `BorderWidth` | String | `0` | Outer border width (e.g. 4dip) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DrawComponent`
- `SetValueAnimated(NewValue As Float, Duration As Int)`
- `StopAnimation`
- `StartTimer(DurationMs As Int)`
- `getMaxValueAs Int`
- `setMaxValue(MaxVal As Int)`
- `getMinValueAs Int`
- `setMinValue(MinVal As Int)`
- `getValueAs Int`
- `setValue(Val As Int)`
- `setStepValue(StepVal As Int)`
- `getStepValueAs Int`
- `setDisplayType(DType As String)`
- `getDisplayTypeAs String`
- `setText(NewText As String)`
- `getTextAs String`
- `setVariant(NewVariant As String)`
- `getVariantAs String`
- `setSize(Value As Object)`
- `getSizeAs Float`
- `getWidthAs Float`
- `getHeightAs Float`
- `setThickness(NewThickness As String)`
- `getThicknessAs String`
- `setSvgAsset(NewSvgAsset As String)`
- `getSvgAssetAs String`
- `setPrefix(NewPrefix As String)`
- `getPrefixAs String`
- `setSuffix(NewSuffix As String)`
- `getSuffixAs String`
- `setTextCountUp(NewTextCountUp As Boolean)`
- `getTextCountUpAs Boolean`
- `setCountUpSpeed(NewCountUpSpeed As Int)`
- `getCountUpSpeedAs Int`
- `setTrackColor(NewTrackColor As Int)`
- `getTrackColorAs Int`
- `setBackgroundColor(NewBackgroundColor As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(NewTextColor As Int)`
- `getTextColorAs Int`
- `setBorderColor(NewBorderColor As Int)`
- `getBorderColorAs Int`
- `setBorderWidth(NewBorderWidth As String)`
- `getBorderWidthAs String`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyRadio

### Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `GroupName` | String | `` | Radio group name. |
| `Checked` | Boolean | `False` | Checked state. |
| `Value` | String | `` | Value assigned to the radio. |
| `Text` | String | `` | Label text. |
| `Variant` | String | `none` | Color variant. |
| `Size` | String | `md` | Size variant. |
| `Position` | String | `start` | Position alignment. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked center dot color. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setChecked(Value As Boolean)`
- `getRoleAs String`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `getCheckedAs Boolean`
- `setValue(Value As String)`
- `getValueAs String`
- `setText(Value As String)`
- `getTextAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setPosition(Value As String)`
- `getPositionAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `getIsValidAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ValidateAs Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColorAs Int`
- `setBorderColor(Color As Int)`
- `getBorderColorAs Int`
- `setTextColor(Color As Int)`
- `getTextColorAs Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColorAs Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColorAs Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColorAs Int`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getComputedHeightAs Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisyRadioGroup

### Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Select an option` | Fieldset legend text |
| `LegendSize` | String | `theme` | Legend text size token |
| `LegendBold` | Boolean | `False` | Render the fieldset legend caption in bold |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use box radius for container |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `Direction` | String | `vertical` | Items layout direction |
| `Alignment` | String | `start` | Radio element dot position |
| `RadioColor` | String | `neutral` | Default radio color variant |
| `RadioSize` | String | `md` | Radio size token |
| `Gap` | Int | `8` | Gap between elements in dip |
| `RowGap` | Int | `8` | Row gap for wrapped flow mode in dip |
| `GroupName` | String | `` | Radio group name for mutual exclusivity |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `ClearItems`
- `setItems(Items As Map)`
- `getItemsAs Map`
- `setSelectedIndex(Index As Int)`
- `getSelectedIndexAs Int`
- `setChecked(CheckedIds As String)`
- `getCheckedAs String`
- `setLegend(Value As String)`
- `getLegendAs String`
- `setLegendSize(Value As String)`
- `getLegendSizeAs String`
- `setLegendBold(Value As Boolean)`
- `getLegendBoldAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setAlignment(Value As String)`
- `getAlignmentAs String`
- `setRadioColor(Value As String)`
- `getRadioColorAs String`
- `setRadioSize(Value As String)`
- `getRadioSizeAs String`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setRowGap(Value As Int)`
- `getRowGapAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `isRoundedAs Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorderAs Boolean`
- `GetComputedHeightAs Int`
- `Release`
- `RemoveViewFromParent`


---

## B4XDaisyRange

### Events
- `Changed (Value As Int)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `MinValue` | Int | `0` | Minimum slider value. |
| `MaxValue` | Int | `100` | Maximum slider value. |
| `Value` | Int | `40` | Current slider value. |
| `StepValue` | Int | `1` | Step increment (0 for continuous). |
| `Size` | String | `md` | Size variant. |
| `Variant` | String | `none` | Color variant. |
| `TrackColor` | Color | `0` | Custom track background color. |
| `ProgressColor` | Color | `0` | Custom progress fill color. |
| `ThumbColor` | Color | `0` | Custom thumb knob color. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `ShowFill` | Boolean | `True` | Show progress fill from min to thumb position. |
| `RTL` | Boolean | `False` | Right-to-left progress direction (--range-dir:-1 parity). |
| `Visible` | Boolean | `True` | Visible state. |
| `Required` | Boolean | `False` | Whether the value must be greater than the minimum value. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setMinValue(Value As Int)`
- `getMinValueAs Int`
- `setMaxValue(Value As Int)`
- `getMaxValueAs Int`
- `setValue(Value As Int)`
- `getValueAs Int`
- `setStepValue(Value As Int)`
- `getStepValueAs Int`
- `setSize(Value As String)`
- `getSizeAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setShowFill(Value As Boolean)`
- `getShowFillAs Boolean`
- `setRTL(Value As Boolean)`
- `getRTLAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTrackColor(Value As Int)`
- `getTrackColorAs Int`
- `setProgressColor(Value As Int)`
- `getProgressColorAs Int`
- `setThumbColor(Value As Int)`
- `getThumbColorAs Int`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getRoleAs String`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getComputedHeightAs Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `getIsValidAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ValidateAs Boolean`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisyRating

### Events
- `Changed(Value As Float)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Float | `0` | Current rating value (0 = no selection, use 0.5 for half stars). |
| `MaxValue` | Int | `5` | Maximum number of rating items. |
| `Size` | String | `md` | Size variant (rating-xs through rating-xl). |
| `Variant` | String | `none` | Color variant. |
| `IconStyle` | String | `star-2` | Icon mask shape. |
| `Half` | Boolean | `False` | Enable half-star increments (rating-half parity). |
| `AllowClear` | Boolean | `False` | Allow clearing the rating by selecting same value (rating-hidden parity). |
| `ReadOnly` | Boolean | `False` | Read-only mode â€” no interaction, display only. |
| `Required` | Boolean | `False` | Whether a rating value greater than 0 is required. |
| `ActiveColor` | Color | `0` | Custom color for active/filled items (0 = theme default bg-base-content). |
| `InactiveColor` | Color | `0` | Custom color for inactive/empty items (0 = theme default opacity-20). |
| `Gap` | Int | `4` | Gap between items in dip (maps to gap-1 â‰ˆ 4dip). |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setValue(Value As Float)`
- `getValueAs Float`
- `setMaxValue(Value As Int)`
- `getMaxValueAs Int`
- `setSize(Value As String)`
- `getSizeAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setIconStyle(Value As String)`
- `getIconStyleAs String`
- `setHalf(Value As Boolean)`
- `getHalfAs Boolean`
- `setAllowClear(Value As Boolean)`
- `getAllowClearAs Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnlyAs Boolean`
- `setActiveColor(Value As Int)`
- `getActiveColorAs Int`
- `setInactiveColor(Value As Int)`
- `getInactiveColorAs Int`
- `SetItemColors(ItemColorList As List)`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getRoleAs String`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getComputedHeightAs Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setBackgroundColorVariant(Variant As String)`
- `setTextColorVariant(Variant As String)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `getIsValidAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ValidateAs Boolean`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisySelect

### Events
- `Changed(Index As Int, Key As String, Value As String)`
- `Click(Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Variant` | String | `none` | DaisyUI color variant applied to border and focus outline. |
| `Size` | String | `md` | DaisyUI size variant controlling height and font-size. |
| `Placeholder` | String | `Pick an option` | Placeholder text shown when no item is selected. |
| `LabelAbove` | String | `` | Optional label text displayed above the select trigger. |
| `HintText` | String | `` | Helper text displayed below the select trigger. |
| `Required` | Boolean | `False` | Whether an option must be selected. |
| `ErrorText` | String | `` | Error text displayed below the select when validation fails. |
| `Radius` | String | `theme` | Corner radius token for the select trigger. |
| `Enabled` | Boolean | `True` | Whether the select is enabled. |
| `Visible` | Boolean | `True` | Controls view visibility. |
| `BackgroundColor` | Color | `0x00000000` | Override background color for the trigger. |
| `TextColor` | Color | `0x00000000` | Override text color for the selected value. |
| `Shadow` | String | `none` | Elevation shadow level for the trigger. |
| `Alpha` | Float | `1.0` | View opacity from 0 (invisible) to 1 (fully opaque). |
| `MaxDropdownRows` | Int | `5` | Maximum number of visible rows in the dropdown before scrolling. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `setTag(Value As Object)`
- `getTagAs Object`
- `IsReadyAs Boolean`
- `UpdateTheme`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setPlaceholder(Value As String)`
- `getPlaceholderAs String`
- `setLabelAbove(Value As String)`
- `getLabelAboveAs String`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setRadius(Value As String)`
- `getRadiusAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setAlpha(Value As Float)`
- `getAlphaAs Float`
- `setMaxDropdownRows(Value As Int)`
- `getMaxDropdownRowsAs Int`
- `setItems(KeyValues As Map)`
- `getItemsAs List`
- `setSelectedIndex(Value As Int)`
- `getSelectedIndexAs Int`
- `getSelectedValueAs String`
- `AddItem(Value As String, Text As String)`
- `LoadMonths`
- `LoadCountries`
- `getItemValuesAs List`
- `getSelectedKeyAs String`
- `getValueAs String`
- `setValue(Value As String)`
- `Clear`
- `Open`
- `Close`
- `Toggle`
- `getIsOpenAs Boolean`
- `RemoveViewFromParent`
- `Release`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `GetComputedHeightAs Int`


---

## B4XDaisyStack

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-10` | Tailwind size token or CSS size (eg w-12, 80px, 4em, 5rem) |
| `Height` | String | `h-10` | Tailwind size token or CSS size (eg h-12, 80px, 4em, 5rem) |
| `Padding` | String | `` | Tailwind/spacing padding utilities (eg p-2, px-3, 2) |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |
| `Direction` | String | `bottom` | Daisy stack direction. |
| `StepPrimary` | Int | `7` | Primary offset in dip used for the deepest layer. |
| `StepSecondary` | Int | `3` | Secondary offset in dip used for the middle layer. |
| `AutoFillLayers` | Boolean | `True` | Resize each child to fill its layer frame. |
| `LayoutAnimationMs` | Int | `0` | Animation duration in milliseconds when relayout runs. |
| `RoundedBox` | Boolean | `False` | Apply 16px rounded corners to the base view. |
| `StrictDaisyParity` | Boolean | `True` | Use DaisyUI stack geometry and per-layer opacity (1.0, 0.9, 0.7). |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddLayer(ChildView As B4XView) As Int`
- `AddLayerWithTag(ChildView As B4XView, Tag As Object) As Int`
- `SetLayers(Views As List)`
- `RemoveLayerAt(Index As Int) As Boolean`
- `Clear`
- `getLayer(Index As Int) As B4XView`
- `getLayerCountAs Int`
- `setLayerTag(Index As Int, Tag As Object)`
- `getLayerTag(Index As Int) As Object`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setSize(Width As Int, Height As Int)`
- `setStepPrimary(Value As Object)`
- `getStepPrimaryAs Float`
- `setStepSecondary(Value As Object)`
- `getStepSecondaryAs Float`
- `setAutoFillLayers(Value As Boolean)`
- `getAutoFillLayersAs Boolean`
- `setLayoutAnimationMs(Value As Int)`
- `getLayoutAnimationMsAs Int`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setStrictDaisyParity(Value As Boolean)`
- `getStrictDaisyParityAs Boolean`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `AddColorLayer(BackColor As Int, Text As String, TextColor As Int, CornerRadius As Float) As B4XView`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyStat

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `horizontal` | Layout orientation. |
| `Shadow` | String | `none` | Elevation level. |
| `Rounded` | String | `box` | Border radius token (none=0, selector=--radius-selector, field=--radius-field, box=--radius-box, full=9999dip). |
| `BorderWidth` | String | `token` | Border width in dip, or "token" to use --border theme value, or "0" for none. |
| `BorderColor` | String | `base-300` | Border color token. |
| `Width` | String | `w-content` | Card width: empty = use AddToParent width, "w-content" = shrink-wrap to content, or a number (dip). |
| `Height` | String | `` | Card height: empty or "h-content" = driven by tallest item, or a number (dip) to force a fixed height. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `getContentWidthAs Int`
- `getContentHeightAs Int`
- `UpdateTheme`
- `AddItem(Item As B4XDaisyStatItem)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `getOrientationAs String`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setBorderWidth(Value As String)`
- `getBorderWidthAs String`
- `setBorderColor(Value As String)`
- `getBorderColorAs String`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyStatItem

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Title` | String | `` | The stat title. |
| `Value` | String | `` | The stat value. |
| `Description` | String | `` | The stat description. |
| `ValueColor` | String | `none` | Text color variant for the value label. |
| `DescriptionColor` | String | `none` | Text color variant for the description label. |
| `Variant` | String | `none` | Background color variant. |
| `FigureType` | String | `none` | Type of figure to display in the figure slot. |
| `FigureSource` | String | `` | SVG asset filename, image path, or initial radial value. |
| `FigureSize` | Int | `48` | Size of the figure in dip. |
| `FigureColor` | String | `none` | Color variant for the figure. |
| `Padding` | String | `px-6 py-4` | Tailwind padding utilities (e.g. px-6 py-4). |
| `GapX` | Int | `16` | Gap between text column and figure (in dip). |
| `CenterItems` | Boolean | `False` | Center align all items. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `getContentWidthAs Int`
- `getContentHeightAs Int`
- `UpdateTheme`
- `EstimatePreferredWidthAs Float`
- `EstimatePreferredHeightAs Float`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `setShowSeparator(Value As Boolean)`
- `setCenterItems(Value As Boolean)`
- `getCenterItemsAs Boolean`
- `getFigureAs B4XView`
- `setFigure(v As B4XView)`
- `getActionsAs B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setValue(Value As String)`
- `getValueAs String`
- `setDescription(Value As String)`
- `getDescriptionAs String`
- `setValueColor(Value As String)`
- `getValueColorAs String`
- `setDescriptionColor(Value As String)`
- `getDescriptionColorAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setFigureType(Value As String)`
- `getFigureTypeAs String`
- `setFigureSource(Value As String)`
- `getFigureSourceAs String`
- `setFigureSize(Value As Int)`
- `getFigureSizeAs Int`
- `setFigureColor(Value As String)`
- `getFigureColorAs String`
- `setFigureValue(v As Int)`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setGapX(Value As Int)`
- `getGapXAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `LogLabelWidths(Tag As String)`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyStatus

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `` | Optional width token (Tailwind/CSS). Leave empty to use Size token. |
| `Height` | String | `` | Optional height token (Tailwind/CSS). Leave empty to use Size token. |
| `Size` | String | `md` | Daisy status size token. |
| `Variant` | String | `none` | Daisy semantic status color. |
| `Animation` | String | `none` | Built-in status animation. |
| `Padding` | String | `` | Optional padding utility token(s). |
| `Margin` | String | `1` | Optional margin utility token(s). |
| `Visible` | Boolean | `True` | Show or hide status view. |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `CenterInParent(Parent As B4XView)`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setSize(Value As String)`
- `getSizeAs String`
- `setAnimation(Value As String)`
- `getAnimationAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setDepth(Value As Float)`
- `getDepthAs Float`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`


---

## B4XDaisySteps

### Events
- `StepClick (Index As Int, Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables or disables the component. |
| `Visible` | Boolean | `True` | Shows or hides the component. |
| `Orientation` | String | `horizontal` | Layout direction: horizontal (default) or vertical. |
| `ActiveColor` | String | `primary` | Color variant for active/completed steps. |
| `ActiveStep` | Int | `-1` | Index of the active step (0-based). Steps up to and including this index use ActiveColor. -1 means no active highlighting. |
| `Padding` | String | `` | Tailwind padding tokens (e.g., p-4, px-2 py-1). |
| `Margin` | String | `` | Tailwind margin tokens (e.g., m-4, mx-auto, mb-2). |
| `CircleSize` | Int | `32` | Diameter of the step circle in dip. |
| `Scrollable` | Boolean | `False` | Enables scrolling when steps overflow the container. Horizontal for horizontal orientation, vertical for vertical orientation. |
| `Width` | String | `w-full` | Tailwind size token or CSS size used as preferred width. |
| `Height` | String | `h-auto` | Tailwind size token, CSS size, or h-auto. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `getViewAs B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddStep(Text As String, Variant As String)`
- `AddStepWithContent(Text As String, Variant As String, Content As String)`
- `AddStepWithIcon(Text As String, Variant As String, Icon As String)`
- `AddStepWithSvgIcon(Text As String, Variant As String, SvgFileName As String)`
- `SetSteps(Steps As List)`
- `ClearSteps`
- `getStepCountAs Int`
- `setOrientation(Value As String)`
- `getOrientationAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setActiveColor(Value As String)`
- `getActiveColorAs String`
- `setActiveStep(Value As Int)`
- `getActiveStepAs Int`
- `setPadding(Value As String)`
- `getPaddingAs String`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setScrollable(Value As Boolean)`
- `getScrollableAs Boolean`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `UpdateTheme`
- `GetComputedHeightAs Int`


---

## B4XDaisySvgIcon

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `SvgAsset` | String | `` | SVG file name from assets or full local path |
| `Width` | String | `w-6` | Tailwind size token or CSS size (eg w-6, 24px, 2rem) |
| `Height` | String | `h-6` | Tailwind size token or CSS size (eg h-6, 24px, 2rem) |
| `Color` | Color | `0xFF3B82F6` | Icon color used when Preserve Colors is False |
| `PreserveColors` | Boolean | `False` | Keep original SVG colors instead of applying tint color |
| `Padding` | Int | `0` | Inner padding in dip around the icon |
| `BorderWidth` | Int | `0` | Border width in dip |
| `BorderColor` | Color | `0x00000000` | Border color (transparent by default) |
| `BackgroundColor` | Color | `0x00000000` | Background fill color (transparent by default) |
| `RoundedBox` | Boolean | `False` | Applies rounded-box corner radius |
| `Variant` | String | `none` | DaisyUI semantic color variant (sets icon color). |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `ResizeToParent(ParentView As B4XView)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `getViewAs B4XView`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `GetContentViewAs B4XView`
- `setSvgAsset(Path As String)`
- `setSvgFile(Dir As String, FileName As String)`
- `getSvgAssetAs String`
- `setSvgContent(Content As String)`
- `getSvgContentAs String`
- `setColor(Value As Int)`
- `getColorAs Int`
- `setColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setPreserveOriginalColors(Value As Boolean)`
- `getPreserveOriginalColorsAs Boolean`
- `setPreserveColors(Value As Boolean)`
- `getPreserveColorsAs Boolean`
- `getLastRendererAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setPadding(Value As Float)`
- `getPaddingAs Float`
- `setBorderWidth(Value As Float)`
- `getBorderWidthAs Float`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderColorVariant(VariantName As String)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setSize(Value As Object)`
- `GetComputedHeightAs Int`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `RemoveViewFromParent`


---

## B4XDaisySwap

### Events
- `Click (State As String, Checked As Boolean)`
- `Changed (State As String, Checked As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `SwapType` | String | `text` | Slot content type. For svg/avatar, On/Off/Indeterminate text values are file paths. |
| `SwapStyle` | String | `none` | Visual effect style |
| `State` | String | `off` | Swap state |
| `OnText` | String | `ON` | Text shown in swap-on slot |
| `OffText` | String | `OFF` | Text shown in swap-off slot |
| `IndeterminateText` | String | `` | Text shown in indeterminate slot |
| `OnColor` | Color | `0x00000000` | On slot text/icon color (0 = theme base-content) |
| `OffColor` | Color | `0x00000000` | Off slot text/icon color (0 = theme base-content) |
| `IndeterminateColor` | Color | `0x00000000` | Indeterminate slot text/icon color (0 = theme base-content) |
| `TextSize` | String | `text-sm` | Tailwind text size token (eg text-xs, text-sm, text-lg, text-9xl, text-sm/6) |
| `Width` | String | `w-12` | Tailwind size token or CSS size (eg w-12, 80px, 4em, 5rem) |
| `Height` | String | `h-12` | Tailwind size token or CSS size (eg h-12, 80px, 4em, 5rem) |
| `AnimationMs` | Int | `200` | Visibility animation in milliseconds |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `Toggle`
- `SetOnView(v As B4XView)`
- `SetOffView(v As B4XView)`
- `SetIndeterminateView(v As B4XView)`
- `getOnPanelAs B4XView`
- `getOffPanelAs B4XView`
- `getIndeterminatePanelAs B4XView`
- `setOnText(Value As String)`
- `getOnTextAs String`
- `setOffText(Value As String)`
- `getOffTextAs String`
- `setIndeterminateText(Value As String)`
- `getIndeterminateTextAs String`
- `setState(Value As String)`
- `getStateAs String`
- `setChecked(Value As Boolean)`
- `getCheckedAs Boolean`
- `setSwapStyle(Value As String)`
- `getSwapStyleAs String`
- `setSwapType(Value As String)`
- `getSwapTypeAs String`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `getTextLineHeightDipAs Float`
- `setAnimationMs(Value As Int)`
- `getAnimationMsAs Int`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setOnColor(Value As Object)`
- `getOnColorAs Int`
- `setOnColorVariant(VariantName As String)`
- `setOnTextColorVariant(VariantName As String)`
- `setOffColor(Value As Object)`
- `getOffColorAs Int`
- `setOffColorVariant(VariantName As String)`
- `setOffTextColorVariant(VariantName As String)`
- `setIndeterminateColor(Value As Object)`
- `getIndeterminateColorAs Int`
- `setIndeterminateColorVariant(VariantName As String)`
- `setIndeterminateTextColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTagAs Object`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisySweetAlert

### Events
- `Result (Result As B4XDaisySweetAlertResult)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Title` | String | `Are you sure?` | The popup title. |
| `Text` | String | `You will not be able to revert this!` | The popup body text. |
| `Icon` | String | `none` | Built-in icon type (loading shows a spinner). |
| `IconColor` | Color | `0xFF545454` | Tint color for the SVG icon. |
| `IconSize` | Int | `80` | Icon width/height in dip. |
| `ShowConfirmButton` | Boolean | `True` | Show the confirm button. |
| `ConfirmButtonText` | String | `OK` | Text for the confirm button. |
| `ShowDenyButton` | Boolean | `False` | Show the deny button. |
| `DenyButtonText` | String | `No` | Text for the deny button. |
| `ShowCancelButton` | Boolean | `False` | Show the cancel button. |
| `CancelButtonText` | String | `Cancel` | Text for the cancel button. |
| `ShowCloseButton` | Boolean | `False` | Show a close button top-right. |
| `AllowOutsideClick` | Boolean | `True` | Close when clicking the backdrop. |
| `ReverseButtons` | Boolean | `False` | Swap confirm/deny/cancel order. |
| `Footer` | String | `` | Optional footer text shown below actions. |
| `BackgroundColor` | Color | `0xFFFFFFFF` | Modal background color. |
| `TextColor` | Color | `0xFF545454` | Title and body text color. |
| `Width` | Int | `360` | Maximum modal width in dip. |
| `TimerMs` | Int | `0` | Auto close timer in milliseconds. 0 disables. |

### Public Methods
- `Initialize(Callback As Object, Parent As B4XView, EventName As String)`
- `Show`
- `ShowAsyncAs ResumableSub`
- `showLoading`
- `hideLoading`
- `Update(Config As Map)`
- `Close`
- `CloseWithReason(Reason As String)`
- `GetDismissReasonAs Map`
- `btnConfirm_Click(Tag As Object)`
- `btnDeny_Click(Tag As Object)`
- `btnCancel_Click(Tag As Object)`
- `btnClose_Click(Tag As Object)`
- `setParent(Parent As B4XView)`
- `getParentAs B4XView`
- `setTitle(Value As String)`
- `getTitleAs String`
- `setText(Value As String)`
- `getTextAs String`
- `setIcon(Value As String)`
- `getIconAs String`
- `setIconColor(Value As Int)`
- `getIconColorAs Int`
- `setIconSize(Value As Int)`
- `getIconSizeAs Int`
- `setShowConfirmButton(Value As Boolean)`
- `getShowConfirmButtonAs Boolean`
- `setConfirmButtonText(Value As String)`
- `getConfirmButtonTextAs String`
- `setShowDenyButton(Value As Boolean)`
- `getShowDenyButtonAs Boolean`
- `setDenyButtonText(Value As String)`
- `getDenyButtonTextAs String`
- `setShowCancelButton(Value As Boolean)`
- `getShowCancelButtonAs Boolean`
- `setCancelButtonText(Value As String)`
- `getCancelButtonTextAs String`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButtonAs Boolean`
- `setAllowOutsideClick(Value As Boolean)`
- `getAllowOutsideClickAs Boolean`
- `setReverseButtons(Value As Boolean)`
- `getReverseButtonsAs Boolean`
- `setFooter(Value As String)`
- `getFooterAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setWidth(Value As Int)`
- `getWidthAs Int`
- `setTimerMs(Value As Int)`
- `getTimerMsAs Int`


---

## B4XDaisySweetAlertIcon

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `IconType` | String | `success` | The icon to animate. |
| `AnimationDuration` | Int | `500` | Duration of the drawing animation in milliseconds. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Play`
- `Stop`
- `setAnimationDuration(Value As Int)`
- `getAnimationDurationAs Int`
- `setIconType(Icon As String)`
- `getIconTypeAs String`


---

## B4XDaisyTab

### Events
- `TabClick (Index As Int)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables or disables the component. |
| `Visible` | Boolean | `True` | Shows or hides the component. |
| `Style` | String | `default` | Tab style variant: default, border (bottom line), lift (raised with corners), box (enclosed container). |
| `Size` | String | `md` | Tab size: xs, sm, md (default), lg, xl. |
| `Placement` | String | `top` | Tab bar placement relative to content: top (default) or bottom. |
| `ActiveIndex` | Int | `0` | Index of the active tab (0-based). |
| `Scrollable` | Boolean | `False` | Enables horizontal scrolling when tabs overflow the container width. |
| `Alignment` | String | `center` | Horizontal alignment of tabs within the tab bar. |
| `ActiveColor` | String | `primary` | Accent color applied to the active tab (background + text/border). |
| `Width` | String | `w-full` | Tailwind width token or CSS size. |
| `Height` | String | `h-auto` | Tailwind height token or CSS size. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddTab(Text As String)`
- `AddTabWithIcon(Text As String, IconText As String)`
- `SetTabDisabled(Index As Int, Disabled As Boolean)`
- `SetTabVariant(Index As Int, Variant As String)`
- `SetTabTitle(Index As Int, Text As String)`
- `SetTabTitleTextColor(Index As Int, Color As Int)`
- `SetTabTitleColor(Index As Int, Color As Int)`
- `SetTabContent(Index As Int, Content As B4XView)`
- `GetTabContent(Index As Int) As B4XView`
- `SetTabContentText(Index As Int, Text As String)`
- `SetTabs(TabsList As List)`
- `ClearTabs`
- `getTabCountAs Int`
- `GetComputedHeightAs Int`
- `setActiveIndex(Value As Int)`
- `getActiveIndexAs Int`
- `setStyle(Value As String)`
- `getStyleAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setPlacement(Value As String)`
- `getPlacementAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setScrollable(Value As Boolean)`
- `getScrollableAs Boolean`
- `setAlignment(Value As String)`
- `getAlignmentAs String`
- `setActiveColor(Value As String)`
- `getActiveColorAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `UpdateTheme`
- `RemoveViewFromParent`
- `ResizeTab`


---

## B4XDaisyText

### Events
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-full` | Tailwind size token or CSS size (eg w-12, 80px, 4em, 5rem) |
| `Height` | String | `h-auto` | Tailwind size token or CSS size (eg h-6, 24px, 1.5rem). |
| `Text` | String | `` | Label text. |
| `TextColor` | Color | `0xFF000000` | Text color. |
| `BackgroundColor` | Color | `0x00000000` | Background color. |
| `TextSize` | String | `text-sm` | Number in dip or Tailwind token (eg 12, text-sm, text-lg). |
| `FontBold` | Boolean | `False` | Use bold font. |
| `SingleLine` | Boolean | `False` | Single line text. |
| `Ellipsize` | String | `none` | Truncate with ellipsis when text overflows. Requires Single Line for start/middle/end. |
| `HAlign` | String | `LEFT` | Text horizontal alignment. |
| `VAlign` | String | `CENTER` | Text vertical alignment. |
| `Padding` | Int | `0` | Inner padding in dip. |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |
| `RoundedBox` | Boolean | `False` | Use rounded-box radius. |
| `BorderWidth` | Int | `0` | Border width in dip. |
| `BorderColor` | Color | `0x00000000` | Border color. |
| `Visible` | Boolean | `True` | Visible state. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `IsSkeleton` | Boolean | `False` | Show skeleton loading state. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit text content using CSS line-height calculation (line_height_px * num_lines). |
| `Link` | Boolean | `False` | Render as a clickable link (applies underline styling). |
| `Underline` | Boolean | `False` | Show underline when Link is enabled. |
| `Url` | String | `` | URL to open when the link is clicked (requires Link = true). |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |
| `UpperCase` | Boolean | `False` | Transform text to uppercase. |
| `Italic` | Boolean | `False` | Render text in italic style. |
| `Strikethrough` | Boolean | `False` | Draw a horizontal line through the text. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `RefreshText`
- `MeasureTextWidthAs Float`
- `MeasureTextHeightAs Float`
- `GetPreferredHeight(MaxContentWidth As Int) As Int`
- `GetComputedHeightAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `setText(Value As String)`
- `getTextAs String`
- `setWidth(Value As Object)`
- `getWidthAs Float`
- `setHeight(Value As Object)`
- `getHeightAs Float`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setTextSize(Value As Object)`
- `getTextSizeAs Object`
- `setFontBold(Value As Boolean)`
- `getFontBoldAs Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLineAs Boolean`
- `setEllipsize(Value As String)`
- `getEllipsizeAs String`
- `setHAlign(Value As String)`
- `getHAlignAs String`
- `setVAlign(Value As String)`
- `getVAlignAs String`
- `setPadding(Value As Float)`
- `getPaddingAs Float`
- `setMargin(Value As String)`
- `getMarginAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidthAs Float`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setLink(Value As Boolean)`
- `getLinkAs Boolean`
- `setUnderline(Value As Boolean)`
- `getUnderlineAs Boolean`
- `setUrl(Value As String)`
- `getUrlAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `StartAnimation`
- `StopAnimation`
- `setIsSkeleton(Value As Boolean)`
- `getIsSkeletonAs Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `setLeft(Value As Int)`
- `getLeftAs Int`
- `setTop(Value As Int)`
- `getTopAs Int`
- `setColor(BackgroundColor As Int)`
- `getColorAs Int`
- `SetTextAlignment(Vertical As String, Horizontal As String)`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `SetColorAndBorder(CBackgroundColor As Int, CBorderW As Float, CBorderC As Int, CornerRadius As Float)`
- `setClickable(Value As Boolean)`
- `getClickableAs Boolean`
- `setUpperCase(Value As Boolean)`
- `getUpperCaseAs Boolean`
- `setItalic(Value As Boolean)`
- `getItalicAs Boolean`
- `setStrikethrough(Value As Boolean)`
- `getStrikethroughAs Boolean`
- `RemoveViewFromParent`


---

## B4XDaisyTextRotate

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Items` | Int | `1` | The number of items to rotate. |
| `Duration` | String | `3s` | The duration of the rotation (e.g., 3s). |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `UpdateTheme`
- `SetItems(ItemList As List)`
- `AddItem(dt As B4XDaisyText)`
- `ClearItems`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setDuration(Value As String)`
- `getDurationAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getViewAs B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyTimeline

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `vertical` | Timeline orientation. |
| `Compact` | Boolean | `False` | If True, all items are pushed to one side. |
| `SnapIcon` | Boolean | `False` | If True, snaps the icon to start instead of middle. |
| `LineColor` | String | `base-300` | Color of the connecting lines. |
| `MarkerSize` | Int | `20` | Size of the middle marker. |
| `MarkerColor` | String | `neutral` | Color of the middle marker. |
| `TextSize` | String | `text-xs` | Text size token applied to both start and end content (matches Daisy default for boxes). |
| `BoxShadow` | String | `sm` | Elevation token for boxed items (shadow-sm by default). |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `AddItem(Id As String, StartText As String, EndText As String) As String`
- `AddItemBox(Id As String, StartText As String, EndText As String, BoxOnStart As Boolean, BoxOnEnd As Boolean) As String`
- `UpdateItem(id As String, StartText As String, MiddleIcon As Object, IconColor As Int, EndText As String, IsBox As Boolean, BoxOnStart As Boolean, BoxOnEnd As Boolean, Variant As String, DashedBorder As Boolean)`
- `SetItemStartText(id As String, StartText As String)`
- `SetItemMiddleIcon(id As String, MiddleIcon As Object)`
- `SetItemIconColor(id As String, IconColor As Int)`
- `SetItemEndText(id As String, EndText As String)`
- `SetItemVariant(id As String, Variant As String)`
- `SetItemDashedBorder(id As String, Dashed As Boolean)`
- `SetItemDone(id As String, bDone As Boolean)`
- `Clear`
- `getSizeAs Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `getOrientationAs String`
- `setCompact(Value As Boolean)`
- `getCompactAs Boolean`
- `setSnapIcon(Value As Boolean)`
- `getSnapIconAs Boolean`
- `setLineColor(Value As String)`
- `getLineColorAs String`
- `setMarkerSize(Value As Int)`
- `getMarkerSizeAs Int`
- `setMarkerColor(Value As String)`
- `getMarkerColorAs String`
- `setVisible(Value As Boolean)`
- `setTextSize(Value As String)`
- `getTextSizeAs String`
- `setBoxShadow(Value As String)`
- `getBoxShadowAs String`
- `getVisibleAs Boolean`
- `setTag(Value As Object)`
- `getTagAs Object`
- `getViewAs B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyToast

### Events
- `NotificationClosed (View As B4XView)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `HorizontalAlignment` | String | `end` |  |
| `VerticalAlignment` | String | `bottom` |  |
| `ShowProgress` | Boolean | `True` | Show a progress bar for timed notifications. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateViewAs B4XView`
- `ApplyDesignerProps(Props As Map)`
- `SetPosition(Horizontal As String, Vertical As String)`
- `Show`
- `Hide`
- `SetRoot(Root1 As B4XView)`
- `Attach(View As B4XView)`
- `Detach(View As B4XView)`
- `Clear`
- `Success(Message As String)`
- `SuccessWithDuration(Message As String, DurationMs As Int)`
- `Info(Message As String)`
- `InfoWithDuration(Message As String, DurationMs As Int)`
- `Warning(Message As String)`
- `WarningWithDuration(Message As String, DurationMs As Int)`
- `Error(Message As String)`
- `ErrorWithDuration(Message As String, DurationMs As Int)`
- `AttachWithDuration(View As B4XView, DurationMs As Int)`
- `setShowProgress(Value As Boolean)`
- `getShowProgressAs Boolean`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyToggle

### Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `GroupName` | String | `` | Toggle group name. |
| `Checked` | Boolean | `False` | Checked state. |
| `Indeterminate` | Boolean | `False` | Indeterminate state. |
| `Value` | String | `` | Value assigned to the toggle. |
| `Text` | String | `` | Label text. |
| `Variant` | String | `none` | Color variant. |
| `Size` | String | `md` | Size variant. |
| `Position` | String | `start` | Position alignment. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked text color. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `setChecked(Value As Boolean)`
- `getCheckedAs Boolean`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminateAs Boolean`
- `setText(Value As String)`
- `getTextAs String`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setSize(Value As String)`
- `getSizeAs String`
- `setPosition(Value As String)`
- `getPositionAs String`
- `setEnabled(Value As Boolean)`
- `getEnabledAs Boolean`
- `setVisible(Value As Boolean)`
- `getVisibleAs Boolean`
- `setValue(Value As String)`
- `getValueAs String`
- `setGroupName(Value As String)`
- `getGroupNameAs String`
- `getRoleAs String`
- `setRequired(Value As Boolean)`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `getIsValidAs Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ValidateAs Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColorAs Int`
- `setBorderColor(Color As Int)`
- `getBorderColorAs Int`
- `setTextColor(Color As Int)`
- `getTextColorAs Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColorAs Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColorAs Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColorAs Int`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setTag(Value As Object)`
- `getTagAs Object`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `getComputedHeightAs Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `RemoveViewFromParent`
- `Release`


---

## B4XDaisyToggleGroup

### Events
- `ItemChanged (id As String, text As String, checked As Boolean)`
- `Changed (SelectedIds As List)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Select options` | Fieldset legend text |
| `LegendSize` | String | `theme` | Legend text size token |
| `LegendBold` | Boolean | `False` | Render the fieldset legend caption in bold |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `RoundedBox` | Boolean | `True` | Use box radius for container |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `ItemsSpec` | String | `` | Pipe-and-colon separated items list |
| `Direction` | String | `vertical` | Items layout direction |
| `Alignment` | String | `start` | Toggle element position alignment |
| `ToggleColor` | String | `neutral` | Default toggle color variant |
| `ToggleSize` | String | `md` | Toggle size token |
| `Gap` | Int | `8` | Gap between elements in dip |
| `RowGap` | Int | `8` | Row gap for wrapped flow mode in dip |
| `Required` | Boolean | `False` | Whether at least one option must be selected. |
| `HintText` | String | `` | Helper text displayed below the group. |
| `ErrorText` | String | `` | Error text displayed below the group when validation fails. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getViewAs B4XView`
- `ViewAs B4XView`
- `IsReadyAs Boolean`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `ClearItems`
- `setItems(Items As Map)`
- `getItemsAs Map`
- `setItemsSpec(Value As String)`
- `getItemsSpecAs String`
- `setChecked(CheckedIds As String)`
- `getCheckedAs String`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `IsItemChecked(Id As String) As Boolean`
- `setLegend(Value As String)`
- `getLegendAs String`
- `setLegendSize(Value As String)`
- `getLegendSizeAs String`
- `setLegendBold(Value As Boolean)`
- `getLegendBoldAs Boolean`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setDirection(Value As String)`
- `getDirectionAs String`
- `setAlignment(Value As String)`
- `getAlignmentAs String`
- `setToggleColor(Value As String)`
- `getToggleColorAs String`
- `setToggleSize(Value As String)`
- `getToggleSizeAs String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`
- `setPadding(Value As Int)`
- `getPaddingAs Int`
- `setGap(Value As Int)`
- `getGapAs Int`
- `setRowGap(Value As Int)`
- `getRowGapAs Int`
- `setTag(Value As Object)`
- `getTagAs Object`
- `setRequired(Value As Boolean)`
- `setHintText(Value As String)`
- `getHintTextAs String`
- `getRequiredAs Boolean`
- `setErrorText(Value As String)`
- `getErrorTextAs String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValidAs Boolean`
- `ValidateAs Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyleAs String`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `isRoundedAs Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColorAs Int`
- `setTextColor(Value As Int)`
- `getTextColorAs Int`
- `setBorderColor(Value As Int)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorderAs Boolean`
- `GetComputedHeightAs Int`
- `Release`
- `RemoveViewFromParent`


---

## B4XDaisyTooltip

### Events
- `Shown`
- `Hidden`
- `Click (Tag As Object)`

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Message` | String | `Tooltip message` | Tooltip text content. |
| `Position` | String | `top` | Anchor position relative to target. |
| `Variant` | String | `neutral` | Daisy variant for tooltip background. |
| `ShowArrow` | Boolean | `True` | Show the small tail/arrow pointing to target. |
| `ClickToClose` | Boolean | `True` | Hide tooltip when clicked. |
| `TextWrapped` | Boolean | `True` | Enable multi-line text wrapping. |
| `Visible` | Boolean | `True` | Initial visibility. |
| `AutoResize` | Boolean | `True` | Automatically resize tooltip to fit message content. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Props As Map) As B4XView`
- `AttachToTarget(Target As B4XView)`
- `DetachTarget`
- `Show`
- `ShowAnimated(Duration As Int)`
- `Hide`
- `getVisibleAs Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResizeAs Boolean`
- `setVisible(b As Boolean)`
- `setVariant(Value As String)`
- `getVariantAs String`
- `setMessage(Value As String)`
- `getMessageAs String`
- `setPosition(Value As String)`
- `getPositionAs String`
- `SetCustomContent(View As B4XView)`
- `GetComputedHeightAs Int`
- `getViewAs B4XView`
- `GetActualHeightAs Int`
- `GetActualWidthAs Int`
- `RemoveViewFromParent`


---

## B4XDaisyVariants

### Events
*(None)*

### Designer Properties
*(None)*

### Public Methods
- `GetCheckedRadio(Parent As B4XView, GroupName As String) As B4XDaisyRadio`
- `GetCheckedValue(Parent As B4XView, GroupName As String) As String`
- `SetCheckedByValue(Parent As B4XView, GroupName As String, Value As String) As Boolean`
- `SetTextOrCSBuilderToLabel(xlbl As B4XView, Text As Object)`
- `SetActiveTheme(ThemeName As String)`
- `GetActiveThemeAs String`
- `HasTheme(ThemeName As String) As Boolean`
- `RegisterTheme(ThemeName As String, Tokens As Map)`
- `ResolveAssetImage(FileName As String, DefaultImage As String) As String`
- `ResolveAssetSVG(FileName As String, DefaultText As String) As String`
- `GetThemeTokens(ThemeName As String) As Map`
- `GetActiveTokensAs Map`
- `SetOverflowHidden(v As B4XView)`
- `SetStyleVariable(v As B4XView, Name As String, Value As Object)`
- `IsClass(Obj As Object, ClassName As String) As Boolean`
- `GetTokenColor(Token As String, DefaultColor As Int) As Int`
- `ResolveThemeColorTokenName(Name As String) As String`
- `NormalizeOrientation(Value As String) As String`
- `NormalizeHorizontalPlacement(Value As String) As String`
- `NormalizeVerticalPlacement(Value As String) As String`
- `NormalizeAlertVariant(Value As String) As String`
- `NormalizeSize(Value As String) As String`
- `NormalizeBadgeStyle(Value As String) As String`
- `NormalizeStyle(Value As String) As String`
- `NormalizeSelectionMode(Value As String) As String`
- `NormalizeFieldsetBorderStyle(Value As String) As String`
- `NormalizeLegendSize(Value As String) As String`
- `NormalizeSizeSpec(Value As Object, DefaultValue As String) As String`
- `GetPropObject(Props As Map, Key As String, DefaultValue As Object) As Object`
- `ResolveSizeSpec(Value As String, ParentSize As Int, Fallback As Int) As Int`
- `NormalizeAvatarPosition(Value As String) As String`
- `NormalizeDirection(Value As String) As String`
- `NormalizeAnimation(Value As String) As String`
- `NormalizeSingleLineText(Value As String) As String`
- `GetTokenString(Token As String, DefaultValue As String) As String`
- `GetTokenNumber(Token As String, DefaultValue As Float) As Float`
- `GetThemeColor(Token As String, DefaultColor As Int) As Int`
- `GetTokenDip(Token As String, DefaultDipValue As Float) As Float`
- `GetBorderDip(DefaultDip As Float) As Float`
- `GetRadiusBoxDip(DefaultDip As Float) As Float`
- `GetRadiusFieldDip(DefaultDip As Float) As Float`
- `GetRadiusSelectorDip(DefaultDip As Float) As Float`
- `GetVariantPaletteAs Map`
- `BuildVariantPalette(ThemeName As String) As Map`
- `VariantListAs String`
- `NormalizeVariant(Name As String) As String`
- `BuildVariantMap(BackColor As Int, TextColor As Int) As Map`
- `DefaultPaletteAs Map`
- `ResolveVariantMap(Palette As Map, VariantName As String) As Map`
- `ResolveVariantColor(Palette As Map, VariantName As String, Key As String, DefaultColor As Int) As Int`
- `ResolveBackgroundColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBackgroundColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveColorVariantFromPalette(Palette As Map, VariantOrToken As String, PaletteKey As String, DefaultColor As Int) As Int`
- `ResolveOnlineColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveOfflineColor(VariantName As String, DefaultColor As Int) As Int`
- `Blend(c1 As Int, c2 As Int, t As Double) As Int`
- `ShadowListAs String`
- `NormalizeShadow(Name As String) As String`
- `ResolveShadowElevation(Level As String) As Float`
- `ResolveShadowSpec(Level As String) As Map`
- `MaskListAs String`
- `MaskListSimpleAs String`
- `NormalizeMask(MaskName As String) As String`
- `CreateMaskPath(Size As Float, MaskName As String) As B4XPath`
- `CreateMaskPathRect(Width As Float, Height As Float, MaskName As String) As B4XPath`
- `CreateMaskPathInRect(TargetRect As B4XRect, MaskName As String) As B4XPath`
- `ResolveRoundedRadiusDip(MaskName As String, Size As Float) As Float`
- `ClipCanvasToShape(cvs As B4XCanvas, TargetRect As B4XRect, MaskName As String) As Boolean`
- `RestoreCanvasClip(cvs As B4XCanvas)`
- `DisableViewClipping(v As B4XView)`
- `EnableShapedClipping(v As B4XView, MaskName As String)`
- `DisableShapedClipping(v As B4XView)`
- `SetLineSpacing(v As B4XView, Multiple As Float, Add As Float)`
- `NormalizeDateTimeFormat(Value As String, DefaultFlatpickrFormat As String) As String`
- `FormatDateTime(FormatText As String, ValueMillis As Long) As String`
- `LooksLikeJavaDateFormat(FormatText As String) As Boolean`
- `ConvertFlatpickrToDateFormat(FormatText As String) As String`
- `GetPropString(Props As Map, Key As String, DefaultValue As String) As String`
- `GetPropFloat(Props As Map, Key As String, DefaultValue As Float) As Float`
- `GetPropInt(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropBool(Props As Map, Key As String, DefaultValue As Boolean) As Boolean`
- `GetPropColor(Props As Map, Key As String, DefaultValue As Int) As Int`
- `ResolveColorValue(Value As Object, DefaultColor As Int) As Int`
- `GetPropDip(Props As Map, Key As String, DefaultDip As Float) As Float`
- `GetPropSizeDip(Props As Map, Key As String, DefaultDip As Object) As Float`
- `TailwindSizeToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSizeToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSpacingToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindGapToDip(Value As Object, DefaultDip As Float) As Float`
- `ParseGapUtilities(Utilities As String, DefaultGapDip As Float) As Map`
- `BorderStyleListAs String`
- `TailwindBorderWidthToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindBorderRadiusToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindBorderColorToColor(Value As String, DefaultColor As Int) As Int`
- `ParseBorderUtilities(Utilities As String, DefaultBorderDip As Float, DefaultBorderColor As Int, DefaultRadiusDip As Float, RtlEnabled As Boolean) As Map`
- `ApplyBorderSpecToBoxModel(Model As Map, BorderSpec As Map)`
- `TailwindTextMetrics(Value As Object, DefaultFontSize As Float, DefaultLineHeightPx As Float) As Map`
- `ResolvePxSizeSpec(SizeDip As Float) As String`
- `ResolveWidthBase(Base As B4XView, DefaultValue As Float) As Float`
- `ResolveHeightBase(Base As B4XView, DefaultValue As Float) As Float`
- `ResolveTextSizeDip(Token As String) As Float`
- `ResolveLabelSizeDip(SizeToken As String) As Float`
- `MeasureTextWidthSafe(Text As String, TextSize As Float, tf As Object, BufferDip As Float) As Int`
- `MeasureTextHeightSafe(Text As String, TextSize As Float, tf As Object, Width As Int, BufferDip As Float) As Int`
- `GetGlassSpecAs Map`
- `GetGlassSpecForSize(Size As String) As Map`
- `ApplyGlassStyle(Target As B4XView, RadiusDip As Float, Size As String)`
- `SetColorPerCornerRadius(v As B4XView, BgColor As Int, TL As Float, TR As Float, BR As Float, BL As Float)`
- `ApplyGlassTextStyle(TextTarget As B4XView)`
- `AlphaColor(ColorValue As Int, Alpha01 As Float) As Int`
- `GetJoinSpec(Orientation As String) As Map`
- `ApplyJoinToContainer(Container As B4XView, Spec As Map)`
- `ApplyJoinItemToChild(Item As B4XView, Spec As Map, Index As Int, Total As Int)`
- `ApplyJoinToAllChildren(Container As B4XView, Spec As Map)`
- `TailwindTextFontSize(Value As Object, DefaultFontSize As Float) As Float`
- `TailwindTextLineHeightDip(Value As Object, DefaultLineHeightDip As Float) As Float`
- `ExtractSpacingValue(Value As String) As String`
- `ResolveIconTypeface(icon As String) As Typeface`
- `ContainsAny(Text As String, Needles() As String) As Boolean`
- `IsRtlAs Boolean`
- `NormalizeRounded(Value As String) As String`
- `ResolveRoundedDip(Rounded As String, DefaultDip As Float) As Float`
- `SetAlpha(Color As Int, Alpha As Int) As Int`
- `ShiftColor(Color As Int, Factor As Float) As Int`
- `CloneProps(Props As Map) As Map`
- `DisableClipping(v As B4XView)`
- `DisableClippingChain(StartView As B4XView, MaxLevels As Int)`
- `DisableClippingRecursive(v As B4XView)`
- `ApplyElevation(v As B4XView, ShadowLevel As String)`
- `ParseFlexContainerTokens(TokenString As String) As Map`
- `ApplyFlexContainerTokens(fp As B4XDaisyFlexPanel, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexContainerTokens(fp As B4XDaisyFlexPanel, Parsed As Map, DoRelayout As Boolean)`
- `ParseFlexItemTokens(TokenString As String) As Map`
- `ApplyFlexItemTokens(fp As B4XDaisyFlexPanel, v As B4XView, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexItemTokens(fp As B4XDaisyFlexPanel, v As B4XView, Parsed As Map, DoRelayout As Boolean)`
- `ApplyThemeToPage(ThemeName As String, RootView As B4XView)`
- `ApplyDashedBorder(Target As B4XView, FillColor As Int, BorderWidth As Float, BorderColor As Int, Radius As Float, Style As String)`
- `ShiftSiblingsBelow(View As B4XView, Delta As Int, AnimDuration As Int)`
- `CreateEditTextBorder(BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int) As ColorDrawable`
- `ApplyEditTextBorder(Target As B4XView, BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int)`
- `ValidateRequiredControls(Parent As B4XView) As Boolean`
- `ValidateControls(Controls As List) As Boolean`


---

## B4XDaisyWindow

### Events
*(None)*

### Designer Properties
| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-full` | Window width (for example w-full, 320dip, 320). |
| `Height` | String | `h-220` | Window height (for example h-220, 220dip). |
| `BackgroundColor` | Color | `0x00000000` | Window background (0 uses bg-base-100). |
| `BorderColor` | Color | `0x00000000` | Window border color (0 uses border-base-300). |
| `BorderSize` | Int | `1` | Border width in dip. |
| `Rounded` | String | `theme` | Corner radius mode. |
| `RoundedBox` | Boolean | `True` | Use rounded-box radius when Rounded is theme. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `ShowHeader` | Boolean | `True` | Show top header area. |
| `HeaderHeight` | Int | `24` | Header height in dip. |
| `ShowControls` | Boolean | `True` | Show top-left three control dots. |
| `ToolBarTitle` | String | `` | Text shown centred in the header toolbar pill. Leave blank to hide the toolbar. |
| `ContentPadding` | String | `p-4` | Tailwind padding token(s) for the content area (e.g. p-4, px-6 py-3, pl-4). |
| `AutoHeight` | Boolean | `True` | Automatically grow/shrink height to fit content panel children. |

### Public Methods
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ContentAs B4XView`
- `ContentWidthAs Int`
- `ContentHeightAs Int`
- `GetHeaderPanelAs B4XView`
- `AddContentView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddHeaderView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `RefreshContent`
- `ClearHeader`
- `getTagAs Object`
- `setTag(Value As Object)`
- `ViewAs B4XView`
- `GetComputedHeightAs Int`
- `RemoveViewFromParent`
- `setWidth(Value As String)`
- `getWidthAs String`
- `setHeight(Value As String)`
- `getHeightAs String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColorAs Int`
- `setBorderColor(Value As Object)`
- `getBorderColorAs Int`
- `setBorderSize(Value As Int)`
- `getBorderSizeAs Int`
- `setRounded(Value As String)`
- `getRoundedAs String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBoxAs Boolean`
- `setShadow(Value As String)`
- `getShadowAs String`
- `setShowHeader(Value As Boolean)`
- `getShowHeaderAs Boolean`
- `setHeaderHeight(Value As Int)`
- `getHeaderHeightAs Int`
- `setShowControls(Value As Boolean)`
- `getShowControlsAs Boolean`
- `setContentPadding(Value As String)`
- `getContentPaddingAs String`
- `setToolBarTitle(Value As String)`
- `getToolBarTitleAs String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeightAs Boolean`


---
