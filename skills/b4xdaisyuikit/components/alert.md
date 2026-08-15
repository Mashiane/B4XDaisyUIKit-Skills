# alert (`B4XDaisyAlert`)

Feedback banner for info, success, warning, or error messages. Supports icons, actions, and directional layouts.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAlert`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAlert.bas`
- **Verified Demos**: `B4XPageAlert.bas`
- **Web DaisyUI Mapping**: `.alert` → `B4XDaisyAlert`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim al As B4XDaisyAlert
al.Initialize(Me, "al")
al.AddToParent(pnlHost, pad, y, maxW, 60dip)
al.Variant = "success"
al.AlertStyle = "soft"
al.Title = "Done"
al.Text = "Your profile was saved."
al.IconAsset = "check-circle-solid.svg"
y = y + al.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- `GetComputedHeight` dynamically reflects auto-resized text; read it after setting all properties.
- Use `Direction = "vertical"` to stack icon, message text, and action buttons top-to-bottom.
- Use `Direction = "horizontal"` (default) for single-line inline notification banners.
- `AddActionButton` returns the raw view; handle taps via the `ActionClick (Tag As Object)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | full |  |
| Height | Height | String | h-12 |  |
| Variant | Variant | String | none | none|info|success|warning|error|primary|secondary|accent|neutral |
| AlertStyle | Style | String | solid | solid|soft|outline|dash |
| Direction | Direction | String | horizontal | horizontal|vertical |
| Title | Title | String |  |  |
| Text | Text | String | 12 unread messages. Tap to see. |  |
| Description | Description | String |  |  |
| IconAsset | Icon Asset | String |  |  |
| IconSize | Icon Size | String | 6 |  |
| RoundedBox | Rounded Box | Boolean | True |  |
| BorderWidth | Border Width | Int | 1 |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| ActionSpacing | Action Spacing | Int | 6 |  |
| AutoResize | Auto Resize | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| IconColor | Icon Color | Color | 0x00FFFFFF |  |
| IconVisible | Icon Visible | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Tag As Object)`

## 6. Public Methods & APIs
- `AddActionButton(Text As String, Tag As Object) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `ClearActions`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `GetVisualColors As Map`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `RaiseActionClick(Tag As Object)`
- `RemoveViewFromParent`
- `SizeToFit(AvailableWidth As Int)`
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
- `setActionSpacing(Value As Float)`
- `setAlertStyle(Value As String)`
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Color As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBorderColor(Color As Int)`
- `setBorderColorVariant(VariantName As String)`
- `setBorderWidth(Value As Float)`
- `setDescription(Value As String)`
- `setDirection(Value As String)`
- `setHeight(Value As Object)`
- `setIconAsset(Path As String)`
- `setIconColor(Value As Object)`
- `setIconSize(Value As Object)`
- `setIconVisible(Value As Boolean)`
- `setMessage(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Color As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTitle(Value As String)`
- `setVariant(Value As String)`
- `setVariantPalette(Palette As Map)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
