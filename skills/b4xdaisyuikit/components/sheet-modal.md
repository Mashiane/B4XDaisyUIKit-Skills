# sheet-modal (`B4XDaisySheetModal`)

DaisyUI `SheetModal` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySheetModal`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySheetModal.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas (lines 30–30), B4XPagePicker.bas (lines 40–40), B4XPageSheetModal.bas (lines 27–32)
- **Web DaisyUI Mapping**: `.sheet-modal` → `B4XDaisySheetModal`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub BuildSheetModals
	' 1. Online Modal
	smOnline.Initialize(Me, "smOnline")
	smOnline.AddToParent(Root, 0, 0, Root.Width, Root.Height)
	smOnline.Breakpoints = "0.0,1.0"
	smOnline.InitialBreakpoint = 1.0
	smOnline.Handle = False
	smOnline.HandleBehavior = "none"
	smOnline.BackdropOpacity = 40
	smOnline.Rounded = "lg"
	smOnline.AutoHeight = False
	smOnline.Height = "h-full"
	smOnline.Animated = True
	smOnline.AnimationTime = 600

	Dim nb As B4XDaisyNavbar
	nb.Initialize(Me, "nbOnline")
	Dim nbHost As B4XView = xui.CreatePanel("")
	nb.AddToParent(nbHost, 0, 0, Root.Width, 44dip)
	nb.setHeight("h-[44px]")
	nb.Variant = "none"
	nb.BackgroundColor = xui.Color_RGB(247, 247, 247)
	nb.Shadow = "md"

	Dim btnCancel As B4XDaisyButton = nb.AddButtonToStart("smOnlineCancel", "Cancel", "none", 80dip, 32dip, True)
	nb.AddTitleToCenter("Welcome")
	Dim btnConfirm As B4XDaisyButton = nb.AddButtonToEnd("smOnlineConfirm", "Confirm", "primary", 80dip, 32dip, True)

	smOnline.AddBoxView(nb.View, 0, 0, Root.Width, 44dip)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySheetModal` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Deviation Mechanism
- Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getScrollPanel, getScrollView, getContentBox` (+ 52 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `IsOpen` | Is Open | `Boolean` | `False` |  |
| `CanDismiss` | Can Dismiss | `Boolean` | `True` |  |
| `BackdropDismiss` | Backdrop Dismiss | `Boolean` | `True` |  |
| `Animated` | Animated | `Boolean` | `True` |  |
| `Duration` | Duration | `Int` | `300` |  |
| `ScaleBackground` | Scale Background | `Boolean` | `False` |  |
| `BackgroundScale` | Background Scale | `Float` | `0.94` |  |
| `BackgroundCornerRadius` | Background Corner Radius | `Int` | `18` |  |
| `BackgroundTranslateY` | Background Translate Y | `Int` | `12` |  |
| `BackgroundDim` | Background Dim | `Float` | `0.08` |  |
| `BackgroundShadow` | Background Shadow | `Boolean` | `False` |  |
| `BackgroundColor` | Background Color | `Color` | `0xFFFFFFFF` |  |
| `Rounded` | Rounded | `String` | `box` | none|sm|md|lg|xl|2xl|3xl|full|box |
| `Breakpoints` | Breakpoints | `String` | `` |  |
| `InitialBreakpoint` | Initial Breakpoint | `Float` | `0.5` |  |
| `BackdropBreakpoint` | Backdrop Breakpoint | `Float` | `0.0` |  |
| `Handle` | Show Handle | `Boolean` | `True` |  |
| `HandleBehavior` | Handle Behavior | `String` | `none` | none|cycle |
| `BackdropOpacity` | Backdrop Opacity | `Int` | `40` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BorderWidth` | Border Width | `Int` | `0` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-[400px]` |  |
| `AutoHeight` | Auto Height | `Boolean` | `True` |  |
| `ExpandToScroll` | Expand To Scroll | `Boolean` | `True` |  |
| `ScrollBehavior` | Scroll Behavior | `String` | `auto` | auto|drag|scroll |
| `NestedScrollEnabled` | Nested Scroll Enabled | `Boolean` | `True` |  |

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
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Present As ResumableSub`
- `Refresh`
- `ScrollToTop`
- `View As B4XView`
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
- `getWidth As String`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

