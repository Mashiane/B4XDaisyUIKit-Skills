# card-title (`B4XDaisyCardTitle`)

DaisyUI `CardTitle` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCardTitle`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCardTitle.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.card-title` → `B4XDaisyCardTitle`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCardTitle
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCardTitle` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCardTitle` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | `Card Title` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Centered` | Centered | `Boolean` | `False` |  |
| `Gap` | Gap | `Int` | `8` |  |
| `SingleLine` | Single Line | `Boolean` | `False` |  |
| `Ellipsize` | Ellipsize | `String` | `none` | none|start|middle|end|marquee |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Relayout`
- `RemoveViewFromParent`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoResize As Boolean`
- `getCentered As Boolean`
- `getContainer As B4XView`
- `getEllipsize As String`
- `getExtrasContainer As B4XView`
- `getGap As Int`
- `getGapDip As Int`
- `getLabel As B4XView`
- `getSingleLine As Boolean`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As Float`
- `getVisible As Boolean`
- `setAutoResize(bValue As Boolean)`
- `setCentered(bValue As Boolean)`
- `setEllipsize(sValue As String)`
- `setGap(iValue As Int)`
- `setGapDip(iValue As Int)`
- `setSingleLine(bValue As Boolean)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

