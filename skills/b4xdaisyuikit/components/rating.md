# rating (`B4XDaisyRating`)

Star/icon rating control with half-star support, custom icon shapes, and read-only mode.

## 1. Overview
- **Class**: `B4XDaisyRating`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRating.bas`
- **Web DaisyUI Mapping**: `.rating` → `B4XDaisyRating`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim rt As B4XDaisyRating
rt.Initialize(Me, "rt")
rt.AddToParent(pnlHost, pad, y, maxW, 52dip)
rt.Variant = "warning"
rt.Size = "lg"
rt.MaxValue = 5
rt.Value = 3.5
rt.Half = True
rt.AllowClear = True
rt.IconStyle = "star-2"
rt.LabelAbove = "Your Rating"
rt.LabelVisible = True
y = y + rt.getComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Star rating selector supporting half-stars, hearts, and custom icons.
- Must maintain `DisallowParentIntercept(Action)` during star swipe/tap gestures.
- Configure `Rating` (Float) and `MaxRating` (Int, default 5).
- Set `AllowHalf = True` for half-star precision.
- Handle score changes in the `RatingChanged (NewRating As Float)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Value | Value | Float | 0 |  |
| MaxValue | Max Value | Int | 5 |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| IconStyle | Icon Style | String | star-2 | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4 |
| Half | Half Star | Boolean | False |  |
| AllowClear | Allow Clear | Boolean | False |  |
| ReadOnly | Read Only | Boolean | False |  |
| Required | Required | Boolean | False |  |
| ActiveColor | Active Color | Color | 0 |  |
| InactiveColor | Inactive Color | Color | 0 |  |
| Gap | Gap (dip) | Int | 4 |  |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| LabelAbove | Label Above | String |  |  |
| LabelVisible | Label Visible | Boolean | False |  |
| HintText | Hint Text | String |  |  |
| ErrorText | Error Text | String |  |  |

## 5. Declared Events
- `Changed(Value As Float)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As Int`
- `getAllowClear As Boolean`
- `getComputedHeight As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getGap As Int`
- `getHalf As Boolean`
- `getHeight As String`
- `getHintText As String`
- `getIconStyle As String`
- `getInactiveColor As Int`
- `getIsValid As Boolean`
- `getLabelAbove As String`
- `getLabelVisible As Boolean`
- `getLeft As Int`
- `getMaxValue As Int`
- `getReadOnly As Boolean`
- `getRequired As Boolean`
- `getRole As String`
- `getSize As String`
- `getTag As Object`
- `getTop As Int`
- `getValue As Float`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `setActiveColor(iValue As Int)`
- `setAllowClear(bValue As Boolean)`
- `setBackgroundColorVariant(sVariant As String)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFocus(bValue As Boolean)`
- `setGap(iValue As Int)`
- `setHalf(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setHintText(sValue As String)`
- `setIconStyle(sValue As String)`
- `setInactiveColor(iValue As Int)`
- `SetItemColors(lstItemColorList As List)`
- `setLabelAbove(sValue As String)`
- `setLabelVisible(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMaxValue(iValue As Int)`
- `setReadOnly(bValue As Boolean)`
- `setRequired(bValue As Boolean)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColorVariant(sVariant As String)`
- `setTop(iValue As Int)`
- `setValue(fValue As Float)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
