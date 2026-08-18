# carousel (`B4XDaisyCarousel`)

Horizontal swipeable carousel slider for image slides, banners, cards, and full-width content items.

## 1. Overview
- **Class**: `B4XDaisyCarousel`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCarousel.bas`
- **Web DaisyUI Mapping**: `.carousel` → `B4XDaisyCarousel`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim car As B4XDaisyCarousel
car.Initialize(Me, "car")
car.AddToParent(pnlHost, pad, y, maxW, 200dip)
car.AddItem("slide1", "banner1.jpg")
car.AddItem("slide2", "banner2.jpg")
y = y + 200dip + gap
```

## 3. Native Composition Rules & Gotchas
- Mount on `pnlHost` via `AddToParent` first before adding slides with `AddImageSlide` or `AddCustomSlide`.
- Set `AutoPlay = True` with `Interval = 3500` (ms) for automatic slide rotation.
- Configure `IndicatorStyle` (`"dots"`, `"numbers"`, `"lines"`, `"none"`) and `ShowArrows = True`.
- Handle slide interactions in `SlideChanged` and `SlideClick` events.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Orientation | Orientation | String | horizontal | horizontal|vertical |
| Snap | Snap Position | String | start | start|center|end |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | False |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl |
| NavigationButtons | Navigation Buttons | Boolean | False |  |
| IndicatorButtons | Indicator Buttons | Boolean | False |  |
| AutoPlay | Auto Play | Boolean | False |  |
| AutoPlayInterval | AutoPlay Interval (ms) | Int | 3000 |  |
| ItemGap | Item Gap | Int | 0 |  |
| Gap | Gap (Token) | String |  |  |
| ContentPadding | Content Padding | Int | 0 |  |
| Padding | Padding (Token) | String |  |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-[300px] |  |
| BackgroundColor | Background Color | String |  |  |
| IndicatorBackgroundColor | Indicator Bg Color | Color | 0x50000000 |  |
| IndicatorActiveColor | Indicator Active Color | Color | 0xFFFFFFFF |  |
| IndicatorInactiveColor | Indicator Inactive Color | Color | 0x78FFFFFF |  |
| IndicatorDotSize | Indicator Dot Size | Int | 10 |  |
| IndicatorDotGap | Indicator Dot Gap | Int | 6 |  |
| IndicatorOffset | Indicator Offset | Int | 0 |  |
| Visible | Visible | Boolean | True |  |
| Enabled | Enabled | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `Changed (Index As Int)`

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyCarouselItem)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoPlay As Boolean`
- `getAutoPlayInterval As Int`
- `getBackgroundColor As String`
- `GetComputedHeight As Int`
- `getContentPadding As Int`
- `getCurrentIndex As Int`
- `getEnabled As Boolean`
- `getGap As String`
- `getHeight As String`
- `getIndicatorActiveColor As Int`
- `getIndicatorBackgroundColor As Int`
- `getIndicatorButtons As Boolean`
- `getIndicatorDotGap As Int`
- `getIndicatorDotSize As Int`
- `getIndicatorInactiveColor As Int`
- `getIndicatorOffset As Int`
- `getItemGap As Int`
- `getLeft As Int`
- `getNavigationButtons As Boolean`
- `getOrientation As String`
- `getPadding As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getSnap As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Pause`
- `Refresh`
- `RemoveItem(Item As B4XDaisyCarouselItem)`
- `RemoveViewFromParent`
- `Resume`
- `ScrollToItem(iIndex As Int)`
- `SendToBack`
- `setAutoPlay(bValue As Boolean)`
- `setAutoPlayInterval(iValue As Int)`
- `setBackgroundColor(sValue As String)`
- `setContentPadding(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setGap(sValue As String)`
- `setHeight(sValue As String)`
- `setIndicatorActiveColor(iValue As Int)`
- `setIndicatorBackgroundColor(iValue As Int)`
- `setIndicatorButtons(bValue As Boolean)`
- `setIndicatorDotGap(iValue As Int)`
- `setIndicatorDotSize(iValue As Int)`
- `setIndicatorInactiveColor(iValue As Int)`
- `setIndicatorOffset(iValue As Int)`
- `setItemGap(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setNavigationButtons(bValue As Boolean)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSnap(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `StartAutoPlay`
- `StopAutoPlay`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
