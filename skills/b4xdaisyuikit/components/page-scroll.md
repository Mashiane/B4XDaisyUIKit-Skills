# page-scroll (`B4XDaisyPageScroll`)

The canonical scrolling viewport container for all B4XDaisyUIKit pages, providing padding metrics, Y-gap spacing, and auto-fit calculation.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyPageScroll`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPageScroll.bas`
- **Verified Demos**: `B4XPageActionSheet.bas, B4XPageAura.bas, B4XPageBoomMenu.bas, B4XPageCanvasSpinner.bas, B4XPageColorWheel.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageMediaPicker.bas, B4XPageNavScrollDock.bas, B4XPageOTP.bas, B4XPagePicker.bas, B4XPageProgress.bas, B4XPageScrollDemo.bas, B4XPageSegment.bas, B4XPageSheetModal.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageSweetAlertInputs.bas, B4XPageTagSphere.bas`
- **Web DaisyUI Mapping**: `.page-scroll` → `B4XDaisyPageScroll`

## 2. Verified B4X Syntax & Recipe
```b4x
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private pnl As B4XView
    Private pad As Int
    Private gap As Int
    Private maxW As Int
    Private y As Int
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnl = pageScroll.Panel
    
    RenderPage(Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    RenderPage(Width, Height)
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear                         ' always first

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    ' ... stack components using y = y + comp.GetComputedHeight + gap ...

    pageScroll.AutoFit                       ' always last
End Sub

```

## 3. Native Composition Rules & Gotchas
- **Mandatory Layout Host**: Every scrollable B4XPage must mount views onto `pageScroll.Panel`.
- Always call `pageScroll.Clear` first inside `RenderPage(W, H)` before adding views.
- Read standard metrics: `pad = pageScroll.PagePadding`, `gap = pageScroll.YGap`, `maxW = pageScroll.UsableWidth`.
- Advance vertical cursor with `y = y + comp.GetComputedHeight + gap`.
- Always call `pageScroll.AutoFit` last inside `RenderPage` to stretch scroll height to fit all content.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| PagePadding | Page Padding | Int | 12 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| BackgroundVariant | Background Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| RootColor | Root Color | Color | 0x00000000 |  |
| Transparent | Transparent | Boolean | False |  |
| AutoFitHeight | Auto Fit Height | Boolean | True |  |
| YGap | Y Gap | Int | 12 |  |
| ScrollEnabled | Scroll Enabled | Boolean | True |  |

## 5. Declared Events
- `ScrollStart`
- `Scrolling (Position As Int)`
- `ScrollEnd`

## 6. Public Methods & APIs
- `AddDivider(Y As Int) As Int`
- `AddSectionTitle(Text As String, Y As Int, Center As Boolean) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AutoFit`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `ScrollToBottom(Animated As Boolean)`
- `ScrollToPosition(Position As Int, Animated As Boolean)`
- `ScrollToTop(Animated As Boolean)`
- `ScrollToView(View As B4XView, Animated As Boolean)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getAutoFitHeight As Boolean`
- `getBackgroundColor As Int`
- `getBackgroundVariant As String`
- `getHeight As Int`
- `getLeft As Int`
- `getMaxScrollPosition As Int`
- `getPagePadding As Int`
- `getPanel As B4XView`
- `getRootColor As Int`
- `getScrollEnabled As Boolean`
- `getScrollPosition As Int`
- `getScrollView As ScrollView`
- `getTag As Object`
- `getTop As Int`
- `getTransparent As Boolean`
- `getUsableWidth As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `getYGap As Int`
- `setAutoFitHeight(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundVariant(Value As String)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setPagePadding(Value As Int)`
- `setRootColor(Value As Int)`
- `setScrollEnabled(Value As Boolean)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setTransparent(Value As Boolean)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`
- `setYGap(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
