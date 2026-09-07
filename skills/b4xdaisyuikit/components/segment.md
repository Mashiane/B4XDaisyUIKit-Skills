# segment (`B4XDaisySegment`)

DaisyUI `Segment` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySegment`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySegment.bas`
- **Verified Demo Source**: B4XPageSegment.bas, B4XPageTagSphere.bas
- **Web DaisyUI Mapping**: `.segment` → `B4XDaisySegment`

## 2. Verified B4X Syntax & Recipe
```b4x
' 1a. Icon Start
	y = pageScroll.AddSectionTitle("  - Icon Start", y, False)
	Dim segBasic As B4XDaisySegment
	segBasic.Initialize(Me, "segment")
	segBasic.BackgroundColor = "primary"
	segBasic.ButtonLayout = "icon-start"
	segBasic.AddButton("call", "Call", "phone-solid.svg")
	segBasic.AddButton("heart", "Heart", "heart-solid.svg")
	segBasic.AddButton("pin", "Pin", "location-dot-solid-full.svg")
	segBasic.SetValue("call")
	segBasic.AddToParent(pnlHost, padding, y, maxW, 40dip)
	y = y + segBasic.View.Height + gap

	' 1b. Icon End
	y = pageScroll.AddSectionTitle("  - Icon End", y, False)
	Dim segBasicEnd As B4XDaisySegment
	segBasicEnd.Initialize(Me, "segment")
	segBasicEnd.BackgroundColor = "secondary"
	segBasicEnd.ButtonLayout = "icon-end"
	segBasicEnd.AddButton("call", "Call", "phone-solid.svg")
	segBasicEnd.AddButton("heart", "Heart", "heart-solid.svg")
	segBasicEnd.AddButton("pin", "Pin", "location-dot-solid-full.svg")
	segBasicEnd.SetValue("call")
	segBasicEnd.AddToParent(pnlHost, padding, y, maxW, 40dip)
	y = y + segBasicEnd.View.Height + gap

	' 1c. Text Only
	y = pageScroll.AddSectionTitle("  - Text Only (No Icons)", y, False)
	Dim segBasicText As B4XDaisySegment
	segBasicText.Initialize(Me, "segment")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySegment` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Segmented switch requiring items registration and selection indexing.

### Deviation Mechanism
- Segmented switch requiring items registration and selection indexing.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetButtonTextColor, RemoveButton, SetButtonEnabled` (+ 13 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `BackgroundColor` | Background Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ActiveColor` | Active Color | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ButtonLayout` | Button Layout | `String` | icon-start | icon-start|icon-end|icon-top|icon-bottom|label-hide|icon-hide |
| `Scrollable` | Scrollable Segment | `Boolean` | False |  |
| `ButtonSize` | Button Size | `String` | md | xs|sm|md|lg|xl |
| `Rounded` | Rounded | `String` | md | none|sm|md|lg|xl|2xl|3xl|full |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Disabled` | Disabled | `Boolean` | False |  |

## 5. Declared Events
- `Changed (Value As String)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddButton(Value As String, Text As String, IconPath As String)`
- `AddIcon(Value As String, IconPath As String)`
- `AddLabel(Value As String, Text As String)`
- `SetButtonColor(Value As String, Color As Int)`
- `SetButtonTextColor(Value As String, Color As Int)`
- `SetButtonIconColor(Value As String, Color As Int)`
- `Refresh`
- `SetValue(NewValue As String)`
- `GetValue As String`
- `Base_Resize(Width As Double, Height As Double)`
- `Clear`
- `RemoveButton(Value As String)`
- `SetButtonEnabled(Value As String, Enabled As Boolean)`
- `GetButtonEnabled(Value As String) As Boolean`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `setButtonSize(Value As String)`
- `getButtonSize As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Object`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setButtonLayout(Value As String)`
- `getButtonLayout As String`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

