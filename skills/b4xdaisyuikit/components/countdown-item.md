# countdown-item (`B4XDaisyCountdownItem`)

DaisyUI `CountdownItem` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCountdownItem`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCountdownItem.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.countdown-item` → `B4XDaisyCountdownItem`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCountdownItem
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
| `Value` | Value | `Int` | `0` |  |
| `Digits` | Digits | `Int` | `1` |  |
| `Label` | Label | `String` | `` |  |
| `LabelPosition` | Label Position | `String` | `none` | none|bottom|right |
| `TextSize` | Font Size | `String` | `md` | text-xs|text-sm|md|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Outline` | Outline | `Boolean` | `False` |  |
| `Duration` | Duration | `Int` | `350` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `UpdateTheme`
- `View As B4XView`
- `getAnimated As Boolean`
- `getDigits As Int`
- `getDuration As Int`
- `getHeight As Int`
- `getIsInitialized As Boolean`
- `getLabel As String`
- `getLabelPosition As String`
- `getLeft As Int`
- `getOutline As Boolean`
- `getRequiredWidth As Int`
- `getRounded As String`
- `getShadow As String`
- `getStyle As String`
- `getTag As Object`
- `getTargetWidth As Int`
- `getTextSize As String`
- `getTop As Int`
- `getValue As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(bValue As Boolean)`
- `setDigits(iValue As Int)`
- `setDuration(iMilliseconds As Int)`
- `setHeight(iValue As Int)`
- `setLabel(sValue As String)`
- `setLabelPosition(sValue As String)`
- `setLeft(iValue As Int)`
- `setOutline(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTargetWidth(iValue As Int)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setValue(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

