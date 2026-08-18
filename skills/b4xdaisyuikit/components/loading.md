# loading (`B4XDaisyLoading`)

Standard loading spinner indicator supporting multiple variants and sizes.

## 1. Overview
- **Class**: `B4XDaisyLoading`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyLoading.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getClickable As Boolean`
- `getColor As Int`
- `GetComputedHeight As Int`
- `getSize As String`
- `getSpeed As Int`
- `getStyle As String`
- `getTag As Object`
- `getVariant As String`
- `getVisible As Boolean`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `setClickable(bValue As Boolean)`
- `setColor(iValue As Int)`
- `setSize(sValue As String)`
- `setSpeed(iValue As Int)`
- `setStyle(sValue As String)`
- `setTag(oTag As Object)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `StartAnimation`
- `StopAnimation`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
