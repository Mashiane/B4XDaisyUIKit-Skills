# button-place-manager (`B4XDaisyButtonPlaceManager`)

DaisyUI `ButtonPlaceManager` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyButtonPlaceManager`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyButtonPlaceManager.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.button-place-manager` → `B4XDaisyButtonPlaceManager`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyButtonPlaceManager
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyButtonPlaceManager` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyButtonPlaceManager` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `CalculateCustomPositions(CustomPositions As List, ParentWidth As Float, ParentHeight As Float, _
		HalfW As Float, HalfH As Float, Width As Int, Height As Int) As List`
- `CalculateHamPiecePositions(ParentWidth As Float, ParentHeight As Float, _
		PieceWidth As Int, PieceHeight As Int, VMargin As Int, MaxCount As Int) As List`
- `CalculatePiecePositions(PiecePlace As String, ParentWidth As Float, ParentHeight As Float, _
		PieceSize As Int, HMargin As Int, VMargin As Int, IMargin As Int, MaxCount As Int) As List`
- `CalculatePositions(ButtonPlace As String, ParentWidth As Float, ParentHeight As Float, _
		ButtonSize As Int, HMargin As Int, VMargin As Int, IMargin As Int, EdgeMargin As Int, _
		Alignment As String, MaxCount As Int) As List`
- `CalculateRectPositions(ButtonPlace As String, ParentWidth As Float, ParentHeight As Float, _
		ButtonWidth As Int, ButtonHeight As Int, HMargin As Int, VMargin As Int, _
		EdgeMargin As Int, Alignment As String, MaxCount As Int) As List`
- `Initialize`

## 7. Public Fields
- `xui As XUI`

