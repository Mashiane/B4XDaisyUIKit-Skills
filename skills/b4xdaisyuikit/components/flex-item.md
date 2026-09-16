# flex-item (`B4XDaisyFlexItem`)

DaisyUI `FlexItem` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFlexItem`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyFlexItem.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyFlexItem.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.flex-item` → `B4XDaisyFlexItem`

## 2. Verified B4X Syntax & Recipe
```b4x
' Flex item styling and growth helper
Dim fi As B4XDaisyFlexItem
fi.Initialize(Me, "fi")
fi.Grow = 1.0
fi.Shrink = 1.0
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
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Owner As B4XDaisyFlexPanel, View As B4XView)`
- `Reset As B4XDaisyFlexItem`
- `Grow(Value As Float) As B4XDaisyFlexItem`
- `Shrink(Value As Float) As B4XDaisyFlexItem`
- `Flex(GrowValue As Float, ShrinkValue As Float) As B4XDaisyFlexItem`
- `Flex1 As B4XDaisyFlexItem`
- `FlexAuto As B4XDaisyFlexItem`
- `FlexInitial As B4XDaisyFlexItem`
- `FlexNone As B4XDaisyFlexItem`
- `MinW(Value As Int) As B4XDaisyFlexItem`
- `MaxW(Value As Int) As B4XDaisyFlexItem`
- `MinH(Value As Int) As B4XDaisyFlexItem`
- `MaxH(Value As Int) As B4XDaisyFlexItem`
- `MinSize(W As Int, H As Int) As B4XDaisyFlexItem`
- `MaxSize(W As Int, H As Int) As B4XDaisyFlexItem`
- `Basis(W As Int, H As Int) As B4XDaisyFlexItem`
- `BasisPercent(MainPct As Float, CrossPct As Float) As B4XDaisyFlexItem`
- `Margins(Left As Int, Top As Int, Right As Int, Bottom As Int) As B4XDaisyFlexItem`
- `MarginAll(Value As Int) As B4XDaisyFlexItem`
- `MarginX(Value As Int) As B4XDaisyFlexItem`
- `MarginY(Value As Int) As B4XDaisyFlexItem`
- `AlignSelf(Value As String) As B4XDaisyFlexItem`
- `Order(Value As Int) As B4XDaisyFlexItem`
- `WrapBefore(Value As Boolean) As B4XDaisyFlexItem`
- `Apply As B4XDaisyFlexItem`
- `ApplyNoRelayout As B4XDaisyFlexItem`
- `ApplyEx(DoRelayout As Boolean) As B4XDaisyFlexItem`
- `View As B4XView`

## 7. Public Fields
(none declared in packaged source)

