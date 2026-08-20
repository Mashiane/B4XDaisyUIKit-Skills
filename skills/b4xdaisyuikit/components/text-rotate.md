# text-rotate (`B4XDaisyTextRotate`)

Animated rotating headline text that smoothly cycles through a list of phrases.

## 1. Overview
- **Class**: `B4XDaisyTextRotate`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTextRotate.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `getDuration As String`
- `getHeight As Int`
- `GetItems As List`
- `getLeft As Int`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setDuration(sValue As String)`
- `setHeight(iValue As Int)`
- `SetItems(lstItemList As List)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Start`
- `Stop`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
