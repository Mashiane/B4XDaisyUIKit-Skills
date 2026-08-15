# segment (`B4XDaisySegment`)

Segmented control (tab-bar style) for single-option selection from a small set of choices.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySegment`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySegment.bas`
- **Verified Demos**: `B4XPageSegment.bas, B4XPageTagSphere.bas`
- **Web DaisyUI Mapping**: `.segment` → `B4XDaisySegment`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim seg As B4XDaisySegment
seg.Initialize(Me, "seg")
seg.AddToParent(pnlHost, pad, y, maxW, 44dip)
seg.ActiveColor = "primary"
seg.BackgroundColor = "neutral"
seg.ButtonSize = "md"
seg.Rounded = "full"

seg.AddButton("day", "Day", "")
seg.AddButton("week", "Week", "")
seg.AddButton("month", "Month", "")
seg.SetValue("week")
y = y + seg.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- iOS-style boxed segment tab bar for switching views or filtering.
- Configure segments via `ItemsSpec` (pipe-delimited string: `"All|Active|Completed"`).
- Set `SelectedIndex` (0-based) to set active segment.
- Handle switching in the `SegmentChange (Index As Int, Value As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| BackgroundColor | Background Color | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| ActiveColor | Active Color | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| ButtonLayout | Button Layout | String | icon-start | icon-start|icon-end|icon-top|icon-bottom|label-hide|icon-hide |
| Scrollable | Scrollable Segment | Boolean | False |  |
| ButtonSize | Button Size | String | md | xs|sm|md|lg|xl |
| Rounded | Rounded | String | md | none|sm|md|lg|xl|2xl|3xl|full |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Disabled | Disabled | Boolean | False |  |

## 5. Declared Events
- `Changed (Value As String)`

## 6. Public Methods & APIs
- `AddButton(Value As String, Text As String, IconPath As String)`
- `AddIcon(Value As String, IconPath As String)`
- `AddLabel(Value As String, Text As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetButtonEnabled(Value As String) As Boolean`
- `GetValue As String`
- `Initialize (Callback As Object, EventName As String)`
- `Refresh`
- `RemoveButton(Value As String)`
- `SetButtonColor(Value As String, Color As Int)`
- `SetButtonEnabled(Value As String, Enabled As Boolean)`
- `SetButtonIconColor(Value As String, Color As Int)`
- `SetButtonTextColor(Value As String, Color As Int)`
- `SetValue(NewValue As String)`
- `getActiveColor As String`
- `getBackgroundColor As Object`
- `getButtonLayout As String`
- `getButtonSize As String`
- `getDisabled As Boolean`
- `getRounded As String`
- `getScrollable As Boolean`
- `getShadow As String`
- `getTextSize As String`
- `setActiveColor(Value As String)`
- `setBackgroundColor(Value As Object)`
- `setButtonLayout(Value As String)`
- `setButtonSize(Value As String)`
- `setDisabled(Value As Boolean)`
- `setRounded(Value As String)`
- `setScrollable(Value As Boolean)`
- `setShadow(Value As String)`
- `setTextSize(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
