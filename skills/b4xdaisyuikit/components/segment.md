# segment (`B4XDaisySegment`)

Segmented control (tab-bar style) for single-option selection from a small set of choices.

## 1. Overview
- **Class**: `B4XDaisySegment`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySegment.bas`
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
- `AddButton(sValue As String, sText As String, sIconPath As String)`
- `AddIcon(sValue As String, sIconPath As String)`
- `AddLabel(sValue As String, sText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Clear`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActiveColor As String`
- `getBackgroundColor As Object`
- `GetButtonEnabled(sValue As String) As Boolean`
- `getButtonLayout As String`
- `getButtonSize As String`
- `getDisabled As Boolean`
- `getRounded As String`
- `getScrollable As Boolean`
- `getShadow As String`
- `getTextSize As String`
- `GetValue As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveButton(sValue As String)`
- `setActiveColor(sValue As String)`
- `setBackgroundColor(oValue As Object)`
- `SetButtonColor(sValue As String, iColor As Int)`
- `SetButtonEnabled(sValue As String, bEnabled As Boolean)`
- `SetButtonIconColor(sValue As String, iColor As Int)`
- `setButtonLayout(sValue As String)`
- `setButtonSize(sValue As String)`
- `SetButtonTextColor(sValue As String, iColor As Int)`
- `setDisabled(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTextSize(sValue As String)`
- `SetValue(sNewValue As String)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
