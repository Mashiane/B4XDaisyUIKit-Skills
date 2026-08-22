# card-actions (`B4XDaisyCardActions`)

DaisyUI `CardActions` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCardActions`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCardActions.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.card-actions` → `B4XDaisyCardActions`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCardActions
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCardActions` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCardActions` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `GapDip` | Gap Dip | `Int` | `8` |  |
| `Wrap` | Wrap | `Boolean` | `True` |  |
| `Justify` | Justify | `String` | `start` | start|center|End |
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
- `Relayout`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getContainer As B4XView`
- `getGapDip As Int`
- `getHeight As Int`
- `getJustify As String`
- `getLeft As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `getWrap As Boolean`
- `setGapDip(iValue As Int)`
- `setHeight(iValue As Int)`
- `setJustify(sValue As String)`
- `setLeft(iValue As Int)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `setWrap(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

