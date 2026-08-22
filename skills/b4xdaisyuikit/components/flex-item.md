# flex-item (`B4XDaisyFlexItem`)

DaisyUI `FlexItem` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFlexItem`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyFlexItem.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.flex-item` → `B4XDaisyFlexItem`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyFlexItem
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyFlexItem` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyFlexItem` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AlignSelf(sValue As String) As B4XDaisyFlexItem`
- `Apply As B4XDaisyFlexItem`
- `ApplyEx(bDoRelayout As Boolean) As B4XDaisyFlexItem`
- `ApplyNoRelayout As B4XDaisyFlexItem`
- `Basis(iW As Int, iH As Int) As B4XDaisyFlexItem`
- `BasisPercent(fMainPct As Float, fCrossPct As Float) As B4XDaisyFlexItem`
- `Flex(fGrowValue As Float, fShrinkValue As Float) As B4XDaisyFlexItem`
- `Flex1 As B4XDaisyFlexItem`
- `FlexAuto As B4XDaisyFlexItem`
- `FlexInitial As B4XDaisyFlexItem`
- `FlexNone As B4XDaisyFlexItem`
- `Grow(fValue As Float) As B4XDaisyFlexItem`
- `Initialize(Owner As B4XDaisyFlexPanel, vView As B4XView)`
- `MarginAll(iValue As Int) As B4XDaisyFlexItem`
- `MarginX(iValue As Int) As B4XDaisyFlexItem`
- `MarginY(iValue As Int) As B4XDaisyFlexItem`
- `Margins(iLeft As Int, iTop As Int, iRight As Int, iBottom As Int) As B4XDaisyFlexItem`
- `MaxH(iValue As Int) As B4XDaisyFlexItem`
- `MaxSize(iW As Int, iH As Int) As B4XDaisyFlexItem`
- `MaxW(iValue As Int) As B4XDaisyFlexItem`
- `MinH(iValue As Int) As B4XDaisyFlexItem`
- `MinSize(iW As Int, iH As Int) As B4XDaisyFlexItem`
- `MinW(iValue As Int) As B4XDaisyFlexItem`
- `Order(iValue As Int) As B4XDaisyFlexItem`
- `Reset As B4XDaisyFlexItem`
- `Shrink(fValue As Float) As B4XDaisyFlexItem`
- `View As B4XView`
- `WrapBefore(bValue As Boolean) As B4XDaisyFlexItem`

## 7. Public Fields
- `mBase As B4XView`

