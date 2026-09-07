# status (`B4XDaisyStatus`)

DaisyUI `Status` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyStatus`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStatus.bas`
- **Verified Demo Source**: B4XPageStatus.bas
- **Web DaisyUI Mapping**: `.status` → `B4XDaisyStatus`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<span class="status {MODIFIER}"></span>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderPingSection(Section As Map, MaxW As Int, StartY As Int) As Int
	Dim y As Int = StartY
	Dim title As String = Section.GetDefault("title", "Status with ping animation")
	Dim note As String = Section.GetDefault("note", "Server is down")

	Dim titleLbl As B4XView = CreateSectionLabel(title, 14, xui.Color_RGB(30, 41, 59), True)
	pnlHost.AddView(titleLbl, PAGE_PAD, y, MaxW, 20dip)
	y = y + 22dip

	Dim rowPanel As B4XView = xui.CreatePanel("")
	rowPanel.Color = xui.Color_Transparent
	pnlHost.AddView(rowPanel, PAGE_PAD, y, MaxW, 1dip)

	Dim pingWrap As B4XView = xui.CreatePanel("")
	pingWrap.Color = xui.Color_Transparent
	rowPanel.AddView(pingWrap, 0, 0, 1dip, 1dip)

	Dim pulse As B4XDaisyStatus
	pulse.Initialize(Me, "status")
	pulse.setVariant("error")
	pulse.setSize("md")
	pulse.setDepth(1)
	pulse.setAnimation("pulse")
	Dim pulseView As B4XView = pulse.AddToParent(pingWrap, 0, 0, 0, 0)
	ServerPulseStatus = pulse

	Dim steady As B4XDaisyStatus
	steady.Initialize(Me, "status")
	steady.setVariant("error")
	steady.setSize("md")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyStatus` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, getSize, getAnimation` (+ 9 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` |  |  |
| `Height` | Height | `String` |  |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Animation` | Animation | `String` | none | none|pulse|bounce |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` | 1 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Clickable` | Clickable | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `Depth` | Depth | `Float` | -1 |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `CenterInParent(Parent As B4XView)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Value As String)`
- `getSize As String`
- `setAnimation(Value As String)`
- `getAnimation As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `setDepth(Value As Float)`
- `getDepth As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`

## 7. Public Fields
- `mBase As B4XView`

