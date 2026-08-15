# carousel (`B4XDaisyCarousel`)

Horizontal swipeable carousel slider for image slides, banners, cards, and full-width content items.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyCarousel`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCarousel.bas`
- **Verified Demos**: `B4XPageCarousel.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Pause`
- `Refresh`
- `RemoveItem(Item As B4XDaisyCarouselItem)`
- `RemoveViewFromParent`
- `Resume`
- `ScrollToItem(Index As Int)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAutoPlay`
- `StopAutoPlay`
- `UpdateTheme`
- `getAutoPlay As Boolean`
- `getAutoPlayInterval As Int`
- `getBackgroundColor As String`
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
- `setAutoPlay(Value As Boolean)`
- `setAutoPlayInterval(Value As Int)`
- `setBackgroundColor(Value As String)`
- `setContentPadding(Value As Int)`
- `setEnabled(Value As Boolean)`
- `setGap(Value As String)`
- `setHeight(Value As String)`
- `setIndicatorActiveColor(Value As Int)`
- `setIndicatorBackgroundColor(Value As Int)`
- `setIndicatorButtons(Value As Boolean)`
- `setIndicatorDotGap(Value As Int)`
- `setIndicatorDotSize(Value As Int)`
- `setIndicatorInactiveColor(Value As Int)`
- `setIndicatorOffset(Value As Int)`
- `setItemGap(Value As Int)`
- `setLeft(Value As Int)`
- `setNavigationButtons(Value As Boolean)`
- `setOrientation(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setSnap(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
