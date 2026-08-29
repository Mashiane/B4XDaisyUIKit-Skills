# picker (`B4XDaisyPicker`)

DaisyUI `Picker` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyPicker`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyPicker.bas`
- **Verified Demo Source**: B4XPagePicker.bas (lines 18–41)
- **Web DaisyUI Mapping**: `.picker` → `B4XDaisyPicker`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
For Cally:

```html
<calendar-date class="cally">{CONTENT}</calendar-date>
```

For React Day Picker:

```html
<DayPicker className="react-day-picker"></DayPicker>
```

For Vanilla Calendar Pro:

```html
<div id="calendar" class="vc"></div>
```

```js
import { Calendar } from "vanilla-calendar-pro"

const calendar = new Calendar("#calendar")
calendar.init()
```

Or using CDN:

```html
<script src="https://cdn.jsdelivr.net/npm/vanilla-calendar-pro/index.js" defer></script>
<div id="calendar" class="vc"></div>
<script>
  document.addEventListener("DOMContentLoaded", () => {
    const { Calendar } = window.VanillaCalendarPro
    const calendar = new Calendar("#calendar")
    calendar.init()
  })
</script>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' Inline picker sized to its computed height (VisibleItems * item height) so no row is clipped.
	pickerBasic.Initialize(Me, "pickerBasic")
	pickerBasic.AddToParent(pnlHost, padding, y, maxW, pickerBasic.GetComputedHeight)
	pickerBasic.SetColorAndBorder(xui.Color_White, 1dip, xui.Color_RGB(226, 232, 240), 8dip)
	pickerBasic.AddColumn("pets", "", "", False)
	pickerBasic.AddOption("pets", "Dog", "dog")
	pickerBasic.AddOption("pets", "Cat", "cat")
	pickerBasic.AddOption("pets", "Bird", "bird")
	pickerBasic.AddOption("pets", "Lizard", "lizard")
	pickerBasic.AddOption("pets", "Chinchilla", "chinchilla")
	pickerBasic.Refresh
    
	y = y + pickerBasic.GetComputedHeight + gap

	btnDisableCat.Initialize(Me, "btnDisableCat")
	btnDisableCat.AddToParent(pnlHost, padding, y, maxW, 40dip)
	btnDisableCat.Text = "Disable 'Cat' option"
	btnDisableCat.Variant = "secondary"
	y = y + btnDisableCat.GetComputedHeight + gap

	' ----------------------------------------------------
	' 2. Picker inside a Modal
	' Mimics the legacy popup dialog by wrapping the inline picker in a modal.
	' ----------------------------------------------------
	y = pageScroll.AddSectionTitle("2. Open Picker in a Modal", y, False)
    
	btnOpenModal.Initialize(Me, "btnOpenModal")
	btnOpenModal.AddToParent(pnlHost, padding, y, maxW, 40dip)
	btnOpenModal.Text = "Open Modal Picker"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyPicker` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Picker/Select component requiring item source binding (`.SetItems` / `.Options` / `.Items`).

### Deviation Mechanism
- Picker/Select component requiring item source binding (`.SetItems` / `.Options` / `.Items`).

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setMode, getMode, setFadeBackground` (+ 36 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Mode` | Mode | `String` | `md` | ios|md |
| `FadeBackground` | Fade Color | `Color` | `0xFFFFFFFF` |  |
| `HighlightBackground` | Highlight Color | `Color` | `0x1A000000` |  |
| `HighlightVariant` | Highlight Variant | `String` | `` | none|primary|secondary|accent|info|success|warning|error |
| `ActiveTextColor` | Active Text Color | `Color` | `0` |  |
| `HighlightRadius` | Highlight Radius | `Int` | `8` |  |
| `VisibleItems` | Visible Items | `Int` | `5` |  |
| `PickerType` | Picker Type | `String` | `default` | default|auto |
| `InputFormat` | Input Format | `String` | `Y-m-d` |  |
| `DisplayFormat` | Display Format | `String` | `` |  |
| `MinYear` | Min Year | `Int` | `0` |  |
| `MaxYear` | Max Year | `Int` | `0` |  |
| `ColumnDelimiter` | Column Delimiter | `String` | `` |  |
| `TextAlign` | Text Align | `String` | `CENTER` | CENTER|LEFT|RIGHT |
| `Rounded` | Rounded | `String` | `rounded-lg` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |

## 5. Declared Events
- `Changed (ColumnName As String, Value As Object)`

## 6. Public Methods & APIs
- `AddColumn(sColumnName As String, sPrefix As String, sSuffix As String, bDisabled As Boolean)`
- `AddColumnDay(sColumnName As String)`
- `AddColumnMonth(sColumnName As String)`
- `AddColumnYear(sColumnName As String, iStartYear As Int, iEndYear As Int)`
- `AddOption(sColumnName As String, sText As String, oValue As Object)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetColumnActiveTextColor(sColumnName As String) As Int`
- `GetColumnColor(sColumnName As String) As Int`
- `GetColumnEnabled(sColumnName As String) As Boolean`
- `GetColumnOptionValues(sColumnName As String) As List`
- `GetColumnValue(sColumnName As String) As Object`
- `GetComputedHeight As Int`
- `GetDisplayValue As String`
- `GetRoundedRadius As Float`
- `GetValue As String`
- `GetValueList As List`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `SetColorAndBorder(iColor As Int, fBorderWidth As Float, iBorderColor As Int, fCornerRadius As Float)`
- `SetColumnActiveTextColor(sColumnName As String, iColor As Int)`
- `SetColumnColor(sColumnName As String, iColor As Int)`
- `SetColumnColorVariant(sColumnName As String, sVariant As String)`
- `SetColumnEnabled(sColumnName As String, bEnabled As Boolean)`
- `SetColumnValue(sColumnName As String, oValue As Object)`
- `SetOptionDisabled(sColumnName As String, oValue As Object, bDisabled As Boolean)`
- `SetOptionDisabledByIndex(sColumnName As String, iIndex As Int, bDisabled As Boolean)`
- `SetValue(sValue As String)`
- `SetValueList(lstValues As List)`
- `View As B4XView`
- `getActiveTextColor As Int`
- `getColumnDelimiter As String`
- `getDisplayFormat As String`
- `getFadeBackground As Int`
- `getHighlightBackground As Int`
- `getHighlightRadius As Int`
- `getHighlightVariant As String`
- `getInputFormat As String`
- `getMaxYear As Int`
- `getMinYear As Int`
- `getMode As String`
- `getPickerType As String`
- `getRounded As String`
- `getShadow As String`
- `getTextAlign As String`
- `getVisibleItems As Int`
- `setActiveTextColor(iValue As Int)`
- `setColumnDelimiter(sValue As String)`
- `setDisplayFormat(sValue As String)`
- `setFadeBackground(iValue As Int)`
- `setHighlightBackground(iValue As Int)`
- `setHighlightRadius(iValue As Int)`
- `setHighlightVariant(sValue As String)`
- `setInputFormat(sValue As String)`
- `setMaxYear(iValue As Int)`
- `setMinYear(iValue As Int)`
- `setMode(sValue As String)`
- `setPickerType(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTextAlign(sValue As String)`
- `setVisibleItems(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyPicker` provides a vertical drum wheel item picker.

```vb
Dim picker As B4XDaisyPicker
picker.Initialize(Me, "picker")
picker.AddToParent(pnlHost, pad, y, maxW, 180dip)
picker.SetItems(Array As String("Warehouse Zone A", "Warehouse Zone B", "Warehouse Zone C", "Cold Storage", "Receiving Dock"))
picker.SelectedIndex = 0

Private Sub picker_IndexChange(Index As Int, Value As Object)
    Log("Selected Zone: " & Value)
End Sub

y = y + 180dip + gap
```
