# loading (`B4XDaisyLoading`)

DaisyUI `Loading` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyLoading`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyLoading.bas`
- **Verified Demo Source**: B4XPageLoading.bas (lines 38–179)
- **Web DaisyUI Mapping**: `.loading` → `B4XDaisyLoading`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddLoadingComponent(Parent As B4XView, Style As String, Size As String, VariantName As String, Left As Int, CompSize As Int) As Int
	Dim loading As B4XDaisyLoading
	loading.Initialize(Me, "loading")
	loading.AddToParent(Parent, Left, 10dip, CompSize, CompSize) ' 10dip top padding
	
	loading.SetStyle(Style)
	loading.SetSize(Size)
	loading.SetVariant(VariantName)
	
	LoadingComponents.Add(loading)
	
	Return Left + CompSize + 15dip ' Gap
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyLoading` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getStyle, getSize, getSpeed` (+ 5 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Style` | Style | `String` | `spinner` | spinner|dots|ring|ball|bars|infinity |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Speed` | Speed | `Int` | `100` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `Color` | Color | `Color` | `0x00FFFFFF` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize (oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `StartAnimation`
- `StopAnimation`
- `View As B4XView`
- `getClickable As Boolean`
- `getColor As Int`
- `getSize As String`
- `getSpeed As Int`
- `getStyle As String`
- `getTag As Object`
- `getVariant As String`
- `getVisible As Boolean`
- `setClickable(bValue As Boolean)`
- `setColor(iValue As Int)`
- `setSize(sValue As String)`
- `setSpeed(iValue As Int)`
- `setStyle(sValue As String)`
- `setTag(oTag As Object)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

