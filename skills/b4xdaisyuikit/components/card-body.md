# card-body (`B4XDaisyCardBody`)

DaisyUI `CardBody` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCardBody`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCardBody.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.card-body` → `B4XDaisyCardBody`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyCardBody
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCardBody` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCardBody` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Height` | Height | `String` | `auto` |  |
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
- `getBodyTextSize As Float`
- `getContainer As B4XView`
- `getGapDip As Int`
- `getHeight As String`
- `getLeft As Int`
- `getPaddingDip As Int`
- `getSize As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

