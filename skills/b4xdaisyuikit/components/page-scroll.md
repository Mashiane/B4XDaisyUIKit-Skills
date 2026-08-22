# page-scroll (`B4XDaisyPageScroll`)

DaisyUI `PageScroll` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyPageScroll`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyPageScroll.bas`
- **Verified Demo Source**: B4XPageActionSheet.bas (lines 15–15), B4XPageAura.bas (lines 16–16), B4XPageBoomMenu.bas (lines 13–13), B4XPageCanvasSpinner.bas (lines 12–12), B4XPageColorWheel.bas (lines 12–12), B4XPageDrawer.bas (lines 20–20), B4XPageDrawerRail.bas (lines 18–18), B4XPageDrawerTree.bas (lines 20–20), B4XPageDualRange.bas (lines 15–15), B4XPageEasing.bas (lines 17–17), B4XPageEnjoyHint.bas (lines 15–15), B4XPageFocus.bas (lines 13–13), B4XPageInput.bas (lines 13–31), B4XPageMediaPicker.bas (lines 13–13), B4XPageNativeDialogs.bas (lines 13–13), B4XPageNavScrollDock.bas (lines 40–40), B4XPageOTP.bas (lines 19–19), B4XPagePicker.bas (lines 15–15), B4XPageProgress.bas (lines 14–14), B4XPageScrollDemo.bas (lines 14–35), B4XPageSegment.bas (lines 15–15), B4XPageSheetModal.bas (lines 15–15), B4XPageShineButton.bas (lines 13–13), B4XPageSignaturePad.bas (lines 12–12), B4XPageSweetAlertInputs.bas (lines 14–14), B4XPageTagSphere.bas (lines 12–12)
- **Web DaisyUI Mapping**: `.page-scroll` → `B4XDaisyPageScroll`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created(Root1 As B4XView)
        Root = Root1

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
| `PagePadding` | Page Padding | `Int` | `12` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `BackgroundVariant` | Background Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `RootColor` | Root Color | `Color` | `0x00000000` |  |
| `Transparent` | Transparent | `Boolean` | `False` |  |
| `AutoFitHeight` | Auto Fit Height | `Boolean` | `True` |  |
| `YGap` | Y Gap | `Int` | `12` |  |
| `ScrollEnabled` | Scroll Enabled | `Boolean` | `True` |  |

## 5. Declared Events
- `ScrollStart`
- `Scrolling (Position As Int)`
- `ScrollEnd`

## 6. Public Methods & APIs
- `AddDivider(iY As Int) As Int`
- `AddSectionTitle(sText As String, iY As Int, bCenter As Boolean) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AutoFit`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Resize(dWidth As Double, dHeight As Double)`
- `ScrollToBottom(bAnimated As Boolean)`
- `ScrollToPosition(iPosition As Int, bAnimated As Boolean)`
- `ScrollToTop(bAnimated As Boolean)`
- `ScrollToView(vTargetView As B4XView, bAnimated As Boolean)`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
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
- `setAutoFitHeight(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundVariant(sValue As String)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setPagePadding(iValue As Int)`
- `setRootColor(iValue As Int)`
- `setScrollEnabled(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setTransparent(bValue As Boolean)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `setYGap(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

