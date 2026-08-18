# svg-icon (`B4XDaisySvgIcon`)

Renders an SVG from assets, inline string, or file path. Supports color tinting, sizing, variant colors, and shaped masks.

## 1. Overview
- **Class**: `B4XDaisySvgIcon`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySvgIcon.bas`
- **Web DaisyUI Mapping**: `.svg-icon` → `B4XDaisySvgIcon`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ico As B4XDaisySvgIcon
ico.Initialize(Me, "ico")
ico.AddToParent(pnlHost, pad, y, 32dip, 32dip)
ico.setSvgAsset("heart-solid.svg")
ico.setColorVariant("error")    ' or ico.Color = Colors.Red
y = y + ico.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Vector SVG icon renderer supporting FontAwesome and custom assets.
- Assign SVG icon asset name to `IconName` (e.g. `"user-solid.svg"`).
- Set semantic theme tint via `IconColor` or color variant.
- Set `Clickable = True` to handle taps in the `Click` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| SvgAsset | SVG Asset | String |  |  |
| Width | Width | String | w-6 |  |
| Height | Height | String | h-6 |  |
| Color | Color | Color | 0xFF3B82F6 |  |
| PreserveColors | Preserve Original Colors | Boolean | False |  |
| Padding | Padding | Int | 0 |  |
| BorderWidth | Border Width | Int | 0 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| RoundedBox | Rounded Box | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Clickable | Clickable | Boolean | True |  |
| SvgContent | SVG Content | String |  |  |
| SvgFile | SVG File | String |  |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `getClickable As Boolean`
- `getColor As Int`
- `GetComputedHeight As Int`
- `GetContentView As B4XView`
- `getHeight As Float`
- `getLastRenderer As String`
- `getPadding As Float`
- `getPreserveColors As Boolean`
- `getPreserveOriginalColors As Boolean`
- `getRoundedBox As Boolean`
- `getSvgAsset As String`
- `getSvgContent As String`
- `getTag As Object`
- `getVariant As String`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeToParent(vParentView As B4XView)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBorderColor(iValue As Int)`
- `setBorderColorVariant(sVariantName As String)`
- `setBorderWidth(fValue As Float)`
- `setClickable(bValue As Boolean)`
- `setColor(iValue As Int)`
- `setColorVariant(sVariantName As String)`
- `setHeight(oValue As Object)`
- `setPadding(fValue As Float)`
- `setPreserveColors(bValue As Boolean)`
- `setPreserveOriginalColors(bValue As Boolean)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(oValue As Object)`
- `setSvgAsset(sPath As String)`
- `setSvgContent(sContent As String)`
- `setSvgFile(sDir As String, sFileName As String)`
- `setTag(oValue As Object)`
- `setVariant(sValue As String)`
- `setWidth(oValue As Object)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
