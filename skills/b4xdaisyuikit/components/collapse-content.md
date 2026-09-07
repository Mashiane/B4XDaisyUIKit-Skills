# collapse-content (`B4XDaisyCollapseContent`)

DaisyUI `CollapseContent` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCollapseContent`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyCollapseContent.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
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
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `AutoResize` | Auto Resize | `Boolean` | True |  |

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
- `getContainer As B4XView`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
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

