# rating (`B4XDaisyRating`)

Star/icon rating control with half-star support, custom icon shapes, and read-only mode.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyRating`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRating.bas`
- **Verified Demos**: `B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageRating.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetItemColors(ItemColorList As List)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As String`
- `setActiveColor(Value As Int)`
- `setAllowClear(Value As Boolean)`
- `setBackgroundColorVariant(Variant As String)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFocus(Value As Boolean)`
- `setGap(Value As Int)`
- `setHalf(Value As Boolean)`
- `setHeight(Value As String)`
- `setHintText(Value As String)`
- `setIconStyle(Value As String)`
- `setInactiveColor(Value As Int)`
- `setLabelAbove(Value As String)`
- `setLabelVisible(Value As Boolean)`
- `setLeft(Value As Int)`
- `setMaxValue(Value As Int)`
- `setReadOnly(Value As Boolean)`
- `setRequired(Value As Boolean)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTextColorVariant(Variant As String)`
- `setTop(Value As Int)`
- `setValue(Value As Float)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
