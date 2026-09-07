# card-actions (`B4XDaisyCardActions`)

DaisyUI `CardActions` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCardActions`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCardActions.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
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
| `GapDip` | Gap Dip | `Int` | 8 |  |
| `Wrap` | Wrap | `Boolean` | True |  |
| `Justify` | Justify | `String` | start | start|center|End |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Relayout`
- `setGapDip(Value As Int)`
- `getGapDip As Int`
- `setWrap(Value As Boolean)`
- `getWrap As Boolean`
- `setJustify(Value As String)`
- `getJustify As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `getContainer As B4XView`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

