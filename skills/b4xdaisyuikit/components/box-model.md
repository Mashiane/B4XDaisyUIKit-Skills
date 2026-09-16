# box-model (`B4XDaisyBoxModel`)

DaisyUI `BoxModel` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyBoxModel`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyBoxModel.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyBoxModel.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.box-model` → `B4XDaisyBoxModel`

## 2. Verified B4X Syntax & Recipe
```b4x
' CSS Box Model spacing and sizing helpers (StaticCode module)
Dim spacingPx As Float = B4XDaisyBoxModel.GetSpacingScalePx("4")
Dim normalizedSpacing As String = B4XDaisyBoxModel.NormalizeSpacing("p-4")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyBoxModel` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyBoxModel` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `GetDefaultSpacingScale As Map`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `CreateDefaultModel As Map`
- `ResolveLength(Value As Object, ParentSize As Float, DefaultDip As Float) As Float`
- `ApplyPaddingUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyPaddingUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyMarginUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyMarginUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `ApplyRadiusUtility(Model As Map, Utility As String, IsRtl As Boolean) As Boolean`
- `ApplyRadiusUtilities(Model As Map, Utilities As String, IsRtl As Boolean)`
- `GetCornerRadius(Model As Map, Corner As String, Fallback As Float) As Float`
- `ResolveOuterRect(rcHostRect As B4XRect, Model As Map) As B4XRect`
- `ResolveBorderRect(rcOuterRect As B4XRect, Model As Map) As B4XRect`
- `ResolvePaddingRect(rcBorderRect As B4XRect, Model As Map) As B4XRect`
- `ResolveContentRect(rcBorderRect As B4XRect, Model As Map) As B4XRect`
- `ExpandContentWidth(ContentWidth As Float, Model As Map) As Float`
- `ExpandContentHeight(ContentHeight As Float, Model As Map) As Float`
- `ToLocalRect(rcAbsoluteRect As B4XRect, rcOriginRect As B4XRect) As B4XRect`

## 7. Public Fields
(none declared in packaged source)

