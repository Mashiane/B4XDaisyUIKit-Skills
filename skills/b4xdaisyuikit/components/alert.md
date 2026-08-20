# alert (`B4XDaisyAlert`)

Feedback banner for info, success, warning, or error messages. Supports icons, actions, and directional layouts.

## 1. Overview
- **Class**: `B4XDaisyAlert`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAlert.bas`
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
- `AddActionButton(sText As String, oTag As Object) As B4XView`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `applyActiveTheme`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `ClearActions`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActionSpacing As Float`
- `getAlertStyle As String`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
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
- `GetVisualColors As Map`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RaiseActionClick(oTag As Object)`
- `RemoveViewFromParent`
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
- `SizeToFit(iAvailableWidth As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
