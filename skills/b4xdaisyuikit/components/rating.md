# rating (`B4XDaisyRating`)

DaisyUI `Rating` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyRating`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRating.bas`
- **Verified Demo Source**: B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageRating.bas
- **Web DaisyUI Mapping**: `.rating` → `B4XDaisyRating`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``rating`` | Member | `.SetComponent(...)` | Native configuration |
| `modifier` | ``rating-half`, `rating-hidden`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |
| `size` | ``rating-xs`, `rating-sm`, `rating-md`, `rating-lg`, `rating-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<div class="rating {MODIFIER}">
  <input type="radio" name="rating-1" class="mask mask-star" />
</div>
```

For a read-only (non-interactive) rating, use `<div>` elements instead of radio inputs and mark the selected one with `aria-current="true"`:
```html
<div class="rating">
  <div class="mask mask-star" aria-label="1 star"></div>
  <div class="mask mask-star" aria-label="2 star" aria-current="true"></div>
  <div class="mask mask-star" aria-label="3 star"></div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderExamples(Width As Int, Height As Int)
	If pnlHost.IsInitialized = False Then Return
	pnlHost.RemoveAllViews

	Dim maxW As Int = Max(220dip, Width - (PAGE_PAD * 2))
	Dim y As Int = PAGE_PAD

	' #region Example 1: Basic Rating (mask-star)
	''' Basic Rating with default mask-star icons.
	y = AddSectionTitle("Rating", y, maxW)
	Dim c1 As B4XDaisyRating
	c1.Initialize(Me, "rating1")
	c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 48dip)
	c1.Value = 2
	c1.IconStyle = "star"
	c1.Tag = "basic-star"
	y = y + 64dip
	' #endregion

	' #region Example 2: Read-only Rating
	''' Read-only Rating using div elements (aria-current for active state).
	y = AddSectionTitle("Read-only Rating", y, maxW)
	Dim c2 As B4XDaisyRating
	c2.Initialize(Me, "rating2")
	c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 48dip)
	c2.Value = 3
	c2.ReadOnly = True
	c2.Tag = "readonly"
	y = y + 64dip
	' #endregion
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyRating` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getMaxValue, getSize, getVariant` (+ 32 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Value` | Value | `Float` | 0 |  |
| `MaxValue` | Max Value | `Int` | 5 |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `IconStyle` | Icon Style | `String` | star-2 | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4 |
| `Half` | Half Star | `Boolean` | False |  |
| `AllowClear` | Allow Clear | `Boolean` | False |  |
| `ReadOnly` | Read Only | `Boolean` | False |  |
| `Required` | Required | `Boolean` | False |  |
| `ActiveColor` | Active Color | `Color` | 0 |  |
| `InactiveColor` | Inactive Color | `Color` | 0 |  |
| `Gap` | Gap (dip) | `Int` | 4 |  |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `LabelAbove` | Label Above | `String` |  |  |
| `LabelVisible` | Label Visible | `Boolean` | False |  |
| `HintText` | Hint Text | `String` |  |  |
| `ErrorText` | Error Text | `String` |  |  |

## 5. Declared Events
- `Changed (Value As Float)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setValue(Value As Float)`
- `getValue As Float`
- `setMaxValue(Value As Int)`
- `getMaxValue As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setIconStyle(Value As String)`
- `getIconStyle As String`
- `setHalf(Value As Boolean)`
- `getHalf As Boolean`
- `setAllowClear(Value As Boolean)`
- `getAllowClear As Boolean`
- `setReadOnly(Value As Boolean)`
- `getReadOnly As Boolean`
- `setActiveColor(Value As Int)`
- `getActiveColor As Int`
- `setInactiveColor(Value As Int)`
- `getInactiveColor As Int`
- `SetItemColors(lstItemColorList As List)`
- `setGap(Value As Int)`
- `getGap As Int`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setLabelAbove(Value As String)`
- `getLabelAbove As String`
- `setLabelVisible(Value As Boolean)`
- `getLabelVisible As Boolean`
- `setHintText(Value As String)`
- `getHintText As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getRole As String`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setBackgroundColorVariant(Variant As String)`
- `setTextColorVariant(Variant As String)`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `RemoveViewFromParent`
- `Release`
- `getLeft As Int`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

