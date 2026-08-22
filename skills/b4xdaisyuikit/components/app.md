# app (`B4XDaisyApp`)

DaisyUI `App` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyApp`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyApp.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.app` → `B4XDaisyApp`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyApp
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyApp` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyApp` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `ClearSvgTextCache`
- `GetCachedSvgBitmap(sKey As String) As B4XBitmap`
- `GetCachedSvgText(sPath As String, sDefaultText As String) As String`
- `PutCachedSvgBitmap(sKey As String, bmpBmp As B4XBitmap)`

## 7. Public Fields
- `mBase As B4XView`

