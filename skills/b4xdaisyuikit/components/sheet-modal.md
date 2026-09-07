# sheet-modal (`B4XDaisySheetModal`)

DaisyUI `SheetModal` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySheetModal`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySheetModal.bas`
- **Verified Demo Source**: B4XPageColorWheel.bas, B4XPagePicker.bas, B4XPageSheetModal.bas
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
| `IsOpen` | Is Open | `Boolean` | False |  |
| `CanDismiss` | Can Dismiss | `Boolean` | True |  |
| `BackdropDismiss` | Backdrop Dismiss | `Boolean` | True |  |
| `Animated` | Animated | `Boolean` | True |  |
| `Duration` | Duration | `Int` | 300, MinRange: 0, MaxRange: 3000 |  |
| `ScaleBackground` | Scale Background | `Boolean` | False |  |
| `BackgroundScale` | Background Scale | `Float` | 0.94 |  |
| `BackgroundCornerRadius` | Background Corner Radius | `Int` | 18, MinRange: 0, MaxRange: 64 |  |
| `BackgroundTranslateY` | Background Translate Y | `Int` | 12, MinRange: 0, MaxRange: 200 |  |
| `BackgroundDim` | Background Dim | `Float` | 0.08 |  |
| `BackgroundShadow` | Background Shadow | `Boolean` | False |  |
| `BackgroundColor` | Background Color | `Color` | 0xFFFFFFFF |  |
| `Rounded` | Rounded | `String` | box | none|sm|md|lg|xl|2xl|3xl|full|box |
| `Breakpoints` | Breakpoints | `String` | 0,0.5,1.0 |  |
| `InitialBreakpoint` | Initial Breakpoint | `Float` | 0.5 |  |
| `BackdropBreakpoint` | Backdrop Breakpoint | `Float` | 0.0 |  |
| `Handle` | Show Handle | `Boolean` | True |  |
| `HandleBehavior` | Handle Behavior | `String` | none | none|cycle |
| `BackdropOpacity` | Backdrop Opacity | `Int` | 40, MinRange: 0, MaxRange: 100 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BorderWidth` | Border Width | `Int` | 0 |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-[400px] |  |
| `AutoHeight` | Auto Height | `Boolean` | True |  |
| `ExpandToScroll` | Expand To Scroll | `Boolean` | True |  |
| `ScrollBehavior` | Scroll Behavior | `String` | auto | auto|drag|scroll |
| `NestedScrollEnabled` | Nested Scroll Enabled | `Boolean` | True |  |

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

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisySheetModal` provides a draggable bottom sheet container.

```vb
Dim sheet As B4XDaisySheetModal
sheet.Initialize(Me, "sheet")
sheet.AddToParent(Root, 0, 0, Root.Width, Root.Height)
sheet.Title = "Bottom Sheet"

' Mount custom views onto GetContentPanel:
Dim pnlSheet As B4XView = sheet.GetContentPanel
Dim txtSheet As B4XDaisyText
txtSheet.Initialize(Me, "")
txtSheet.AddToParent(pnlSheet, 16dip, 10dip, pnlSheet.Width - 32dip, 40dip)
txtSheet.Text = "Custom bottom sheet content."

sheet.Show
```
