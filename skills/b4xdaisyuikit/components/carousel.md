# carousel (`B4XDaisyCarousel`)

DaisyUI `Carousel` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCarousel`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyCarousel.bas`
- **Verified Demo Source**: B4XPageCarousel.bas (lines 44–410)
- **Web DaisyUI Mapping**: `.carousel` → `B4XDaisyCarousel`

## 2. Verified B4X Syntax & Recipe
```b4x
' Each item has a click handler that shows a toast notification.
    currentY = AddSectionTitle("Snap to start (default)", currentY, maxW)
    Dim carousel1 As B4XDaisyCarousel
    carousel1.Initialize(Me, "carousel1")
    carousel1.Rounded = "rounded-box"
    carousel1.Width = "w-full"
    carousel1.Height = "h-[300px]"
    carousel1.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 300dip)
    
    Dim images1() As String = Array As String("photo-1559703248-dcaaec9fab78.webp", _
                                             "photo-1565098772267-60af42b81ef2.webp", _
                                             "photo-1572635148818-ef6fd45eb394.webp", _
                                             "photo-1494253109108-2e30c049369b.webp", _
                                             "photo-1550258987-190a2d41a8ba.webp", _
                                             "photo-1559181567-c3190ca9959b.webp", _
                                             "photo-1601004890684-d8cbf643f5f2.webp")
    Dim idx1 As Int = 0                                         
    For Each img As String In images1
        Dim itm As B4XDaisyCarouselItem
        itm.Initialize(Me, "item")
        itm.Tag = "Start #" & (idx1 + 1) & ": " & img
        itm.ItemType = "image"
        itm.Source = img
        itm.Snap = "start"
        itm.Width = "w-full"
        itm.Height = "h-full"
        carousel1.AddItem(itm)
        idx1 = idx1 + 1
    Next
    carousel1.Refresh
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCarousel` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Carousel container requiring `.AddPage` / `.AddItem` registration of child slide panels.

### Deviation Mechanism
- Carousel container requiring `.AddPage` / `.AddItem` registration of child slide panels.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, RemoveItem, getOrientation` (+ 43 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Orientation` | Orientation | `String` | `horizontal` | horizontal|vertical |
| `Snap` | Snap Position | `String` | `start` | start|center|end |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `NavigationButtons` | Navigation Buttons | `Boolean` | `False` |  |
| `IndicatorButtons` | Indicator Buttons | `Boolean` | `False` |  |
| `AutoPlay` | Auto Play | `Boolean` | `False` |  |
| `AutoPlayInterval` | AutoPlay Interval (ms) | `Int` | `3000` |  |
| `ItemGap` | Item Gap | `Int` | `0` |  |
| `Gap` | Gap (Token) | `String` | `` |  |
| `ContentPadding` | Content Padding | `Int` | `0` |  |
| `Padding` | Padding (Token) | `String` | `` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-[300px]` |  |
| `BackgroundColor` | Background Color | `String` | `` |  |
| `IndicatorBackgroundColor` | Indicator Bg Color | `Color` | `0x50000000` |  |
| `IndicatorActiveColor` | Indicator Active Color | `Color` | `0xFFFFFFFF` |  |
| `IndicatorInactiveColor` | Indicator Inactive Color | `Color` | `0x78FFFFFF` |  |
| `IndicatorDotSize` | Indicator Dot Size | `Int` | `10` |  |
| `IndicatorDotGap` | Indicator Dot Gap | `Int` | `6` |  |
| `IndicatorOffset` | Indicator Offset | `Int` | `0` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |

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
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Pause`
- `Refresh`
- `RemoveItem(Item As B4XDaisyCarouselItem)`
- `RemoveViewFromParent`
- `Resume`
- `ScrollToItem(iIndex As Int)`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartAutoPlay`
- `StopAutoPlay`
- `UpdateTheme`
- `View As B4XView`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

