# loading (`B4XDaisyLoading`)

DaisyUI `Loading` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyLoading`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyLoading.bas`
- **Verified Demo Source**: B4XPageLoading.bas
- **Web DaisyUI Mapping**: `.loading` → `B4XDaisyLoading`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``loading`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``loading-spinner`, `loading-dots`, `loading-ring`, `loading-ball`, `loading-bars`, `loading-infinity`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `size` | ``loading-xs`, `loading-sm`, `loading-md`, `loading-lg`, `loading-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<span class="loading {MODIFIER}"></span>
```

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
| `Style` | Style | `String` | spinner | spinner|dots|ring|ball|bars|infinity |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Speed` | Speed | `Int` | 100 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Clickable` | Clickable | `Boolean` | True |  |
| `Color` | Color | `Color` | 0x00FFFFFF |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `StartAnimation`
- `StopAnimation`
- `getStyle As String`
- `setStyle(Value As String)`
- `getSize As String`
- `setSize(Value As String)`
- `getSpeed As Int`
- `setSpeed(Value As Int)`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTag(Tag As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setColor(Value As Int)`
- `getColor As Int`
- `RemoveViewFromParent`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

