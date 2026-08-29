# alert (`B4XDaisyAlert`)

DaisyUI `Alert` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyAlert`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyAlert.bas`
- **Verified Demo Source**: B4XPageAlert.bas (lines 136–233), B4XMainPage.bas (lines 127–651)
- **Web DaisyUI Mapping**: `.alert` → `B4XDaisyAlert`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``alert`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``alert-outline`, `alert-dash`, `alert-soft`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `color` | ``alert-info`, `alert-success`, `alert-warning`, `alert-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `direction` | ``alert-vertical`, `alert-horizontal`` | Property | `.Direction = "vertical"` / `.Orientation = "vertical"` | Flow orientation |

### Web DaisyUI HTML Syntax
```html
<div role="alert" class="alert {MODIFIER}">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddAlertSample(Def As Map)
	' Required identity and caption text for one sample.
	Dim id As String = Def.Get("id")
	Dim title As String = Def.Get("title")
	' Optional initial dimensions with safe defaults.
	Dim w As Int = Def.GetDefault("w", 0)
	Dim h As Int = Def.GetDefault("h", 48dip)
	' AddToParent requires a positive size, so seed full-width samples with current page width.
	Dim initialW As Int = IIf(w <= 0, Max(1dip, Root.Width - 24dip), w)

	' Create the title label and alert component, then register for layout.
	Dim lbl As B4XDaisyText = CreateAlertLabel(title)
	Dim alert As B4XDaisyAlert
	' Subscribe to alert events with the "alert_" event prefix.
	alert.Initialize(Me, "alert")
	' Store logical sample id in the component tag.
	alert.SetTag(id)
	' Apply only properties declared in this map.
	ApplyAlertDef(alert, Def)
	' Create and add the visual instance to the host panel.
	Dim alertView As B4XView = alert.AddToParent(pnlHost, 0, 0, initialW, h)
	' Add optional sample-specific runtime extras.
	ApplyAlertExtras(id, alert)
	' Track metadata used by the layout engine.
	AddAlertItem(id, lbl, alert, alertView, w, h)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAlert` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddViewToContent, GetVisualColors, RaiseActionClick` (+ 31 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `full` |  |
| `Height` | Height | `String` | `h-12` |  |
| `Variant` | Variant | `String` | `none` | none|info|success|warning|error|primary|secondary|accent|neutral |
| `AlertStyle` | Style | `String` | `solid` | solid|soft|outline|dash |
| `Direction` | Direction | `String` | `horizontal` | horizontal|vertical |
| `Title` | Title | `String` | `` |  |
| `Text` | Text | `String` | `12 unread messages. Tap to see.` |  |
| `Description` | Description | `String` | `` |  |
| `IconAsset` | Icon Asset | `String` | `` |  |
| `IconSize` | Icon Size | `String` | `6` |  |
| `Rounded` | Rounded | `String` | `rounded-box` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `BorderWidth` | Border Width | `Int` | `1` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `ActionSpacing` | Action Spacing | `Int` | `6` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `IconColor` | Icon Color | `Color` | `0x00FFFFFF` |  |
| `IconVisible` | Icon Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Tag As Object)`

## 6. Public Methods & APIs
- `AddActionButton(sText As String, oTag As Object) As B4XView`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `ClearActions`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `GetVisualColors As Map`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RaiseActionClick(oTag As Object)`
- `RemoveViewFromParent`
- `SizeToFit(iAvailableWidth As Int)`
- `View As B4XView`
- `applyActiveTheme`
- `getActionSpacing As Float`
- `getAlertStyle As String`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `getDescription As String`
- `getDirection As String`
- `getHeight As Float`
- `getIconAsset As String`
- `getIconColor As Int`
- `getIconSize As Float`
- `getIconVisible As Boolean`
- `getMessage As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getStyle As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTitle As String`
- `getVariant As String`
- `getVariantPalette As Map`
- `getWidth As Float`
- `resetBorderWidthToTheme`
- `setActionSpacing(fValue As Float)`
- `setAlertStyle(sValue As String)`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iColor As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBorderColor(iColor As Int)`
- `setBorderColorVariant(sVariantName As String)`
- `setBorderWidth(fValue As Float)`
- `setDescription(sValue As String)`
- `setDirection(sValue As String)`
- `setHeight(oValue As Object)`
- `setIconAsset(sPath As String)`
- `setIconColor(oValue As Object)`
- `setIconSize(oValue As Object)`
- `setIconVisible(bValue As Boolean)`
- `setMessage(sValue As String)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iColor As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTitle(sValue As String)`
- `setVariant(sValue As String)`
- `setVariantPalette(mPalette As Map)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

