# flex-panel (`B4XDaisyFlexPanel`)

DaisyUI `FlexPanel` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFlexPanel`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyFlexPanel.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
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
| `Direction` | Direction | `String` | row | row|row-reverse|column|column-reverse |
| `WrapMode` | Wrap Mode | `String` | wrap | nowrap|wrap|wrap-reverse |
| `GapX` | Gap X | `Int` | 8 |  |
| `GapY` | Gap Y | `Int` | 8 |  |
| `PaddingLeft` | Padding Left | `Int` | 8 |  |
| `PaddingTop` | Padding Top | `Int` | 8 |  |
| `PaddingRight` | Padding Right | `Int` | 8 |  |
| `PaddingBottom` | Padding Bottom | `Int` | 8 |  |
| `JustifyContent` | Justify Content | `String` | start | start|center|end|space-between|space-around|space-evenly|flex-start|flex-end |
| `AlignItems` | Align Items | `String` | start | start|center|end|stretch|baseline|flex-start|flex-end |
| `AlignContent` | Align Content | `String` | start | start|center|end|stretch|space-between|space-around|space-evenly|flex-start|flex-end |
| `AnimateDuration` | Animate Duration (ms) | `Int` | 0 |  |
| `AllowShrinkWhenWrap` | Allow Shrink When Wrap | `Boolean` | False |  |
| `AutoRelayout` | Auto Relayout | `Boolean` | True |  |

## 5. Declared Events
- `Ready`

## 6. Public Methods & APIs
- `Initialize`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `InitForCode(Callback As Object, EventName As String, Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `GetComputedHeight As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `GetContentPanel As B4XView`
- `Relayout`
- `GetMeasuredWidth As Int`
- `GetMeasuredHeight As Int`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
- `setDirection(Value As String)`
- `getDirection As String`
- `setWrapMode(Value As String)`
- `getWrapMode As String`
- `setJustifyContent(Value As String)`
- `getJustifyContent As String`
- `setAlignItems(Value As String)`
- `getAlignItems As String`
- `setAlignContent(Value As String)`
- `getAlignContent As String`
- `setGapX(Value As Int)`
- `getGapX As Int`
- `setGapY(Value As Int)`
- `getGapY As Int`
- `setPaddingLeft(Value As Int)`
- `getPaddingLeft As Int`
- `setPaddingTop(Value As Int)`
- `getPaddingTop As Int`
- `setPaddingRight(Value As Int)`
- `getPaddingRight As Int`
- `setPaddingBottom(Value As Int)`
- `getPaddingBottom As Int`
- `setAnimateDuration(Value As Int)`
- `getAnimateDuration As Int`
- `setAllowShrinkWhenWrap(Value As Boolean)`
- `getAllowShrinkWhenWrap As Boolean`
- `setAutoRelayout(Value As Boolean)`
- `getAutoRelayout As Boolean`
- `AddItem(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddItemEx(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XDaisyFlexItem`
- `Item(View As B4XView) As B4XDaisyFlexItem`
- `RemoveItem(View As B4XView)`
- `Clear`
- `getNumberOfItems As Int`
- `GetItem(Index As Int) As B4XView`
- `SetItemFlexEx(View As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis(View As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent(View As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent(View As B4XView)`
- `SetItemMargins(View As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf(View As B4XView, AlignSelf As String)`
- `SetItemOrder(View As B4XView, OrderValue As Int)`
- `SetItemWrapBefore(View As B4XView, Value As Boolean)`
- `ClearItemMeta(View As B4XView)`
- `ClearAllItemMeta`
- `SetItemFlexEx_NoRelayout(View As B4XView, Grow As Float, Shrink As Float, MinW As Int, MaxW As Int, MinH As Int, MaxH As Int)`
- `SetItemBasis_NoRelayout(View As B4XView, BasisW As Int, BasisH As Int)`
- `SetItemBasisPercent_NoRelayout(View As B4XView, PercentMain As Float, PercentCross As Float)`
- `ClearItemBasisPercent_NoRelayout(View As B4XView)`
- `SetItemMargins_NoRelayout(View As B4XView, Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetItemAlignSelf_NoRelayout(View As B4XView, AlignSelf As String)`
- `SetItemOrder_NoRelayout(View As B4XView, OrderValue As Int)`
- `SetItemWrapBefore_NoRelayout(View As B4XView, Value As Boolean)`
- `BeginUpdate`
- `EndUpdate(DoRelayout As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

