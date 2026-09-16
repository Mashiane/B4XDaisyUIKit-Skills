# countdown-item (`B4XDaisyCountdownItem`)

DaisyUI `CountdownItem` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCountdownItem`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyCountdownItem.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyCountdownItem.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.countdown-item` → `B4XDaisyCountdownItem`

## 2. Verified B4X Syntax & Recipe
```b4x
' Single unit item within a countdown timer
Dim cdItem As B4XDaisyCountdownItem
cdItem.Initialize(Me, "cdItem")
cdItem.AddToParent(pnlHost, 10dip, 10dip, 60dip, 60dip)
cdItem.Value = 42
cdItem.Label = "sec"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCountdownItem` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCountdownItem` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Value` | Value | `Int` | 0 |  |
| `Digits` | Digits | `Int` | 1 |  |
| `Label` | Label | `String` |  |  |
| `LabelPosition` | Label Position | `String` | none | none|bottom|right |
| `TextSize` | Font Size | `String` | md | text-xs|text-sm|md|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Outline` | Outline | `Boolean` | False |  |
| `Duration` | Duration | `Int` | 350 |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `getRequiredWidth As Int`
- `getTargetWidth As Int`
- `setTargetWidth(Value As Int)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `getValue As Int`
- `setValue(Value As Int)`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setDuration(Milliseconds As Int)`
- `getDuration As Int`
- `getDigits As Int`
- `setDigits(Value As Int)`
- `getLabel As String`
- `setLabel(Value As String)`
- `getLabelPosition As String`
- `setLabelPosition(Value As String)`
- `getTextSize As String`
- `setTextSize(Value As String)`
- `getVariant As String`
- `getStyle As String`
- `setStyle(Value As String)`
- `setVariant(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getShadow As String`
- `setShadow(Value As String)`
- `getOutline As Boolean`
- `setOutline(Value As Boolean)`
- `setTag(Value As Object)`
- `getTag As Object`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

