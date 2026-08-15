# loading (`B4XDaisyLoading`)

Standard loading spinner indicator supporting multiple variants and sizes.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyLoading`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyLoading.bas`
- **Verified Demos**: `B4XPageLoading.bas`
- **Web DaisyUI Mapping**: `.loading` → `B4XDaisyLoading`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ld As B4XDaisyLoading
ld.Initialize(Me, "ld")
ld.AddToParent(pnlHost, pad, y, 40dip, 40dip)
ld.Style = "spinner"
ld.Variant = "primary"
ld.Size = "md"
y = y + 40dip + gap
```

## 3. Native Composition Rules & Gotchas
- Animated loading spinner indicator supporting multiple styles.
- Choose animation style via `LoadingType` (`"spinner"`, `"dots"`, `"ring"`, `"ball"`, `"bars"`, `"infinity"`).
- Set semantic theme color via `Variant = "primary"`.
- Set scale using standard `Size` tokens (`"xs"` to `"xl"`).

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Style | Style | String | spinner | spinner|dots|ring|ball|bars|infinity |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Speed | Speed | Int | 100 |  |
| Visible | Visible | Boolean | True |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Clickable | Clickable | Boolean | True |  |
| Color | Color | Color | 0x00FFFFFF |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize (Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize (Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `StartAnimation`
- `StopAnimation`
- `getClickable As Boolean`
- `getColor As Int`
- `getSize As String`
- `getSpeed As Int`
- `getStyle As String`
- `getTag As Object`
- `getVariant As String`
- `getVisible As Boolean`
- `setClickable(Value As Boolean)`
- `setColor(Value As Int)`
- `setSize(Value As String)`
- `setSpeed(Value As Int)`
- `setStyle(Value As String)`
- `setTag(Tag As Object)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
