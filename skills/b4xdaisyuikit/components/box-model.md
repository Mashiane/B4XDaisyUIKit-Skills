# box-model (`B4XDaisyBoxModel`)

DaisyUI `BoxModel` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyBoxModel`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyBoxModel.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.box-model` → `B4XDaisyBoxModel`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyBoxModel
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `ApplyMarginUtilities(mModel As Map, sUtilities As String, bIsRtl As Boolean)`
- `ApplyMarginUtility(mModel As Map, sUtility As String, bIsRtl As Boolean) As Boolean`
- `ApplyPaddingUtilities(mModel As Map, sUtilities As String, bIsRtl As Boolean)`
- `ApplyPaddingUtility(mModel As Map, sUtility As String, bIsRtl As Boolean) As Boolean`
- `ApplyRadiusUtilities(mModel As Map, sUtilities As String, bIsRtl As Boolean)`
- `ApplyRadiusUtility(mModel As Map, sUtility As String, bIsRtl As Boolean) As Boolean`
- `CreateDefaultModel As Map`
- `ExpandContentHeight(fContentHeight As Float, mModel As Map) As Float`
- `ExpandContentWidth(fContentWidth As Float, mModel As Map) As Float`
- `GetCornerRadius(mModel As Map, sCorner As String, fFallback As Float) As Float`
- `GetDefaultSpacingScale As Map`
- `ResolveBorderRect(rcOuterRect As B4XRect, mModel As Map) As B4XRect`
- `ResolveContentRect(rcBorderRect As B4XRect, mModel As Map) As B4XRect`
- `ResolveLength(oValue As Object, fParentSize As Float, fDefaultDip As Float) As Float`
- `ResolveOuterRect(rcHostRect As B4XRect, mModel As Map) As B4XRect`
- `ResolvePaddingRect(rcBorderRect As B4XRect, mModel As Map) As B4XRect`
- `TailwindSpacingToDip(oValue As Object, fDefaultDip As Float) As Float`
- `ToLocalRect(rcAbsoluteRect As B4XRect, rcOriginRect As B4XRect) As B4XRect`

## 7. Public Fields
- `mBase As B4XView`

