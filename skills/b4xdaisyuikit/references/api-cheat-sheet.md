# SithasoDaisyUIKit B4X Component API Cheat Sheet

This document lists all available custom views, their event hooks, designer properties, and public methods. Use this reference when building user interfaces dynamically.

Auto-generated from the packaged library source (v0.96) on 2026-09-16 08:16 UTC. Do not edit by hand — regenerate with sd5-book-to-skill/scripts.

## Table of Contents

- [B4XDaisyAccordion](#b4xdaisyaccordion)
- [B4XDaisyActionSheet](#b4xdaisyactionsheet)
- [B4XDaisyAlert](#b4xdaisyalert)
- [B4XDaisyAnimation](#b4xdaisyanimation)
- [B4XDaisyApp](#b4xdaisyapp)
- [B4XDaisyAura](#b4xdaisyaura)
- [B4XDaisyAvatar](#b4xdaisyavatar)
- [B4XDaisyAvatarGroup](#b4xdaisyavatargroup)
- [B4XDaisyBadge](#b4xdaisybadge)
- [B4XDaisyBadgeGroupSelect](#b4xdaisybadgegroupselect)
- [B4XDaisyBoomMenu](#b4xdaisyboommenu)
- [B4XDaisyBoomPathManager](#b4xdaisyboompathmanager)
- [B4XDaisyBoxModel](#b4xdaisyboxmodel)
- [B4XDaisyBreadcrumbs](#b4xdaisybreadcrumbs)
- [B4XDaisyButton](#b4xdaisybutton)
- [B4XDaisyButtonPlaceManager](#b4xdaisybuttonplacemanager)
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
- [B4XDaisyColorWheel](#b4xdaisycolorwheel)
- [B4XDaisyCountdown](#b4xdaisycountdown)
- [B4XDaisyCountdownItem](#b4xdaisycountdownitem)
- [B4XDaisyDashboard](#b4xdaisydashboard)
- [B4XDaisyDiff](#b4xdaisydiff)
- [B4XDaisyDivider](#b4xdaisydivider)
- [B4XDaisyDivision](#b4xdaisydivision)
- [B4XDaisyDock](#b4xdaisydock)
- [B4XDaisyDrawer](#b4xdaisydrawer)
- [B4XDaisyDropdown](#b4xdaisydropdown)
- [B4XDaisyDualRange](#b4xdaisydualrange)
- [B4XDaisyEnjoyHint](#b4xdaisyenjoyhint)
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
- [B4XDaisyInfoCard](#b4xdaisyinfocard)
- [B4XDaisyInput](#b4xdaisyinput)
- [B4XDaisyKbd](#b4xdaisykbd)
- [B4XDaisyList](#b4xdaisylist)
- [B4XDaisyLoading](#b4xdaisyloading)
- [B4XDaisyMenu](#b4xdaisymenu)
- [B4XDaisyModal](#b4xdaisymodal)
- [B4XDaisyNavbar](#b4xdaisynavbar)
- [B4XDaisyOTP](#b4xdaisyotp)
- [B4XDaisyOverlay](#b4xdaisyoverlay)
- [B4XDaisyPageScroll](#b4xdaisypagescroll)
- [B4XDaisyPagination](#b4xdaisypagination)
- [B4XDaisyPDFView](#b4xdaisypdfview)
- [B4XDaisyPicker](#b4xdaisypicker)
- [B4XDaisyPiecePlaceManager](#b4xdaisypieceplacemanager)
- [B4XDaisyPocketBase](#b4xdaisypocketbase)
- [B4XDaisyProgress](#b4xdaisyprogress)
- [B4XDaisyRadialProgress](#b4xdaisyradialprogress)
- [B4XDaisyRadio](#b4xdaisyradio)
- [B4XDaisyRadioGroup](#b4xdaisyradiogroup)
- [B4XDaisyRange](#b4xdaisyrange)
- [B4XDaisyRating](#b4xdaisyrating)
- [B4XDaisySegment](#b4xdaisysegment)
- [B4XDaisySelect](#b4xdaisyselect)
- [B4XDaisySheetModal](#b4xdaisysheetmodal)
- [B4XDaisyShineButton](#b4xdaisyshinebutton)
- [B4XDaisySignature](#b4xdaisysignature)
- [B4XDaisySignaturePad](#b4xdaisysignaturepad)
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
- [B4XDaisyTagSphere](#b4xdaisytagsphere)
- [B4XDaisyText](#b4xdaisytext)
- [B4XDaisyTextRotate](#b4xdaisytextrotate)
- [B4XDaisyTimeline](#b4xdaisytimeline)
- [B4XDaisyToast](#b4xdaisytoast)
- [B4XDaisyToggle](#b4xdaisytoggle)
- [B4XDaisyToggleGroup](#b4xdaisytogglegroup)
- [B4XDaisyTooltip](#b4xdaisytooltip)
- [B4XDaisyVariants](#b4xdaisyvariants)
- [B4XDaisyWindow](#b4xdaisywindow)

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
| `SpaceY` | Int | `2, MinRange: 0, MaxRange: 32` | Vertical gap (in dip) between collapse items. |
| `Shadow` | String | `none` | Elevation level applied to all children. |
| `Rounded` | String | `theme` | Radius mode applied to all children. |
| `GroupName` | String | `` | Explicit group name shared by all child collapses (used for single-open enforcement). Leave empty to auto-generate from component tag. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyCollapse)`
- `HandleChildRequestOpen(RequestedChild As B4XDaisyCollapse)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOpenOnlyOne(Value As Boolean)`
- `getOpenOnlyOne As Boolean`
- `setIconPosition(Value As String)`
- `getIconPosition As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setSpaceY(Value As Int)`
- `getSpaceY As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`
- `SetItemActive(ItemTag As Object, Value As Boolean)`
- `SetItemTitle(ItemTag As Object, Title As String)`
- `SetItemVariant(ItemTag As Object, Variant As String)`
- `SetItemTitleIcon(ItemTag As Object, IconName As String)`
- `SetItemVisible(ItemTag As Object, Value As Boolean)`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

---

## B4XDaisyActionSheet

### Types

- `ActionSheetButton (Id As String, Text As String, Role As String, Icon As String, Data As Object, Disabled As Boolean, Variant As String, IconVariant As String)`

### Events

- `DidPresent`
- `WillPresent`
- `DidDismiss (Data As Object, Role As String)`
- `WillDismiss (Data As Object, Role As String)`
- `ButtonClick (ButtonId As String, Data As Object)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Header` | String | `` | Title for the action sheet. |
| `SubHeader` | String | `` | Subtitle for the action sheet. |
| `Animated` | Boolean | `True` | If true, the action sheet will animate. |
| `BackdropDismiss` | Boolean | `True` | Dismiss when the backdrop is clicked. |
| `KeyboardClose` | Boolean | `True` | Automatically dismiss keyboard when presented. |
| `Translucent` | Boolean | `False` | Enable translucent glass effects (iOS mode). |
| `Mode` | String | `md` | Platform rendering mode. |
| `ButtonSize` | String | `md` | Tailwind size token applied to every action button. |
| `TextAlignment` | String | `left` | Horizontal text alignment applied to each action button (left for md, center for ios). |
| `BackgroundColor` | String | `base-100` | Surface color of the action sheet group (accepts DaisyUI variant colors). |
| `BackdropOpacity` | String | `0.4` | Backdrop dimming as a float string (e.g. 0.4 or 40%). |
| `ButtonsColor` | String | `default` | DaisyUI variant color applied to all action buttons. |
| `TextColor` | String | `base-content` | Header / SubHeader text color (accepts DaisyUI variant colors). |
| `HeaderBold` | Boolean | `False` | If true, the header is rendered in bold. |
| `ButtonGhosted` | Boolean | `True` | If true, action buttons use the ghost style; if false they render solid. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `AddButton(Id As String, Text As String, Role As String, Icon As String)`
- `SetButtonData(ButtonId As String, Data As Object)`
- `SetButtonDataByIndex(Index As Int, Data As Object)`
- `SetButtonIcon(ButtonId As String, IconName As String)`
- `SetButtonIconByIndex(Index As Int, IconName As String)`
- `SetButtonIconColor(ButtonId As String, ColorVariant As String)`
- `SetButtonIconColorByIndex(Index As Int, ColorVariant As String)`
- `SetButtonColor(ButtonId As String, ColorVariant As String)`
- `SetButtonColorByIndex(Index As Int, ColorVariant As String)`
- `setIsOpen(Value As Boolean)`
- `getIsOpen As Boolean`
- `Present As ResumableSub`
- `Dismiss(Data As Object, Role As String) As ResumableSub`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setHeader(Value As String)`
- `getHeader As String`
- `setSubHeader(Value As String)`
- `getSubHeader As String`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setBackdropDismiss(Value As Boolean)`
- `getBackdropDismiss As Boolean`
- `setKeyboardClose(Value As Boolean)`
- `getKeyboardClose As Boolean`
- `setTranslucent(Value As Boolean)`
- `getTranslucent As Boolean`
- `setMode(Value As String)`
- `getMode As String`
- `setOutline(Value As Boolean)`
- `getOutline As Boolean`
- `setButtonSize(Value As String)`
- `getButtonSize As String`
- `setTextAlignment(Value As String)`
- `getTextAlignment As String`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setBackdropOpacity(Value As String)`
- `getBackdropOpacity As String`
- `setButtonsColor(Value As String)`
- `getButtonsColor As String`
- `setTextColor(Value As String)`
- `getTextColor As String`
- `setHeaderBold(Value As Boolean)`
- `getHeaderBold As Boolean`
- `setButtonGhosted(Value As Boolean)`
- `getButtonGhosted As Boolean`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `Rounded` | String | `rounded-box` | Corner radius token. |
| `BorderWidth` | Int | `1` | Border width in dip |
| `Shadow` | String | `none` | Elevation shadow level |
| `ActionSpacing` | Int | `6` | Spacing in dip between action views |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit content. |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `TextColor` | Color | `0x00FFFFFF` | Override label text color. |
| `IconColor` | Color | `0x00FFFFFF` | Override icon color. |
| `IconVisible` | Boolean | `True` | Set icon visibility. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearActions`
- `GetContentPanel As B4XView`
- `AddActionButton(Text As String, Tag As Object) As B4XView`
- `IsReady As Boolean`
- `GetVisualColors As Map`
- `SizeToFit(AvailableWidth As Int)`
- `RaiseActionClick(Tag As Object)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setAlertStyle(Value As String)`
- `getAlertStyle As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setText(Value As String)`
- `getText As String`
- `setMessage(Value As String)`
- `getMessage As String`
- `setDescription(Value As String)`
- `getDescription As String`
- `setIconVisible(Value As Boolean)`
- `getIconVisible As Boolean`
- `setIconAsset(Path As String)`
- `getIconAsset As String`
- `setIconSize(Value As Object)`
- `getIconSize As Float`
- `setIconColor(Value As Object)`
- `getIconColor As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `resetBorderWidthToTheme`
- `setShadow(Value As String)`
- `getShadow As String`
- `setActionSpacing(Value As Float)`
- `getActionSpacing As Float`
- `setVariantPalette(Palette As Map)`
- `getVariantPalette As Map`
- `applyActiveTheme`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyAnimation

### Public Methods

- `Initialize`
- `SetNativeAlpha(View As B4XView, AlphaValue As Float)`
- `SetNativeRotation(View As B4XView, Degrees As Float)`
- `SetNativeRotationY(View As B4XView, Degrees As Float)`
- `AnimateLayerNative(View As B4XView, AlphaValue As Float, Degrees As Float, DegreesY As Float, DurationMs As Int)`
- `SetNativeCameraDistance(View As B4XView, DistancePx As Float)`
- `SetTranslationX(View As B4XView, TranslationXPx As Float)`
- `SetTranslationY(View As B4XView, TranslationYPx As Float)`
- `AnimateTranslationX(View As B4XView, TranslationXPx As Float, DurationMs As Int)`
- `linearTween(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `AnimateTranslationY(View As B4XView, TranslationYPx As Float, DurationMs As Int)`
- `AnimateTranslationXY(View As B4XView, TransX As Float, TransY As Float, DurationMs As Int)`
- `SetNativePivot(View As B4XView, PivotX As Float, PivotY As Float)`
- `AnimateScaleFrom(View As B4XView, FromScaleX As Float, FromScaleY As Float, ToScaleX As Float, ToScaleY As Float, DurationMs As Int)`
- `SetNativeScale(View As B4XView, ScaleX As Float, ScaleY As Float)`
- `AnimateAlpha(View As B4XView, FromAlpha As Float, ToAlpha As Float, DurationMs As Int)`
- `AnimateRotation(View As B4XView, FromDegrees As Float, ToDegrees As Float, DurationMs As Int)`
- `AnimateScale(View As B4XView, ScaleX As Float, ScaleY As Float, DurationMs As Int)`
- `AnimateRotationX(View As B4XView, DegreesX As Float, DurationMs As Int)`
- `AnimateRotationY(View As B4XView, DegreesY As Float, DurationMs As Int)`
- `AnimateExtended(View As B4XView, Alpha As Float, TransX As Float, TransY As Float, ScaleX As Float, ScaleY As Float, RotX As Float, RotY As Float, DurationMs As Int)`
- `AnimateTada(View As B4XView, DurationMs As Int)`
- `AnimateRubberBand(View As B4XView, DurationMs As Int)`
- `AnimateShake(View As B4XView, DurationMs As Int)`
- `AnimateWobble(View As B4XView, DurationMs As Int)`
- `AnimatePulse(View As B4XView, DurationMs As Int)`
- `AnimateSlidePushLeftOut(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateSlidePushLeftIn(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateZoomSlideOut(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateZoomSlideIn(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateStackOut(View As B4XView, DurationMs As Int)`
- `AnimateCubeLeftOut(View As B4XView, DurationMs As Int)`
- `AnimateCubeLeftIn(View As B4XView, DurationMs As Int)`
- `AnimateAccordionOut(View As B4XView, DurationMs As Int)`
- `AnimateAccordionIn(View As B4XView, DurationMs As Int)`
- `AnimateFlash(View As B4XView, DurationMs As Int)`
- `AnimateSwing(View As B4XView, DurationMs As Int)`
- `AnimateAttentionBounce(View As B4XView, DurationMs As Int)`
- `AnimateStandUp(View As B4XView, DurationMs As Int)`
- `AnimateWave(View As B4XView, DurationMs As Int)`
- `AnimateHinge(View As B4XView, DurationMs As Int)`
- `AnimateFlight(View As B4XView, Mode As String, DurationMs As Int)`
- `AnimateRoll(View As B4XView, Mode As String, DurationMs As Int)`
- `AnimateFadeDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateZoomDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateSlideDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateFlipDirectional(View As B4XView, Mode As String, Axis As String, DurationMs As Int)`
- `EvaluateEasing(EaseName As String, Time As Float, StartValue As Float, ChangeInValue As Float, Duration As Int) As Float`

---

## B4XDaisyApp

### Public Methods

- `ClearSvgTextCache`
- `GetCachedSvgBitmap(Key As String) As B4XBitmap`
- `PutCachedSvgBitmap(Key As String, bmpBmp As B4XBitmap)`
- `GetCachedSvgText(Path As String, DefaultText As String) As String`

---

## B4XDaisyAura

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Style` | String | `default` | Aura color scheme. |
| `Size` | String | `md` | Ring thickness / inset token. |
| `Color` | Color | `0x00FFFFFF` | Optional single-color override (default/dual/glow only). Transparent = use style palette. |
| `TextColor` | Color | `0x00FFFFFF` | Alias for Color (Tailwind text-* light beam color). |
| `BackgroundColor` | Color | `0x00FFFFFF` | Optional container background color override. |
| `Rounded` | String | `theme` | Ring corner radius token. |
| `Duration` | Int | `3000, MinRange: 100` | Rotation period in milliseconds. Glow ignores this. |
| `Visible` | Boolean | `True` | Show or hide the aura. |
| `AutoStart` | Boolean | `True` | Start the rotating ring automatically once the aura is attached to the screen. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Wrap(Child As B4XView) As B4XView`
- `getContentContainer As B4XView`
- `getContainer As B4XView`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `SyncRotation`
- `StartRotation`
- `StopRotation`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setColor(Value As Int)`
- `getColor As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAutoStart(Value As Boolean)`
- `getAutoStart As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `RemoveViewFromParent`
- `GetComputedHeight As Int`
- `Release`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`

---

## B4XDaisyAvatar

### Events

- `Click`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Image` | String | `mashymain.jpg` | Full image path on device |
| `Mask` | String | `circle` | Avatar mask shape |
| `Rounded` | String | `rounded-full` | Corner radius token. |
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
- `View As B4XView`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `ResizeToParent(B4xV As B4XView)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setResizeMode(Value As String)`
- `getResizeMode As String`
- `setBlurRadius(Value As Int)`
- `getBlurRadius As Int`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `setChatImage(Value As Boolean)`
- `getChatImage As Boolean`
- `setVariantPalette(Palette As Map)`
- `getVariantPalette As Map`
- `applyActiveTheme`
- `setUseVariantStatusColors(Enabled As Boolean)`
- `getUseVariantStatusColors As Boolean`
- `setAvatar(Path As String)`
- `getAvatar As String`
- `setImage(Path As String)`
- `getImage As String`
- `setMask(Value As String)`
- `getMask As String`
- `setAvatarBitmap(bmpBmp As B4XBitmap, Tag As Object)`
- `getAvatarTag As Object`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAvatarStatus(Mode As String)`
- `setStatus(Mode As String)`
- `getAvatarStatus As String`
- `getStatus As String`
- `setAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `setAvatarOnlineColor(OnlineColor As Int)`
- `getOnlineColor As Int`
- `setOfflineColor(OfflineColor As Int)`
- `getOfflineColor As Int`
- `setAvatarOnlineColorVariant(VariantName As String)`
- `setOnlineColor(OnlineColor As Int)`
- `setOnlineColorVariant(VariantName As String)`
- `getAvatarOnlineColor As Int`
- `getAvatarOfflineColor As Int`
- `setShowOnline(Show As Boolean)`
- `getShowOnline As Boolean`
- `setAvatarType(Value As String)`
- `getAvatarType As String`
- `setPlaceHolder(Value As String)`
- `getPlaceHolder As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setAvatarMask(MaskName As String)`
- `getAvatarMask As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setGlobalMask(MaskName As String)`
- `setAvatarSize(Size As Object)`
- `setWidth(Value As Object)`
- `setHeight(Value As Object)`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setCenterOnParent(Value As Boolean)`
- `getCenterOnParent As Boolean`
- `getWidth As Float`
- `getHeight As Float`
- `setAvatarWidth(Value As Object)`
- `setAvatarHeight(Value As Object)`
- `getAvatarWidth As Float`
- `getAvatarHeight As Float`
- `setAvatarBorder(Color As Int, Width As Float)`
- `setAvatarBorderInset(Inset As Float)`
- `setRingColor(Color As Int)`
- `getRingColor As Int`
- `setRingColorVariant(VariantName As String)`
- `setRingWidth(Width As Float)`
- `getRingWidth As Float`
- `setRingOffset(Offset As Float)`
- `getRingOffset As Float`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `SetBitmapAndFill(ImageView As B4XView, bmpBmp As B4XBitmap)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `Release`

---

## B4XDaisyAvatarGroup

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddAvatar(Avatar As B4XDaisyAvatar) As Int`
- `AddAvatarView(ChildView As B4XView, Tag As Object) As Int`
- `Clear`
- `getCount As Int`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setSpacing(Value As String)`
- `getSpacing As String`
- `applyActiveTheme`
- `setAvatarSize(Value As Object)`
- `getAvatarSize As Object`
- `setLimitTo(Value As Int)`
- `getLimitTo As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `AvatarImage` | String | `mashymain.jpg` | Avatar image path from assets or full path |
| `AvatarText` | String | `` | Avatar placeholder text when image is empty |
| `AvatarPosition` | String | `left` | Avatar placement relative to text |
| `IconAsset` | String | `` | SVG asset used for left icon |
| `Toggle` | Boolean | `False` | Enables checked/unchecked toggle behavior |
| `Checked` | Boolean | `False` | Current checked state (effective when Toggle is true) |
| `CheckedColor` | Color | `0x00000000` | Background color used when checked (0 uses variant fallback) |
| `CheckedTextColor` | Color | `0x00000000` | Text/icon color used when checked (0 uses variant fallback) |
| `Id` | String | `` | Optional chip identifier returned in checked event |
| `Closable` | Boolean | `False` | Show close icon on the right side |
| `CloseIconAsset` | String | `xmark-solid.svg` | SVG asset used for close icon |
| `Rounded` | String | `theme` | Corner radius mode |
| `CapValue` | Int | `99` | Numeric cap - values above this display as cap+ (0 disables capping) |
| `Shadow` | String | `none` | Elevation shadow level |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `TextColor` | Color | `0x00FFFFFF` | Override text color. |
| `TextCentered` | Boolean | `True` | Center text inside badge. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setText(Value As String)`
- `getText As String`
- `setTextCentered(Value As Boolean)`
- `getTextCentered As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setAvatarVisible(Value As Boolean)`
- `getAvatarVisible As Boolean`
- `setAvatarImage(Value As String)`
- `getAvatarImage As String`
- `setAvatarText(Value As String)`
- `getAvatarText As String`
- `setAvatarPosition(Value As String)`
- `getAvatarPosition As String`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setToggle(Value As Boolean)`
- `getToggle As Boolean`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setCheckedColor(Value As Int)`
- `getCheckedColor As Int`
- `setCheckedTextColor(Value As Int)`
- `getCheckedTextColor As Int`
- `setId(Value As String)`
- `getId As String`
- `setClosable(Value As Boolean)`
- `getClosable As Boolean`
- `setCloseIconAsset(Value As String)`
- `getCloseIconAsset As String`
- `setCapValue(Value As Int)`
- `getCapValue As Int`
- `setValue(Value As Object)`
- `getValue As String`
- `increment As Int`
- `incrementBy(Amount As Int) As Int`
- `decrement As Int`
- `decrementBy(Amount As Int) As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

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
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip (p-4) |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `Required` | Boolean | `False` | Whether at least one badge must be selected. |
| `HintText` | String | `` | Helper text displayed below the group. |
| `ErrorText` | String | `` | Error text displayed below the group when validation fails. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddBadgeItem(Id As String, Text As String)`
- `RemoveBadgeItem(Id As String)`
- `ClearBadgeItems`
- `setItems(Items As Object)`
- `getItems As List`
- `setItemsSpec(Value As String)`
- `getItemsSpec As String`
- `setBadgeSelectionMode(Value As String)`
- `getBadgeSelectionMode As String`
- `setSelected(Value As String)`
- `getSelected As String`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `IsItemSelected(Id As String) As Boolean`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `ClearSelection`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Object)`
- `getTextColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setBadgeHeight(Value As String)`
- `getBadgeHeight As String`
- `setBadgeColor(Value As String)`
- `getBadgeColor As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setBadgeCheckedColor(Value As Object)`
- `getBadgeCheckedColor As Int`
- `setBadgeCheckedTextColor(Value As Object)`
- `getBadgeCheckedTextColor As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setTag(Value As Object)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyBoomMenu

### Events

- `BoomButtonClick (Index As Int, Tag As Object)`
- `BackgroundClick`
- `WillShow`
- `DidShow`
- `WillHide`
- `DidHide`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enable or disable the BoomMenu. |
| `Visible` | Boolean | `True` | Show or hide the BoomMenu. |
| `ButtonType` | String | `SimpleCircle` | Type of boom buttons. |
| `PiecePlace` | String | `DOT_9_1` | Layout of piece (placeholder) dots. All 35 DOT sub-variants are supported. |
| `ButtonPlace` | String | `SC_9_1` | Layout of boom buttons. All 35 SC sub-variants plus HORIZONTAL/VERTICAL/HAM_1..6. |
| `BoomType` | String | `H_THROW_2` | Animation path type. Default H_THROW_2 matches the original BoomMenu. |
| `EaseType` | String | `EaseOutBack` | Easing function for the show (boom) animation. |
| `HideEaseType` | String | `EaseInBack` | Easing function for the hide (reboom) animation. Default EaseInBack matches the original. |
| `OrderType` | String | `RANDOM` | Animation order. Default RANDOM matches the original BoomMenu. |
| `Duration` | Int | `300, MinRange: 0, MaxRange: 2000` | Animation duration in milliseconds. |
| `PieceColor` | Color | `0xFF794DFF` | Color of the piece placeholders. |
| `ButtonColor` | Color | `0xFF794DFF` | Color of the boom buttons. |
| `ShadowLevel` | String | `md` | Shadow elevation for pieces/buttons. |
| `BackdropEnabled` | Boolean | `True` | Show backdrop when open. |
| `BackdropColor` | Color | `0x55000000` | Backdrop color (with alpha). Default 0x55 matches the original dimColor. |
| `AutoBoom` | Boolean | `False` | Automatically boom on show. |
| `BoomDelay` | Int | `0, MinRange: 0` | Delay before auto boom. |
| `ReboomDelay` | Int | `0, MinRange: 0` | Delay before auto reboom. |
| `RotateTrigger` | Boolean | `True` | Rotate trigger button when booming. |
| `RotateButtons` | Boolean | `True` | Rotate boom buttons during the boom/reboom animation (original rotateDegree). |
| `RotateDegree` | Int | `720, MinRange: 0, MaxRange: 3600` | Degrees boom buttons rotate during a boom (and unrotate during reboom). Original default 720. |
| `AutoCloseOnActionClick` | Boolean | `True` | Close after a regular action click. |
| `AutoCloseOnBackgroundClick` | Boolean | `True` | Close when the backdrop is clicked (the original cancelable toggle). |
| `TriggerIconName` | String | `` | Trigger button icon asset name. |
| `TriggerText` | String | `` | Trigger button text. |
| `TriggerSizeDip` | Int | `56, MinRange: 0` | Trigger button size in dip. |
| `ButtonSizeDip` | Int | `48, MinRange: 0` | Boom button size in dip. |
| `ButtonGapDip` | Int | `12, MinRange: 0` | Gap between buttons. |
| `PieceSizeDip` | Int | `6, MinRange: 0` | Piece placeholder (dot) diameter in dip. Original default 2*dotRadius = 6dp. |
| `PieceCornerRadiusDip` | Int | `3, MinRange: 0` | Piece corner radius in dip. Equals half the piece size for a circular dot (original pieceCornerRadius -1 = circle). |
| `PieceHMarginDip` | Float | `2.5, MinRange: 0` | Horizontal margin between piece dots (original pieceHorizontalMargin 2.5dp). |
| `PieceVMarginDip` | Float | `2.5, MinRange: 0` | Vertical margin between piece dots (original pieceVerticalMargin 2.5dp). |
| `PieceIMarginDip` | Float | `3.5355, MinRange: 0` | Inclined margin between piece dots for 45deg layouts (original pieceInclinedMargin 3.5355dp = 5/sqrt2). |
| `ButtonCornerRadiusDip` | Int | `24, MinRange: 0` | Button corner radius in dip. |
| `HamButtonWidthDip` | Int | `300, MinRange: 0` | Ham (rectangle) button width in dip. Original default 300dp. |
| `HamButtonHeightDip` | Int | `60, MinRange: 0` | Ham (rectangle) button height in dip. Original default 60dp. |
| `HamImageSizeDip` | Int | `40, MinRange: 0` | Ham button image size in dip (image sits left of the title/subtitle). |
| `HamTitleSize` | Int | `14, MinRange: 0` | Ham button title text size (points). |
| `HamSubSize` | Int | `10, MinRange: 0` | Ham button subtitle text size (points). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Reposition(Left As Int, Top As Int, Width As Int, Height As Int)`
- `Refresh`
- `UpdateTheme`
- `Boom`
- `Reboom`
- `Toggle`
- `AddButton(Text As String, IconName As String, TagValue As Object) As Int`
- `AddButtonEx(Text As String, IconName As String, TagValue As Object, Visible As Boolean) As Int`
- `AddHamButton(Title As String, SubText As String, IconName As String, TagValue As Object) As Int`
- `SetButtonSubText(Index As Int, SubText As String)`
- `RemoveButton(Index As Int)`
- `ClearButtons`
- `SetButtonVisible(Index As Int, Value As Boolean)`
- `GetButtonView(Index As Int) As B4XView`
- `GetButtonTag(Index As Int) As Object`
- `SetButtonTag(Index As Int, TagValue As Object)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setOpened(Value As Boolean)`
- `setOpen(Value As Boolean)`
- `getOpened As Boolean`
- `getOpen As Boolean`
- `getIsInitialized As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setButtonType(Value As String)`
- `getButtonType As String`
- `setPiecePlace(Value As String)`
- `getPiecePlace As String`
- `setButtonPlace(Value As String)`
- `getButtonPlace As String`
- `setButtonPlaceAlignment(Value As String)`
- `getButtonPlaceAlignment As String`
- `setBoomType(Value As String)`
- `getBoomType As String`
- `setEaseType(Value As String)`
- `getEaseType As String`
- `setHideEaseType(Value As String)`
- `getHideEaseType As String`
- `setOrderType(Value As String)`
- `getOrderType As String`
- `setPieceColor(Value As Int)`
- `getPieceColor As Int`
- `setButtonColor(Value As Int)`
- `getButtonColor As Int`
- `setShadowLevel(Value As String)`
- `getShadowLevel As String`
- `setBackdropEnabled(Value As Boolean)`
- `getBackdropEnabled As Boolean`
- `setBackdropColor(Value As Int)`
- `getBackdropColor As Int`
- `setAutoBoom(Value As Boolean)`
- `getAutoBoom As Boolean`
- `setBoomDelay(Value As Int)`
- `getBoomDelay As Int`
- `setReboomDelay(Value As Int)`
- `getReboomDelay As Int`
- `setRotateTrigger(Value As Boolean)`
- `getRotateTrigger As Boolean`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `getAutoCloseOnActionClick As Boolean`
- `setAutoCloseOnBackgroundClick(Value As Boolean)`
- `getAutoCloseOnBackgroundClick As Boolean`
- `setRotateButtons(Value As Boolean)`
- `getRotateButtons As Boolean`
- `setRotateDegree(Value As Int)`
- `getRotateDegree As Int`
- `setTriggerText(Value As String)`
- `getTriggerText As String`
- `setTriggerIconName(Value As String)`
- `getTriggerIconName As String`
- `setTriggerSizeDip(Value As Int)`
- `getTriggerSizeDip As Int`
- `setButtonSizeDip(Value As Int)`
- `getButtonSizeDip As Int`
- `setButtonGapDip(Value As Int)`
- `getButtonGapDip As Int`
- `setPieceSizeDip(Value As Int)`
- `getPieceSizeDip As Int`
- `setPieceCornerRadiusDip(Value As Int)`
- `getPieceCornerRadiusDip As Int`
- `setButtonCornerRadiusDip(Value As Int)`
- `getButtonCornerRadiusDip As Int`
- `setPieceHMarginDip(Value As Float)`
- `getPieceHMarginDip As Float`
- `setPieceVMarginDip(Value As Float)`
- `getPieceVMarginDip As Float`
- `setPieceIMarginDip(Value As Float)`
- `getPieceIMarginDip As Float`
- `setHamButtonWidthDip(Value As Int)`
- `getHamButtonWidthDip As Int`
- `setHamButtonHeightDip(Value As Int)`
- `getHamButtonHeightDip As Int`
- `setHamImageSizeDip(Value As Int)`
- `getHamImageSizeDip As Int`
- `setHamTitleSize(Value As Int)`
- `getHamTitleSize As Int`
- `setHamSubSize(Value As Int)`
- `getHamSubSize As Int`
- `GetState As String`
- `GetButtonCount As Int`
- `BuildRuntimeProps As Map`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `boomtrigger_Click(Tag As Object)`
- `boombutton_Click(Tag As Object)`
- `boombtn_Click`
- `boombackdrop_Click`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyBoomPathManager

### Public Methods

- `Initialize`

---

## B4XDaisyBoxModel

### Public Methods

- `GetDefaultSpacingScale As Map`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `CreateDefaultModel As Map`
- `ResolveLength(Value As Object, ParentSize As Float, DefaultDip As Float) As Float`
- `ApplyPaddingUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyPaddingUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyMarginUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyMarginUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyRadiusUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyRadiusUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `GetCornerRadius(Model As Map, Corner As String, Fallback As Float) As Float`
- `ResolveOuterRect(rcHostRect As B4XRect, Model As Map) As B4XRect`
- `ResolveBorderRect(rcOuterRect As B4XRect, Model As Map) As B4XRect`
- `ResolvePaddingRect(rcBorderRect As B4XRect, Model As Map) As B4XRect`
- `ResolveContentRect(rcBorderRect As B4XRect, Model As Map) As B4XRect`
- `ExpandContentWidth(ContentWidth As Float, Model As Map) As Float`
- `ExpandContentHeight(ContentHeight As Float, Model As Map) As Float`
- `ToLocalRect(rcAbsoluteRect As B4XRect, rcOriginRect As B4XRect) As B4XRect`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `View As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `SetItems(lstItems As List)`
- `getItems As List`
- `Clear`
- `AddItem(Id As String, Text As String, IconPath As String, Clickable As Boolean)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setCurrentIndex(Value As Int)`
- `getCurrentIndex As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `getRTL As Boolean`
- `setRTL(Value As Boolean)`

---

## B4XDaisyButton

### Events

- `Click (Tag As Object)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `Button` | Button label. |
| `Variant` | String | `default` | Semantic color variant. |
| `Style` | String | `solid` | Daisy button style. |
| `Size` | String | `md` | Daisy button size token. |
| `Rounded` | String | `theme` | Border radius token. |
| `Padding` | String | `` | Tailwind padding utility tokens (For example: px-3 py-1). |
| `Margin` | String | `` | Tailwind margin utility tokens. |
| `Width` | String | `auto` | Tailwind/CSS width token (For example: auto, 40px, w-40, [12rem]). |
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
| `TextAlignment` | String | `CENTER` | Horizontal alignment of button text. |
| `Glass` | Boolean | `False` | Enable translucent glass background effect. |
| `ButtonSizeDip` | Int | `0, MinRange: 0` | Explicit button extent in dip (circle/square/content height). 0 = auto from Size token. |
| `IconSize` | Int | `0, MinRange: 0` | Explicit icon size in dip. 0 = auto from Size token. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `GetEstimateContentWidth As Int`
- `setText(Value As String)`
- `getText As String`
- `setClass(Value As String)`
- `getClass As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setButtonSizeDip(Value As Int)`
- `getButtonSizeDip As Int`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setIconName(Value As String)`
- `getIconName As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setWide(Value As Boolean)`
- `getWide As Boolean`
- `setBlock(Value As Boolean)`
- `getBlock As Boolean`
- `setSquare(Value As Boolean)`
- `getSquare As Boolean`
- `setCircle(Value As Boolean)`
- `getCircle As Boolean`
- `setActive(Value As Boolean)`
- `getActive As Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setLoading(Value As Boolean)`
- `getLoading As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTextAlignment(Value As String)`
- `getTextAlignment As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `setFocus(Value As Boolean)`
- `getIsFocused As Boolean`
- `RequestFocus`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `Release`

---

## B4XDaisyButtonPlaceManager

### Public Methods

- `Initialize`

---

## B4XDaisyCanvasSpinner

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddChild(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show(Target As B4XView)`
- `Hide`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getSize As String`
- `setSize(Value As String)`
- `getColor1 As Int`
- `setColor1(C As Int)`
- `getColor2 As Int`
- `setColor2(C As Int)`
- `getColor3 As Int`
- `setColor3(C As Int)`
- `getStrokeWidth As Float`
- `setStrokeWidth(S As Float)`
- `getOverlayColor As Int`
- `setOverlayColor(C As Int)`
- `getOverlayOpacity As Float`
- `setOverlayOpacity(O As Float)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getFigureContainer As B4XView`
- `getCardBody As B4XView`
- `getBodyPartContainer As B4XView`
- `getTitleContainer As B4XView`
- `getCardTitle As B4XView`
- `getCardActions As B4XView`
- `getContainer As B4XView`
- `getBodyContainer As B4XView`
- `getTitleExtrasContainer As B4XView`
- `getActionsContainer As B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCount As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setTitle(Value As String)`
- `getTitle As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setImagePath(Value As String)`
- `setImageWidth(Value As String)`
- `getImageWidth As String`
- `setImageHeight(Value As String)`
- `getImageHeight As String`
- `setImageClasses(Value As String)`
- `getImageClasses As String`
- `SetImage(bmpImage As B4XBitmap)`
- `ClearImage`
- `setSize(Value As String)`
- `getSize As String`
- `setStyle(Value As String)`
- `setPlaceItemsCenter(Value As Boolean)`
- `getPlaceItemsCenter As Boolean`
- `ShowTitle`
- `HideTitle`
- `ShowActions`
- `HideActions`
- `ShowImage`
- `HideImage`
- `setVariant(Value As String)`
- `getVariant As String`
- `setLayoutMode(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setVisible(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `getLeft As Int`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `BringToFront`
- `SendToBack`
- `getVisible As Boolean`
- `View As B4XView`

---

## B4XDaisyCardActions

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `GapDip` | Int | `8` | Gap between action items. |
| `Wrap` | Boolean | `True` | Wrap action items when row is full. |
| `Justify` | String | `start` | Horizontal row alignment. |
| `Visible` | Boolean | `True` | Show Or hide actions. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Relayout`
- `setGapDip(Value As Int)`
- `getGapDip As Int`
- `setWrap(Value As Boolean)`
- `getWrap As Boolean`
- `setJustify(Value As String)`
- `getJustify As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `getContainer As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyCardBody

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `md` | Body size token. |
| `Height` | String | `auto` | Body height token (auto, h-32, h-[120px], etc). |
| `Visible` | Boolean | `True` | Show or hide body container. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setSize(Value As String)`
- `getSize As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `getPaddingDip As Int`
- `getGapDip As Int`
- `getBodyTextSize As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `getContainer As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyCardTitle

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
| `TextColor` | Color | `0x00FFFFFF` | Override text color. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setText(Value As String)`
- `getText As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setCentered(Value As Boolean)`
- `getCentered As Boolean`
- `setGapDip(Value As Int)`
- `getGapDip As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setEllipsize(Value As String)`
- `getEllipsize As String`
- `getTextSize As Float`
- `getLabel As B4XView`
- `getExtrasContainer As B4XView`
- `getContainer As B4XView`
- `Relayout`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `View As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyCarousel

### Events

- `Click (Tag As Object)`
- `Changed (Index As Int)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `horizontal` | Carousel scroll orientation. |
| `Snap` | String | `start` | Carousel snapping behavior. |
| `Rounded` | String | `theme` | Corner radius variant. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddItem(Item As B4XDaisyCarouselItem)`
- `RemoveItem(Item As B4XDaisyCarouselItem)`
- `Clear`
- `ScrollToItem(Index As Int)`
- `getOrientation As String`
- `setOrientation(Value As String)`
- `getSnap As String`
- `setSnap(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getTag As Object`
- `setTag(Value As Object)`
- `getItemGap As Int`
- `setItemGap(Value As Int)`
- `getGap As String`
- `setGap(Value As String)`
- `getContentPadding As Int`
- `setContentPadding(Value As Int)`
- `getPadding As String`
- `setPadding(Value As String)`
- `getWidth As String`
- `setWidth(Value As String)`
- `getHeight As String`
- `setHeight(Value As String)`
- `getBackgroundColor As String`
- `setBackgroundColor(Value As String)`
- `getNavigationButtons As Boolean`
- `setNavigationButtons(Value As Boolean)`
- `getIndicatorButtons As Boolean`
- `setIndicatorButtons(Value As Boolean)`
- `getAutoPlay As Boolean`
- `setAutoPlay(Value As Boolean)`
- `getAutoPlayInterval As Int`
- `setAutoPlayInterval(Value As Int)`
- `StartAutoPlay`
- `StopAutoPlay`
- `Pause`
- `Resume`
- `getCurrentIndex As Int`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getEnabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setRoundedBox(Value As Boolean)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getIndicatorBackgroundColor As Int`
- `setIndicatorBackgroundColor(Value As Int)`
- `getIndicatorActiveColor As Int`
- `setIndicatorActiveColor(Value As Int)`
- `getIndicatorInactiveColor As Int`
- `setIndicatorInactiveColor(Value As Int)`
- `getIndicatorDotSize As Int`
- `setIndicatorDotSize(Value As Int)`
- `getIndicatorDotGap As Int`
- `setIndicatorDotGap(Value As Int)`
- `getIndicatorOffset As Int`
- `setIndicatorOffset(Value As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getItemType As String`
- `setItemType(Value As String)`
- `getSource As String`
- `setSource(Value As String)`
- `getSnap As String`
- `setSnap(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getTag As Object`
- `setTag(Value As Object)`
- `getContainer As B4XView`
- `getWidth As String`
- `setWidth(Value As String)`
- `getHeight As String`
- `setHeight(Value As String)`
- `getImageWidth As String`
- `setImageWidth(Value As String)`
- `getImageHeight As String`
- `setImageHeight(Value As String)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getEnabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getImageResizeMode As String`
- `setImageResizeMode(Value As String)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

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
| `DateTimeFormat` | String | `D, j M Y H:i` | Accepts Java DateFormat or flatpickr tokens (eg H:i, Y-m-d H:i) |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Resize(Width As Double, Height As Double)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setTag(Value As Object)`
- `getTag As Object`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `Clear`
- `setConversations(lstMessages As List)`
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
- `UpdateAvatarById(BubbleId As String, bmpAvatarBitmap As B4XBitmap) As Boolean`
- `UpdateOnlineStatusById(BubbleId As String, Status As String, OnlineColor As Int) As Boolean`
- `ReplaceMessageById(BubbleId As String, Message As Map) As Boolean`
- `DeleteMessageById(BubbleId As String) As Boolean`
- `AddMessage(Message As Map, ScrollTo As Boolean) As String`
- `LoadAvatarFilesFromAssets(lstFiles As List)`
- `setAvatarFiles(lstFiles As List)`
- `getAvatarFiles As List`
- `RandomAvatarFileOrBlank(BlankPct As Int) As String`
- `RandomAvatarStatus As String`
- `setBubbleAvatarStatusById(BubbleId As String, Mode As String)`
- `getBubbleIds As List`
- `setAvatarMask(Mask As String)`
- `getAvatarMask As String`
- `setMask(Mask As String)`
- `setAvatarSize(Size As Int)`
- `getAvatarSize As Int`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColor As Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColor As Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColor As Int`
- `setToTextColor(Color As Int)`
- `getToTextColor As Int`
- `setFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColors As Boolean`
- `setTheme(Name As String)`
- `getTheme As String`
- `setDateTimeFormat(Value As String)`
- `getDateTimeFormat As String`
- `setUseTimeAgo(Enabled As Boolean)`
- `getUseTimeAgo As Boolean`
- `setShowTimeAgoForToday(Enabled As Boolean)`
- `getShowTimeAgoForToday As Boolean`
- `RegisterTheme(Name As String, PaletteMap As Map)`
- `getPalette As Map`
- `CreateVariant(BackColor As Int, TextColor As Int) As Map`
- `ShowOnline(Enabled As Boolean)`
- `setOnlineStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `getOnlineStatusColor As Int`
- `getOfflineStatusColor As Int`
- `setVerticalGap(Gap As Int)`
- `getVerticalGap As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setSize(Width As Int, Height As Int)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `setId(Value As String)`
- `getId As String`
- `setFromId(Value As String)`
- `getFromId As String`
- `GetUsedHeight As Int`
- `setSide(Value As String)`
- `getSide As String`
- `setVariant(V As String)`
- `getVariant As String`
- `setBubbleStyle(StyleName As String)`
- `SetOutline(Enabled As Boolean, Color As Int, Width As Float)`
- `getBubbleStyle As String`
- `setMaxWidthPercent(P As Float)`
- `getMaxWidthPercent As Float`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `SetAvatarVisible(Value As Boolean)`
- `SetAvatarBitmap(bmpBmp As B4XBitmap, Tag As Object)`
- `SetAvatarStatus(Mode As String)`
- `SetAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `GetAvatarOnlineColor As Int`
- `GetAvatarOfflineColor As Int`
- `SetAvatarBorder(Color As Int, Width As Float)`
- `SetAvatarBorderInset(Inset As Float)`
- `setAvatarMask(MaskName As String)`
- `getAvatarMask As String`
- `SetGlobalMask(MaskName As String)`
- `setAvatarSize(Size As Float)`
- `SetAvatarWidth(Width As Float)`
- `SetAvatarHeight(Height As Float)`
- `GetAvatarWidth As Float`
- `GetAvatarHeight As Float`
- `getAvatarSize As Float`
- `setShowOnline(Show As Boolean)`
- `getShowOnline As Boolean`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColor As Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColor As Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColor As Int`
- `setToTextColor(Color As Int)`
- `getToTextColor As Int`
- `SetFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColors As Boolean`
- `SetVariantPalette(Palette As Map)`
- `GetVariantPalette As Map`
- `SetColors(BackOverride As Int, TextOverride As Int, MutedOverride As Int)`
- `SetHeader(Text As String)`
- `SetHeaderTime(Text As String)`
- `SetHeaderParts(NameText As String, TimeText As String)`
- `SetHeaderVisible(Value As Boolean)`
- `SetHeaderNameVisible(Value As Boolean)`
- `SetHeaderTimeVisible(Value As Boolean)`
- `SetFooter(Text As String)`
- `SetFooterVisible(Value As Boolean)`
- `SetMessage(Text As String)`
- `SetBubbleVisible(Value As Boolean)`
- `SetDebugBorders(Enabled As Boolean)`
- `GetDebugBorders As Boolean`
- `SetStatus(Mode As String, ExtraText As String)`
- `SetImage(bmpBmp As B4XBitmap, MaxHeight As Int)`
- `SetCustomContent(View As B4XView)`
- `SetContentAll(Header As String, Body As String, Footer As String, SideNow As String, VariantNow As String)`
- `MeasureHeight(AvailableWidth As Int) As Int`
- `RaiseBubbleClick(Tag As Object)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `TextColor` | Color | `0x00FFFFFF` | Override label text color. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked checkmark/text color. |
| `Multiline` | Boolean | `False` | Enable multi-line label text wrapping. |
| `LineSpacing` | Int | `0` | Extra space added between lines in pixels. |
| `LineSpacingMult` | Float | `1.0` | Line spacing multiplier. |
| `Required` | Boolean | `False` | Set field as required. |
| `ErrorText` | String | `` | Message displayed when field validation fails. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getRole As String`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setTextCS(Value As Object)`
- `getTextCS As Object`
- `setMultiline(Value As Boolean)`
- `getMultiline As Boolean`
- `setLineSpacing(Extra As Float)`
- `getLineSpacing As Float`
- `setLineSpacingMult(Value As Float)`
- `getLineSpacingMult As Float`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColor As Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColor As Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColor As Int`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `Clear`
- `setItems(Items As Map)`
- `getItems As Map`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `IsItemChecked(Id As String) As Boolean`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setCheckboxColor(Value As String)`
- `getCheckboxColor As String`
- `setCheckboxSize(Value As String)`
- `getCheckboxSize As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `GetComputedHeight As Int`
- `Release`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyCollapse

### Events

- `Click (Tag As Object)`
- `StateChanged (Open As Boolean)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Opened` | Boolean | `False` | Initial expanded state. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Base_Resize(Width As Double, Height As Double)`
- `setOpened(Value As Boolean)`
- `setOpen(Value As Boolean)`
- `getOpened As Boolean`
- `getOpen As Boolean`
- `Toggle`
- `setIcon(Value As String)`
- `getIcon As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTitleText(Value As String)`
- `getTitleText As String`
- `setTitleVariant(Value As String)`
- `getTitleVariant As String`
- `setTitleSize(Value As String)`
- `getTitleSize As String`
- `setTitleBackgroundColor(Value As Int)`
- `getTitleBackgroundColor As Int`
- `setTitleTextColor(Value As Int)`
- `getTitleTextColor As Int`
- `setTitleIconName(Value As String)`
- `getTitleIconName As String`
- `setTitleColor(Value As Int)`
- `getTitleColor As Int`
- `setTitleIconColor(Value As Int)`
- `getTitleIconColor As Int`
- `RefreshContent`
- `setWidth(Value As String)`
- `getWidth As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setIconPosition(Value As String)`
- `getIconPosition As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `CollapseTitle As B4XDaisyCollapseTitle`
- `CollapseContent As B4XDaisyCollapseContent`
- `getContentView As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyCollapseContent

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `BackgroundColor` | Color | `0x00000000` | Explicit background color override (0 uses parent/theme). |
| `TextColor` | Color | `0x00000000` | Explicit text color override for child labels (0 uses theme token). |
| `Visible` | Boolean | `True` | Show or hide content. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit child views. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Relayout`
- `getContainer As B4XView`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyCollapseTitle

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Text` | String | `Collapse Title` | Title text. |
| `Size` | String | `md` | Title size token. |
| `BackgroundColor` | Color | `0x00000000` | Explicit background color override (0 uses parent/theme). |
| `TextColor` | Color | `0x00000000` | Explicit text color override (0 uses theme token). |
| `IconName` | String | `` | SVG asset filename shown on the left (e.g. home-solid.svg). |
| `Variant` | String | `none` | Semantic color variant - overrides background and text colors. |
| `IconColor` | Color | `0x00000000` | Override icon color independently (0 = follow text color). |
| `Visible` | Boolean | `True` | Show or hide title. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setText(Value As String)`
- `getText As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setIconName(Value As String)`
- `getIconName As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyColorWheel

### Events

- `Changed (Color As Int)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `InitialColor` | Color | `0xFFEF4444` | The starting color of the wheel. |
| `WheelThickness` | Int | `24` | Thickness of the Hue ring in dip. |
| `HandleSize` | Int | `24` | The diameter of the draggable knobs in dip. |
| `Shadow` | String | `md` | Shadow elevation for handles. |
| `WheelReflectsSaturation` | Boolean | `False` | If true, the hue ring colors reflect the selected saturation. |
| `ShowColorIndicator` | Boolean | `True` | Shows internal selected color indicator block at the bottom. |
| `CenterOnParent` | Boolean | `False` | If true, centers the color wheel inside its parent layout. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `getColor As Int`
- `setColor(NewColor As Int)`
- `setHSV3(Hue As Float, Saturation As Float, Value As Float)`
- `getHex As String`
- `setHex(HexStr As String)`
- `getWheelDiameter As Int`
- `setWheelDiameter(Diameter As Int)`
- `getWheelReflectsSaturation As Boolean`
- `setWheelReflectsSaturation(Value As Boolean)`
- `setShowColorIndicator(Value As Boolean)`
- `getShowColorIndicator As Boolean`
- `setIndicatorHeight(HeightDip As Int)`
- `getIndicatorHeight As Int`
- `setInitialColor(Value As Int)`
- `getInitialColor As Int`
- `View As B4XView`
- `setTag(Value As Object)`
- `setWheelThickness(Thickness As Int)`
- `setCenterOnParent(Value As Boolean)`
- `getCenterOnParent As Boolean`
- `getWheelThickness As Int`
- `setHandleSize(Size As Int)`
- `getHandleSize As Int`
- `setHandleDiameter(Size As Int)`
- `getHandleDiameter As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AttachTo(Target As B4XView)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `getShadow As String`
- `setShadow(Value As String)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `Release`

---

## B4XDaisyCountdown

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `horizontal` | Layout orientation for the segments. |
| `Gap` | String | `gap-2` | Spacing between segments. |
| `AutoWidth` | Boolean | `True` | If true, all countdown elements will have the same width matching the longest item. |
| `BackgroundColor` | String | `transparent` | Background color for the container. |
| `Border` | Boolean | `False` | Show a border around the container (standard base-300 border). |
| `Rounded` | String | `rounded-md` | Corner radius token applied to the container and child items. |
| `Shadow` | String | `shadow-md` | Shadow effect applied to child items. |
| `Padding` | String | `p-0` | Inner padding for the container. |
| `CountDownType` | String | `default` | 'default' = items added manually with AddItem; 'auto' = items auto-generated from Format tokens. |
| `Format` | String | `` | Display format with tokens like {d}:{h}:{m}:{s} (d=days, h=hours, m=minutes, s=seconds). Used when CountDownType=auto. |
| `TargetDate` | String | `2026-12-31` | Target date/time as a date string (e.g. "2026-12-31" or "2026-12-31 23:59:59") or ticks (Long). |
| `AutoStart` | Boolean | `True` | Start the countdown timer automatically when the view is created. |
| `Labels` | String | `` | Pipe-delimited labels for auto mode (e.g. "days|hours|minutes|seconds"). |
| `LabelPosition` | String | `none` | Where to place labels relative to the number. 'none' hides labels. |
| `TextSize` | String | `md` | Typography size token for all child items. |
| `Variant` | String | `none` | DaisyUI semantic color variant for all child items. |
| `Outline` | Boolean | `False` | If true, child items will have an outline. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyCountdownItem)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `RemoveItem(Item As B4XDaisyCountdownItem)`
- `Clear`
- `getItem(Index As Int) As B4XDaisyCountdownItem`
- `getItemsCount As Int`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getOrientation As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setOrientation(Value As String)`
- `getGap As String`
- `setGap(Value As String)`
- `getAutoWidth As Boolean`
- `setAutoWidth(Value As Boolean)`
- `getBackgroundColor As String`
- `setBackgroundColor(Value As String)`
- `getBorder As Boolean`
- `setBorder(Value As Boolean)`
- `getCountDownType As String`
- `setCountDownType(T As String)`
- `getFormat As String`
- `setFormat(F As String)`
- `getPadding As String`
- `setPadding(Value As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `setTargetDate(Value As String)`
- `getTargetDate As String`
- `setAutoStart(Value As Boolean)`
- `getAutoStart As Boolean`
- `setLabels(Value As String)`
- `getLabels As String`
- `setLabelPosition(Value As String)`
- `getLabelPosition As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `getOutline As Boolean`
- `setOutline(Value As Boolean)`
- `Base_Resize(Width As Double, Height As Double)`
- `Start`
- `Stop`
- `IsRunning As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyCountdownItem

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Int | `0` | Current numeric value (0-999). |
| `Digits` | Int | `1` | Minimum number of digits to display. |
| `Label` | String | `` | Text label for this segment (e.g. days, hours). |
| `LabelPosition` | String | `none` | Where to place the label relative to the number. 'none' hides labels. |
| `TextSize` | String | `md` | Typography size token. |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `Outline` | Boolean | `False` | If true, the item will have an outline. |
| `Duration` | Int | `350` | Animation duration in milliseconds (0 = instant). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `getRequiredWidth As Int`
- `getTargetWidth As Int`
- `setTargetWidth(Value As Int)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `getValue As Int`
- `setValue(Value As Int)`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Milliseconds As Int)`
- `getDuration As Int`
- `getDigits As Int`
- `setDigits(Value As Int)`
- `getLabel As String`
- `setLabel(Value As String)`
- `getLabelPosition As String`
- `setLabelPosition(Value As String)`
- `getTextSize As String`
- `setTextSize(Value As String)`
- `getVariant As String`
- `getStyle As String`
- `setStyle(Value As String)`
- `setVariant(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getOutline As Boolean`
- `setOutline(Value As Boolean)`
- `setTag(Value As Object)`
- `getTag As Object`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyDashboard

### Events

- `ButtonClick (ButtonId As String)`
- `Changed (PageIndex As Int, PageCount As Int)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `RowsPerPage` | Int | `6` | Number of grid rows per page. |
| `ColumnsPerPage` | Int | `4` | Number of grid columns per page when Auto Grid is False. |
| `AutoGrid` | Boolean | `False` | Automatically calculate rows and columns from available size. |
| `MinCellWidth` | Int | `72` | Minimum tile width in dip used by Auto Grid. |
| `MinCellHeight` | Int | `96` | Minimum tile height in dip used by Auto Grid. |
| `PagePadding` | Int | `12` | Outer page padding in dip. |
| `CellSpacing` | Int | `6` | Spacing between grid cells horizontally in dip. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView)`
- `IsReady As Boolean`
- `SetButtons(lstNewButtons As List)`
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
- `Clear`
- `AddItem(Id As String, Label As String, Image As String)`
- `Refresh(SortAsc As Boolean)`
- `SortByTitleAsc`
- `SortByTitleDesc`
- `getButtonCount As Int`
- `getButtonsPerPage As Int`
- `getPageCount As Int`
- `getCurrentPage As Int`
- `SetCurrentPage(Index As Int)`
- `setRowsPerPage(Value As Int)`
- `getRowsPerPage As Int`
- `setColumnsPerPage(Value As Int)`
- `getColumnsPerPage As Int`
- `setAutoGrid(Value As Boolean)`
- `getAutoGrid As Boolean`
- `setMinCellWidth(Value As Int)`
- `getMinCellWidth As Float`
- `setMinCellHeight(Value As Int)`
- `getMinCellHeight As Float`
- `setPagePadding(Value As Int)`
- `getPagePadding As Float`
- `setCellSpacing(Value As Int)`
- `getCellSpacingY As Float`
- `setCellSpacingY(Value As Int)`
- `getCellSpacing As Float`
- `setGridTopOffset(Value As Int)`
- `getGridTopOffset As Float`
- `setActiveIndicatorColor(Value As Int)`
- `getActiveIndicatorColor As Int`
- `setActiveIndicatorColorVariant(VariantName As String)`
- `setInactiveIndicatorColor(Value As Int)`
- `getInactiveIndicatorColor As Int`
- `setInactiveIndicatorColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setWidth(Value As Object)`
- `getWidth As String`
- `setHeight(Value As Object)`
- `getHeight As String`
- `setBackgroundImage(Path As String)`
- `getBackgroundImage As String`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

---

## B4XDaisyDiff

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getItem1View As B4XView`
- `getItem2View As B4XView`
- `setItem1(AView As B4XView)`
- `setItem2(AView As B4XView)`
- `setPosition(Value As Float)`
- `getPosition As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDiffType(Value As String)`
- `getDiffType As String`
- `setImage1(Value As String)`
- `getImage1 As String`
- `setImage2(Value As String)`
- `getImage2 As String`
- `setText1(Value As String)`
- `getText1 As String`
- `setText2(Value As String)`
- `getText2 As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setText1Color(Value As String)`
- `getText1Color As String`
- `setText2Color(Value As String)`
- `getText2Color As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setDirection(Value As String)`
- `getDirection As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setText(Value As String)`
- `getText As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setGap(Value As Object)`
- `getGap As Float`
- `setLineThickness(Value As Object)`
- `getLineThickness As Float`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setDebugBorders(Value As Boolean)`
- `getDebugBorders As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `IsReady As Boolean`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAnimation`
- `StopAnimation`
- `setWidth(Value As Object)`
- `getWidth As Object`
- `setHeight(Value As Object)`
- `getHeight As Object`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTextSize(Value As Object)`
- `getTextSize As Float`
- `setText(Text As String)`
- `getText As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPlaceContentCenter(Value As Boolean)`
- `getPlaceContentCenter As Boolean`
- `setBorderWidth(Value As Int)`
- `getBorderWidth As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setBorderReliefStrength(Value As Int)`
- `getBorderReliefStrength As Int`
- `setAutoReliefByStyle(Value As Boolean)`
- `getAutoReliefByStyle As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setIsSkeleton(Value As Boolean)`
- `getIsSkeleton As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyDock

### Types

- `TDockItem (Id As String, Text As String, SvgAsset As String, Variant As String, Enabled As Boolean, Tag As Object, BadgeValue As String, BadgeVariant As String)`

### Events

- `ItemClick (ItemId As String)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Size` | String | `md` | Daisy dock size token. |
| `BadgeSize` | String | `auto` | Badge circle size. 'auto' follows the dock Size token; otherwise use an explicit badge size. |
| `ActiveIndex` | Int | `1` | Zero-based active item index. Use -1 for no active item. |
| `ActivePosition` | String | `bottom` | Active indicator position (bottom or top). |
| `Glass` | Boolean | `False` | Enable translucent glass background. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int`
- `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int`
- `ClearItems`
- `SetItemTagByIndex(Index As Int, TagValue As Object)`
- `SetItemTag(ItemId As String, TagValue As Object)`
- `SetItemEnabledByIndex(Index As Int, Value As Boolean)`
- `SetItemEnabled(ItemId As String, Value As Boolean)`
- `SetItemBadgeValueByIndex(Index As Int, Value As String)`
- `SetItemBadgeValue(ItemId As String, Value As String)`
- `SetItemBadgeColorByIndex(Index As Int, VariantName As String)`
- `SetItemBadgeColor(ItemId As String, VariantName As String)`
- `SetItemBadgeIncrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeIncrement(ItemId As String, Amount As Int)`
- `SetItemBadgeDecrementByIndex(Index As Int, Amount As Int)`
- `SetItemBadgeDecrement(ItemId As String, Amount As Int)`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `setSize(Value As String)`
- `getSize As String`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setActiveIndex(Value As Int)`
- `getActiveIndex As Int`
- `setActivePosition(Value As String)`
- `getActivePosition As String`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyDrawer

### Events

- `Closed`
- `Opened`
- `CloseClick (Tag As Object)`
- `StateChanged (Open As Boolean)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Enabled` | Boolean | `True` | Enables or disables user interaction. |
| `Visible` | Boolean | `True` | Shows or hides the drawer container. |
| `Opened` | Boolean | `False` | Initial open state of the primary drawer sidebar. |
| `AlwaysOpen` | Boolean | `False` | Forces sidebar to remain permanently open alongside content (drawer-open). |
| `Side` | String | `left` | Position of the drawer sidebar (left, right, or dual/both). |
| `LeftSideWidth` | String | `300dip` | Custom width for left drawer sidebar. |
| `RightSideWidth` | String | `300dip` | Custom width for right drawer sidebar. |
| `CollapseWidth` | String | `60dip` | Custom width for sidebar in collapsed rail mode (e.g. 60dip, w-14, 3.5rem). |
| `NormalWidth` | String | `300dip` | Custom width for sidebar in expanded/normal mode. |
| `IsCollapsed` | Boolean | `False` | When True, the drawer left side width is set to CollapseWidth; otherwise NormalWidth. |
| `RailWidth` | String | `60dip` | Custom width for sidebar in collapsed rail mode (e.g. 60dip, w-14, 3.5rem). |
| `RailMode` | Boolean | `False` | Collapses drawer sidebar into compact navigation rail mode. |
| `GestureEnabled` | Boolean | `True` | Enables swipe gesture detection from edges. |
| `LeftSideBackgroundColor` | String | `base-200` | Background color variant of the left sidebar panel. |
| `RightSideBackgroundColor` | String | `base-200` | Background color variant of the right sidebar panel. |
| `ContentBackgroundColor` | String | `none` | Background color variant of the content panel. |
| `OverlayColor` | Color | `0xFF000000` | Base RGB color of the backdrop overlay surface. Alpha channel is adjusted by OverlayOpacity. |
| `OverlayOpacity` | Int | `40, MinRange: 0, MaxRange: 100` | Opacity percentage for the backdrop overlay. |
| `Rounded` | String | `rounded-box` | Corner radius token for the sidebar. |
| `Shadow` | String | `lg` | Elevation shadow applied to the sidebar. |
| `Padding` | String | `p-4` | Padding token for the sidebar content. |
| `Animated` | Boolean | `True` | Enables smooth slide and fade transitions. |
| `Duration` | Int | `300, MinRange: 0, MaxRange: 2000` | Animation duration in milliseconds. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CenterPanel As B4XView`
- `LeftPanel As B4XView`
- `RightPanel As B4XView`
- `DarkPanel As B4XView`
- `AddToCenter(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToLeft(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToRight(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearCenter`
- `ClearLeft`
- `ClearRight`
- `getLeftOpen As Boolean`
- `setLeftOpen(Value As Boolean)`
- `OpenLeft`
- `CloseLeft`
- `getRightOpen As Boolean`
- `setRightOpen(Value As Boolean)`
- `OpenRight`
- `CloseRight`
- `Open`
- `Close`
- `Toggle`
- `getIsOpen As Boolean`
- `setIsOpen(Value As Boolean)`
- `SetSideWidthAnimated(Width As Float, Smooth As Boolean)`
- `setSideWidth(Value As String)`
- `getSideWidth As String`
- `setLeftSideWidth(Value As String)`
- `getLeftSideWidth As String`
- `setRightSideWidth(Value As String)`
- `getRightSideWidth As String`
- `setCollapseWidth(Value As String)`
- `getCollapseWidth As String`
- `setRailWidth(Value As String)`
- `getRailWidth As String`
- `setNormalWidth(Value As String)`
- `getNormalWidth As String`
- `setIsCollapsed(Value As Boolean)`
- `getIsCollapsed As Boolean`
- `setCollapsed(Value As Boolean)`
- `getCollapsed As Boolean`
- `getGestureEnabled As Boolean`
- `setGestureEnabled(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAlwaysOpen(Value As Boolean)`
- `getAlwaysOpen As Boolean`
- `setSide(Value As String)`
- `getSide As String`
- `setLeftSideBackgroundColor(Value As String)`
- `getLeftSideBackgroundColor As String`
- `setRightSideBackgroundColor(Value As String)`
- `getRightSideBackgroundColor As String`
- `setSideBackgroundColor(Value As String)`
- `getSideBackgroundColor As String`
- `setContentBackgroundColor(Value As String)`
- `getContentBackgroundColor As String`
- `setOverlayColor(Value As Object)`
- `getOverlayColor As Int`
- `setOverlayOpacity(Value As Int)`
- `getOverlayOpacity As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setBackgroundColorVariant(Value As String)`
- `getBackgroundColorVariant As String`
- `setTextColorVariant(Value As String)`
- `getTextColorVariant As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Parent As B4XView, Tag As Object) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `RemoveViewFromParent`
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`

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
| `Opened` | Boolean | `False` | Initial open state. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `Open`
- `Close`
- `Toggle`
- `AddTitle(Text As String) As Int`
- `AddDivider As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `getMenu As B4XDaisyMenu`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `ScrollToItem(TagValue As Object)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `GetPreferredWidth As Int`
- `GetPreferredHeight As Int`
- `GetPreferredMenuWidth As Int`
- `GetPreferredMenuHeight As Int`
- `AttachTo(Target As B4XView) As B4XView`
- `Detach`
- `UpdateTheme`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setHoverOpen(Value As Boolean)`
- `getHoverOpen As Boolean`
- `setForceOpen(Value As Boolean)`
- `getForceOpen As Boolean`
- `setForceClose(Value As Boolean)`
- `getForceClose As Boolean`
- `setAnchorTarget(Value As B4XView)`
- `getAnchorTarget As B4XView`
- `getAttachedMode As Boolean`
- `setMenuWidth(Value As String)`
- `getMenuWidth As String`
- `setMenuPadding(Value As String)`
- `getMenuPadding As String`
- `setMenuRounded(Value As String)`
- `getMenuRounded As String`
- `setMenuShadow(Value As String)`
- `getMenuShadow As String`
- `setBringToFront(Value As Boolean)`
- `getBringToFront As Boolean`
- `setMenuBackgroundColor(Value As Int)`
- `getMenuBackgroundColor As Int`
- `setMenuTextColor(Value As Int)`
- `getMenuTextColor As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyDualRange

### Events

- `Changed (LowerValue As Int, UpperValue As Int)`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `MinValue` | Int | `0` | Minimum slider value. |
| `MaxValue` | Int | `100` | Maximum slider value. |
| `LowerValue` | Int | `20` | Lower handle current value. |
| `UpperValue` | Int | `80` | Upper handle current value. |
| `StepValue` | Int | `1` | Step increment (0 for continuous). |
| `MinDistance` | Int | `0` | Minimum distance between lower and upper handles. |
| `Size` | String | `md` | Size variant. |
| `Variant` | String | `none` | Color variant. |
| `TrackColor` | Color | `0` | Custom track background color. |
| `ProgressColor` | Color | `0` | Custom progress fill color. |
| `ThumbColor` | Color | `0` | Custom thumb knob color. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `ShowFill` | Boolean | `True` | Show progress fill between lower and upper thumb positions. |
| `RTL` | Boolean | `False` | Right-to-left progress direction. |
| `Visible` | Boolean | `True` | Visible state. |
| `DisallowParentIntercept` | Boolean | `True` | Prevent parent scroll containers from stealing touch gestures on Android. |
| `Required` | Boolean | `False` | Whether the range values must be selected. |
| `LabelAbove` | String | `` | Label text displayed above the range slider. |
| `LabelVisible` | Boolean | `False` | Whether the label above is visible. |
| `HintText` | String | `` | Helper text displayed below the range slider. |
| `ErrorText` | String | `` | Text displayed below the range slider when in the error validation state. |
| `ShowValue` | Boolean | `True` | Show a right-aligned live value readout above the slider. |
| `ValuePrefix` | String | `` | Text shown before values (e.g. $). |
| `ValueSuffix` | String | `` | Text shown after values (e.g. %, px, s). |
| `ValueSeparator` | String | `" - "` | Separator string between lower and upper values in readout. |
| `IconLeft` | String | `` | Left-side SVG icon asset name. |
| `IconRight` | String | `` | Right-side SVG icon asset name. |
| `IconSize` | Int | `0` | Icon size in dip. 0 = auto-scale based on Size. |
| `ShowTooltip` | Boolean | `False` | Show tooltips with current values above the thumbs. |
| `TooltipPosition` | String | `top` | Tooltip position relative to the thumbs. |
| `TooltipOpen` | Boolean | `False` | When True, tooltips stay permanently visible. When False, tooltips show transiently during drag. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setMinValue(Value As Int)`
- `getMinValue As Int`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setLowerValue(Value As Int)`
- `getLowerValue As Int`
- `setValue1(Value As Int)`
- `getValue1 As Int`
- `setUpperValue(Value As Int)`
- `getUpperValue As Int`
- `setValue2(Value As Int)`
- `getValue2 As Int`
- `setValues(LowerVal As Int, UpperVal As Int)`
- `setValue(Value As Int)`
- `getValue As Int`
- `setStepValue(Value As Int)`
- `getStepValue As Int`
- `setMinDistance(Value As Int)`
- `getMinDistance As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setShowFill(Value As Boolean)`
- `getShowFill As Boolean`
- `setTrackColor(Value As Int)`
- `getTrackColor As Int`
- `setProgressColor(Value As Int)`
- `getProgressColor As Int`
- `setThumbColor(Value As Int)`
- `getThumbColor As Int`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setShowValue(Value As Boolean)`
- `getShowValue As Boolean`
- `setValuePrefix(Value As String)`
- `getValuePrefix As String`
- `setValueSuffix(Value As String)`
- `getValueSuffix As String`
- `setValueSeparator(Value As String)`
- `getValueSeparator As String`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setShowTooltip(Value As Boolean)`
- `getShowTooltip As Boolean`
- `setTooltipPosition(Value As String)`
- `getTooltipPosition As String`
- `setTooltipOpen(Value As Boolean)`
- `getTooltipOpen As Boolean`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `getRole As String`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `StopAnimation`
- `RemoveViewFromParent`
- `Release`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyEnjoyHint

### Types

- `EnjoyHintStep (TargetView As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ShowNext As Boolean, ShowSkip As Boolean, ShowPrev As Boolean, CloseOnOverlay As Boolean, ExplicitLeft As Int, ExplicitTop As Int, ExplicitRight As Int, ExplicitBottom As Int, PositionMode As String, ShadowColor As Int, Opacity As Float, ArrowPosition As String)`

### Public Methods

- `Initialize(Callback As Object, EventName As String, Root As B4XView)`
- `AddStep(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ArrowPosition As String)`
- `AddStep2(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ShowNext As Boolean, ShowSkip As Boolean, ShowPrev As Boolean, CloseOnOverlay As Boolean, ExplicitLeft As Int, ExplicitTop As Int, ExplicitRight As Int, ExplicitBottom As Int, PositionMode As String, ShadowColor As Int, Opacity As Float, ArrowPosition As String)`
- `RunWithResume`
- `EndTour`
- `Recalc`

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
| `Opened` | Boolean | `False` | Initial open state. |
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
| `TriggerSizeDip` | Int | `56, MinRange: 0` | Explicit trigger button extent in dip. 0 = use TriggerSize token. |
| `TriggerIconSize` | Int | `24, MinRange: 0` | Explicit trigger icon size in dip. 0 = auto from size token. |
| `ChildActionSizeDip` | Int | `40, MinRange: 0` | Explicit child action button extent in dip. 0 = use ChildActionSize token. |
| `ChildActionIconSize` | Int | `20, MinRange: 0` | Explicit child action icon size in dip. 0 = auto from size token. |
| `Duration` | Int | `300, MinRange: 0, MaxRange: 2000` | Duration in milliseconds for trigger and action button transition animations (0 = instant). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Refresh`
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
- `getAnchorTarget As B4XView`
- `setAnchorAlignment(Value As String)`
- `getAnchorAlignment As String`
- `setAnchorView(Value As B4XView)`
- `getAnchorView As B4XView`
- `setOverlayHost(Value As B4XView)`
- `getOverlayHost As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Resize(Width As Double, Height As Double)`
- `BringToFront`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setOpened(Value As Boolean)`
- `getOpened As Boolean`
- `IsOpen As Boolean`
- `setPlacementMode(Value As String)`
- `getPlacementMode As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setOnEdge(Value As Boolean)`
- `getOnEdge As Boolean`
- `setOpenMode(Value As String)`
- `getOpenMode As String`
- `setLayoutMode(Value As String)`
- `getLayoutMode As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setBackdropEnabled(Value As Boolean)`
- `getBackdropEnabled As Boolean`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `getAutoCloseOnActionClick As Boolean`
- `setTriggerText(Value As String)`
- `getTriggerText As String`
- `setTriggerVariant(Value As String)`
- `getTriggerVariant As String`
- `setTriggerStyle(Value As String)`
- `getTriggerStyle As String`
- `setTriggerSize(Value As String)`
- `getTriggerSize As String`
- `setChildActionSize(Value As String)`
- `getChildActionSize As String`
- `setTriggerSizeDip(Value As Int)`
- `getTriggerSizeDip As Int`
- `setTriggerIconSize(Value As Int)`
- `getTriggerIconSize As Int`
- `setChildActionSizeDip(Value As Int)`
- `getChildActionSizeDip As Int`
- `setChildActionIconSize(Value As Int)`
- `getChildActionIconSize As Int`
- `setTriggerIconName(Value As String)`
- `getTriggerIconName As String`
- `setTriggerCircle(Value As Boolean)`
- `getTriggerCircle As Boolean`
- `setUseMainAction(Value As Boolean)`
- `getUseMainAction As Boolean`
- `setMainActionText(Value As String)`
- `getMainActionText As String`
- `setMainActionVariant(Value As String)`
- `getMainActionVariant As String`
- `setMainActionIconName(Value As String)`
- `getMainActionIconName As String`
- `setUseCloseAction(Value As Boolean)`
- `getUseCloseAction As Boolean`
- `setCloseActionText(Value As String)`
- `getCloseActionText As String`
- `setCloseActionVariant(Value As String)`
- `getCloseActionVariant As String`
- `setCloseActionIconName(Value As String)`
- `getCloseActionIconName As String`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyFieldset

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
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Required` | Boolean | `False` | Adds a red star * to the Legend/Label when LabelAbove = True |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ApplyDesignerProps(Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setLegend(L As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(V As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Object)`
- `getTextColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `GetContentPanel As B4XView`
- `AddContentView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `getTag As Object`
- `setTag(Value As Object)`
- `Refresh`
- `BeginUpdate`
- `EndUpdate`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `Release`
- `View As B4XView`

---

## B4XDaisyFileHandler

### Types

- `LoadResult (Success As Boolean, Dir As String, FileName As String, RealName As String, Size As Long, Modified As Long, MimeType As String, Image As B4XBitmap)`

### Public Methods

- `Initialize`
- `DeleteTemporaryFiles`
- `SaveAs(Source As InputStream, MimeType As String, Title As String) As ResumableSub`
- `Load As ResumableSub`
- `LoadWithFilter(MimeType As String, Title As String) As ResumableSub`
- `RecordAudio As ResumableSub`
- `CheckForReceivedFiles As LoadResult`
- `SaveAs(ParentPage As Object, AnchorView As Object, Text As String) As ResumableSub`
- `Load(ParentPage As Object, AnchorView As Object) As ResumableSub`
- `UrlToLoadResult(Url As String) As LoadResult`

---

## B4XDaisyFileInput

### Events

- `Click (Tag As Object)`
- `FileSelected (FileName As String)`
- `Cancelled`
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setAppendIcon(Value As String)`
- `getAppendIcon As String`
- `setButtonText(Value As String)`
- `getButtonText As String`
- `setAccept(Value As String)`
- `getAccept As String`
- `setFileDate(Value As Long)`
- `getFileDate As Long`
- `setFileSize(Value As Long)`
- `getFileSize As Long`
- `setFileBase64(Value As String)`
- `getFileBase64 As String`
- `setMimeType(Value As String)`
- `getMimeType As String`
- `setMaxSize(Value As Int)`
- `getMaxSize As Int`
- `getExceedsSize As Boolean`
- `getFileInputStream As InputStream`
- `GetBitmap As B4XBitmap`
- `getExtension As String`
- `getIsImage As Boolean`
- `getIsVideo As Boolean`
- `getIsPDF As Boolean`
- `getIsExcel As Boolean`
- `getIsWord As Boolean`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setFileName(Value As String)`
- `getFileName As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setPlaceholderColor(Value As Int)`
- `getPlaceholderColor As Int`
- `setButtonColor(Value As Int)`
- `getButtonColor As Int`
- `setButtonTextColor(Value As Int)`
- `getButtonTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTypeface(Value As String)`
- `getTypeface As String`
- `setGravity(Value As String)`
- `getGravity As String`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `RemoveViewFromParent`
- `Release`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Clear`
- `getLeft As Int`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `Options` | String | `svelte:Svelte, vue:Vue, react:React` | Comma-separated or pipe-separated key:value pairs. |
| `ActiveKey` | String | `` | Key of the active option. |
| `Rounded` | String | `theme` | Corner radius option. |
| `Variant` | String | `none` | Daisy color variant. |
| `FilterStyle` | String | `solid` | Styling of choices. |
| `Size` | String | `md` | Sizing variant. |
| `ResetPosition` | String | `left` | Position of the reset button. |
| `ResetText` | String | `x` | Text for the reset button. |
| `CloseType` | String | `icon` | Display mode for the close/reset button. |
| `CloseIcon` | String | `close.svg` | SVG icon for the close/reset button when CloseType is icon. |
| `MultiSelect` | Boolean | `False` | Allow multiple selection like checkboxes. |
| `Orientation` | String | `horizontal` | Layout orientation. |
| `Duration` | Int | `300` | Layout transition duration in milliseconds (0 to disable). |
| `Width` | String | `w-full` | Sizing width token. |
| `Height` | String | `h-auto` | Sizing height token. |
| `Padding` | String | `` | Spacing padding token. |
| `Margin` | String | `` | Spacing margin token. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setOptions(Value As String)`
- `getOptions As String`
- `setActiveKey(Value As String)`
- `getActiveKey As String`
- `setOptionsMap(Value As Map)`
- `getOptionsMap As Map`
- `setOptionsList(lstValue As List)`
- `getOptionsList As List`
- `setRounded(Value As String)`
- `getRounded As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setFilterStyle(Value As String)`
- `getFilterStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setResetPosition(Value As String)`
- `getResetPosition As String`
- `setResetText(Value As String)`
- `getResetText As String`
- `setCloseType(Value As String)`
- `getCloseType As String`
- `setCloseIcon(Value As String)`
- `getCloseIcon As String`
- `setMultiSelect(Value As Boolean)`
- `getMultiSelect As Boolean`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setItemChecked(Key As String, Checked As Boolean)`
- `isItemChecked(Key As String) As Boolean`
- `getCheckedKeys As List`
- `setChecked(CheckedKeys As String)`
- `getChecked As String`
- `setItems(Value As Map)`
- `getItems As Map`
- `setSelectedIds(lstIds As List)`
- `getSelectedIds As List`
- `Refresh`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `RemoveViewFromParent`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyFlexItem

### Public Methods

- `Initialize(Owner As B4XDaisyFlexPanel, View As B4XView)`
- `Reset As B4XDaisyFlexItem`
- `Grow(Value As Float) As B4XDaisyFlexItem`
- `Shrink(Value As Float) As B4XDaisyFlexItem`
- `Flex(GrowValue As Float, ShrinkValue As Float) As B4XDaisyFlexItem`
- `Flex1 As B4XDaisyFlexItem`
- `FlexAuto As B4XDaisyFlexItem`
- `FlexInitial As B4XDaisyFlexItem`
- `FlexNone As B4XDaisyFlexItem`
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
- `Apply As B4XDaisyFlexItem`
- `ApplyNoRelayout As B4XDaisyFlexItem`
- `ApplyEx(DoRelayout As Boolean) As B4XDaisyFlexItem`
- `View As B4XView`

---

## B4XDaisyFlexLayout

### Public Methods

- `Initialize(Container As B4XView)`
- `SetContainer(Container As B4XView)`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
- `SetItemFlexEx(View As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis(View As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent(View As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent(View As B4XView)`
- `SetItemMargins(View As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf(View As B4XView, AlignSelf As String)`
- `SetItemOrder(View As B4XView, OrderValue As Int)`
- `SetItemWrapBefore(View As B4XView, Value As Boolean)`
- `ClearItemMeta(View As B4XView)`
- `ClearAllItemMeta`
- `Relayout`
- `GetContentWidth As Int`
- `GetContentHeight As Int`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `InitForCode(Callback As Object, EventName As String, Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `GetContentPanel As B4XView`
- `Relayout`
- `GetMeasuredWidth As Int`
- `GetMeasuredHeight As Int`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
- `setDirection(Value As String)`
- `getDirection As String`
- `setWrapMode(Value As String)`
- `getWrapMode As String`
- `setJustifyContent(Value As String)`
- `getJustifyContent As String`
- `setAlignItems(Value As String)`
- `getAlignItems As String`
- `setAlignContent(Value As String)`
- `getAlignContent As String`
- `setGapX(Value As Int)`
- `getGapX As Int`
- `setGapY(Value As Int)`
- `getGapY As Int`
- `setPaddingLeft(Value As Int)`
- `getPaddingLeft As Int`
- `setPaddingTop(Value As Int)`
- `getPaddingTop As Int`
- `setPaddingRight(Value As Int)`
- `getPaddingRight As Int`
- `setPaddingBottom(Value As Int)`
- `getPaddingBottom As Int`
- `setAnimateDuration(Value As Int)`
- `getAnimateDuration As Int`
- `setAllowShrinkWhenWrap(Value As Boolean)`
- `getAllowShrinkWhenWrap As Boolean`
- `setAutoRelayout(Value As Boolean)`
- `getAutoRelayout As Boolean`
- `AddItem(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddItemEx(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XDaisyFlexItem`
- `Item(View As B4XView) As B4XDaisyFlexItem`
- `RemoveItem(View As B4XView)`
- `Clear`
- `getNumberOfItems As Int`
- `GetItem(Index As Int) As B4XView`
- `SetItemFlexEx(View As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis(View As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent(View As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent(View As B4XView)`
- `SetItemMargins(View As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf(View As B4XView, AlignSelf As String)`
- `SetItemOrder(View As B4XView, OrderValue As Int)`
- `SetItemWrapBefore(View As B4XView, Value As Boolean)`
- `ClearItemMeta(View As B4XView)`
- `ClearAllItemMeta`
- `SetItemFlexEx_NoRelayout(View As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis_NoRelayout(View As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent_NoRelayout(View As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent_NoRelayout(View As B4XView)`
- `SetItemMargins_NoRelayout(View As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf_NoRelayout(View As B4XView, AlignSelf As String)`
- `SetItemOrder_NoRelayout(View As B4XView, OrderValue As Int)`
- `SetItemWrapBefore_NoRelayout(View As B4XView, Value As Boolean)`
- `BeginUpdate`
- `EndUpdate(DoRelayout As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyGrid

### Types

- `GridResolvedConfig (Cols As Int, GapX As Float, GapY As Float, PadL As Float, PadT As Float, PadR As Float, PadB As Float, AutoRowsTemplate As String, AutoColsTemplate As String, TemplateRows As String, Dense As Boolean, GridFlow As String, JustifyItems As String, AlignItems As String)`
- `GridItemResolved (ColSpan As Int, RowSpan As Int, ColStart As Int, RowStart As Int, ColEnd As Int, RowEnd As Int, Order As Int, Hidden As Boolean, JustifySelf As String, AlignSelf As String)`
- `GridPlacement (Col As Int, Row As Int, ColSpan As Int, RowSpan As Int, X As Float, Y As Float, W As Float, H As Float)`
- `GridItemSpec (Key As String, ClassText As String, Visible As Boolean, Order As Int)`
- `GridDiagCollision (Key As String, RequestedCol As Int, RequestedRow As Int, RequestedColSpan As Int, RequestedRowSpan As Int, FallbackCol As Int, FallbackRow As Int, Reason As String)`
- `GridTrackSize (IsFr As Boolean, Value As Float, fMin As Float, fMax As Float)`

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
| `Cols` | Int | `1, MinRange: 1, MaxRange: 24` | Fallback columns when no class token is set |
| `Gap` | String | `4` | Tailwind spacing token or CSS/dip value |
| `GapX` | String | `` | Optional horizontal gap override |
| `GapY` | String | `` | Optional vertical gap override |
| `AutoRows` | String | `minmax(72dip, auto)` | Grid auto-rows template |
| `TemplateRows` | String | `` | Explicit row template (e.g., "100dip 1fr 200dip") |
| `Padding` | String | `0` | Padding shorthand |
| `Dense` | Boolean | `False` | Enable dense packing algorithm |
| `Debug` | Boolean | `False` | Enable debug logging |
| `DebugOverlay` | Boolean | `False` | Draw grid lines and labels |
| `AutoRegisterChildrenFromTag` | Boolean | `False` | Register child views using Tag metadata |
| `EmitLayoutDiff` | Boolean | `False` | Raise LayoutDiff event with changed items |
| `DefaultAnimMs` | Int | `0, MinRange: 0, MaxRange: 2000` | Default placement animation in ms |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `setClassName(ClassText As String)`
- `getClassName As String`
- `setCols(Value As Int)`
- `getCols As Int`
- `setGap(Value As Object)`
- `getGap As Float`
- `setGapX(Value As Object)`
- `getGapX As Float`
- `setGapY(Value As Object)`
- `getGapY As Float`
- `SetGapXY(ValueX As Float, ValueY As Float)`
- `SetAutoRowsTemplate(Template As String)`
- `setAutoRows(Template As String)`
- `getAutoRows As String`
- `setTemplateRows(Template As String)`
- `getTemplateRows As String`
- `setPadding(Value As Object)`
- `getPadding As Float`
- `SetPaddingLTRB(Left As Float, Top As Float, Right As Float, Bottom As Float)`
- `SetBreakpoint(Name As String, MinWidth As Float)`
- `setDense(Value As Boolean)`
- `getDense As Boolean`
- `setDebug(Value As Boolean)`
- `getDebug As Boolean`
- `setDebugOverlay(Value As Boolean)`
- `getDebugOverlay As Boolean`
- `setAutoRegisterChildrenFromTag(Value As Boolean)`
- `getAutoRegisterChildrenFromTag As Boolean`
- `setEmitLayoutDiff(Value As Boolean)`
- `getEmitLayoutDiff As Boolean`
- `setDefaultAnimMs(Value As Int)`
- `getDefaultAnimMs As Int`
- `AddItem(ItemView As B4XView, ClassText As String) As String`
- `AddItemWithKey(Key As String, ItemView As B4XView, ClassText As String)`
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
- `GetLayoutSnapshot As List`
- `DebugDumpSnapshot As String`
- `GetCollisionDiagnostics As List`
- `GetCollisionReport As String`
- `GetResolvedItemRules(Key As String, Width As Float) As Map`
- `GetResolvedItemRulesNow(Key As String) As Map`
- `GetResolvedContainerRulesNow As Map`
- `GetItemSpec(Key As String) As GridItemSpec`
- `ApplyItemSpec(Spec As GridItemSpec)`
- `GetAllItemSpecs As List`
- `ExportLayoutSpecs As List`
- `ImportLayoutSpecs(lstSpecs As List, IgnoreMissing As Boolean)`
- `ExportLayoutProfile(ProfileName As String) As Map`
- `ImportLayoutProfile(Profile As Map, IgnoreMissing As Boolean)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setBackgroundImage(Value As String)`
- `getBackgroundImage As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(Value As String)`
- `getBackgroundColorVariant As String`
- `setTextColorVariant(Value As String)`
- `getTextColorVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setOverlayVisible(Value As Boolean)`
- `getOverlayVisible As Boolean`
- `setOverlayColor(Value As Int)`
- `getOverlayColor As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setContentAlignment(Value As String)`
- `getContentAlignment As String`
- `setGap(Value As String)`
- `getGap As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `GetContentPanel As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setMaxTilt(Value As Float)`
- `getMaxTilt As Float`
- `setScaleOnHover(Value As Float)`
- `getScaleOnHover As Float`
- `setShineEffect(Value As Boolean)`
- `getShineEffect As Boolean`
- `setPerspective(Value As Float)`
- `getPerspective As Float`
- `setResetDuration(Value As Int)`
- `getResetDuration As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setContentType(Value As String)`
- `getContentType As String`
- `setImage(Value As String)`
- `getImage As String`
- `setContentBackgroundColor(Value As Int)`
- `getContentBackgroundColor As Int`
- `setContentRounded(Value As String)`
- `getContentRounded As String`
- `setContentPadding(Value As String)`
- `getContentPadding As String`
- `setContentShadow(Value As String)`
- `getContentShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddView(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RemoveAllViews`
- `getContentPanel As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(SizeDip As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setCustomSize(Value As Int)`
- `getCustomSize As Int`
- `setShape(Value As String)`
- `getShape As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setLoading(Value As Boolean)`
- `getLoading As Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setActive(Value As Boolean)`
- `getActive As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyImage

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `ResizeMode` | String | `FIT` |  |
| `Rounded` | Boolean | `False` |  |
| `CornersRadius` | Int | `0` |  |
| `BackgroundColor` | Color | `0xFFAAAAAA` |  |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `getRounded As Boolean`
- `setRounded(Value As Boolean)`
- `getCornersRadius As Int`
- `setCornersRadius(Value As Int)`
- `getRoundedImage As Boolean`
- `setRoundedImage(Value As Boolean)`
- `getBackgroundColor As Int`
- `setBackgroundColor(Value As Int)`
- `getResizeMode As String`
- `setResizeMode(Value As String)`
- `Update`
- `Load(Dir As String, FileName As String)`
- `Clear`
- `setBitmap(bmpBmp As B4XBitmap)`
- `getBitmap As B4XBitmap`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `AttachTo(Target As B4XView)`
- `DetachTarget`
- `RefreshPlacement`
- `setHorizontalPlacement(Value As String)`
- `getHorizontalPlacement As String`
- `setVerticalPlacement(Value As String)`
- `getVerticalPlacement As String`
- `setOffsetX(Value As Object)`
- `getOffsetX As Float`
- `setOffsetY(Value As Object)`
- `getOffsetY As Float`
- `setText(Value As String)`
- `getText As String`
- `setCounter(Value As Boolean)`
- `getCounter As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColorVariant(VariantName As String)`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setCapValue(Value As Int)`
- `getCapValue As Int`
- `setValue(Value As Int)`
- `getValue As Int`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `Increment As Int`
- `IncrementBy(Amount As Int) As Int`
- `Decrement As Int`
- `DecrementBy(Amount As Int) As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyInfoCard

### Events

- `Click (Tag As Object)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `InforType` | String | `1` | Info card layout type (infobox 1-5 / badge card 6). |
| `Effect` | String | `none` | Press effect (hover-zoom / parity, mapped to touch press). |
| `Icon` | String | `user-solid.svg` | SVG icon asset name (B4XDaisySvgIcon). |
| `IconColor` | Color | `0` | Icon column / glyph color (0 = use Variant). |
| `IconTextColor` | Color | `0` | Icon glyph color (0 = white). |
| `Variant` | String | `none` | Theme color variant for the icon accent. |
| `Title` | String | `Employees` | Title text. |
| `Value` | String | `1000` | Numeric target value for the count-up. |
| `StartFrom` | Float | `0` | Count-up start value. |
| `Prefix` | String | `` | Text before the value (e.g. $). |
| `Suffix` | String | `` | Text after the value (e.g. %, px). |
| `Separator` | String | `,` | Thousands grouping separator (used when Use Grouping is on). |
| `Decimal` | String | `.` | Decimal separator character. |
| `DecimalPlaces` | Int | `0` | Number of decimal places. |
| `UseGrouping` | Boolean | `True` | Enable thousands grouping separator. |
| `Animated` | Boolean | `True` | Animate the value from Start From to Value. |
| `Duration` | Int | `2` | Count-up duration in seconds. |
| `BackgroundColor` | Color | `0` | Card background (0 = base-100). |
| `TextColor` | Color | `0` | Title/value text color (0 = base-content). |
| `Shadow` | String | `sm` | Elevation level. |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `UpdateTheme`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setInforType(Value As String)`
- `getInforType As String`
- `setEffect(Value As String)`
- `getEffect As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setIconTextColor(Value As Int)`
- `getIconTextColor As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setValue(Value As String)`
- `getValue As String`
- `setStartFrom(Value As Float)`
- `getStartFrom As Float`
- `setPrefix(Value As String)`
- `getPrefix As String`
- `setSuffix(Value As String)`
- `getSuffix As String`
- `setSeparator(Value As String)`
- `getSeparator As String`
- `setDecimal(Value As String)`
- `getDecimal As String`
- `setDecimalPlaces(Value As Int)`
- `getDecimalPlaces As Int`
- `setUseGrouping(Value As Boolean)`
- `getUseGrouping As Boolean`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `getRole As String`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `RemoveViewFromParent`
- `Release`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyInput

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `RemoveViewFromParent`
- `RequestFocus`
- `Release`
- `UpdateTheme`
- `setText(Value As String)`
- `getText As String`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `GetValidationError As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setInputType(Value As String)`
- `setAppendIcon(Value As String)`
- `getAppendIcon As String`
- `setAppendIconColor(Value As Int)`
- `getAppendIconColor As Int`
- `setAppendColor(Value As Int)`
- `getAppendColor As Int`
- `setSearchIcon(Value As String)`
- `getSearchIcon As String`
- `setClearIcon(Value As String)`
- `getClearIcon As String`
- `setShowClearButton(Value As String)`
- `getShowClearButton As String`
- `setPasswordChar(Value As String)`
- `getPasswordChar As String`
- `getInputType As String`
- `setMinValue(Value As String)`
- `getMinValue As String`
- `setMaxValue(Value As String)`
- `getMaxValue As String`
- `setStepValue(Value As String)`
- `getStepValue As String`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setPlaceholderColor(Value As Int)`
- `getPlaceholderColor As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setLabelLeft(Value As String)`
- `getLabelLeft As String`
- `setLabelRight(Value As String)`
- `getLabelRight As String`
- `setFloatingLabel(Value As Boolean)`
- `getFloatingLabel As Boolean`
- `setImeOptions(Value As String)`
- `getImeOptions As String`
- `setGravity(Value As String)`
- `getGravity As String`
- `setTypeface(Value As String)`
- `getTypeface As String`
- `setMaxLines(Value As Int)`
- `getMaxLines As Int`
- `setMinLines(Value As Int)`
- `getMinLines As Int`
- `setAllCaps(Value As Boolean)`
- `getAllCaps As Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnly As Boolean`
- `setCursorVisible(Value As Boolean)`
- `getCursorVisible As Boolean`
- `setLetterSpacing(Value As Float)`
- `getLetterSpacing As Float`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setNoAutoFill(Value As Boolean)`
- `getNoAutoFill As Boolean`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setValidationPattern(Value As String)`
- `getValidationPattern As String`
- `setMinLength(Value As Int)`
- `getMinLength As Int`
- `setMaxLength(Value As Int)`
- `getMaxLength As Int`
- `setValidationState(Value As String)`
- `getValidationState As String`
- `getIsValid As Boolean`
- `Revalidate`
- `setErrorText(Value As String)`
- `setRequiredErrorText(Value As String)`
- `getRequiredErrorText As String`
- `setMinLengthErrorText(Value As String)`
- `getMinLengthErrorText As String`
- `setMaxLengthErrorText(Value As String)`
- `getMaxLengthErrorText As String`
- `setPatternErrorText(Value As String)`
- `getPatternErrorText As String`
- `getErrorText As String`
- `getIsBlank As Boolean`
- `Validate As Boolean`
- `CheckValidation As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `ReceiveFocus`
- `Blur`
- `setFocus(Value As Boolean)`
- `getIsFocused As Boolean`
- `getEditText As B4XView`
- `SelectAll`
- `SetSelection(StartPos As Int, Length As Int)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setDateFormat(Value As String)`
- `getDateFormat As String`
- `setTimeFormat(Value As String)`
- `getTimeFormat As String`
- `setIs24Hours(Value As Boolean)`
- `getIs24Hours As Boolean`
- `setMinDate(Value As String)`
- `getMinDate As String`
- `setMaxDate(Value As String)`
- `getMaxDate As String`
- `ShowDatePicker`
- `ShowTimePicker`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `setText(Value As String)`
- `getText As String`
- `setSize(Value As String)`
- `getSize As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ResizeToFitContent`
- `Base_Resize(Width As Double, Height As Double)`
- `RegisterTemplate(TemplateName As String, Callback As Object, EventName As String)`
- `AddRowDataWithTemplate(Data As Map, TemplateName As String) As Int`
- `AddRowData(Data As Map) As Int`
- `AddHeader(Title As String) As Int`
- `AddRowDataBatch(lstItems As List)`
- `SetRowCount(Count As Int)`
- `AddRow(Data As Map) As Int`
- `Clear`
- `getRowCount As Int`
- `GetRowData(Index As Int) As Map`
- `GetRow(Index As Int) As Map`
- `RemoveRow(Index As Int)`
- `InsertRowAt(Index As Int, Data As Map)`
- `RefreshRow(Index As Int)`
- `RefreshAllRows`
- `ScrollToIndex(Index As Int)`
- `SmoothScrollToIndex(Index As Int)`
- `getScrollPosition As Int`
- `getFirstVisibleIndex As Int`
- `getLastVisibleIndex As Int`
- `GetItemFromView(View As B4XView) As Int`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setTextColor(Value As String)`
- `getTextColor As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setRowPadding(Value As Int)`
- `getRowPadding As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setDivider(Value As Boolean)`
- `getDivider As Boolean`
- `setDividerColor(Value As String)`
- `getDividerColor As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setRowHeight(Value As Int)`
- `getRowHeight As Int`
- `setWidth(Value As Object)`
- `getWidth As Int`
- `setHeight(Value As Object)`
- `getHeight As Int`
- `getContentHeight As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `RemoveViewFromParent`
- `View As B4XView`
- `Release`
- `GetCurrentRowPanel As B4XView`
- `GetCurrentRowData As Map`
- `AddTextRow(Title As String, OptionalSubtitle As String) As Int`
- `CreateTextItemView(Text As String, Width As Int, Height As Int, TextSize As Object, TextColor As Int, Bold As Boolean, SingleLine As Boolean) As B4XView`
- `CreateStackedTextView(Title As String, Subtitle As String, Width As Int, TitleSize As Object, SubtitleSize As Object, TitleColor As Int, SubtitleColor As Int) As B4XView`
- `GetCLV As CustomListView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyLoading

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Style` | String | `spinner` | The loading animation style. |
| `Size` | String | `md` | Size of the loading indicator (xs, sm, md, lg, xl). |
| `Speed` | Int | `100` | Animation speed percentage (100 = normal). |
| `Visible` | Boolean | `True` | Visibility of the component. |
| `Variant` | String | `none` | DaisyUI semantic color variant (sets spinner color). |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |
| `Color` | Color | `0x00FFFFFF` | Override loading spinner color. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `getStyle As String`
- `setStyle(Value As String)`
- `getSize As String`
- `setSize(Value As String)`
- `getSpeed As Int`
- `setSpeed(Value As Int)`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTag(Tag As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setColor(Value As Int)`
- `getColor As Int`
- `RemoveViewFromParent`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `Shadow` | String | `none` | Elevation shadow level. |
| `BringToFront` | Boolean | `True` | Brings the full menu view above siblings after layout. |
| `BackgroundColor` | Color | `0x00000000` | Optional surface background override. |
| `TextColor` | Color | `0x00000000` | Optional menu text color override. |
| `ActiveColor` | Color | `0x00000000` | Active menu color. Used as border or background based on ActiveBorder. |
| `ActiveTextColor` | Color | `0x00000000` | Active item text color when ActiveBorder is False. |
| `ActiveBorder` | Boolean | `False` | Shows a left border for the active item instead of filling the item background. |
| `AutoResize` | Boolean | `True` | Automatically resize height to fit menu items. |
| `BadgeSize` | String | `auto` | Badge size. 'auto' follows menu size. |
| `BadgeVariant` | String | `neutral` | Default badge color variant. |
| `BadgeStyle` | String | `solid` | Default badge style. |
| `RailMode` | Boolean | `False` | Compact navigation rail mode that hides text and centers icons. |
| `RightBorder` | Boolean | `False` | Shows a vertical border line on the right edge of the menu. |
| `RightBorderColor` | Color | `0x00000000` | Custom color for the right border line. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `AddTitle(Text As String) As Int`
- `AddDivider As Int`
- `AddItem(TagValue As Object, Text As String) As Int`
- `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddAvatarItem(TagValue As Object, Text As String, Avatar As Object, AvatarShape As String) As Int`
- `AddAvatarBadgeItem(TagValue As Object, Text As String, Avatar As Object, AvatarShape As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddAvatarChildItem(ParentTag As Object, TagValue As Object, Text As String, Avatar As Object, AvatarShape As String) As Int`
- `AddAvatarBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, Avatar As Object, AvatarShape As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddItemParent(ParentTag As Object, TagValue As Object, Text As String, IconName As String) As B4XDaisyMenu`
- `AddItemChild(ParentTag As Object, TagValue As Object, Text As String, IconName As String) As Int`
- `AddBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddIconBadgeChildItem(ParentTag As Object, TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
- `AddTitleChild(ParentTag As Object, Text As String) As Int`
- `AddDividerChild(ParentTag As Object) As Int`
- `FindSubmenuMenuByTag(TagValue As Object) As B4XDaisyMenu`
- `LoadFromList(lstItemsList As List)`
- `AddItems(lstItemsList As List)`
- `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`
- `SetItemDisabled(TagValue As Object, Value As Boolean)`
- `ClearActive`
- `ScrollToItem(TagValue As Object)`
- `SetItemActive(TagValue As Object, Value As Boolean)`
- `SetSubmenuOpen(Index As Int, Value As Boolean)`
- `SetItemBadgeText(TagValue As Object, Value As String)`
- `SetItemBadgeBackgroundColor(TagValue As Object, Color As Int)`
- `SetItemBadgeTextColor(TagValue As Object, Color As Int)`
- `SetItemBadgeVariant(TagValue As Object, Value As String)`
- `SetItemBadgeSize(TagValue As Object, Value As String)`
- `SetItemBadgeStyle(TagValue As Object, Value As String)`
- `SetItemBadgeRounded(TagValue As Object, Value As String)`
- `SetItemText(TagValue As Object, Value As String)`
- `SetItemIcon(TagValue As Object, IconName As String)`
- `SetItemVisible(TagValue As Object, Value As Boolean)`
- `SetItemAvatar(TagValue As Object, Avatar As Object)`
- `SetItemAvatarShape(TagValue As Object, Shape As String)`
- `SetItemOpen(TagValue As Object, Value As Boolean)`
- `OpenParents`
- `CloseParents`
- `OpenAllSubmenus`
- `CloseAllSubmenus`
- `SetParentsOpen(OpenState As Boolean)`
- `GetItemView(Index As Int) As B4XView`
- `GetPreferredHeight As Int`
- `GetPreferredWidth As Int`
- `BeginUpdate`
- `EndUpdate`
- `setAutoRefresh(Value As Boolean)`
- `getAutoRefresh As Boolean`
- `SetLevelInternal(Level As Int)`
- `SetParentMenuInternal(ParentMenu As B4XDaisyMenu)`
- `SetPopupMode(Value As Boolean)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setDividers(Value As Boolean)`
- `getDividers As Boolean`
- `setDividerGap(Value As String)`
- `getDividerGap As String`
- `setSize(Value As String)`
- `getSize As String`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBringToFront(Value As Boolean)`
- `getBringToFront As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setActiveColor(Value As Int)`
- `getActiveColor As Int`
- `setActiveTextColor(Value As Int)`
- `getActiveTextColor As Int`
- `setActiveBorder(Value As Boolean)`
- `getActiveBorder As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setBadgeSize(Value As String)`
- `getBadgeSize As String`
- `setBadgeVariant(Value As String)`
- `getBadgeVariant As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setBadgeRounded(Value As String)`
- `getBadgeRounded As String`
- `setRailMode(Value As Boolean, IntendedWidth As Int)`
- `getRailMode As Boolean`
- `setRightBorder(Value As Boolean)`
- `getRightBorder As Boolean`
- `setRightBorderColor(Value As Int)`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyModal

### Events

- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `YesClick (Tag As Object)`
- `NoClick (Tag As Object)`
- `CancelClick (Tag As Object)`
- `OkClick (Tag As Object)`
- `RetryClick (Tag As Object)`
- `AbortClick (Tag As Object)`
- `IgnoreClick (Tag As Object)`

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
| `BackdropOpacity` | Int | `40, MinRange: 0, MaxRange: 100` |  |
| `Title` | String | `Modal Title` |  |
| `Padding` | String | `p-6` |  |
| `ActionsJustify` | String | `end` | Horizontal alignment of action buttons in the footer. |
| `ActionsVariant` | String | `primary` | Visual variant/style of action buttons. |
| `ShowCloseButton` | Boolean | `False` |  |
| `Sidebar` | Boolean | `False` | When True the modal slides in as a side panel, ignoring Placement. |
| `SidebarSide` | String | `left` |  |
| `Shadow` | String | `lg` | Elevation shadow on the modal content box. |
| `Animated` | Boolean | `True` | Enables or disables modal open/close animations. |
| `Duration` | Int | `300, MinRange: 0, MaxRange: 2000` | Duration of standard modal animations. |
| `ActionType` | String | `none` | Preset action button configuration for the footer. |
| `YesCaption` | String | `Yes` |  |
| `YesVariant` | String | `success` |  |
| `YesVisible` | Boolean | `True` |  |
| `NoCaption` | String | `No` |  |
| `NoVariant` | String | `error` |  |
| `NoVisible` | Boolean | `True` |  |
| `CancelCaption` | String | `Cancel` |  |
| `CancelVariant` | String | `ghost` |  |
| `CancelVisible` | Boolean | `True` |  |
| `ButtonsWidth` | String | `auto` | Width for preset action buttons (e.g. auto, 80dip, 100%). |
| `ButtonsSize` | String | `md` |  |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Parent As B4XView, Tag As Object)`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `getAnimated As Boolean`
- `setAnimated(Value As Boolean)`
- `getDuration As Int`
- `setDuration(Value As Int)`
- `getActionsContainer As B4XView`
- `AddActionButton(ButtonID As String, ButtonText As String, ButtonColor As String) As B4XDaisyButton`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCount As Int`
- `ClearActions`
- `Show`
- `ShowModal`
- `Close`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setFullScreen(Value As Boolean)`
- `getFullScreen As Boolean`
- `setGlassSize(Value As String)`
- `getGlassSize As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setClickOutsideToClose(Value As Boolean)`
- `getClickOutsideToClose As Boolean`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setBackdropColor(Value As String)`
- `getBackdropColor As String`
- `setBackdropOpacity(Value As Int)`
- `getBackdropOpacity As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setTitleColor(Value As String)`
- `getTitleColor As String`
- `setTitleTextColor(Value As String)`
- `getTitleTextColor As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButton As Boolean`
- `setSidebar(Value As Boolean)`
- `getSidebar As Boolean`
- `setSidebarSide(Value As String)`
- `getSidebarSide As String`
- `setActionsJustify(Value As String)`
- `getActionsJustify As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `Refresh`
- `AddToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getBodyContainer As B4XView`
- `BodyWidth As Int`
- `ClearBody`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `getActionsVariant As String`
- `setActionsVariant(Value As String)`
- `setActionType(Value As String)`
- `getActionType As String`
- `setYesCaption(Value As String)`
- `getYesCaption As String`
- `setYesVariant(Value As String)`
- `getYesVariant As String`
- `setYesVisible(Value As Boolean)`
- `getYesVisible As Boolean`
- `setNoCaption(Value As String)`
- `getNoCaption As String`
- `setNoVariant(Value As String)`
- `getNoVariant As String`
- `setNoVisible(Value As Boolean)`
- `getNoVisible As Boolean`
- `setCancelCaption(Value As String)`
- `getCancelCaption As String`
- `setCancelVariant(Value As String)`
- `getCancelVariant As String`
- `setCancelVisible(Value As Boolean)`
- `getCancelVisible As Boolean`
- `setButtonsWidth(Value As String)`
- `getButtonsWidth As String`
- `setButtonsSize(Value As String)`
- `getButtonsSize As String`
- `getYesButton As B4XDaisyButton`
- `getNoButton As B4XDaisyButton`
- `getCancelButton As B4XDaisyButton`

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

---

## B4XDaisyOTP

### Events

- `Input (Value As String)`
- `Changed (Value As String)`
- `Complete (Value As String)`
- `Focus`
- `Blur`
- `DescriptionClick`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Length` | Int | `4, MinRange: 2, MaxRange: 10` | Number of input boxes. |
| `InputType` | String | `number` | Input type format (enforces numeric or text keyboard). |
| `Value` | String | `` | Pre-fills the OTP boxes. |
| `Separators` | String | `` | Comma-separated indices (e.g., "1,3") or "all". |
| `Pattern` | String | `` | Regex char-class for allowed characters. Defaults by Type. |
| `Shape` | String | `round` | Border radius styling. |
| `Fill` | String | `outline` | Input box background style. |
| `Size` | String | `md` | Dimension token for the input boxes. |
| `Gap` | Int | `-1, MinRange: -1, MaxRange: 48` | Gap between input boxes in dip. -1 = auto from Size. |
| `Variant` | String | `none` |  |
| `FocusVariant` | String | `primary` |  |
| `Enabled` | Boolean | `True` |  |
| `ReadOnly` | Boolean | `False` |  |
| `Visible` | Boolean | `True` |  |
| `Required` | Boolean | `False` |  |
| `ValidationState` | String | `none` | Manual validation styling (maps to ion-valid/ion-invalid). |
| `LabelAbove` | String | `` |  |
| `Description` | String | `` | Slotted description text shown below the boxes (ionic slot equiv). |
| `HintText` | String | `` |  |
| `ErrorText` | String | `` |  |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `getLength As Int`
- `setLength(Value As Int)`
- `getInputType As String`
- `setInputType(Value As String)`
- `getValue As String`
- `setValue(Value As String)`
- `getSeparators As String`
- `setSeparators(Value As String)`
- `getPattern As String`
- `setPattern(Value As String)`
- `getShape As String`
- `setShape(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getFill As String`
- `setFill(Value As String)`
- `getSize As String`
- `setSize(Value As String)`
- `getGap As Int`
- `setGap(Value As Int)`
- `getVariant As String`
- `setVariant(Value As String)`
- `getFocusVariant As String`
- `setFocusVariant(Value As String)`
- `getEnabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getReadOnly As Boolean`
- `setReadOnly(Value As Boolean)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getRequired As Boolean`
- `setRequired(Value As Boolean)`
- `getValidationState As String`
- `setValidationState(Value As String)`
- `getLabelAbove As String`
- `setLabelAbove(Value As String)`
- `getDescription As String`
- `setDescription(Value As String)`
- `getHintText As String`
- `setHintText(Value As String)`
- `getErrorText As String`
- `setErrorText(Value As String)`
- `getIsComplete As Boolean`
- `getIsValid As Boolean`
- `getFocused As Boolean`
- `HandleDeleteKey`
- `Refresh`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `setFocus(Index As Int)`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Int, Height As Int)`
- `AddChild(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetHostView As B4XView`
- `getOverlayColor As Int`
- `setOverlayColor(Value As Int)`
- `getOpacity As Float`
- `setOpacity(Value As Float)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getPassThrough As Boolean`
- `setPassThrough(Value As Boolean)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getTag As Object`
- `setTag(Value As Object)`
- `getCloseOnClick As Boolean`
- `setCloseOnClick(Value As Boolean)`
- `getIsAttached As Boolean`
- `getIsOpen As Boolean`
- `Open`
- `Close`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

---

## B4XDaisyPageScroll

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `PagePadding` | Int | `12` | Content padding in dip from page edges. |
| `BackgroundColor` | Color | `0x00000000` | Background color for the page (0 uses default light gray). |
| `BackgroundVariant` | String | `none` | DaisyUI variant color for the page background. none = use BackgroundColor. |
| `RootColor` | Color | `0x00000000` | Background color for the page parent panel (0 uses default light gray). |
| `Transparent` | Boolean | `False` | Set to True to make the page background transparent. |
| `AutoFitHeight` | Boolean | `True` | Automatically resize scroll view panel to fit content. |
| `YGap` | Int | `12` | Vertical spacing between added elements in dip. |
| `ScrollEnabled` | Boolean | `True` | Enable or disable scrolling. When False the content stays fixed while children remain interactive. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `SendToBack`
- `BringToFront`
- `getPanel As B4XView`
- `getScrollView As ScrollView`
- `ScrollToTop(Animated As Boolean)`
- `ScrollToBottom(Animated As Boolean)`
- `ScrollToPosition(Position As Int, Animated As Boolean)`
- `getScrollPosition As Int`
- `getMaxScrollPosition As Int`
- `ScrollToView(TargetView As B4XView, Animated As Boolean)`
- `ScrollToViewWithMargin(TargetView As B4XView, MarginTop As Int, Animated As Boolean)`
- `IME_HeightChanged(NewHeight As Int, OldHeight As Int, FocusedView As Object)`
- `setBackgroundVariant(Value As String)`
- `getBackgroundVariant As String`
- `getUsableWidth As Int`
- `AutoFit`
- `Clear`
- `AddSectionTitle(Text As String, Y As Int, Center As Boolean) As Int`
- `AddDivider(Y As Int) As Int`
- `getPagePadding As Int`
- `setPagePadding(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColor(Value As Int)`
- `getRootColor As Int`
- `setRootColor(Value As Int)`
- `getTransparent As Boolean`
- `setTransparent(Value As Boolean)`
- `getYGap As Int`
- `setYGap(Value As Int)`
- `getScrollEnabled As Boolean`
- `setScrollEnabled(Value As Boolean)`
- `getAutoFitHeight As Boolean`
- `setAutoFitHeight(Value As Boolean)`
- `getTag As Object`
- `setTag(Value As Object)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

---

## B4XDaisyPagination

### Events

- `Changed (PageIndex As Int, ItemId As String)`

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
| `Circle` | Boolean | `True` | Each button is square - combine with Rounded=full for circle shape |
| `GapX` | Int | `1` | Horizontal gap between pagination buttons in dip |
| `Visible` | Boolean | `True` | Show or hide component |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getSize As String`
- `setSize(Value As String)`
- `getStyle As String`
- `setStyle(Value As String)`
- `getActiveColor As String`
- `setActiveColor(Value As String)`
- `getActiveIndex As Int`
- `setActiveIndex(Value As Int)`
- `getDisabled As Boolean`
- `setDisabled(Value As Boolean)`
- `getShowPrevNext As Boolean`
- `setShowPrevNext(Value As Boolean)`
- `getShowFirstLast As Boolean`
- `setShowFirstLast(Value As Boolean)`
- `getFirstText As String`
- `setFirstText(Value As String)`
- `getLastText As String`
- `setLastText(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getPrevText As String`
- `setPrevText(Value As String)`
- `getNextText As String`
- `setNextText(Value As String)`
- `getShowPageNumbers As Boolean`
- `setShowPageNumbers(Value As Boolean)`
- `getPageCount As Int`
- `setPageCount(Value As Int)`
- `getEqualWidth As Boolean`
- `setEqualWidth(Value As Boolean)`
- `getCircle As Boolean`
- `setCircle(Value As Boolean)`
- `getGapX As Int`
- `setGapX(Value As Int)`
- `getTag As Object`
- `setTag(Value As Object)`
- `View As B4XView`
- `Refresh`
- `GetActualPageCount As Int`
- `PrevPage`
- `NextPage`
- `GoToPage(Index As Int)`
- `GetItemCount As Int`
- `GetItemIdAt(Index As Int) As String`
- `SetItemDisabled(Id As String, Disabled As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyPDFView

### Events

- `LoadComplete (Pages As Int)`
- `PageChanged (Page As Int, TotalPages As Int)`
- `OnTap (Target As Object)`
- `InitiallyRendered (Page As Int)`
- `PageNum (Page As Int)`
- `Show`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `AutoSpacing` | Boolean | `True` | Automatically space PDF pages. |
| `EnableSwipe` | Boolean | `True` | Allow swipe gestures to turn pages. |
| `PageSnap` | Boolean | `True` | Snap pages into view when swiping. |
| `SwipeHorizontal` | Boolean | `False` | Scroll horizontally instead of vertically. |
| `ShowToolbar` | Boolean | `True` | Show bottom navigation toolbar. |
| `ToolbarHeight` | Int | `48` | Height of navigation toolbar in dip. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Int, Height As Int)`
- `LoadFile(Dir As String, FileName As String)`
- `LoadAsset(FileName As String)`
- `Reload`
- `JumpToPage(Page As Int)`
- `FirstPage`
- `PrevPage`
- `NextPage`
- `LastPage`
- `getCurrentPage As Int`
- `getTotalPages As Int`
- `setAutoSpacing(Value As Boolean)`
- `setEnableSwipe(Value As Boolean)`
- `setPageSnap(Value As Boolean)`
- `setSwipeHorizontal(Value As Boolean)`
- `setShowToolbar(Value As Boolean)`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyPicker

### Types

- `PickerOption (Text As String, Value As Object, Disabled As Boolean)`
- `PickerColumn (Name As String, Options As List, sv As ScrollView, pnlInner As B4XView, Prefix As String, Suffix As String, Disabled As Boolean, CurrentIndex As Int, Color As Int, ActiveColor As Int, Role As String)`

### Events

- `Changed (ColumnName As String, Value As Object)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Mode` | String | `md` | Platform rendering mode. |
| `FadeBackground` | Color | `0xFFFFFFFF` | Maps to --fade-background-rgb gradient masks. |
| `HighlightBackground` | Color | `0x1A000000` | Maps to --highlight-background. |
| `HighlightVariant` | String | `` | DaisyUI variant for the selected-item highlight band. Overrides Highlight Color when set. |
| `ActiveTextColor` | Color | `0` | Text color of the selected (centered) item. 0 = auto (uses the highlight variant -content color when a HighlightVariant is set, else the normal column text color). |
| `HighlightRadius` | Int | `8` | Maps to --highlight-border-radius. |
| `VisibleItems` | Int | `5` | Number of option rows visible at once (odd values center cleanly). |
| `PickerType` | String | `default` | 'default' = user-defined columns; 'auto' = columns auto-generated from InputFormat (date/time/date-time/12h). Legacy date/time/date-time values map to 'auto'. |
| `InputFormat` | String | `Y-m-d` | flatpickr-style tokens that define auto columns AND the returned value. Y/y year, m/n/M/F month, d/j day, H/G 24h, h/g 12h, i minute, s second, K/a AM-PM. Use [..] for literal text. |
| `DisplayFormat` | String | `` | flatpickr-style tokens controlling how auto-generated wheels DISPLAY each value (independent of InputFormat, which controls the returned value). e.g. "F" shows full month names on the month wheel, "j" shows day without leading zero, "y" shows 2-digit year. Empty = default labels (short month, 2-digit day, 4-digit year). Only affects PickerType=auto. |
| `MinYear` | Int | `0` | Lowest year for date/date-time pickers (0 = current year - 10). |
| `MaxYear` | Int | `0` | Highest year for date/date-time pickers (0 = current year + 10). |
| `ColumnDelimiter` | String | `` | When set, GetValue returns the column values joined by this delimiter (in column order). Overrides InputFormat formatting. |
| `TextAlign` | String | `CENTER` | Horizontal alignment of column option text (vertical is always centered). |
| `Rounded` | String | `rounded-lg` | Corner radius mode applied to the picker root panel. |
| `Shadow` | String | `none` | Elevation shadow level applied to the picker root panel. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setMode(Value As String)`
- `getMode As String`
- `setFadeBackground(Value As Int)`
- `getFadeBackground As Int`
- `setHighlightBackground(Value As Int)`
- `getHighlightBackground As Int`
- `setHighlightVariant(Value As String)`
- `getHighlightVariant As String`
- `setActiveTextColor(Value As Int)`
- `getActiveTextColor As Int`
- `setHighlightRadius(Value As Int)`
- `getHighlightRadius As Int`
- `setVisibleItems(Value As Int)`
- `getVisibleItems As Int`
- `GetComputedHeight As Int`
- `setPickerType(Value As String)`
- `getPickerType As String`
- `setInputFormat(Value As String)`
- `getInputFormat As String`
- `setDisplayFormat(Value As String)`
- `getDisplayFormat As String`
- `setMinYear(Value As Int)`
- `getMinYear As Int`
- `setMaxYear(Value As Int)`
- `getMaxYear As Int`
- `setColumnDelimiter(Value As String)`
- `getColumnDelimiter As String`
- `setTextAlign(Value As String)`
- `getTextAlign As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `GetRoundedRadius As Float`
- `SetColorAndBorder(Color As Int, BorderWidth As Float, BorderColor As Int, CornerRadius As Float)`
- `AddColumn(ColumnName As String, Prefix As String, Suffix As String, Disabled As Boolean)`
- `AddColumnDay(ColumnName As String)`
- `AddColumnMonth(ColumnName As String)`
- `AddColumnYear(ColumnName As String, StartYear As Int, EndYear As Int)`
- `AddOption(ColumnName As String, Text As String, Value As Object)`
- `SetColumnValue(ColumnName As String, Value As Object)`
- `SetOptionDisabled(ColumnName As String, Value As Object, Disabled As Boolean)`
- `SetOptionDisabledByIndex(ColumnName As String, Index As Int, Disabled As Boolean)`
- `GetColumnValue(ColumnName As String) As Object`
- `GetColumnOptionValues(ColumnName As String) As List`
- `SetColumnColor(ColumnName As String, Color As Int)`
- `GetColumnColor(ColumnName As String) As Int`
- `SetColumnColorVariant(ColumnName As String, Variant As String)`
- `SetColumnEnabled(ColumnName As String, Enabled As Boolean)`
- `GetColumnEnabled(ColumnName As String) As Boolean`
- `SetColumnActiveTextColor(ColumnName As String, Color As Int)`
- `GetColumnActiveTextColor(ColumnName As String) As Int`
- `Refresh`
- `SetValue(Value As String)`
- `SetValueList(lstValues As List)`
- `GetValueList As List`
- `GetValue As String`
- `GetDisplayValue As String`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyPiecePlaceManager

### Public Methods

- `Initialize`

---

## B4XDaisyPocketBase

### Types

- `ProfileType (id As String, email As String, avatar As String, name As String, verified As Boolean, username As String, idnumber As String, token As String, size As Int)`

### Events

- `Connect (data As Map)`
- `Disconnect (data As Map)`
- `ConnectError (data As Map)`
- `RealTime (data As Map)`
- `Changes (e As Map)`
- `Change (Action As String, Record As Map, TableName As String)`
- `AuthChange (Token As String, Model As Map)`
- `BeforeSend (url As object, options As Object)`
- `AfterSend (response As Object, data As Object)`

### Public Methods

- `Initialize(Module As Object, EventName As String, Url As String, Table As String) As B4XDaisyPocketBase`
- `ListKeys As ResumableSub`
- `GetJWTPayload(Token As String) As Map`

---

## B4XDaisyProgress

### Events

- `Changed (Value As Float)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Value` | Int | `0` | Current progress value. |
| `MaxValue` | Int | `100` | Maximum progress bound. |
| `Variant` | String | `neutral` |  |
| `Size` | String | `none` |  |
| `Visible` | Boolean | `True` |  |
| `Width` | String | `w-full` |  |
| `Height` | String | `h-2` |  |
| `ShowTooltip` | Boolean | `False` |  |
| `TooltipPosition` | String | `top` |  |
| `Indeterminate` | Boolean | `False` | Shows animated repeating-gradient progress (no value needed). |
| `ShowNumberInline` | Boolean | `False` | Displays the percentage text between the reached and unreached areas (NumberProgressBar style). |
| `NumberTextColor` | Color | `0x00000000` | Override color for the inline number (0 = variant color). |
| `Animated` | Boolean | `False` | Animate value changes. |
| `Duration` | Int | `1000` | Animation duration in milliseconds. |
| `IconLeft` | String | `` | Left-side SVG icon asset name. |
| `IconRight` | String | `` | Right-side SVG icon asset name. |
| `MinValue` | Float | `0` | Minimum progress value. |
| `StepValue` | Float | `1` | Step increment/decrement amount. |
| `IconSize` | Int | `0` | Icon size in dip. 0 = auto-scale based on Size. |
| `LabelAbove` | String | `` | Label text displayed above the progress bar. |
| `LabelVisible` | Boolean | `False` | Whether the label above is visible. |
| `TooltipOpen` | Boolean | `True` | When True, tooltip stays permanently visible. When False, tooltip shows briefly on value change then fades out. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `SetValueColor(Color As Int)`
- `SetTrackColor(Color As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `setVariant(VariantName As String)`
- `getVariant As String`
- `setValue(Value As Float)`
- `getValue As Float`
- `StartTimer(DurationMs As Int)`
- `setMaxValue(MaxValue As Float)`
- `getMaxValue As Float`
- `setSize(Size As String)`
- `getSize As String`
- `setShowTooltip(Value As Boolean)`
- `getShowTooltip As Boolean`
- `setTooltipPosition(Value As String)`
- `getTooltipPosition As String`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setShowNumberInline(Value As Boolean)`
- `getShowNumberInline As Boolean`
- `setNumberTextColor(C As Int)`
- `getNumberTextColor As Int`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setTag(Tag As Object)`
- `getTag As Object`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setMinValue(V As Float)`
- `getMinValue As Float`
- `setStepValue(V As Float)`
- `getStepValue As Float`
- `setIconSize(V As Int)`
- `getIconSize As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `StopAnimation`
- `setTooltipOpen(Value As Boolean)`
- `getTooltipOpen As Boolean`
- `GetComputedHeight As Int`
- `View As B4XView`
- `RemoveViewFromParent`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `Duration` | Int | `300` | Duration for Text CountUp in ms |
| `SvgAsset` | String | `` | SVG file used when DisplayType is svg |
| `TrackColor` | Color | `0x00000000` | Color of the background ring (0 uses default base-200) |
| `BackgroundColor` | Color | `0x00000000` | 0/transparent |
| `TextColor` | Color | `0xFF000000` | Default text/arc color |
| `BorderColor` | Color | `0x00000000` | 0/variant fallback |
| `BorderWidth` | String | `0` | Outer border width (e.g. 4dip) |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `DrawComponent`
- `SetValueAnimated(NewValue As Float, Duration As Int)`
- `StopAnimation`
- `StartTimer(DurationMs As Int)`
- `getMaxValue As Int`
- `setMaxValue(MaxVal As Int)`
- `getMinValue As Int`
- `setMinValue(MinVal As Int)`
- `getValue As Int`
- `setValue(Value As Int)`
- `setStepValue(StepVal As Int)`
- `getStepValue As Int`
- `setDisplayType(DType As String)`
- `getDisplayType As String`
- `setText(NewText As String)`
- `getText As String`
- `setVariant(NewVariant As String)`
- `getVariant As String`
- `setSize(Value As Object)`
- `getSize As Float`
- `getWidth As Float`
- `getHeight As Float`
- `setThickness(NewThickness As String)`
- `getThickness As String`
- `setSvgAsset(NewSvgAsset As String)`
- `getSvgAsset As String`
- `setPrefix(NewPrefix As String)`
- `getPrefix As String`
- `setSuffix(NewSuffix As String)`
- `getSuffix As String`
- `setTextCountUp(NewTextCountUp As Boolean)`
- `getTextCountUp As Boolean`
- `setDuration(NewCountUpSpeed As Int)`
- `getDuration As Int`
- `setCountUpSpeed(NewCountUpSpeed As Int)`
- `getCountUpSpeed As Int`
- `setTrackColor(NewTrackColor As Int)`
- `getTrackColor As Int`
- `setBackgroundColor(NewBackgroundColor As Int)`
- `getBackgroundColor As Int`
- `setTextColor(NewTextColor As Int)`
- `getTextColor As Int`
- `setBorderColor(NewBorderColor As Int)`
- `getBorderColor As Int`
- `setBorderWidth(NewBorderWidth As String)`
- `getBorderWidth As String`
- `View As B4XView`
- `IsReady As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `setHeight(Value As Int)`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `TextColor` | Color | `0x00FFFFFF` | Override label text color. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked center dot color. |
| `Required` | Boolean | `False` | Set field as required. |
| `ErrorText` | String | `` | Message displayed when field validation fails. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setChecked(Value As Boolean)`
- `getRole As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getChecked As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setText(Value As String)`
- `getText As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColor As Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColor As Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColor As Int`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
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
| `Required` | Boolean | `False` | Whether at least one option must be selected. |
| `HintText` | String | `` | Helper text displayed below the group. |
| `ErrorText` | String | `` | Error text displayed below the group when validation fails. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `Clear`
- `setItems(Items As Map)`
- `getItems As Map`
- `setSelectedIndex(Index As Int)`
- `getSelectedIndex As Int`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setRadioColor(Value As String)`
- `getRadioColor As String`
- `setRadioSize(Value As String)`
- `getRadioSize As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `GetComputedHeight As Int`
- `Release`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `DisallowParentIntercept` | Boolean | `True` | Prevent parent scroll containers from stealing touch gestures on Android. |
| `Required` | Boolean | `False` | Whether the value must be greater than the minimum value. |
| `LabelAbove` | String | `` | Label text displayed above the range slider. |
| `LabelVisible` | Boolean | `False` | Whether the label above is visible. |
| `HintText` | String | `` | Helper text displayed below the range slider. |
| `ErrorText` | String | `` | Text displayed below the range slider when in the error validation state. |
| `ShowValue` | Boolean | `False` | Show a right-aligned live value readout above the slider. |
| `ValuePrefix` | String | `` | Text shown before the value (e.g. $). |
| `ValueSuffix` | String | `` | Text shown after the value (e.g. %, px, s). |
| `IconLeft` | String | `` | Left-side (prepend) SVG icon asset name. Tapping decrements by Step. |
| `IconRight` | String | `` | Right-side (append) SVG icon asset name. Tapping increments by Step. |
| `IconSize` | Int | `0` | Icon size in dip. 0 = auto-scale based on Size (matches thumb). |
| `ShowTooltip` | Boolean | `False` | Show a tooltip with the current value above the thumb. |
| `TooltipPosition` | String | `top` | Tooltip position relative to the thumb. |
| `TooltipOpen` | Boolean | `False` | When True, tooltip stays permanently visible. When False, tooltip shows transiently during drag / on value change then fades out. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setMinValue(Value As Int)`
- `getMinValue As Int`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setValue(Value As Int)`
- `getValue As Int`
- `setStepValue(Value As Int)`
- `getStepValue As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setShowFill(Value As Boolean)`
- `getShowFill As Boolean`
- `setRTL(Value As Boolean)`
- `getRTL As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setTrackColor(Value As Int)`
- `getTrackColor As Int`
- `setProgressColor(Value As Int)`
- `getProgressColor As Int`
- `setThumbColor(Value As Int)`
- `getThumbColor As Int`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setShowValue(Value As Boolean)`
- `getShowValue As Boolean`
- `setValuePrefix(Value As String)`
- `getValuePrefix As String`
- `setValueSuffix(Value As String)`
- `getValueSuffix As String`
- `setIconLeft(Value As String)`
- `getIconLeft As String`
- `setIconRight(Value As String)`
- `getIconRight As String`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setShowTooltip(Value As Boolean)`
- `getShowTooltip As Boolean`
- `setTooltipPosition(Value As String)`
- `getTooltipPosition As String`
- `setTooltipOpen(Value As Boolean)`
- `getTooltipOpen As Boolean`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `getRole As String`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `StopAnimation`
- `RemoveViewFromParent`
- `Release`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyRating

### Events

- `Changed (Value As Float)`
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
| `ReadOnly` | Boolean | `False` | Read-only mode - no interaction, display only. |
| `Required` | Boolean | `False` | Whether a rating value greater than 0 is required. |
| `ActiveColor` | Color | `0` | Custom color for active/filled items (0 = theme default bg-base-content). |
| `InactiveColor` | Color | `0` | Custom color for inactive/empty items (0 = theme default opacity-20). |
| `Gap` | Int | `4` | Gap between items in dip (maps to gap-1 ~ 4dip). |
| `Enabled` | Boolean | `True` | Enabled state. |
| `Visible` | Boolean | `True` | Visible state. |
| `LabelAbove` | String | `` | Label text displayed above the rating. |
| `LabelVisible` | Boolean | `False` | Whether the label above is visible. |
| `HintText` | String | `` | Helper text displayed below the rating. |
| `ErrorText` | String | `` | Text displayed below the rating when in the error validation state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setValue(Value As Float)`
- `getValue As Float`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setIconStyle(Value As String)`
- `getIconStyle As String`
- `setHalf(Value As Boolean)`
- `getHalf As Boolean`
- `setAllowClear(Value As Boolean)`
- `getAllowClear As Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnly As Boolean`
- `setActiveColor(Value As Int)`
- `getActiveColor As Int`
- `setInactiveColor(Value As Int)`
- `getInactiveColor As Int`
- `SetItemColors(lstItemColorList As List)`
- `setGap(Value As Int)`
- `getGap As Int`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getRole As String`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setBackgroundColorVariant(Variant As String)`
- `setTextColorVariant(Variant As String)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `RemoveViewFromParent`
- `Release`
- `getLeft As Int`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisySegment

### Types

- `SegmentButtonConfig (Value As String, Text As String, IconPath As String, Layout As String, Disabled As Boolean, ButtonView As B4XView, lblText As Label, svgIcon As B4XDaisySvgIcon, bInitialized As Boolean, MeasuredWidth As Int, HasCustomTextColor As Boolean, CustomTextColor As Int, HasCustomIconColor As Boolean, CustomIconColor As Int, HasCustomButtonColor As Boolean, CustomButtonColor As Int)`

### Events

- `Changed (Value As String)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `BackgroundColor` | String | `none` | Background theme variant or custom color. |
| `ActiveColor` | String | `none` | Active button text/icon theme variant color. |
| `ButtonLayout` | String | `icon-start` | The layout position of icon relative to label. |
| `Scrollable` | Boolean | `False` | Enables horizontal scrolling for buttons. |
| `ButtonSize` | String | `md` | Button size (xs, sm, md, lg, xl). |
| `Rounded` | String | `md` | Container corner radius mode. |
| `Shadow` | String | `none` | Drop shadow elevation level. |
| `Disabled` | Boolean | `False` | Blocks interactions with the control. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddButton(Value As String, Text As String, IconPath As String)`
- `AddIcon(Value As String, IconPath As String)`
- `AddLabel(Value As String, Text As String)`
- `SetButtonColor(Value As String, Color As Int)`
- `SetButtonTextColor(Value As String, Color As Int)`
- `SetButtonIconColor(Value As String, Color As Int)`
- `Refresh`
- `SetValue(NewValue As String)`
- `GetValue As String`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `RemoveButton(Value As String)`
- `SetButtonEnabled(Value As String, Enabled As Boolean)`
- `GetButtonEnabled(Value As String) As Boolean`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `setButtonSize(Value As String)`
- `getButtonSize As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Object`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setButtonLayout(Value As String)`
- `getButtonLayout As String`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisySelect

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `IsReady As Boolean`
- `UpdateTheme`
- `setVariant(Value As String)`
- `getVariant As String`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPlaceholder(Value As String)`
- `getPlaceholder As String`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setHintText(Value As String)`
- `getHintText As String`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setRadius(Value As String)`
- `getRadius As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setAlpha(Value As Float)`
- `getAlpha As Float`
- `setMaxDropdownRows(Value As Int)`
- `getMaxDropdownRows As Int`
- `setItems(KeyValues As Map)`
- `getItems As List`
- `setSelectedIndex(Value As Int)`
- `getSelectedIndex As Int`
- `getSelectedValue As String`
- `AddItem(Value As String, Text As String)`
- `LoadMonths`
- `LoadCountries`
- `getItemValues As List`
- `getSelectedKey As String`
- `getValue As String`
- `setValue(Value As String)`
- `Clear`
- `Open`
- `Close`
- `Toggle`
- `getIsOpen As Boolean`
- `RemoveViewFromParent`
- `Release`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `GetComputedHeight As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisySheetModal

### Events

- `WillPresent`
- `DidPresent`
- `WillDismiss`
- `DidDismiss (Role As String, Data As Object)`
- `DragStart`
- `DragMove (Data As Map)`
- `DragEnd (Data As Map)`
- `BreakpointDidChange (Breakpoint As Float)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `IsOpen` | Boolean | `False` | Controls the presentation state of the modal. |
| `CanDismiss` | Boolean | `True` | Whether the modal can be dismissed by the user (replaces swipeToClose). |
| `BackdropDismiss` | Boolean | `True` | If true, clicking the backdrop will dismiss the modal. |
| `Animated` | Boolean | `True` | If true, the modal will animate in and out. |
| `Duration` | Int | `300, MinRange: 0, MaxRange: 3000` | Duration (ms) of the open/close slide animation. 0 = instant. |
| `ScaleBackground` | Boolean | `False` | If true and PresentingView is set, the presenting view scales back (iOS card-modal effect) behind the sheet. |
| `BackgroundScale` | Float | `0.94` | Target scale of the presenting view when fully receded (1.0 = none, 0.94 = 94%). |
| `BackgroundCornerRadius` | Int | `18, MinRange: 0, MaxRange: 64` | Top corner radius (dip) applied to the presenting view. |
| `BackgroundTranslateY` | Int | `12, MinRange: 0, MaxRange: 200` | Downward shift (dip) of the presenting view when fully receded. |
| `BackgroundDim` | Float | `0.08` | Dim amount (0 = none, 1 = full) applied to the presenting view. |
| `BackgroundShadow` | Boolean | `False` | If true, casts an elevation shadow around the receded presenting view. |
| `BackgroundColor` | Color | `0xFFFFFFFF` | Modal background color. |
| `Rounded` | String | `box` | Border radius of the modal. |
| `Breakpoints` | String | `0,0.5,1.0` | Comma-separated list of snapping ratios from 0.0 to 1.0. |
| `InitialBreakpoint` | Float | `0.5` | Ratio of page height shown when presented. Must exist in Breakpoints. |
| `BackdropBreakpoint` | Float | `0.0` | Ratio of height above which backdrop is active. |
| `Handle` | Boolean | `True` | Shows a drag handle at the top of the sheet. |
| `HandleBehavior` | String | `none` | Behavior on clicking the handle. |
| `BackdropOpacity` | Int | `40, MinRange: 0, MaxRange: 100` | Backdrop opacity percentage. |
| `BorderColor` | Color | `0x00000000` | Content box border color. |
| `BorderWidth` | Int | `0` | Content box border width. |
| `Width` | String | `w-full` | Tailwind width token or size. |
| `Height` | String | `h-[400px]` | Tailwind height token or size. |
| `AutoHeight` | Boolean | `True` | Automatically grow height to fit content children. |
| `ExpandToScroll` | Boolean | `True` | If true, content may scroll inside the sheet and gestures switch between scrolling and dragging. |
| `ScrollBehavior` | String | `auto` | auto = scroll when scrollable else drag sheet; drag = always drag sheet; scroll = always scroll content. Only used when ExpandToScroll is true. |
| `NestedScrollEnabled` | Boolean | `True` | When scrolling reaches the top, continued pull-down hands off to sheet dragging (Ionic-style nested scroll). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddContentView(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddBoxView(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getContentView As B4XView`
- `getScrollPanel As B4XView`
- `getScrollView As B4XView`
- `getContentBox As B4XView`
- `View As B4XView`
- `getScrollOffset As Int`
- `setScrollOffset(Value As Int)`
- `ScrollToTop`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `Present As ResumableSub`
- `Dismiss(Data As Object, Role As String) As ResumableSub`
- `setIsOpen(Value As Boolean)`
- `getIsOpen As Boolean`
- `setCanDismiss(Value As Boolean)`
- `getCanDismiss As Boolean`
- `setBackdropDismiss(Value As Boolean)`
- `getBackdropDismiss As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setAnimationTime(Value As Int)`
- `getAnimationTime As Int`
- `setBreakpoints(Value As String)`
- `getBreakpoints As String`
- `setInitialBreakpoint(Value As Float)`
- `getInitialBreakpoint As Float`
- `setBackdropBreakpoint(Value As Float)`
- `getBackdropBreakpoint As Float`
- `setHandle(Value As Boolean)`
- `getHandle As Boolean`
- `setHandleBehavior(Value As String)`
- `getHandleBehavior As String`
- `setCurrentBreakpoint(Breakpoint As Float)`
- `getCurrentBreakpoint As Float`
- `setPresentingView(TargetView As B4XView)`
- `getPresentingView As B4XView`
- `setScaleBackground(Value As Boolean)`
- `getScaleBackground As Boolean`
- `setBackgroundScale(Value As Float)`
- `getBackgroundScale As Float`
- `setBackgroundCornerRadius(Value As Int)`
- `getBackgroundCornerRadius As Int`
- `setBackgroundTranslateY(Value As Int)`
- `getBackgroundTranslateY As Int`
- `setBackgroundDim(Value As Float)`
- `getBackgroundDim As Float`
- `setBackgroundShadow(Value As Boolean)`
- `getBackgroundShadow As Boolean`
- `setBackdropOpacity(Value As Int)`
- `getBackdropOpacity As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderWidth(Value As Int)`
- `getBorderWidth As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `GetComputedHeight As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `getCornerRadius As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setExpandToScroll(Value As Boolean)`
- `getExpandToScroll As Boolean`
- `setScrollBehavior(Value As String)`
- `getScrollBehavior As String`
- `setNestedScrollEnabled(Value As Boolean)`
- `getNestedScrollEnabled As Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyShineButton

### Events

- `CheckChanged (Checked As Boolean)`
- `Click`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Shape` | String | `heart` | Built-in shape or custom SVG asset |
| `Size` | String | `md` | DaisyUI size token (xs=28dip, sm=36dip, md=48dip, lg=64dip, xl=80dip) |
| `CustomSize` | Int | `0` | Custom width/height in dip (overrides Size token when > 0) |
| `Variant` | String | `primary` | Semantic color variant for checked state |
| `SvgAsset` | String | `` | SVG file name from File.DirAssets (used when Shape=svg or to override shape) |
| `Checked` | Boolean | `False` | Initial checked state |
| `BtnColor` | Color | `0xFF9CA3AF` | Unchecked icon color |
| `BtnFillColor` | Color | `0x00FFFFFF` | Override checked fill color (0 = auto from Variant) |
| `BigShineColor` | Color | `0x00FFFFFF` | Main burst particle color (0 = auto) |
| `SmallShineColor` | Color | `0x00FFFFFF` | Secondary sparkle color (0 = auto) |
| `AllowRandomColor` | Boolean | `True` | Enables multi-colored burst particles |
| `EnableFlashing` | Boolean | `False` | Flashes random colors during burst |
| `AnimDuration` | Int | `1500` | Particle burst duration in ms |
| `ClickAnimDuration` | Int | `200` | Button press bounce duration in ms |
| `ShineCount` | Int | `7` | Number of starburst particles |
| `ShineTurnAngle` | Float | `20` | Rotation angle for flying particles |
| `ShineDistanceMultiple` | Float | `1.5` | Particle spread radius multiplier |
| `Visible` | Boolean | `True` | Show or hide component |
| `Clickable` | Boolean | `True` | Enable or disable touch events |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(SizeDip As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ApplyAllProperties`
- `Base_Resize(Width As Double, Height As Double)`
- `SetSvgAsset(FileName As String)`
- `SetSvg(Dir As String, FileName As String)`
- `SetSvgContent(SvgMarkup As String)`
- `SetShapeBitmap(Bmp As Bitmap)`
- `SetShapeResource(ResourceName As String)`
- `TriggerShine`
- `ShowAnim`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setShape(Value As String)`
- `getSvgAsset As String`
- `getShape As String`
- `setBtnColor(Color As Int)`
- `getBtnColor As Int`
- `setBtnFillColor(Color As Int)`
- `getBtnFillColor As Int`
- `setAllowRandomColor(Value As Boolean)`
- `getAllowRandomColor As Boolean`
- `setEnableFlashing(Value As Boolean)`
- `getEnableFlashing As Boolean`
- `setBigShineColor(Color As Int)`
- `getBigShineColor As Int`
- `setSmallShineColor(Color As Int)`
- `getSmallShineColor As Int`
- `setAnimDuration(Value As Int)`
- `getAnimDuration As Int`
- `setClickAnimDuration(Value As Int)`
- `getClickAnimDuration As Int`
- `setShineCount(Value As Int)`
- `getShineCount As Int`
- `setShineTurnAngle(Value As Float)`
- `getShineTurnAngle As Float`
- `setShineDistanceMultiple(Value As Float)`
- `getShineDistanceMultiple As Float`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisySignature

### Events

- `BeginStroke`
- `EndStroke`
- `Changed`
- `Saved (Data As String)`
- `Cleared`
- `FocusChanged (HasFocus As Boolean)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Legend` | String | `Signature` | Fieldset legend text |
| `LegendSize` | String | `theme` | Legend text size token |
| `LegendBold` | Boolean | `False` | Render the fieldset legend caption in bold |
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
| `Shadow` | String | `none` | Elevation shadow level |
| `BackgroundColor` | Color | `0x00000000` | Background color (0 = default bg-base-200) |
| `TextColor` | Color | `0x00000000` | Legend text color (0 = use theme token) |
| `BorderColor` | Color | `0x00000000` | Border color override (0 = default border-base-300) |
| `BorderSize` | Int | `1` | Border width in dip |
| `InputBorder` | Boolean | `False` | When True, apply B4XDaisyInput border color and width to the fieldset |
| `Required` | Boolean | `False` | Whether a signature is required |
| `HintText` | String | `` | Helper text displayed below the group |
| `ErrorText` | String | `` | Error text displayed below the group when validation fails |
| `PenColor` | Color | `0xFF000000` | Color used to draw the lines |
| `PadBackgroundColor` | Color | `0xFFFFFFFF` | Signature canvas background (0 = transparent) |
| `MinWidth` | Float | `1.5` | Minimum width of a line |
| `MaxWidth` | Float | `4.0` | Maximum width of a line |
| `VelocityFilterWeight` | Float | `0.7` | Weight used to modify velocity |
| `BitMapFormat` | String | `png` | Format of the exported signature bitmap |
| `BitMapQuality` | Int | `100` | Quality of the exported signature bitmap (0-100) |
| `DisallowParentIntercept` | Boolean | `True` | Prevent parent scroll containers from stealing touch gestures |
| `StrokeCap` | String | `ROUND` | Shape of line endpoints |
| `StrokeJoin` | String | `ROUND` | Shape at line segment corners |
| `PadEnabled` | Boolean | `True` | Enables or disables drawing on the pad |
| `PadVisible` | Boolean | `True` | Shows or hides the pad |
| `MinHeight` | Int | `150` | Minimum signature pad height in dip |
| `HintColor` | Color | `0x00000000` | Watermark hint text color (0 = theme) |
| `ClearButtonVisible` | Boolean | `True` | Show the clear button below the pad |
| `ClearButtonText` | String | `Clear` | Text of the clear button |
| `SaveButtonVisible` | Boolean | `True` | Show the save button below the pad |
| `SaveButtonText` | String | `Save` | Text of the save button |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `setPenColor(Value As Int)`
- `getPenColor As Int`
- `setPadBackgroundColor(Value As Int)`
- `getPadBackgroundColor As Int`
- `setMinWidth(Value As Float)`
- `getMinWidth As Float`
- `setMaxWidth(Value As Float)`
- `getMaxWidth As Float`
- `setVelocityFilterWeight(Value As Float)`
- `getVelocityFilterWeight As Float`
- `setBitMapFormat(Value As String)`
- `getBitMapFormat As String`
- `setBitMapQuality(Value As Int)`
- `getBitMapQuality As Int`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setStrokeCap(Value As String)`
- `getStrokeCap As String`
- `setStrokeJoin(Value As String)`
- `getStrokeJoin As String`
- `setPadEnabled(Value As Boolean)`
- `getPadEnabled As Boolean`
- `setPadVisible(Value As Boolean)`
- `getPadVisible As Boolean`
- `setMinHeight(Value As Int)`
- `getMinHeight As Int`
- `setHintColor(Value As Int)`
- `getHintColor As Int`
- `setClearButtonVisible(Value As Boolean)`
- `getClearButtonVisible As Boolean`
- `setClearButtonText(Value As String)`
- `getClearButtonText As String`
- `setSaveButtonVisible(Value As Boolean)`
- `getSaveButtonVisible As Boolean`
- `setSaveButtonText(Value As String)`
- `getSaveButtonText As String`
- `Clear`
- `IsEmpty As Boolean`
- `GetBitmap As B4XBitmap`
- `GetBase64 As String`
- `SetBase64(Base64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `IsBase64(Value As String) As Boolean`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `RemoveViewFromParent`
- `Release`

---

## B4XDaisySignaturePad

### Events

- `BeginStroke`
- `EndStroke`
- `Changed`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `PenColor` | Color | `0xFF000000` | Color used to draw the lines. |
| `BackgroundColor` | Color | `0xFFFFFFFF` | Canvas background color (0 uses theme/transparent). |
| `MinWidth` | Float | `1.5` | Minimum width of a line. |
| `MaxWidth` | Float | `4.0` | Maximum width of a line. |
| `VelocityFilterWeight` | Float | `0.7` | Weight used to modify velocity. |
| `Variant` | String | `none` | Semantic variant for the border. |
| `Rounded` | String | `theme` | Border radius token. |
| `Shadow` | String | `none` | Elevation shadow level. |
| `BitMapFormat` | String | `png` | Format of the exported signature bitmap (png, jpg, webp, bmp). |
| `BitMapQuality` | Int | `100` | Quality of the exported signature bitmap (0-100). |
| `DisallowParentIntercept` | Boolean | `True` | Prevent parent scroll containers from stealing touch gestures on Android. |
| `StrokeCap` | String | `ROUND` | Shape of line endpoints - ROUND gives a natural pen feel, BUTT is flat, SQUARE extends slightly past the end. |
| `StrokeJoin` | String | `ROUND` | Shape at line segment corners - ROUND gives smooth curves, MITER is sharp, BEVEL is flat. |
| `Enabled` | Boolean | `True` | Enables or disables drawing. |
| `Visible` | Boolean | `True` | Shows or hides the component. |
| `FieldsetMode` | Boolean | `False` | When True, disable own border/background/shadow so a fieldset wrapper can provide them. |
| `MinHeight` | Int | `150` | Minimum height in dip when used standalone. |
| `HintText` | String | `` | Watermark text shown when empty. |
| `HintColor` | Color | `0x00000000` | Watermark text color (0 = theme text color at 40%). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `UpdateTheme`
- `Clear`
- `IsEmpty As Boolean`
- `GetBitmap As B4XBitmap`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setMinWidth(Value As Float)`
- `getMinWidth As Float`
- `setMaxWidth(Value As Float)`
- `getMaxWidth As Float`
- `setVelocityFilterWeight(Value As Float)`
- `getVelocityFilterWeight As Float`
- `setPenColor(Value As Int)`
- `getPenColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `View As B4XView`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `setBitMapFormat(Value As String)`
- `getBitMapFormat As String`
- `setBitMapQuality(Value As Int)`
- `getBitMapQuality As Int`
- `setDisallowParentIntercept(Value As Boolean)`
- `getDisallowParentIntercept As Boolean`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setStrokeCap(Value As String)`
- `getStrokeCap As String`
- `setStrokeJoin(Value As String)`
- `getStrokeJoin As String`
- `setFieldsetMode(Value As Boolean)`
- `getFieldsetMode As Boolean`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setMinHeight(Value As Int)`
- `getMinHeight As Int`
- `setHintText(Value As String)`
- `getHintText As String`
- `setHintColor(Value As Int)`
- `getHintColor As Int`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `GetBase64 As String`
- `SetBase64(Base64String As String)`
- `IsBase64(Value As String) As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `getRounded As String`
- `setRounded(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getVariant As String`
- `setVariant(Value As String)`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyStack

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
| `Rounded` | String | `rounded-box` | Corner radius token. |
| `StrictDaisyParity` | Boolean | `True` | Use DaisyUI stack geometry and per-layer opacity (1.0, 0.9, 0.7). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddLayer(ChildView As B4XView) As Int`
- `AddLayerWithTag(ChildView As B4XView, Tag As Object) As Int`
- `SetLayers(lstViews As List)`
- `RemoveLayerAt(Index As Int) As Boolean`
- `Clear`
- `getLayer(Index As Int) As B4XView`
- `getLayerCount As Int`
- `setLayerTag(Index As Int, Tag As Object)`
- `getLayerTag(Index As Int) As Object`
- `setDirection(Value As String)`
- `getDirection As String`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Width As Int, Height As Int)`
- `setStepPrimary(Value As Object)`
- `getStepPrimary As Float`
- `setStepSecondary(Value As Object)`
- `getStepSecondary As Float`
- `setAutoFillLayers(Value As Boolean)`
- `getAutoFillLayers As Boolean`
- `setLayoutAnimationMs(Value As Int)`
- `getLayoutAnimationMs As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setStrictDaisyParity(Value As Boolean)`
- `getStrictDaisyParity As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `AddColorLayer(BackColor As Int, Text As String, TextColor As Int, CornerRadius As Float) As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `EqualWidths` | Boolean | `False` | Give every horizontal stat item the same width within the available width. |
| `MaxWidth` | Int | `0` | Maximum available width in dip. 0 uses the width supplied to AddToParent. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `getContentWidth As Int`
- `getContentHeight As Int`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyStatItem)`
- `AddItem1(EventName As String, Title As String, Value As String) As B4XDaisyStatItem`
- `AddItem2(EventName As String, Title As String, Value As String, Description As String) As B4XDaisyStatItem`
- `StartAnimation`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getEqualWidths As Boolean`
- `setEqualWidths(Value As Boolean)`
- `getMaxWidth As Int`
- `setMaxWidth(Value As Int)`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `getLeft As Int`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

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
| `StartFrom` | Float | `0` | Count-up start value. |
| `Prefix` | String | `` | Text before the value (e.g. $). |
| `Suffix` | String | `` | Text after the value (e.g. %, px). |
| `Separator` | String | `,` | Thousands grouping separator (used when Use Grouping is on). |
| `Decimal` | String | `.` | Decimal separator character. |
| `DecimalPlaces` | Int | `0` | Number of decimal places. |
| `UseGrouping` | Boolean | `True` | Enable thousands grouping separator. |
| `Animated` | Boolean | `False` | Animate the value from Start From to Value. |
| `Duration` | Int | `2` | Count-up duration in seconds. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `getContentWidth As Int`
- `getContentHeight As Int`
- `UpdateTheme`
- `Refresh`
- `EstimatePreferredWidth As Float`
- `EstimatePreferredHeight As Float`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `setShowSeparator(Value As Boolean)`
- `setCenterItems(Value As Boolean)`
- `getCenterItems As Boolean`
- `getFigure As B4XView`
- `setFigure(View As B4XView)`
- `getActions As B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `AddActionButton(Text As String, Variant As String, EventName As String) As B4XDaisyButton`
- `setTitle(Value As String)`
- `getTitle As String`
- `setValue(Value As String)`
- `getValue As String`
- `setDescription(Value As String)`
- `getDescription As String`
- `setValueColor(Value As String)`
- `getValueColor As String`
- `setDescriptionColor(Value As String)`
- `getDescriptionColor As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setFigureType(Value As String)`
- `getFigureType As String`
- `setFigureSource(Value As String)`
- `getFigureSource As String`
- `setFigureSize(Value As Int)`
- `getFigureSize As Int`
- `setFigureColor(Value As String)`
- `getFigureColor As String`
- `setFigureValue(V As Int)`
- `setPadding(Value As String)`
- `getPadding As String`
- `setGapX(Value As Int)`
- `getGapX As Int`
- `setStartFrom(Value As Float)`
- `getStartFrom As Float`
- `setPrefix(Value As String)`
- `getPrefix As String`
- `setSuffix(Value As String)`
- `getSuffix As String`
- `setSeparator(Value As String)`
- `getSeparator As String`
- `setDecimal(Value As String)`
- `getDecimal As String`
- `setDecimalPlaces(Value As Int)`
- `getDecimalPlaces As Int`
- `setUseGrouping(Value As Boolean)`
- `getUseGrouping As Boolean`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `LogLabelWidths(Tag As String)`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

---

## B4XDaisyStatus

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
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `TextColor` | Color | `0x00FFFFFF` | Override text color. |
| `Depth` | Float | `-1` | Three-dimensional shadow depth. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `CenterInParent(Parent As B4XView)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Value As String)`
- `getSize As String`
- `setAnimation(Value As String)`
- `getAnimation As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setDepth(Value As Float)`
- `getDepth As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

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
| `StepGap` | Int | `0` | Extra spacing (in dip) added between steps. 0 keeps the default spacing. Widens step columns in horizontal orientation and step rows in vertical orientation. |
| `Scrollable` | Boolean | `False` | Enables scrolling when steps overflow the container. Horizontal for horizontal orientation, vertical for vertical orientation. |
| `ConnectOnClick` | Boolean | `False` | When True, clicking a step connects (fills) the connector lines and circles up to and including the clicked step by updating the active step index. |
| `Width` | String | `w-full` | Tailwind size token or CSS size used as preferred width. |
| `Height` | String | `h-auto` | Tailwind size token, CSS size, or h-auto. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `View As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddStep(Text As String, Variant As String)`
- `AddStepWithContent(Text As String, Variant As String, Content As String)`
- `AddStepWithIcon(Text As String, Variant As String, Icon As String)`
- `AddStepWithSvgIcon(Text As String, Variant As String, SvgFileName As String)`
- `SetSteps(lstSteps As List)`
- `ClearSteps`
- `getStepCount As Int`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setActiveStep(Value As Int)`
- `getActiveStep As Int`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `getCircleSize As Int`
- `setCircleSize(Value As Int)`
- `setConnectOnClick(Value As Boolean)`
- `getConnectOnClick As Boolean`
- `setStepGap(Value As Int)`
- `getStepGap As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

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
| `Rounded` | String | `rounded-none` | Corner radius token. |
| `Variant` | String | `none` | DaisyUI semantic color variant (sets icon color). |
| `Clickable` | Boolean | `True` | When False, touch events pass through to parent (useful inside clickable list rows) |
| `SvgContent` | String | `` | SVG inline string content. |
| `SvgFile` | String | `` | SVG file name from assets. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `ResizeToParent(ParentView As B4XView)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetContentView As B4XView`
- `setSvgAsset(Path As String)`
- `setSvgFile(Dir As String, FileName As String)`
- `getSvgAsset As String`
- `setSvgContent(Content As String)`
- `getSvgContent As String`
- `setColor(Value As Int)`
- `getColor As Int`
- `setColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setPreserveOriginalColors(Value As Boolean)`
- `getPreserveOriginalColors As Boolean`
- `setPreserveColors(Value As Boolean)`
- `getPreserveColors As Boolean`
- `getLastRenderer As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setPadding(Value As Float)`
- `getPadding As Float`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setSize(Value As Object)`
- `Refresh`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `Duration` | Int | `300` | Visibility animation in milliseconds |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Toggle`
- `SetOnView(View As B4XView)`
- `SetOffView(View As B4XView)`
- `SetIndeterminateView(View As B4XView)`
- `getOnPanel As B4XView`
- `getOffPanel As B4XView`
- `getIndeterminatePanel As B4XView`
- `setOnText(Value As String)`
- `getOnText As String`
- `setOffText(Value As String)`
- `getOffText As String`
- `setIndeterminateText(Value As String)`
- `getIndeterminateText As String`
- `setState(Value As String)`
- `getState As String`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setSwapStyle(Value As String)`
- `getSwapStyle As String`
- `setSwapType(Value As String)`
- `getSwapType As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `getTextLineHeightDip As Float`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setOnColor(Value As Object)`
- `getOnColor As Int`
- `setOnColorVariant(VariantName As String)`
- `setOnTextColorVariant(VariantName As String)`
- `setOffColor(Value As Object)`
- `getOffColor As Int`
- `setOffColorVariant(VariantName As String)`
- `setOffTextColorVariant(VariantName As String)`
- `setIndeterminateColor(Value As Object)`
- `getIndeterminateColor As Int`
- `setIndeterminateColorVariant(VariantName As String)`
- `setIndeterminateTextColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisySweetAlert

### Events

- `Result (Result As B4XDaisySweetAlertResult)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Title` | String | `Are you sure?` | The popup title. |
| `Text` | String | `` | The popup body text. Blank by default; set explicitly when a prompt needs explanatory copy. |
| `Icon` | String | `none` | Built-in icon type (loading shows a spinner). |
| `IconColor` | Color | `0xFF545454` | Tint color for the SVG icon. |
| `IconSize` | Int | `80` | Icon width/height in dip. |
| `ShowConfirmButton` | Boolean | `True` | Show the confirm button. |
| `ConfirmButtonText` | String | `OK` | Text for the confirm button. |
| `ConfirmButtonColor` | Color | `0x00000000` | Background color for the confirm button. Transparent derives it from the primary variant. |
| `ConfirmButtonTextColor` | Color | `0x00000000` | Label color for the confirm button. Transparent derives it from the primary variant. |
| `ShowDenyButton` | Boolean | `False` | Show the deny button. |
| `DenyButtonText` | String | `No` | Text for the deny button. |
| `DenyButtonColor` | Color | `0x00000000` | Background color for the deny button. Transparent derives it from the warning variant. |
| `DenyButtonTextColor` | Color | `0x00000000` | Label color for the deny button. Transparent derives it from the warning variant. |
| `ShowCancelButton` | Boolean | `False` | Show the cancel button. |
| `CancelButtonText` | String | `Cancel` | Text for the cancel button. |
| `CancelButtonColor` | Color | `0x00000000` | Background color for the cancel button. Transparent derives it from the error variant. |
| `CancelButtonTextColor` | Color | `0x00000000` | Label color for the cancel button. Transparent derives it from the error variant. |
| `ShowCloseButton` | Boolean | `False` | Show a close button top-right. |
| `AllowOutsideClick` | Boolean | `True` | Close when clicking the backdrop. |
| `ReverseButtons` | Boolean | `False` | Swap confirm/deny/cancel order. |
| `Footer` | String | `` | Optional footer text shown below actions. |
| `BackgroundColor` | Color | `0xFFFFFFFF` | Modal background color. |
| `TextColor` | Color | `0xFF545454` | Title and body text color. |
| `Width` | Int | `360` | Maximum modal width in dip. |
| `TimerMs` | Int | `0` | Auto close timer in milliseconds. 0 disables. |
| `Rounded` | String | `rounded-box` | Corner radius style for the alert card |
| `InputType` | String | `none` | Input control type for interactive prompts. |
| `InputPlaceholder` | String | `` | Placeholder text for prompt inputs. |
| `InputLabel` | String | `` | Label for prompt inputs or checkboxes. |
| `InputRequired` | Boolean | `False` | Require non-empty input before confirming. |
| `InputErrorMessage` | String | `This field is required.` | Error message shown when validation fails. |
| `InputVariant` | String | `primary` | Color variant for option controls (checkbox, radio, toggle). |
| `InputMultiple` | Boolean | `False` | Allow multiple selections for checkbox/toggle groups. False = single-select (radio-like). Only applies to checkbox and toggle inputs. |

### Public Methods

- `Initialize(Callback As Object, Parent As B4XView, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `Show`
- `ShowAsync As ResumableSub`
- `showLoading`
- `hideLoading`
- `Update(Config As Map)`
- `Close`
- `CloseWithReason(Reason As String)`
- `GetDismissReason As Map`
- `btnConfirm_Click(Tag As Object)`
- `btnDeny_Click(Tag As Object)`
- `btnCancel_Click(Tag As Object)`
- `btnClose_Click(Tag As Object)`
- `GetActiveInputValue As Object`
- `setInputType(Value As String)`
- `getInputType As String`
- `setInputPlaceholder(Value As String)`
- `getInputPlaceholder As String`
- `setInputValue(Value As Object)`
- `getInputValue As Object`
- `setInputMultiple(Value As Boolean)`
- `getInputMultiple As Boolean`
- `setInputMin(Value As Int)`
- `getInputMin As Int`
- `setInputMax(Value As Int)`
- `getInputMax As Int`
- `setInputStep(Value As Int)`
- `getInputStep As Int`
- `setInputLabel(Value As String)`
- `getInputLabel As String`
- `setInputErrorMessage(Value As String)`
- `getInputErrorMessage As String`
- `setInputRequired(Value As Boolean)`
- `getInputRequired As Boolean`
- `setInputOptions(Options As Map)`
- `setInputValidator(Callback As Object, SubName As String)`
- `View As B4XView`
- `getView As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setParent(Parent As B4XView)`
- `getParent As B4XView`
- `setTitle(Value As String)`
- `getTitle As String`
- `setText(Value As String)`
- `getText As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setShowConfirmButton(Value As Boolean)`
- `getShowConfirmButton As Boolean`
- `setConfirmButtonText(Value As String)`
- `getConfirmButtonText As String`
- `setConfirmButtonColor(Value As Int)`
- `getConfirmButtonColor As Int`
- `setConfirmButtonTextColor(Value As Int)`
- `getConfirmButtonTextColor As Int`
- `setShowDenyButton(Value As Boolean)`
- `getShowDenyButton As Boolean`
- `setDenyButtonText(Value As String)`
- `getDenyButtonText As String`
- `setDenyButtonColor(Value As Int)`
- `getDenyButtonColor As Int`
- `setDenyButtonTextColor(Value As Int)`
- `getDenyButtonTextColor As Int`
- `setShowCancelButton(Value As Boolean)`
- `getShowCancelButton As Boolean`
- `setCancelButtonText(Value As String)`
- `getCancelButtonText As String`
- `setCancelButtonColor(Value As Int)`
- `getCancelButtonColor As Int`
- `setCancelButtonTextColor(Value As Int)`
- `getCancelButtonTextColor As Int`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButton As Boolean`
- `setAllowOutsideClick(Value As Boolean)`
- `getAllowOutsideClick As Boolean`
- `setReverseButtons(Value As Boolean)`
- `getReverseButtons As Boolean`
- `setFooter(Value As String)`
- `getFooter As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setTimerMs(Value As Int)`
- `getTimerMs As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `Base_Resize(Width As Double, Height As Double)`
- `IME_HeightChanged(NewHeight As Int, OldHeight As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisySweetAlertIcon

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `IconType` | String | `success` | The icon to animate. |
| `Duration` | Int | `500` | Duration of the drawing animation in milliseconds. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Play`
- `Stop`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setAnimationDuration(Value As Int)`
- `getAnimationDuration As Int`
- `setIconType(Icon As String)`
- `getIconType As String`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `View As B4XView`
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
- `SetTabs(lstTabsList As List)`
- `ClearTabs`
- `getTabCount As Int`
- `GetComputedHeight As Int`
- `setActiveIndex(Value As Int)`
- `getActiveIndex As Int`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `UpdateTheme`
- `RemoveViewFromParent`
- `ResizeTab`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyTagSphere

### Types

- `TagPoint (x As Float, y As Float, z As Float)`

### Events

- `TagTap (Tag As String)`
- `TagLongPress (Tag As String)`
- `DrawTag (Info As Map)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Items` | String | `Android|iOS|Flutter|React|Vue|Svelte|Kotlin|Swift|Java|Dart|Node|Python|Rust|Go|PHP|Ruby` | Pipe-separated tag labels. Max 200. |
| `TextColor` | Color | `0xFF1F2937` | Color of the tag labels. |
| `TextSize` | Float | `14` | Font size in dip. |
| `Radius` | Float | `1.5` | World radius of the sphere. Larger value = smaller visual sphere. 1.0 - 10.0. |
| `Sensitivity` | Int | `11` | Higher = slower drag rotation. 1 - 100. |
| `CircularAvatars` | Boolean | `True` | Crop avatar images into circles with optional borders. |
| `AvatarBorderColor` | Color | `0xFFFFFFFF` | Border ring color for circular avatars. |
| `AvatarBorderWidth` | Float | `2` | Border stroke width in dip. |
| `AutoRotate` | Boolean | `True` | Spin the sphere continuously when idle. |
| `Easing` | String | `easeOut` | Alpha curve based on depth (back of sphere fades). |
| `RotateOnTouch` | Boolean | `True` | Allow drag to rotate the sphere. |
| `AutoSpeed` | Float | `0.4` | Auto-rotation speed (radians per frame per axis at 60fps). Try 0.1 - 1.0. |
| `Visible` | Boolean | `True` | Show or hide the sphere. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setItems(lstTags As List)`
- `getItems As List`
- `setBitmaps(lstBitmaps As List)`
- `setBitmaps2(lstBitmaps As List, WidthDip As Float, HeightDip As Float)`
- `getBitmaps As List`
- `setImageSize(WidthDip As Float, HeightDip As Float)`
- `getImageWidth As Float`
- `getImageHeight As Float`
- `setCircularAvatars(Value As Boolean)`
- `getCircularAvatars As Boolean`
- `setAvatarBorderColor(Value As Int)`
- `getAvatarBorderColor As Int`
- `setAvatarBorderWidth(Value As Float)`
- `getAvatarBorderWidth As Float`
- `getCount As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextSize(Value As Float)`
- `getTextSize As Float`
- `setRadius(Value As Float)`
- `getRadius As Float`
- `setSensitivity(Value As Int)`
- `getSensitivity As Int`
- `setAutoRotate(Value As Boolean)`
- `getAutoRotate As Boolean`
- `setEasing(Value As String)`
- `getEasing As String`
- `setRotateOnTouch(Value As Boolean)`
- `getRotateOnTouch As Boolean`
- `setAutoSpeed(Value As Float)`
- `getAutoSpeed As Float`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `AddRotation(DeltaX As Float, DeltaY As Float)`
- `addTag(Tag As String)`
- `addTagsAt(StartIndex As Int, lstTags As List)`
- `removeTagAt(Index As Int) As Boolean`
- `removeTag(Tag As String) As Boolean`
- `clearTags`
- `Base_Resize(Width As Double, Height As Double)`
- `Redraw`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `Heading` | String | `none` | Apply Ionic heading settings (font-size 26->16, weight 500, line-height 1.2). Overrides TextSize when not none. |
| `FontBold` | Boolean | `False` | Use bold font. |
| `SingleLine` | Boolean | `False` | Single line text. |
| `Ellipsize` | String | `none` | Truncate with ellipsis when text overflows. Requires Single Line for start/middle/end. |
| `HAlign` | String | `LEFT` | Text horizontal alignment. |
| `VAlign` | String | `CENTER` | Text vertical alignment. |
| `Padding` | Int | `0` | Inner padding in dip. |
| `Margin` | String | `` | Tailwind/spacing margin utilities (eg m-2, mx-1.5, 1) |
| `Rounded` | String | `rounded-none` | Corner radius token. |
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
| `LowerCase` | Boolean | `False` | Transform text to lowercase. |
| `Capitalize` | Boolean | `False` | Capitalize first letter of each word. |
| `LetterSpacing` | Float | `0.0` | Letter spacing in em units (eg 0.05, 0.1). |
| `ShadowRadius` | Float | `0.0` | Blur radius of the text shadow (0 to disable). |
| `ShadowDx` | Float | `0.0` | Horizontal offset of the text shadow. |
| `ShadowDy` | Float | `0.0` | Vertical offset of the text shadow. |
| `ShadowColor` | Color | `0xFF000000` | Color of the text shadow. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `RefreshText`
- `MeasureTextWidth As Float`
- `MeasureTextHeight As Float`
- `GetPreferredHeight(MaxContentWidth As Int) As Int`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTextSize(Value As Object)`
- `setHeading(Value As String)`
- `getHeading As String`
- `getTextSize As Object`
- `setFontBold(Value As Boolean)`
- `getFontBold As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setEllipsize(Value As String)`
- `getEllipsize As String`
- `setHAlign(Value As String)`
- `getHAlign As String`
- `setVAlign(Value As String)`
- `getVAlign As String`
- `setPadding(Value As Float)`
- `getPadding As Float`
- `setMargin(Value As String)`
- `getMargin As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setLink(Value As Boolean)`
- `getLink As Boolean`
- `setUnderline(Value As Boolean)`
- `getUnderline As Boolean`
- `setUrl(Value As String)`
- `getUrl As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `StartAnimation`
- `StopAnimation`
- `setIsSkeleton(Value As Boolean)`
- `getIsSkeleton As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setColor(BackgroundColor As Int)`
- `getColor As Int`
- `SetTextAlignment(Vertical As String, Horizontal As String)`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `SetColorAndBorder(CBackgroundColor As Int, CBorderW As Float, CBorderC As Int, CornerRadius As Float)`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setUpperCase(Value As Boolean)`
- `getUpperCase As Boolean`
- `setItalic(Value As Boolean)`
- `getItalic As Boolean`
- `setStrikethrough(Value As Boolean)`
- `getStrikethrough As Boolean`
- `setLowerCase(Value As Boolean)`
- `getLowerCase As Boolean`
- `setCapitalize(Value As Boolean)`
- `getCapitalize As Boolean`
- `setLetterSpacing(Value As Float)`
- `getLetterSpacing As Float`
- `setShadowRadius(Value As Float)`
- `getShadowRadius As Float`
- `setShadowDx(Value As Float)`
- `getShadowDx As Float`
- `setShadowDy(Value As Float)`
- `getShadowDy As Float`
- `setShadowColor(Value As Int)`
- `getShadowColor As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyTextRotate

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Items` | List | `1` | The number of items to rotate. |
| `Duration` | String | `3s` | The duration of the rotation (e.g., 3s). |
| `Variant` | String | `none` | DaisyUI semantic color variant. |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `Stop`
- `Start`
- `GetItems As List`
- `SetItems(lstItemList As List)`
- `AddItem(dt As B4XDaisyText)`
- `Clear`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setDuration(Value As String)`
- `getDuration As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---

## B4XDaisyTimeline

### Events

- `ItemClick (Id As String)`

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Orientation` | String | `vertical` | Timeline orientation. |
| `Compact` | Boolean | `False` | If True, all items are pushed to one side. |
| `SnapIcon` | Boolean | `False` | If True, snaps the icon to start instead of middle. |
| `LineColor` | String | `base-300` | Color of the connecting lines. |
| `MarkerSize` | Int | `20, MinRange: 4, MaxRange: 100` | Size of the middle marker. |
| `MarkerColor` | String | `neutral` | Color of the middle marker. |
| `TextSize` | String | `text-xs` | Text size token applied to both start and end content (matches Daisy default for boxes). |
| `BoxShadow` | String | `sm` | Elevation token for boxed items (shadow-sm by default). |
| `Visible` | Boolean | `True` | Visible state. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddItem(Id As String, StartText As String, EndText As String) As String`
- `AddItemBox(Id As String, StartText As String, EndText As String, BoxOnStart As Boolean, BoxOnEnd As Boolean) As String`
- `UpdateItem(Id As String, StartText As String, MiddleIcon As Object, IconColor As Int, EndText As String, IsBox As Boolean, BoxOnStart As Boolean, BoxOnEnd As Boolean, Variant As String, DashedBorder As Boolean)`
- `SetItemStartText(Id As String, StartText As String)`
- `SetItemMiddleIcon(Id As String, MiddleIcon As Object)`
- `SetItemIconColor(Id As String, IconColor As Int)`
- `SetItemEndText(Id As String, EndText As String)`
- `SetItemVariant(Id As String, Variant As String)`
- `SetItemDashedBorder(Id As String, Dashed As Boolean)`
- `SetItemDone(Id As String, Done As Boolean)`
- `GetItemDone(Id As String) As Boolean`
- `ToggleItem(Id As String)`
- `Clear`
- `getSize As Int`
- `Refresh`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setCompact(Value As Boolean)`
- `getCompact As Boolean`
- `setSnapIcon(Value As Boolean)`
- `getSnapIcon As Boolean`
- `setLineColor(Value As String)`
- `getLineColor As String`
- `setMarkerSize(Value As Int)`
- `getMarkerSize As Int`
- `setMarkerColor(Value As String)`
- `getMarkerColor As String`
- `setVisible(Value As Boolean)`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setBoxShadow(Value As String)`
- `getBoxShadow As String`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `GetContentHeight As Int`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

---

## B4XDaisyToast

### Types

- `ToastItem (View As B4XView, Progress As B4XDaisyProgress, Timer As Timer, StartTime As Long, Duration As Long)`

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
- `CreateView As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `ApplyDesignerProps(Props As Map)`
- `getHorizontalAlignment As String`
- `setHorizontalAlignment(Value As String)`
- `getVerticalAlignment As String`
- `setVerticalAlignment(Value As String)`
- `SetPosition(Horizontal As String, Vertical As String)`
- `Show`
- `Hide`
- `SetRoot(Root1 As B4XView)`
- `AttachTo(HostView As B4XView)`
- `Detach(HostView As B4XView)`
- `Clear`
- `Success(Message As String)`
- `SuccessWithDuration(Message As String, DurationMs As Int)`
- `Info(Message As String)`
- `InfoWithDuration(Message As String, DurationMs As Int)`
- `Warning(Message As String)`
- `WarningWithDuration(Message As String, DurationMs As Int)`
- `Error(Message As String)`
- `ErrorWithDuration(Message As String, DurationMs As Int)`
- `AttachWithDuration(HostView As B4XView, DurationMs As Int)`
- `Base_Resize(Width As Int, Height As Int)`
- `setShowProgress(Value As Boolean)`
- `getShowProgress As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

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
| `BackgroundColor` | Color | `0x00FFFFFF` | Override background color. |
| `BorderColor` | Color | `0x00FFFFFF` | Override border color. |
| `TextColor` | Color | `0x00FFFFFF` | Override label text color. |
| `CheckedBackgroundColor` | Color | `0x00FFFFFF` | Override checked background color. |
| `CheckedBorderColor` | Color | `0x00FFFFFF` | Override checked border color. |
| `CheckedTextColor` | Color | `0x00FFFFFF` | Override checked text color. |
| `Required` | Boolean | `False` | Set field as required. |
| `ErrorText` | String | `` | Message displayed when field validation fails. |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getRole As String`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColor As Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColor As Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

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
| `LabelAbove` | Boolean | `False` | If True, the legend text is displayed as a label above the border box |
| `Variant` | String | `none` | Optional accent variant for border tint |
| `BorderStyle` | String | `outlined` | Border visual style |
| `Padding` | Int | `16` | Inner content padding in dip |
| `AutoHeight` | Boolean | `True` | Automatically grow to fit added content |
| `Rounded` | String | `theme` | Corner radius mode |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddItem(Id As String, Text As String)`
- `RemoveItem(Id As String)`
- `Clear`
- `setItems(Items As Map)`
- `getItems As Map`
- `setItemsSpec(Value As String)`
- `getItemsSpec As String`
- `setChecked(CheckedIds As String)`
- `getChecked As String`
- `SetItemChecked(Id As String, Checked As Boolean)`
- `CheckItem(Id As String)`
- `UncheckItem(Id As String)`
- `IsItemChecked(Id As String) As Boolean`
- `setLegend(Value As String)`
- `getLegend As String`
- `setLegendSize(Value As String)`
- `getLegendSize As String`
- `setLegendBold(Value As Boolean)`
- `getLegendBold As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setToggleColor(Value As String)`
- `getToggleColor As String`
- `setToggleSize(Value As String)`
- `getToggleSize As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `setPadding(Value As Int)`
- `getPadding As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setRowGap(Value As Int)`
- `getRowGap As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setRequired(Value As Boolean)`
- `setLabelAbove(Value As Boolean)`
- `getLabelAbove As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `getIsValid As Boolean`
- `Validate As Boolean`
- `ReceiveFocus`
- `Blur`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `isRounded As Boolean`
- `setRoundedBox(Value As Boolean)`
- `isRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setInputBorder(Value As Boolean)`
- `getInputBorder As Boolean`
- `GetComputedHeight As Int`
- `Release`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

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
| `Alignment` | String | `center` | Align tooltip to start/center/end of the target (tooltip-start/center/end parity). |
| `Variant` | String | `neutral` | Daisy variant for tooltip background. |
| `ShowArrow` | Boolean | `True` | Show the small tail/arrow pointing to target. |
| `ClickToClose` | Boolean | `True` | Hide tooltip when clicked. |
| `TextWrapped` | Boolean | `True` | Enable multi-line text wrapping. |
| `Visible` | Boolean | `True` | Initial visibility. |
| `AutoResize` | Boolean | `True` | Automatically resize tooltip to fit message content. |
| `Duration` | Int | `300` | Fade animation duration in milliseconds for hide (0 = instant). |

### Public Methods

- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Refresh`
- `AttachTo(Target As B4XView)`
- `DetachTarget`
- `Show`
- `ShowAnimated(Duration As Int)`
- `Hide`
- `HideAnimated(DurationMs As Int)`
- `getVisible As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setVisible(Value As Boolean)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setMessage(Value As String)`
- `getMessage As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `SetCustomContent(CustomView As B4XView)`
- `BringToFront`
- `GetComputedHeight As Int`
- `View As B4XView`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `SendToBack`
- `getClickToClose As Boolean`
- `setClickToClose(Value As Boolean)`
- `getShowArrow As Boolean`
- `setShowArrow(Value As Boolean)`
- `getTextWrapped As Boolean`
- `setTextWrapped(Value As Boolean)`

---

## B4XDaisyVariants

### Types

- `NullableInt (Success As Boolean, Value As Int)`
- `NullableFloat (Success As Boolean, Value As Float)`
- `B4XDaisySweetAlertResult (IsConfirmed As Boolean, IsDenied As Boolean, IsDismissed As Boolean, Dismiss As String, Value As Object)`

### Public Methods

- `HSLToInt(H As Int, S As Double, L As Double, A As Int) As Int`
- `SetTextOrCSBuilderToLabel(Xlbl As B4XView, Text As Object)`
- `SetBitmapAndFill(ImageView As B4XView, bmpBmp As B4XBitmap)`
- `CreateLabel As B4XView`
- `CreateB4XImageView As B4XImageView`
- `GetCheckedRadio(Parent As B4XView, GroupName As String) As B4XDaisyRadio`
- `CreateRipple(Parent As B4XView, TouchX As Float, TouchY As Float, RippleColor As Int, DurationMs As Int, CornerRadius As Int)`
- `GetCheckedValue(Parent As B4XView, GroupName As String) As String`
- `SetCheckedByValue(Parent As B4XView, GroupName As String, Value As String) As Boolean`
- `SetActiveTheme(ThemeName As String)`
- `GetActiveTheme As String`
- `HasTheme(ThemeName As String) As Boolean`
- `RegisterTheme(ThemeName As String, Tokens As Map)`
- `ResolveAssetImage(FileName As String, DefaultImage As String) As String`
- `ResolveAssetSVG(FileName As String, DefaultText As String) As String`
- `GetThemeTokens(ThemeName As String) As Map`
- `GetActiveTokens As Map`
- `SetOverflowHidden(View As B4XView)`
- `SetStyleVariable(View As B4XView, Name As String, Value As Object)`
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
- `GetVariantPalette As Map`
- `BuildVariantPalette(ThemeName As String) As Map`
- `VariantList As String`
- `NormalizeVariant(Name As String) As String`
- `BuildVariantMap(BackColor As Int, TextColor As Int) As Map`
- `DefaultPalette As Map`
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
- `Blend(C1 As Int, C2 As Int, T As Double) As Int`
- `ShadowList As String`
- `NormalizeShadow(Name As String) As String`
- `ResolveShadowElevation(Level As String) As Float`
- `ResolveShadowSpec(Level As String) As Map`
- `MaskList As String`
- `MaskListSimple As String`
- `NormalizeMask(MaskName As String) As String`
- `CreateMaskPath(Size As Float, MaskName As String) As B4XPath`
- `CreateMaskPathRect(Width As Float, Height As Float, MaskName As String) As B4XPath`
- `CreateMaskPathInRect(rcTargetRect As B4XRect, MaskName As String) As B4XPath`
- `ResolveRoundedRadiusDip(MaskName As String, Size As Float) As Float`
- `ClipCanvasToShape(cvsCvs As B4XCanvas, rcTargetRect As B4XRect, MaskName As String) As Boolean`
- `RestoreCanvasClip(cvsCvs As B4XCanvas)`
- `DisableViewClipping(View As B4XView)`
- `EnableShapedClipping(View As B4XView, MaskName As String)`
- `DisableShapedClipping(View As B4XView)`
- `SetLineSpacing(View As B4XView, Multiple As Float, Add As Float)`
- `NormalizeDateTimeFormat(Value As String, DefaultFlatpickrFormat As String) As String`
- `FormatDateTime(FormatText As String, ValueMillis As Long) As String`
- `LooksLikeJavaDateFormat(FormatText As String) As Boolean`
- `ConvertFlatpickrToDateFormat(FormatText As String) As String`
- `GetPropString(Props As Map, Key As String, DefaultValue As String) As String`
- `GetPropFloat(Props As Map, Key As String, DefaultValue As Float) As Float`
- `GetPropInt(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropLong(Props As Map, Key As String, DefaultValue As Long) As Long`
- `GetPropBool(Props As Map, Key As String, DefaultValue As Boolean) As Boolean`
- `GetPropColor(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropDip(Props As Map, Key As String, DefaultDip As Float) As Float`
- `GetPropSizeDip(Props As Map, Key As String, DefaultDip As Object) As Float`
- `TailwindSizeToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSizeToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSpacingToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindGapToDip(Value As Object, DefaultDip As Float) As Float`
- `ParseGapUtilities(Utilities As String, DefaultGapDip As Float) As Map`
- `BorderStyleList As String`
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
- `MeasureTextWidthSafe(Text As String, TextSize As Float, Tf As Object, BufferDip As Float) As Int`
- `MeasureTextHeightSafe(Text As String, TextSize As Float, Tf As Object, Width As Int, BufferDip As Float) As Int`
- `GetGlassSpec As Map`
- `GetGlassSpecForSize(Size As String) As Map`
- `ApplyGlassStyle(Target As B4XView, RadiusDip As Float, Size As String)`
- `ApplyGlassStylePerCorner(Target As B4XView, TL As Float, TR As Float, BR As Float, BL As Float, Size As String)`
- `SetColorPerCornerRadius(View As B4XView, BgColor As Int, TL As Float, TR As Float, BR As Float, BL As Float)`
- `ApplyGlassTextStyle(TextTarget As B4XView)`
- `AlphaColor(ColorValue As Int, Alpha01 As Float) As Int`
- `GetJoinSpec(Orientation As String) As Map`
- `ApplyJoinToContainer(Container As B4XView, Spec As Map)`
- `ApplyJoinItemToChild(Item As B4XView, Spec As Map, Index As Int, Total As Int)`
- `ApplyJoinToAllChildren(Container As B4XView, Spec As Map)`
- `TailwindTextFontSize(Value As Object, DefaultFontSize As Float) As Float`
- `TailwindTextLineHeightDip(Value As Object, DefaultLineHeightDip As Float) As Float`
- `ExtractSpacingValue(Value As String) As String`
- `ResolveIconTypeface(Icon As String) As Typeface`
- `IsRtl As Boolean`
- `NormalizeRounded(Value As String) As String`
- `ResolveRoundedDip(Rounded As String, DefaultDip As Float) As Float`
- `SetAlpha(Color As Int, Alpha As Int) As Int`
- `ShiftColor(Color As Int, Factor As Float) As Int`
- `CloneProps(Props As Map) As Map`
- `DisableClipping(View As B4XView)`
- `DisableClippingChain(StartView As B4XView, MaxLevels As Int)`
- `DisableClippingRecursive(View As B4XView)`
- `ApplyElevation(View As B4XView, ShadowLevel As String)`
- `ParseFlexContainerTokens(TokenString As String) As Map`
- `ApplyFlexContainerTokens(fp As B4XDaisyFlexPanel, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexContainerTokens(fp As B4XDaisyFlexPanel, Parsed As Map, DoRelayout As Boolean)`
- `ParseFlexItemTokens(TokenString As String) As Map`
- `ApplyFlexItemTokens(fp As B4XDaisyFlexPanel, View As B4XView, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexItemTokens(fp As B4XDaisyFlexPanel, View As B4XView, Parsed As Map, DoRelayout As Boolean)`
- `ApplyThemeToPage(ThemeName As String, RootView As B4XView)`
- `ApplyDashedBorder(Target As B4XView, FillColor As Int, BorderWidth As Float, BorderColor As Int, Radius As Float, Style As String)`
- `ShiftSiblingsBelow(View As B4XView, Delta As Int, AnimDuration As Int)`
- `CreateEditTextBorder(BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int) As ColorDrawable`
- `ApplyEditTextBorder(Target As B4XView, BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int)`
- `ValidateRequiredControls(Parent As B4XView) As Boolean`
- `ValidateControls(lstControls As List) As Boolean`
- `SubArgCount(Target As Object, SubName As String) As Int`
- `RequestDisallowParentIntercept(View As B4XView, Action As Int)`

---

## B4XDaisyWindow

### Designer Properties

| Property Key | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `Width` | String | `w-full` | Window width (for example w-full, 320dip, 320). |
| `Height` | String | `h-220` | Window height (for example h-220, 220dip). |
| `BackgroundColor` | Color | `0x00000000` | Window background (0 uses bg-base-100). |
| `BorderColor` | Color | `0x00000000` | Window border color (0 uses border-base-300). |
| `BorderSize` | Int | `1` | Border width in dip. |
| `Rounded` | String | `theme` | Corner radius mode. |
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
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Content As B4XView`
- `ContentWidth As Int`
- `ContentHeight As Int`
- `GetHeaderPanel As B4XView`
- `AddContentView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddHeaderView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `RefreshContent`
- `ClearHeader`
- `getTag As Object`
- `setTag(Value As Object)`
- `View As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setShowHeader(Value As Boolean)`
- `getShowHeader As Boolean`
- `setHeaderHeight(Value As Int)`
- `getHeaderHeight As Int`
- `setShowControls(Value As Boolean)`
- `getShowControls As Boolean`
- `setContentPadding(Value As String)`
- `getContentPadding As String`
- `setToolBarTitle(Value As String)`
- `getToolBarTitle As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

---
