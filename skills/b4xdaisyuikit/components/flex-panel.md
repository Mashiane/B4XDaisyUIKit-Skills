# flex-panel (`B4XDaisyFlexPanel`)

DaisyUI `FlexPanel` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFlexPanel`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyFlexPanel.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.flex-panel` → `B4XDaisyFlexPanel`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyFlexPanel
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyFlexPanel` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyFlexPanel` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Direction` | Direction | `String` | `row` | row|row-reverse|column|column-reverse |
| `WrapMode` | Wrap Mode | `String` | `wrap` | nowrap|wrap|wrap-reverse |
| `GapX` | Gap X | `Int` | `8` |  |
| `GapY` | Gap Y | `Int` | `8` |  |
| `PaddingLeft` | Padding Left | `Int` | `8` |  |
| `PaddingTop` | Padding Top | `Int` | `8` |  |
| `PaddingRight` | Padding Right | `Int` | `8` |  |
| `PaddingBottom` | Padding Bottom | `Int` | `8` |  |
| `JustifyContent` | Justify Content | `String` | `start` | start|center|end|space-between|space-around|space-evenly|flex-start|flex-end |
| `AlignItems` | Align Items | `String` | `start` | start|center|end|stretch|baseline|flex-start|flex-end |
| `AlignContent` | Align Content | `String` | `start` | start|center|end|stretch|space-between|space-around|space-evenly|flex-start|flex-end |
| `AnimateDuration` | Animate Duration (ms) | `Int` | `0` |  |
| `AllowShrinkWhenWrap` | Allow Shrink When Wrap | `Boolean` | `False` |  |
| `AutoRelayout` | Auto Relayout | `Boolean` | `True` |  |

## 5. Declared Events
- `Ready`

## 6. Public Methods & APIs
- `AddItem(vView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddItemEx(vView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XDaisyFlexItem`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `BeginUpdate`
- `BringToFront`
- `Clear`
- `ClearAllItemMeta`
- `ClearItemBasisPercent(vView As B4XView)`
- `ClearItemBasisPercent_NoRelayout(vView As B4XView)`
- `ClearItemMeta(vView As B4XView)`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `EndUpdate(bDoRelayout As Boolean)`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `GetItem(iIndex As Int) As B4XView`
- `GetMeasuredHeight As Int`
- `GetMeasuredWidth As Int`
- `InitForCode(oCallback As Object, sEventName As String, vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Initialize`
- `Item(vView As B4XView) As B4XDaisyFlexItem`
- `Relayout`
- `RemoveItem(vView As B4XView)`
- `SendToBack`
- `SetGap(iX As Int, iY As Int)`
- `SetItemAlignSelf(vView As B4XView, sAlignSelf As String)`
- `SetItemAlignSelf_NoRelayout(vView As B4XView, sAlignSelf As String)`
- `SetItemBasis(vView As B4XView, iBasisW As Int, iBasisH As Int)`
- `SetItemBasisPercent(vView As B4XView, fPercentMain As Float, fPercentCross As Float)`
- `SetItemBasisPercent_NoRelayout(vView As B4XView, fPercentMain As Float, fPercentCross As Float)`
- `SetItemBasis_NoRelayout(vView As B4XView, iBasisW As Int, iBasisH As Int)`
- `SetItemFlexEx(vView As B4XView, fGrow As Float, fShrink As Float, iMinW As Int, iMaxW As Int, iMinH As Int, iMaxH As Int)`
- `SetItemFlexEx_NoRelayout(vView As B4XView, fGrow As Float, fShrink As Float, iMinW As Int, iMaxW As Int, iMinH As Int, iMaxH As Int)`
- `SetItemMargins(vView As B4XView, iLeft As Int, iTop As Int, iRight As Int, iBottom As Int)`
- `SetItemMargins_NoRelayout(vView As B4XView, iLeft As Int, iTop As Int, iRight As Int, iBottom As Int)`
- `SetItemOrder(vView As B4XView, iOrderValue As Int)`
- `SetItemOrder_NoRelayout(vView As B4XView, iOrderValue As Int)`
- `SetItemWrapBefore(vView As B4XView, bValue As Boolean)`
- `SetItemWrapBefore_NoRelayout(vView As B4XView, bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetPadding(iAll As Int)`
- `SetPaddingLTRB(iLeft As Int, iTop As Int, iRight As Int, iBottom As Int)`
- `View As B4XView`
- `getAlignContent As String`
- `getAlignItems As String`
- `getAllowShrinkWhenWrap As Boolean`
- `getAnimateDuration As Int`
- `getAutoRelayout As Boolean`
- `getDirection As String`
- `getGapX As Int`
- `getGapY As Int`
- `getHeight As Int`
- `getIsInitialized As Boolean`
- `getJustifyContent As String`
- `getLeft As Int`
- `getNumberOfItems As Int`
- `getPaddingBottom As Int`
- `getPaddingLeft As Int`
- `getPaddingRight As Int`
- `getPaddingTop As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `getWrapMode As String`
- `setAlignContent(sValue As String)`
- `setAlignItems(sValue As String)`
- `setAllowShrinkWhenWrap(bValue As Boolean)`
- `setAnimateDuration(iValue As Int)`
- `setAutoRelayout(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setGapX(iValue As Int)`
- `setGapY(iValue As Int)`
- `setHeight(iValue As Int)`
- `setJustifyContent(sValue As String)`
- `setLeft(iValue As Int)`
- `setPaddingBottom(iValue As Int)`
- `setPaddingLeft(iValue As Int)`
- `setPaddingRight(iValue As Int)`
- `setPaddingTop(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `setWrapMode(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

