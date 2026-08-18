# grid (`B4XDaisyGrid`)

Responsive 2D grid layout container implementing CSS Grid algorithms natively for B4X, supporting multi-column layouts, auto-rows, responsive gap spacing, and item auto-placement.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyGrid`
- **Status**: `Documented-only`
- **Library Source**: `B4XDaisyGrid.bas`
- **Verified Demos**: None
- **Web DaisyUI Mapping**: `.grid`, `.grid-cols-*`, `.gap-*` → `B4XDaisyGrid`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim grd As B4XDaisyGrid
grd.Initialize(Me, "grd")
grd.AddToParent(pnlHost, pad, y, maxW, 300dip)
grd.ClassName = "grid grid-cols-2 gap-4"

' Add items into the grid
grd.AddViewToGrid("card1", card1.getView, 1, 1, 1, 1)
grd.AddViewToGrid("card2", card2.getView, 1, 2, 1, 1)
grd.Reflow
y = y + grd.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Use `ClassName` with Tailwind utility syntax (e.g. `grid grid-cols-2 gap-4`) or explicit properties (`Cols`, `Gap`, `AutoRows`).
- Call `Reflow` after adding or resizing child views to recalculate cell coordinates.
- For most linear mobile screens, sequential coordinate accumulation inside `B4XDaisyPageScroll` remains preferred. Use `B4XDaisyGrid` when explicit 2D tile matrices are required.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| ClassName | Class Name | String | grid grid-cols-1 gap-4 |  |
| Cols | Columns | Int | 1 |  |
| Gap | Gap | String | 4 |  |
| GapX | Gap X | String |  |  |
| GapY | Gap Y | String |  |  |
| AutoRows | Auto Rows Height | String | minmax(72dip, auto) |  |
| TemplateRows | Template Rows | String |  |  |
| Padding | Padding | String | 0 |  |
| Dense | Dense Packing | Boolean | False |  |
| Debug | Debug | Boolean | False |  |
| DebugOverlay | Debug Overlay | Boolean | False |  |
| AutoRegisterChildrenFromTag | Auto Register Children From Tag | Boolean | False |  |
| EmitLayoutDiff | Emit Layout Diff | Boolean | False |  |
| DefaultAnimMs | Default Anim Ms | Int | 0 |  |

## 5. Declared Events
- `LayoutChanged (ContentHeight As Float)`
- `ItemPlaced (Info As Map)`
- `BeforePlace (Key As String, Info As Map)`
- `AfterPlace (Key As String, Info As Map)`
- `LayoutDiff (Changes As List)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToGrid(Key As String, View As B4XView, Row As Int, Col As Int, RowSpan As Int, ColSpan As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Reflow`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getView As B4XView`
