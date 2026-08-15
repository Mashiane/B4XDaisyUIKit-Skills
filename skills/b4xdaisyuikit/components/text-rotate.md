# text-rotate (`B4XDaisyTextRotate`)

Animated rotating headline text that smoothly cycles through a list of phrases.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTextRotate`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTextRotate.bas`
- **Verified Demos**: `B4XPageTextRotate.bas`
- **Web DaisyUI Mapping**: `.text-rotate` → `B4XDaisyTextRotate`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tr As B4XDaisyTextRotate
tr.Initialize(Me, "tr")
tr.AddToParent(pnlHost, pad, y, maxW, 40dip)
tr.Variant = "primary"
tr.Duration = "2.5s"

Dim phrases As List
phrases.Initialize2(Array As String("Designers", "Developers", "Creators", "Innovators"))
tr.SetItems(phrases)
tr.Start
y = y + tr.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Text rotator cycling through headline words with vertical flip animations.
- Configure words list via `Words` (List of strings).
- Set `Interval` (ms) for word switching speed.
- Control rotation using `Start` and `Stop` methods.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Items | Items | List | 1 |  |
| Duration | Duration | String | 3s |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddItem(dt As B4XDaisyText)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetItems As List`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItems(ItemList As List)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Start`
- `Stop`
- `UpdateTheme`
- `getDuration As String`
- `getHeight As Int`
- `getLeft As Int`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setDuration(Value As String)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
