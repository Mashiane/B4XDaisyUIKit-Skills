# grid (`B4XDaisyGrid`)

DaisyUI `Grid` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyGrid`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyGrid.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.grid` → `B4XDaisyGrid`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyGrid
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyGrid` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyGrid` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `ClassName` | Class Name | `String` | grid grid-cols-1 gap-4 |  |
| `Cols` | Columns | `Int` | 1, MinRange: 1, MaxRange: 24 |  |
| `Gap` | Gap | `String` | 4 |  |
| `GapX` | Gap X | `String` |  |  |
| `GapY` | Gap Y | `String` |  |  |
| `AutoRows` | Auto Rows Height | `String` | minmax(72dip, auto) |  |
| `TemplateRows` | Template Rows | `String` |  |  |
| `Padding` | Padding | `String` | 0 |  |
| `Dense` | Dense Packing | `Boolean` | False |  |
| `Debug` | Debug | `Boolean` | False |  |
| `DebugOverlay` | Debug Overlay | `Boolean` | False |  |
| `AutoRegisterChildrenFromTag` | Auto Register Children From Tag | `Boolean` | False |  |
| `EmitLayoutDiff` | Emit Layout Diff | `Boolean` | False |  |
| `DefaultAnimMs` | Default Anim Ms | `Int` | 0, MinRange: 0, MaxRange: 2000 |  |

## 5. Declared Events
- `LayoutChanged (ContentHeight As Float)`
- `ItemPlaced (Info As Map)`
- `BeforePlace (Key As String, Info As Map)`
- `AfterPlace (Key As String, Info As Map)`
- `LayoutDiff (Changes As List)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `setClassName(ClassText As String)`
- `getClassName As String`
- `setCols(Value As Int)`
- `getCols As Int`
- `setGap(Value As Object)`
- `getGap As Float`
- `setGapX(Value As Object)`
- `getGapX As Float`
- `setGapY(Value As Object)`
- `getGapY As Float`
- `SetGapXY(ValueX As Float, ValueY As Float)`
- `SetAutoRowsTemplate(Template As String)`
- `setAutoRows(Template As String)`
- `getAutoRows As String`
- `setTemplateRows(Template As String)`
- `getTemplateRows As String`
- `setPadding(Value As Object)`
- `getPadding As Float`
- `SetPaddingLTRB(Left As Float, Top As Float, Right As Float, Bottom As Float)`
- `SetBreakpoint(Name As String, MinWidth As Float)`
- `setDense(Value As Boolean)`
- `getDense As Boolean`
- `setDebug(Value As Boolean)`
- `getDebug As Boolean`
- `setDebugOverlay(Value As Boolean)`
- `getDebugOverlay As Boolean`
- `setAutoRegisterChildrenFromTag(Value As Boolean)`
- `getAutoRegisterChildrenFromTag As Boolean`
- `setEmitLayoutDiff(Value As Boolean)`
- `getEmitLayoutDiff As Boolean`
- `setDefaultAnimMs(Value As Int)`
- `getDefaultAnimMs As Int`
- `AddItem(ItemView As B4XView, ClassText As String) As String`
- `AddItemWithKey(Key As String, ItemView As B4XView, ClassText As String)`
- `UpdateItemClass(Key As String, ClassText As String)`
- `RemoveItem(Key As String)`
- `SetItemVisible(Key As String, Visible As Boolean)`
- `SetItemOrder(Key As String, Order As Int)`
- `SetItemRowSpan(Key As String, RowSpan As Int, Bp As String)`
- `SetItemColSpan(Key As String, ColSpan As Int, Bp As String)`
- `SetItemColStart(Key As String, ColStart As Int, Bp As String)`
- `SetItemRowStart(Key As String, RowStart As Int, Bp As String)`
- `SetItemJustify(Key As String, Value As String, Bp As String)`
- `SetItemAlign(Key As String, Value As String, Bp As String)`
- `SetItemHidden(Key As String, Hidden As Boolean, Bp As String)`
- `GetItemPlacement(Key As String) As GridPlacement`
- `BeginUpdate`
- `EndUpdate`
- `Relayout`
- `RegisterChildrenFromTag(OptionalDefaultClass As String)`
- `GetLayoutSnapshot As List`
- `DebugDumpSnapshot As String`
- `GetCollisionDiagnostics As List`
- `GetCollisionReport As String`
- `GetResolvedItemRules(Key As String, Width As Float) As Map`
- `GetResolvedItemRulesNow(Key As String) As Map`
- `GetResolvedContainerRulesNow As Map`
- `GetItemSpec(Key As String) As GridItemSpec`
- `ApplyItemSpec(Spec As GridItemSpec)`
- `GetAllItemSpecs As List`
- `ExportLayoutSpecs As List`
- `ImportLayoutSpecs(lstSpecs As List, IgnoreMissing As Boolean)`
- `ExportLayoutProfile(ProfileName As String) As Map`
- `ImportLayoutProfile(Profile As Map, IgnoreMissing As Boolean)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
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

## 7. Public Fields
- `mBase As B4XView`

