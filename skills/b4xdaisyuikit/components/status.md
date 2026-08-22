# status (`B4XDaisyStatus`)

DaisyUI `Status` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyStatus`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStatus.bas`
- **Verified Demo Source**: B4XPageStatus.bas (lines 17–256)
- **Web DaisyUI Mapping**: `.status` → `B4XDaisyStatus`

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
| `Width` | Width | `String` | `` |  |
| `Height` | Height | `String` | `` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Animation` | Animation | `String` | `none` | none|pulse|bounce |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `1` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `Depth` | Depth | `Float` | `-1` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CenterInParent(vParent As B4XView)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `View As B4XView`
- `getAnimation As String`
- `getBackgroundColor As Int`
- `getClickable As Boolean`
- `getDepth As Float`
- `getHeight As Float`
- `getMargin As String`
- `getPadding As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `setAnimation(sValue As String)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setClickable(bValue As Boolean)`
- `setDepth(fValue As Float)`
- `setHeight(oValue As Object)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

