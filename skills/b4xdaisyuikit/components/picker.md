# picker (`B4XDaisyPicker`)

Multi-column native wheel and date picker with customizable columns, highlight variants, date presets, and change notifications.

## 1. Overview
- **Class**: `B4XDaisyPicker`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPicker.bas`
- **Reference Page**: `B4XPagePicker.bas`
- **Web DaisyUI Mapping**: `.picker` → `B4XDaisyPicker`

## 2. Verified B4X Syntax & Recipe

### Multi-Column Custom Picker
```b4x
Dim pkr As B4XDaisyPicker
pkr.Initialize(Me, "pkr")
pkr.AddToParent(pnlHost, pad, y, maxW, 200dip)
pkr.HighlightVariant = "primary"
pkr.VisibleItems = 5

' Add Column 1: Time of Day
Dim times As List = Array As String("Morning", "Afternoon", "Evening", "Night")
pkr.AddColumn("period", "Period", times, "Morning", 100dip)

' Add Column 2: Status
Dim statuses As List = Array As String("Available", "Busy", "Away", "Offline")
pkr.AddColumn("status", "Status", statuses, "Available", 120dip)

pkr.Refresh
y = y + pkr.GetComputedHeight + gap
```

### Date / Calendar Wheel Picker Pattern
```b4x
Dim datePkr As B4XDaisyPicker
datePkr.Initialize(Me, "datePkr")
datePkr.AddToParent(pnlHost, pad, y, maxW, 200dip)
datePkr.HighlightVariant = "secondary"
datePkr.VisibleItems = 5

' Quick Date Columns Builder
datePkr.AddColumnDay("day", 80dip)
datePkr.AddColumnMonth("month", 100dip)
datePkr.AddColumnYear("year", 2000, 2030, 90dip)
datePkr.Refresh
```

### Event Handling
```b4x
Private Sub pkr_Changed (ColumnName As String, Value As Object)
    Log("Column " & ColumnName & " changed to value: " & Value)
End Sub
```

## 3. Designer Properties
| Key | Type | Default | Description |
|---|---|---|---|
| `HighlightVariant` | String | primary | Color token for the selected row indicator (`primary`, `secondary`, `accent`, `neutral`, `info`, `success`, `warning`, `error`) |
| `VisibleItems` | Int | 5 | Number of visible wheel items (e.g. 3, 5, 7) |
| `Mode` | String | normal | Wheel scrolling mode |
| `FadeBackground` | Color | | Background fade overlay color |
| `HighlightBackground` | Color | | Selected row indicator background override |
| `ActiveTextColor` | Color | | Selected item text color |
| `HighlightRadius` | Int | 8 | Corner radius for highlight bar in dip |
| `PickerType` | String | custom | `custom` or `date` |
| `MinYear` | Int | 1900 | Minimum year boundary for date pickers |
| `MaxYear` | Int | 2100 | Maximum year boundary for date pickers |
| `ColumnDelimiter` | String | - | Delimiter for joined multi-column value output |
| `TextAlign` | String | CENTER | Horizontal text alignment (`LEFT`, `CENTER`, `RIGHT`) |
| `Rounded` | String | rounded-xl | Border radius token |
| `Shadow` | String | md | Elevation shadow token |

## 4. Declared Events
- `Changed (ColumnName As String, Value As Object)`

## 5. Public Methods & APIs
- `Initialize(oCallback As Object, sEventName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddColumn(sName As String, sTitle As String, lstOptions As List, sDefaultValue As String, iWidth As Int)`
- `AddColumnDay(sName As String, iWidth As Int)`: Adds 1-31 day numbers
- `AddColumnMonth(sName As String, iWidth As Int)`: Adds Jan-Dec months
- `AddColumnYear(sName As String, iMinYear As Int, iMaxYear As Int, iWidth As Int)`: Adds year range
- `AddOption(sColumnName As String, sValue As String, sDisplay As String)`
- `SetColumnValue(sColumnName As String, oValue As Object)`
- `GetColumnValue(sColumnName As String) As Object`
- `GetValue As String`: Returns formatted delimiter-separated value string
- `GetValueList As List`: Returns list of selected values per column
- `SetValue(sValue As String)`
- `SetValueList(lstValues As List)`
- `SetOptionDisabled(sColumnName As String, sValue As String, bDisabled As Boolean)`
- `Refresh`: Must be called after adding or updating columns
- `GetComputedHeight As Int`
- `View As B4XView`
