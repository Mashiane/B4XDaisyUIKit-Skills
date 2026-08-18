# button (`B4XDaisyButton`)

The primary action trigger. Supports text, icons, loading states, sizes, variants, and styles.

## 1. Overview
- **Class**: `B4XDaisyButton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyButton.bas`
- **Web DaisyUI Mapping**: `.button` → `B4XDaisyButton`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim btn As B4XDaisyButton
btn.Initialize(Me, "btn")
btn.AddToParent(pnlHost, pad, y, maxW, 44dip)
btn.Variant = "primary"
btn.Style = "solid"
btn.Size = "md"
btn.Text = "Submit"
y = y + btn.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- To create an icon-only circular button, set `Text = ""`, `Circle = True`, and assign `IconName`.
- Setting `Loading = True` replaces the button text with an animated spinner automatically.
- Never set `Width`/`Height` directly via field assignment; use `AddToParent` or size tokens (`setWidth`/`setHeight`).
- Use the primary variant (`Variant = "primary"`) **once per screen** for the main CTA; use `"neutral"` or `"ghost"` for secondary buttons.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Text | Text | String | Button |  |
| Variant | Variant | String | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| Style | Style | String | solid | solid|soft|outline|dash|ghost|link |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Width | Width | String | auto |  |
| Height | Height | String | auto |  |
| IconName | Icon Name | String |  |  |
| IconColor | Icon Color | Color | 0x00FFFFFF |  |
| Wide | Wide | Boolean | False |  |
| Block | Block | Boolean | False |  |
| Square | Square | Boolean | False |  |
| Circle | Circle | Boolean | False |  |
| Active | Active | Boolean | False |  |
| Disabled | Disabled | Boolean | False |  |
| Loading | Loading | Boolean | False |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| Visible | Visible | Boolean | True |  |
| TextAlignment | Text Alignment | String | CENTER | CENTER|LEFT|RIGHT |
| Glass | Glass | Boolean | False |  |
| ButtonSizeDip | Button Size (dip) | Int | 0 |  |
| IconSize | Icon Size (dip) | Int | 0 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActive As Boolean`
- `getBackgroundColor As Int`
- `getBlock As Boolean`
- `getBorderColor As Int`
- `getButtonSizeDip As Int`
- `getCircle As Boolean`
- `getClass As String`
- `GetComputedHeight As Int`
- `getDisabled As Boolean`
- `getEnabled As Boolean`
- `GetEstimateContentWidth As Int`
- `getGlass As Boolean`
- `getHeight As String`
- `getIconColor As Int`
- `getIconName As String`
- `getIconSize As Int`
- `getIsFocused As Boolean`
- `getLeft As Int`
- `getLoading As Boolean`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getShadow As String`
- `getSize As String`
- `getSquare As Boolean`
- `getStyle As String`
- `getTag As Object`
- `getText As String`
- `getTextAlignment As String`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWide As Boolean`
- `getWidth As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `setActive(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBlock(bValue As Boolean)`
- `setBorderColor(iValue As Int)`
- `setButtonSizeDip(iValue As Int)`
- `setCircle(bValue As Boolean)`
- `setClass(sValue As String)`
- `setDisabled(bValue As Boolean)`
- `setEnabled(bValue As Boolean)`
- `setFocus(bValue As Boolean)`
- `setGlass(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setIconColor(iValue As Int)`
- `setIconName(sValue As String)`
- `setIconSize(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLoading(bValue As Boolean)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setSquare(bValue As Boolean)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextAlignment(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWide(bValue As Boolean)`
- `setWidth(sValue As String)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
