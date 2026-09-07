# sweet-alert-icon (`B4XDaisySweetAlertIcon`)

DaisyUI `SweetAlertIcon` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySweetAlertIcon`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisySweetAlertIcon.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
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
| `IconType` | Icon Type | `String` | success | none|warning|error|success|info|question|loading |
| `Duration` | Duration | `Int` | 500 |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Play`
- `Stop`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setAnimationDuration(Value As Int)`
- `getAnimationDuration As Int`
- `setIconType(Icon As String)`
- `getIconType As String`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

