# flex-layout (`B4XDaisyFlexLayout`)

DaisyUI `FlexLayout` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFlexLayout`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyFlexLayout.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyFlexLayout.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.flex-layout` → `B4XDaisyFlexLayout`

## 2. Verified B4X Syntax & Recipe
```b4x
' Initialize flex layout engine targeting a host container panel
Dim flex As B4XDaisyFlexLayout
flex.Initialize(pnlHost)
flex.SetPadding(12dip)
flex.SetGap(8dip, 8dip)

' Configure child flex items
flex.SetItemFlexEx(childView1, 1.0, 1.0, 50dip, 200dip, 30dip, 60dip)
flex.SetItemFlexEx(childView2, 2.0, 1.0, 50dip, 200dip, 30dip, 60dip)

' Perform layout calculation
flex.Relayout
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyFlexLayout` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyFlexLayout` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Container As B4XView)`
- `SetContainer(Container As B4XView)`
- `SetPadding(All As Int)`
- `SetPaddingLTRB(Left As Int, Top As Int, Right As Int, Bottom As Int)`
- `SetGap(X As Int, Y As Int)`
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
- `Relayout`
- `GetContentWidth As Int`
- `GetContentHeight As Int`

## 7. Public Fields
(none declared in packaged source)

