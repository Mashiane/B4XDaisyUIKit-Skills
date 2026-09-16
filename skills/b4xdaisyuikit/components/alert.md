# alert (`B4XDaisyAlert`)

DaisyUI `Alert` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAlert`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyAlert.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyAlert.bas)
- **Verified Demo Source**: B4XPageAlert.bas
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
| `Width` | Width | `String` | full |  |
| `Height` | Height | `String` | h-12 |  |
| `Variant` | Variant | `String` | none | none|info|success|warning|error|primary|secondary|accent|neutral |
| `AlertStyle` | Style | `String` | solid | solid|soft|outline|dash |
| `Direction` | Direction | `String` | horizontal | horizontal|vertical |
| `Title` | Title | `String` |  |  |
| `Text` | Text | `String` | 12 unread messages. Tap to see. |  |
| `Description` | Description | `String` |  |  |
| `IconAsset` | Icon Asset | `String` |  |  |
| `IconSize` | Icon Size | `String` | 6 |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `BorderWidth` | Border Width | `Int` | 1 |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `ActionSpacing` | Action Spacing | `Int` | 6 |  |
| `AutoResize` | Auto Resize | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `IconColor` | Icon Color | `Color` | 0x00FFFFFF |  |
| `IconVisible` | Icon Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearActions`
- `GetContentPanel As B4XView`
- `AddActionButton(Text As String, Tag As Object) As B4XView`
- `IsReady As Boolean`
- `GetVisualColors As Map`
- `SizeToFit(AvailableWidth As Int)`
- `RaiseActionClick(Tag As Object)`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setAlertStyle(Value As String)`
- `getAlertStyle As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setTitle(Value As String)`
- `getTitle As String`
- `setText(Value As String)`
- `getText As String`
- `setMessage(Value As String)`
- `getMessage As String`
- `setDescription(Value As String)`
- `getDescription As String`
- `setIconVisible(Value As Boolean)`
- `getIconVisible As Boolean`
- `setIconAsset(Path As String)`
- `getIconAsset As String`
- `setIconSize(Value As Object)`
- `getIconSize As Float`
- `setIconColor(Value As Object)`
- `getIconColor As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `resetBorderWidthToTheme`
- `setShadow(Value As String)`
- `getShadow As String`
- `setActionSpacing(Value As Float)`
- `getActionSpacing As Float`
- `setVariantPalette(Palette As Map)`
- `getVariantPalette As Map`
- `applyActiveTheme`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

