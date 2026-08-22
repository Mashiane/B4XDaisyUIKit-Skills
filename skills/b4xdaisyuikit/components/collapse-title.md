# collapse-title (`B4XDaisyCollapseTitle`)

DaisyUI `CollapseTitle` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCollapseTitle`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCollapseTitle.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.collapse-title` → `B4XDaisyCollapseTitle`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCollapseTitle
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCollapseTitle` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCollapseTitle` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | `Collapse Title` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `IconName` | Icon Name | `String` | `` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `IconColor` | Icon Color | `Color` | `0x00000000` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getHeight As Int`
- `getIconColor As Int`
- `getIconName As String`
- `getLeft As Int`
- `getSize As String`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iValue As Int)`
- `setHeight(iValue As Int)`
- `setIconColor(iValue As Int)`
- `setIconName(sValue As String)`
- `setLeft(iValue As Int)`
- `setSize(sValue As String)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

