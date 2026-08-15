# sheet-modal (`B4XDaisySheetModal`)

Swipeable bottom/top sheet with drag handle, breakpoints, nested scroll, and backdrop.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySheetModal`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySheetModal.bas`
- **Verified Demos**: `B4XPageColorWheel.bas, B4XPagePicker.bas, B4XPageSheetModal.bas`
- **Web DaisyUI Mapping**: `.sheet-modal` → `B4XDaisySheetModal`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sh As B4XDaisySheetModal
sh.Initialize(Me, "sh")
sh.AddToParent(Activity.RootPanel, 0, 0, Activity.RootPanel.Width, Activity.RootPanel.Height)
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
- `AddBoxView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddContentView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Dismiss(Data As Object, Role As String) As ResumableSub`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Present As ResumableSub`
- `Refresh`
- `ScrollToTop`
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
- `getView As B4XView`
- `getWidth As String`
- `setAnimated(Value As Boolean)`
- `setAnimationTime(Value As Int)`
- `setAutoHeight(Value As Boolean)`
- `setBackdropBreakpoint(Value As Float)`
- `setBackdropDismiss(Value As Boolean)`
- `setBackdropOpacity(Value As Int)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundCornerRadius(Value As Int)`
- `setBackgroundDim(Value As Float)`
- `setBackgroundScale(Value As Float)`
- `setBackgroundShadow(Value As Boolean)`
- `setBackgroundTranslateY(Value As Int)`
- `setBorderColor(Value As Int)`
- `setBorderWidth(Value As Int)`
- `setBreakpoints(Value As String)`
- `setCanDismiss(Value As Boolean)`
- `setCurrentBreakpoint(Breakpoint As Float)`
- `setDuration(Value As Int)`
- `setExpandToScroll(Value As Boolean)`
- `setHandle(Value As Boolean)`
- `setHandleBehavior(Value As String)`
- `setHeight(Value As String)`
- `setInitialBreakpoint(Value As Float)`
- `setIsOpen(Value As Boolean)`
- `setNestedScrollEnabled(Value As Boolean)`
- `setPresentingView(View As B4XView)`
- `setRounded(Value As String)`
- `setScaleBackground(Value As Boolean)`
- `setScrollBehavior(Value As String)`
- `setScrollOffset(Value As Int)`
- `setTag(Value As Object)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
