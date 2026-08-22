# grid (`B4XDaisyGrid`)

DaisyUI `Grid` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyGrid`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyGrid.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
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
| `ClassName` | Class Name | `String` | `grid grid-cols-1 gap-4` |  |
| `Cols` | Columns | `Int` | `1` |  |
| `Gap` | Gap | `String` | `4` |  |
| `GapX` | Gap X | `String` | `` |  |
| `GapY` | Gap Y | `String` | `` |  |
| `AutoRows` | Auto Rows Height | `String` | `` |  |
| `TemplateRows` | Template Rows | `String` | `` |  |
| `Padding` | Padding | `String` | `0` |  |
| `Dense` | Dense Packing | `Boolean` | `False` |  |
| `Debug` | Debug | `Boolean` | `False` |  |
| `DebugOverlay` | Debug Overlay | `Boolean` | `False` |  |
| `AutoRegisterChildrenFromTag` | Auto Register Children From Tag | `Boolean` | `False` |  |
| `EmitLayoutDiff` | Emit Layout Diff | `Boolean` | `False` |  |
| `DefaultAnimMs` | Default Anim Ms | `Int` | `0` |  |

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
- `GetCollisionDiagnostics As List`
- `GetCollisionReport As String`
- `GetComputedHeight As Int`
- `GetItemPlacement(sKey As String) As GridPlacement`
- `GetItemSpec(sKey As String) As GridItemSpec`
- `GetLayoutSnapshot As List`
- `GetResolvedContainerRulesNow As Map`
- `GetResolvedItemRules(sKey As String, fWidth As Float) As Map`
- `GetResolvedItemRulesNow(sKey As String) As Map`
- `ImportLayoutProfile(mProfile As Map, bIgnoreMissing As Boolean)`
- `ImportLayoutSpecs(lstSpecs As List, bIgnoreMissing As Boolean)`
- `Initialize(oCallback As Object, sEventName As String)`
- `RegisterChildrenFromTag(sOptionalDefaultClass As String)`
- `Relayout`
- `RemoveItem(sKey As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetAutoRowsTemplate(sTemplate As String)`
- `SetBreakpoint(sName As String, fMinWidth As Float)`
- `SetGapXY(fValueX As Float, fValueY As Float)`
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
- `SetPaddingLTRB(fLeft As Float, fTop As Float, fRight As Float, fBottom As Float)`
- `UpdateItemClass(sKey As String, sClassText As String)`
- `View As B4XView`
- `getAutoRegisterChildrenFromTag As Boolean`
- `getAutoRows As String`
- `getClassName As String`
- `getCols As Int`
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
- `getLeft As Int`
- `getPadding As Float`
- `getTemplateRows As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoRegisterChildrenFromTag(bValue As Boolean)`
- `setAutoRows(sTemplate As String)`
- `setClassName(sClassText As String)`
- `setCols(iValue As Int)`
- `setDebug(bValue As Boolean)`
- `setDebugOverlay(bValue As Boolean)`
- `setDefaultAnimMs(iValue As Int)`
- `setDense(bValue As Boolean)`
- `setEmitLayoutDiff(bValue As Boolean)`
- `setGap(oValue As Object)`
- `setGapX(oValue As Object)`
- `setGapY(oValue As Object)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setPadding(oValue As Object)`
- `setTemplateRows(sTemplate As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

