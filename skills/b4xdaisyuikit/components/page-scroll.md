# page-scroll (`B4XDaisyPageScroll`)

DaisyUI `PageScroll` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPageScroll`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyPageScroll.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyPageScroll.bas)
- **Verified Demo Source**: B4XPageActionSheet.bas, B4XPageAura.bas, B4XPageBoomMenu.bas, B4XPageCanvasSpinner.bas, B4XPageColorWheel.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDualRange.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageInput.bas, B4XPageMediaPicker.bas, B4XPageNativeDialogs.bas, B4XPageNavScrollDock.bas, B4XPageOTP.bas, B4XPagePicker.bas, B4XPageProgress.bas, B4XPageScrollDemo.bas, B4XPageSegment.bas, B4XPageSheetModal.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageSweetAlertInputs.bas, B4XPageTagSphere.bas
- **Web DaisyUI Mapping**: `.page-scroll` → `B4XDaisyPageScroll`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created(Root1 As B4XView)
        Root = Root1

        Dim pageScroll As B4XDaisyPageScroll
        pageScroll.Initialize(Me, "pageScroll")
        pageScroll.PagePadding = PAGE_PAD
        pageScroll.YGap = ROW_GAP
        pageScroll.AutoFitHeight = True
        pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
        pnlContent = pageScroll.Panel

        Samples.Initialize
    End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyPageScroll` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getPanel, getScrollView, ScrollToPosition` (+ 25 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `PagePadding` | Page Padding | `Int` | 12 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `BackgroundVariant` | Background Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `RootColor` | Root Color | `Color` | 0x00000000 |  |
| `Transparent` | Transparent | `Boolean` | False |  |
| `AutoFitHeight` | Auto Fit Height | `Boolean` | True |  |
| `YGap` | Y Gap | `Int` | 12 |  |
| `ScrollEnabled` | Scroll Enabled | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
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

## 7. Public Fields
- `mBase As B4XView`

