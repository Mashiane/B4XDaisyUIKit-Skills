# collapse-content (`B4XDaisyCollapseContent`)

DaisyUI `CollapseContent` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCollapseContent`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCollapseContent.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.collapse-content` → `B4XDaisyCollapseContent`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCollapseContent
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCollapseContent` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCollapseContent` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Relayout`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getContainer As B4XView`
- `getHeight As Int`
- `getLeft As Int`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

