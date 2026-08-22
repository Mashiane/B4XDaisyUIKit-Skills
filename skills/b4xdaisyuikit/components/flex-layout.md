# flex-layout (`B4XDaisyFlexLayout`)

DaisyUI `FlexLayout` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFlexLayout`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyFlexLayout.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.flex-layout` → `B4XDaisyFlexLayout`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyFlexLayout
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `ClearAllItemMeta`
- `ClearItemBasisPercent(vView As B4XView)`
- `ClearItemMeta(vView As B4XView)`
- `GetContentHeight As Int`
- `GetContentWidth As Int`
- `Initialize(vContainer As B4XView)`
- `Relayout`
- `SetContainer(vContainer As B4XView)`
- `SetGap(iX As Int, iY As Int)`
- `SetItemAlignSelf(vView As B4XView, sAlignSelf As String)`
- `SetItemBasis(vView As B4XView, iBasisW As Int, iBasisH As Int)`
- `SetItemBasisPercent(vView As B4XView, fPercentMain As Float, fPercentCross As Float)`
- `SetItemFlexEx(vView As B4XView, fGrow As Float, fShrink As Float, iMinW As Int, iMaxW As Int, iMinH As Int, iMaxH As Int)`
- `SetItemMargins(vView As B4XView, iLeft As Int, iTop As Int, iRight As Int, iBottom As Int)`
- `SetItemOrder(vView As B4XView, iOrderValue As Int)`
- `SetItemWrapBefore(vView As B4XView, bValue As Boolean)`
- `SetPadding(iAll As Int)`
- `SetPaddingLTRB(iLeft As Int, iTop As Int, iRight As Int, iBottom As Int)`

## 7. Public Fields
- `xui As XUI`

