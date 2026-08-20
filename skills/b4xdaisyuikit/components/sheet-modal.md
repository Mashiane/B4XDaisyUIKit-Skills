# sheet-modal (`B4XDaisySheetModal`)

Swipeable bottom/top sheet with drag handle, breakpoints, nested scroll, and backdrop.

## 1. Overview
- **Class**: `B4XDaisySheetModal`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySheetModal.bas`
- **Web DaisyUI Mapping**: `.sheet-modal` → `B4XDaisySheetModal`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sh As B4XDaisySheetModal
sh.Initialize(Me, "sh")
sh.AddToParent(Root, 0, 0, Root.Width, Root.Height)
sh.InitialBreakpoint = 0.5
sh.Breakpoints = "0|0.25|0.5|1"
sh.BackdropBreakpoint = 0.5
sh.BackdropDismiss = True
sh.Handle = True
sh.HandleBehavior = "cycle"

' Add content into the scrollable body
Dim bodyTxt As B4XDaisyText
bodyTxt.Initialize(Me, "bodyTxt")
bodyTxt.Text = "Sheet content here"
sh.AddContentView(bodyTxt.getView, 16dip, 0, pnlHost.Width - 32dip, 60dip)

Wait For (sh.Present) sh_DidDismiss(Role As String, Data As Object)

```

## 3. Native Composition Rules & Gotchas
- Draggable bottom sheet modal with custom height percentage and content slot.
- Display using `Wait For (sheet.Show) sheet_DidPresent` or `ShowAsync`.
- Configure `HeightPercent` (e.g. 50 for half-screen, 90 for full-screen).
- Mount custom form or details content into `sheet.GetContentPanel`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| IsOpen | Is Open | Boolean | False |  |
| CanDismiss | Can Dismiss | Boolean | True |  |
| BackdropDismiss | Backdrop Dismiss | Boolean | True |  |
| Animated | Animated | Boolean | True |  |
| Duration | Duration | Int | 300 |  |
| ScaleBackground | Scale Background | Boolean | False |  |
| BackgroundScale | Background Scale | Float | 0.94 |  |
| BackgroundCornerRadius | Background Corner Radius | Int | 18 |  |
| BackgroundTranslateY | Background Translate Y | Int | 12 |  |
| BackgroundDim | Background Dim | Float | 0.08 |  |
| BackgroundShadow | Background Shadow | Boolean | False |  |
| BackgroundColor | Background Color | Color | 0xFFFFFFFF |  |
| Rounded | Rounded | String | box | none|sm|md|lg|xl|2xl|3xl|full|box |
| Breakpoints | Breakpoints | String | 0 |  |
| InitialBreakpoint | Initial Breakpoint | Float | 0.5 |  |
| BackdropBreakpoint | Backdrop Breakpoint | Float | 0.0 |  |
| Handle | Show Handle | Boolean | True |  |
| HandleBehavior | Handle Behavior | String | none | none|cycle |
| BackdropOpacity | Backdrop Opacity | Int | 40 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| BorderWidth | Border Width | Int | 0 |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-[400px] |  |
| AutoHeight | Auto Height | Boolean | True |  |
| ExpandToScroll | Expand To Scroll | Boolean | True |  |
| ScrollBehavior | Scroll Behavior | String | auto | auto|drag|scroll |
| NestedScrollEnabled | Nested Scroll Enabled | Boolean | True |  |

## 5. Declared Events
- `WillPresent`
- `DidPresent`
- `WillDismiss`
- `DidDismiss (Role As String, Data As Object)`
- `DragStart`
- `DragMove (Data As Map)`
- `DragEnd (Data As Map)`
- `BreakpointDidChange (Breakpoint As Float)`

## 6. Public Methods & APIs
- `AddBoxView(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddContentView(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `Dismiss(oData As Object, sRole As String) As ResumableSub`
- `getAnimated As Boolean`
- `getAnimationTime As Int`
- `getAutoHeight As Boolean`
- `getBackdropBreakpoint As Float`
- `getBackdropDismiss As Boolean`
- `getBackdropOpacity As Int`
- `getBackgroundColor As Int`
- `getBackgroundCornerRadius As Int`
- `getBackgroundDim As Float`
- `getBackgroundScale As Float`
- `getBackgroundShadow As Boolean`
- `getBackgroundTranslateY As Int`
- `getBorderColor As Int`
- `getBorderWidth As Int`
- `getBreakpoints As String`
- `getCanDismiss As Boolean`
- `GetComputedHeight As Int`
- `getContentBox As B4XView`
- `getContentView As B4XView`
- `getCornerRadius As Int`
- `getCurrentBreakpoint As Float`
- `getDuration As Int`
- `getExpandToScroll As Boolean`
- `getHandle As Boolean`
- `getHandleBehavior As String`
- `getHeight As String`
- `getInitialBreakpoint As Float`
- `getIsOpen As Boolean`
- `getNestedScrollEnabled As Boolean`
- `getPresentingView As B4XView`
- `getRounded As String`
- `getScaleBackground As Boolean`
- `getScrollBehavior As String`
- `getScrollOffset As Int`
- `getScrollPanel As B4XView`
- `getScrollView As B4XView`
- `getTag As Object`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Present As ResumableSub`
- `Refresh`
- `ScrollToTop`
- `setAnimated(bValue As Boolean)`
- `setAnimationTime(iValue As Int)`
- `setAutoHeight(bValue As Boolean)`
- `setBackdropBreakpoint(fValue As Float)`
- `setBackdropDismiss(bValue As Boolean)`
- `setBackdropOpacity(iValue As Int)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundCornerRadius(iValue As Int)`
- `setBackgroundDim(fValue As Float)`
- `setBackgroundScale(fValue As Float)`
- `setBackgroundShadow(bValue As Boolean)`
- `setBackgroundTranslateY(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderWidth(iValue As Int)`
- `setBreakpoints(sValue As String)`
- `setCanDismiss(bValue As Boolean)`
- `setCurrentBreakpoint(fBreakpoint As Float)`
- `setDuration(iValue As Int)`
- `setExpandToScroll(bValue As Boolean)`
- `setHandle(bValue As Boolean)`
- `setHandleBehavior(sValue As String)`
- `setHeight(sValue As String)`
- `setInitialBreakpoint(fValue As Float)`
- `setIsOpen(bValue As Boolean)`
- `setNestedScrollEnabled(bValue As Boolean)`
- `setPresentingView(vTargetView As B4XView)`
- `setRounded(sValue As String)`
- `setScaleBackground(bValue As Boolean)`
- `setScrollBehavior(sValue As String)`
- `setScrollOffset(iValue As Int)`
- `setTag(oValue As Object)`
- `setWidth(sValue As String)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
