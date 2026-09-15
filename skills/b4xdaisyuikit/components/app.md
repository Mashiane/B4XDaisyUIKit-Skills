# app (`B4XDaisyApp`)

DaisyUI `App` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyApp`
- **Lifecycle Type**: `Demonstrated (per component-manifest.md Support index; recipe extraction pending — see §2)`
- **Library Source**: `B4XDaisyApp.bas`
- **Verified Demo Source**: B4XPageBoomMenu.bas, B4XPageButton.bas, B4XPageCard.bas, B4XPageColorWheel.bas, B4XPageDashboard.bas, B4XPageDivider.bas, B4XPageDock.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageHover3d.bas, B4XPageMediaPicker.bas, B4XPagePDFView.bas, B4XPagePagination.bas, B4XPageProgress.bas, B4XPageRange.bas, B4XPageSelect.bas
- **Web DaisyUI Mapping**: `.app` → `B4XDaisyApp`

## 2. B4X Syntax & Recipe (extraction pending)
```b4x
' Recipe not yet extracted. Adapt usage from the demo pages listed above
' (e.g. B4XPageButton.bas); do not invent members — verify against api-cheat-sheet.md ## B4XDaisyApp.
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyApp` is declared in library source and referenced by the demo pages listed above (per manifest Support index).

### Preconditions & Gotchas
- Demonstrated per manifest, but no extracted recipe in this file yet.
- Verify member calls against api-cheat-sheet.md before production use.

### Discrepancies & API Nuances
- Prior version of this file claimed no demo usage; corrected 2026-09-15 to match manifest Support index (16 referencing demos). Recipe extraction still pending.

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `ClearSvgTextCache`
- `GetCachedSvgBitmap(Key As String) As B4XBitmap`
- `PutCachedSvgBitmap(Key As String, bmpBmp As B4XBitmap)`
- `GetCachedSvgText(Path As String, DefaultText As String) As String`

## 7. Public Fields
(none declared in packaged source)

