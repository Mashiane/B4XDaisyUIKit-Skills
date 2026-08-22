# segment (`B4XDaisySegment`)

DaisyUI `Segment` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySegment`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySegment.bas`
- **Verified Demo Source**: B4XPageSegment.bas (lines 8–537), B4XPageTagSphere.bas (lines 25–25)
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
| `BackgroundColor` | Background Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ActiveColor` | Active Color | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `ButtonLayout` | Button Layout | `String` | `icon-start` | icon-start|icon-end|icon-top|icon-bottom|label-hide|icon-hide |
| `Scrollable` | Scrollable Segment | `Boolean` | `False` |  |
| `ButtonSize` | Button Size | `String` | `md` | xs|sm|md|lg|xl |
| `Rounded` | Rounded | `String` | `md` | none|sm|md|lg|xl|2xl|3xl|full |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Disabled` | Disabled | `Boolean` | `False` |  |

## 5. Declared Events
- `Changed (Value As String)`

## 6. Public Methods & APIs
- `AddButton(sValue As String, sText As String, sIconPath As String)`
- `AddIcon(sValue As String, sIconPath As String)`
- `AddLabel(sValue As String, sText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Clear`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `GetButtonEnabled(sValue As String) As Boolean`
- `GetValue As String`
- `Initialize (oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveButton(sValue As String)`
- `SetButtonColor(sValue As String, iColor As Int)`
- `SetButtonEnabled(sValue As String, bEnabled As Boolean)`
- `SetButtonIconColor(sValue As String, iColor As Int)`
- `SetButtonTextColor(sValue As String, iColor As Int)`
- `SetValue(sNewValue As String)`
- `View As B4XView`
- `getActiveColor As String`
- `getBackgroundColor As Object`
- `getButtonLayout As String`
- `getButtonSize As String`
- `getDisabled As Boolean`
- `getRounded As String`
- `getScrollable As Boolean`
- `getShadow As String`
- `getTextSize As String`
- `setActiveColor(sValue As String)`
- `setBackgroundColor(oValue As Object)`
- `setButtonLayout(sValue As String)`
- `setButtonSize(sValue As String)`
- `setDisabled(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTextSize(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

