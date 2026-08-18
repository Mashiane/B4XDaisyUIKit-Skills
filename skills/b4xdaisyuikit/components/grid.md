# grid (`B4XDaisyGrid`)

Responsive 2D grid layout container implementing CSS Grid algorithms natively for B4X, supporting multi-column layouts, auto-rows, responsive gap spacing, and item auto-placement.

## 1. Overview
- **Class**: `B4XDaisyGrid`
- **Status**: `Documented-only`
- **Library Source**: `B4XDaisyGrid.bas`
- **Web DaisyUI Mapping**: `.grid`, `.grid-cols-*`, `.gap-*` → `B4XDaisyGrid`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim grd As B4XDaisyGrid
grd.Initialize(Me, "grd")
grd.AddToParent(pnlHost, pad, y, maxW, 300dip)
grd.ClassName = "grid grid-cols-2 gap-4"

' Add items into the grid with Tailwind column/span tokens
grd.AddItem(card1.View, "col-span-1")
grd.AddItem(card2.View, "col-span-1")
grd.Relayout
y = y + grd.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Use `ClassName` with Tailwind utility syntax (e.g. `grid grid-cols-2 gap-4`) or explicit properties (`Cols`, `Gap`, `AutoRows`).
- Call `AddItem(vItemView, sClass)` or `AddItemWithKey(sKey, vItemView, sClass)` to place views.
- Call `Relayout` after adding or resizing child views to recalculate cell coordinates.
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
- `AddItem(vItemView As B4XView, sClassText As String) As String`
- `AddItemWithKey(sKey As String, vItemView As B4XView, sClassText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `ApplyItemSpec(Spec As GridItemSpec)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BeginUpdate`
- `BringToFront`
- `DebugDumpSnapshot As String`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `EndUpdate`
- `ExportLayoutProfile(sProfileName As String) As Map`
- `ExportLayoutSpecs As List`
- `GetAllItemSpecs As List`
- `getAutoRegisterChildrenFromTag As Boolean`
- `getAutoRows As String`
- `getClassName As String`
- `GetCollisionDiagnostics As List`
- `GetCollisionReport As String`
- `getCols As Int`
- `GetComputedHeight As Int`
- `getDebug As Boolean`
- `getDebugOverlay As Boolean`
- `getDefaultAnimMs As Int`
- `getDense As Boolean`
- `getEmitLayoutDiff As Boolean`
- `getGap As Float`
- `getGapX As Float`
- `getGapY As Float`
- `getHeight As Int`
- `getIsInitialized As Boolean`
- `GetItemPlacement(sKey As String) As GridPlacement`
- `GetItemSpec(sKey As String) As GridItemSpec`
- `GetLayoutSnapshot As List`
- `getLeft As Int`
- `getPadding As Float`
- `GetResolvedContainerRulesNow As Map`
- `GetResolvedItemRules(sKey As String, fWidth As Float) As Map`
- `GetResolvedItemRulesNow(sKey As String) As Map`
- `getTemplateRows As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `ImportLayoutProfile(mProfile As Map, bIgnoreMissing As Boolean)`
- `ImportLayoutSpecs(lstSpecs As List, bIgnoreMissing As Boolean)`
- `Initialize(oCallback As Object, sEventName As String)`
- `RegisterChildrenFromTag(sOptionalDefaultClass As String)`
- `Relayout`
- `RemoveItem(sKey As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoRegisterChildrenFromTag(bValue As Boolean)`
- `setAutoRows(sTemplate As String)`
- `SetAutoRowsTemplate(sTemplate As String)`
- `SetBreakpoint(sName As String, fMinWidth As Float)`
- `setClassName(sClassText As String)`
- `setCols(iValue As Int)`
- `setDebug(bValue As Boolean)`
- `setDebugOverlay(bValue As Boolean)`
- `setDefaultAnimMs(iValue As Int)`
- `setDense(bValue As Boolean)`
- `setEmitLayoutDiff(bValue As Boolean)`
- `setGap(oValue As Object)`
- `setGapX(oValue As Object)`
- `SetGapXY(fValueX As Float, fValueY As Float)`
- `setGapY(oValue As Object)`
- `setHeight(iValue As Int)`
- `SetItemAlign(sKey As String, sValue As String, sBp As String)`
- `SetItemColSpan(sKey As String, iColSpan As Int, sBp As String)`
- `SetItemColStart(sKey As String, iColStart As Int, sBp As String)`
- `SetItemHidden(sKey As String, bHidden As Boolean, sBp As String)`
- `SetItemJustify(sKey As String, sValue As String, sBp As String)`
- `SetItemOrder(sKey As String, iOrder As Int)`
- `SetItemRowSpan(sKey As String, iRowSpan As Int, sBp As String)`
- `SetItemRowStart(sKey As String, iRowStart As Int, sBp As String)`
- `SetItemVisible(sKey As String, bVisible As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setPadding(oValue As Object)`
- `SetPaddingLTRB(fLeft As Float, fTop As Float, fRight As Float, fBottom As Float)`
- `setTemplateRows(sTemplate As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `UpdateItemClass(sKey As String, sClassText As String)`
- `View As B4XView`

