# picker (`B4XDaisyPicker`)

DaisyUI `Picker` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPicker`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyPicker.bas`
- **Verified Demo Source**: B4XPagePicker.bas
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
| `Mode` | Mode | `String` | md | ios|md |
| `FadeBackground` | Fade Color | `Color` | 0xFFFFFFFF |  |
| `HighlightBackground` | Highlight Color | `Color` | 0x1A000000 |  |
| `HighlightVariant` | Highlight Variant | `String` |  | none|primary|secondary|accent|info|success|warning|error |
| `ActiveTextColor` | Active Text Color | `Color` | 0 |  |
| `HighlightRadius` | Highlight Radius | `Int` | 8 |  |
| `VisibleItems` | Visible Items | `Int` | 5 |  |
| `PickerType` | Picker Type | `String` | default | default|auto |
| `InputFormat` | Input Format | `String` | Y-m-d |  |
| `DisplayFormat` | Display Format | `String` |  |  |
| `MinYear` | Min Year | `Int` | 0 |  |
| `MaxYear` | Max Year | `Int` | 0 |  |
| `ColumnDelimiter` | Column Delimiter | `String` |  |  |
| `TextAlign` | Text Align | `String` | CENTER | CENTER|LEFT|RIGHT |
| `Rounded` | Rounded | `String` | rounded-lg | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |

## 5. Declared Events
- `Changed (ColumnName As String, Value As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setMode(Value As String)`
- `getMode As String`
- `setFadeBackground(Value As Int)`
- `getFadeBackground As Int`
- `setHighlightBackground(Value As Int)`
- `getHighlightBackground As Int`
- `setHighlightVariant(Value As String)`
- `getHighlightVariant As String`
- `setActiveTextColor(Value As Int)`
- `getActiveTextColor As Int`
- `setHighlightRadius(Value As Int)`
- `getHighlightRadius As Int`
- `setVisibleItems(Value As Int)`
- `getVisibleItems As Int`
- `GetComputedHeight As Int`
- `setPickerType(Value As String)`
- `getPickerType As String`
- `setInputFormat(Value As String)`
- `getInputFormat As String`
- `setDisplayFormat(Value As String)`
- `getDisplayFormat As String`
- `setMinYear(Value As Int)`
- `getMinYear As Int`
- `setMaxYear(Value As Int)`
- `getMaxYear As Int`
- `setColumnDelimiter(Value As String)`
- `getColumnDelimiter As String`
- `setTextAlign(Value As String)`
- `getTextAlign As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `GetRoundedRadius As Float`
- `SetColorAndBorder(Color As Int, BorderWidth As Float, BorderColor As Int, CornerRadius As Float)`
- `AddColumn(ColumnName As String, Prefix As String, Suffix As String, Disabled As Boolean)`
- `AddColumnDay(ColumnName As String)`
- `AddColumnMonth(ColumnName As String)`
- `AddColumnYear(ColumnName As String, StartYear As Int, EndYear As Int)`
- `AddOption(ColumnName As String, Text As String, Value As Object)`
- `SetColumnValue(ColumnName As String, Value As Object)`
- `SetOptionDisabled(ColumnName As String, Value As Object, Disabled As Boolean)`
- `SetOptionDisabledByIndex(ColumnName As String, Index As Int, Disabled As Boolean)`
- `GetColumnValue(ColumnName As String) As Object`
- `GetColumnOptionValues(ColumnName As String) As List`
- `SetColumnColor(ColumnName As String, Color As Int)`
- `GetColumnColor(ColumnName As String) As Int`
- `SetColumnColorVariant(ColumnName As String, Variant As String)`
- `SetColumnEnabled(ColumnName As String, Enabled As Boolean)`
- `GetColumnEnabled(ColumnName As String) As Boolean`
- `SetColumnActiveTextColor(ColumnName As String, Color As Int)`
- `GetColumnActiveTextColor(ColumnName As String) As Int`
- `Refresh`
- `SetValue(Value As String)`
- `SetValueList(lstValues As List)`
- `GetValueList As List`
- `GetValue As String`
- `GetDisplayValue As String`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyPicker` provides a vertical drum wheel item picker.

```vb
Dim picker As B4XDaisyPicker
picker.Initialize(Me, "picker")
picker.AddToParent(pnlHost, pad, y, maxW, 180dip)
picker.SetItems(Array As String("Warehouse Zone A", "Warehouse Zone B", "Warehouse Zone C", "Cold Storage", "Receiving Dock"))
picker.SelectedIndex = 0

Private Sub picker_IndexChange(Index As Int, Value As Object)
    If B4XDaisyApp.DebugLogs Then Log("Selected Zone: " & Value)
End Sub

y = y + 180dip + gap
```
