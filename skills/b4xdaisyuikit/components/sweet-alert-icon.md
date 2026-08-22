# sweet-alert-icon (`B4XDaisySweetAlertIcon`)

DaisyUI `SweetAlertIcon` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySweetAlertIcon`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisySweetAlertIcon.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
- **Web DaisyUI Mapping**: `.sweet-alert-icon` → `B4XDaisySweetAlertIcon`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisySweetAlertIcon
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisySweetAlertIcon` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisySweetAlertIcon` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `IconType` | Icon Type | `String` | `success` | none|warning|error|success|info|question|loading |
| `Duration` | Duration | `Int` | `500` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Play`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Stop`
- `View As B4XView`
- `getAnimationDuration As Int`
- `getDuration As Int`
- `getHeight As Int`
- `getIconType As String`
- `getLeft As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimationDuration(iValue As Int)`
- `setDuration(iValue As Int)`
- `setHeight(iValue As Int)`
- `setIconType(sIcon As String)`
- `setLeft(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

