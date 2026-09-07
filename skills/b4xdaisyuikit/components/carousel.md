# carousel (`B4XDaisyCarousel`)

DaisyUI `Carousel` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCarousel`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyCarousel.bas`
- **Verified Demo Source**: B4XPageCarousel.bas
- **Web DaisyUI Mapping**: `.carousel` → `B4XDaisyCarousel`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``carousel`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``carousel-item`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `modifier` | ``carousel-start`, `carousel-center`, `carousel-end`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `direction` | ``carousel-horizontal`, `carousel-vertical`` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |

### Web DaisyUI HTML Syntax
```html
<div class="carousel {MODIFIER}">{CONTENT}</div>
```

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
| `Orientation` | Orientation | `String` | horizontal | horizontal|vertical |
| `Snap` | Snap Position | `String` | start | start|center|end |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `NavigationButtons` | Navigation Buttons | `Boolean` | False |  |
| `IndicatorButtons` | Indicator Buttons | `Boolean` | False |  |
| `AutoPlay` | Auto Play | `Boolean` | False |  |
| `AutoPlayInterval` | AutoPlay Interval (ms) | `Int` | 3000 |  |
| `ItemGap` | Item Gap | `Int` | 0 |  |
| `Gap` | Gap (Token) | `String` |  |  |
| `ContentPadding` | Content Padding | `Int` | 0 |  |
| `Padding` | Padding (Token) | `String` |  |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-[300px] |  |
| `BackgroundColor` | Background Color | `String` |  |  |
| `IndicatorBackgroundColor` | Indicator Bg Color | `Color` | 0x50000000 |  |
| `IndicatorActiveColor` | Indicator Active Color | `Color` | 0xFFFFFFFF |  |
| `IndicatorInactiveColor` | Indicator Inactive Color | `Color` | 0x78FFFFFF |  |
| `IndicatorDotSize` | Indicator Dot Size | `Int` | 10 |  |
| `IndicatorDotGap` | Indicator Dot Gap | `Int` | 6 |  |
| `IndicatorOffset` | Indicator Offset | `Int` | 0 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Enabled` | Enabled | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `Changed (Index As Int)`

## 6. Public Methods & APIs
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

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyCarousel` is a touch-swipeable image and card carousel.

```vb
Dim carousel As B4XDaisyCarousel
carousel.Initialize(Me, "carousel")
carousel.Rounded = "rounded-box"
carousel.Width = "w-full"
carousel.Height = "h-[260px]"
carousel.AddToParent(pnlHost, x, y, maxW, 260dip)

' Add items:
Dim itm1 As B4XDaisyCarouselItem
itm1.Initialize(Me, "itm1")
itm1.Image = "photo1.webp"
carousel.AddItem(itm1)

Dim itm2 As B4XDaisyCarouselItem
itm2.Initialize(Me, "itm2")
itm2.Image = "photo2.webp"
carousel.AddItem(itm2)

y = y + 260dip + gap
```
