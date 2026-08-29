# rating (`B4XDaisyRating`)

DaisyUI `Rating` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyRating`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyRating.bas`
- **Verified Demo Source**: B4XPageEnjoyHint.bas (lines 31–31), B4XPageFocus.bas (lines 44–44), B4XPageNavScrollDock.bas (lines 222–222), B4XPageRating.bas (lines 57–512)
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
| `Value` | Value | `Float` | `0` |  |
| `MaxValue` | Max Value | `Int` | `5` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `IconStyle` | Icon Style | `String` | `star-2` | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4 |
| `Half` | Half Star | `Boolean` | `False` |  |
| `AllowClear` | Allow Clear | `Boolean` | `False` |  |
| `ReadOnly` | Read Only | `Boolean` | `False` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `ActiveColor` | Active Color | `Color` | `0` |  |
| `InactiveColor` | Inactive Color | `Color` | `0` |  |
| `Gap` | Gap (dip) | `Int` | `4` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `LabelAbove` | Label Above | `String` | `` |  |
| `LabelVisible` | Label Visible | `Boolean` | `False` |  |
| `HintText` | Hint Text | `String` | `` |  |
| `ErrorText` | Error Text | `String` | `` |  |

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
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetItemColors(lstItemColorList As List)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`
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
- `setLabelAbove(sValue As String)`
- `setLabelVisible(bValue As Boolean)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

