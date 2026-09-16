# app (`B4XDaisyApp`)

DaisyUI `App` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyApp`
- **Lifecycle Type**: `StaticCode (Global Helper / Configuration)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyApp.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyApp.bas)
- **Verified Demo Source**: B4XPageBoomMenu.bas, B4XPageButton.bas, B4XPageCard.bas, B4XPageColorWheel.bas, B4XPageDashboard.bas, B4XPageDivider.bas, B4XPageDock.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageHover3d.bas, B4XPageMediaPicker.bas, B4XPagePDFView.bas, B4XPagePagination.bas, B4XPageProgress.bas, B4XPageRange.bas, B4XPageSelect.bas
- **Web DaisyUI Mapping**: `.app` → `B4XDaisyApp`

## 2. Verified B4X Syntax & Recipe
```b4x
' Configure global debug logging (typically set in B4XMainPage.B4XPage_Created)
B4XDaisyApp.DebugLogs = False

' Manage memory and SVG cache
B4XDaisyApp.ClearSvgTextCache

' Retrieve cached SVG text or bitmap
Dim sSvg As String = B4XDaisyApp.GetCachedSvgText("icons/arrow.svg", "")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. `B4XDaisyApp` is a standard B4X static code module (`StaticCode`). It does not require instantiation or attachment to a view container.
2. Call its public methods directly from anywhere in your project: `B4XDaisyApp.<MethodName>`.

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

