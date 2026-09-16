# picker (`B4XDaisyPicker`)

DaisyUI `Picker` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPicker`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyPicker.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyPicker.bas)
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

## 2. Verified B4X Syntax & Recipe

```b4x
' Drum wheel item selector:
Dim picker As B4XDaisyPicker
picker.Initialize(Me, "picker")
picker.AddToParent(pnlHost, 16dip, y, maxW, picker.GetComputedHeight)
picker.SetColorAndBorder(xui.Color_White, 1dip, xui.Color_RGB(226, 232, 240), 8dip)

' Add columns and options:
picker.AddColumn("category", "", "", False)
picker.AddOption("category", "Electronics", "elec")
picker.AddOption("category", "Groceries", "groc")
picker.AddOption("category", "Apparel", "app")
picker.Refresh

y = y + picker.GetComputedHeight + 16dip

' Change event:
Private Sub picker_Change(ColumnKey As String, OptionKey As String)
	If B4XDaisyApp.DebugLogs Then Log("Picker changed: " & ColumnKey & " -> " & OptionKey)
End Sub
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
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

