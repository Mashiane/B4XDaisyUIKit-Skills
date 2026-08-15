# svg-icon (`B4XDaisySvgIcon`)

Renders an SVG from assets, inline string, or file path. Supports color tinting, sizing, variant colors, and shaped masks.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySvgIcon`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySvgIcon.bas`
- **Verified Demos**: `B4XPageDropdown.bas, B4XPageIndicator.bas, B4XPageNavbar.bas, B4XPageSvgIcon.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize (Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetContentView As B4XView`
- `Initialize (Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeToParent(ParentView As B4XView)`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `getClickable As Boolean`
- `getColor As Int`
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
- `getView As B4XView`
- `getWidth As Float`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `setBorderColorVariant(VariantName As String)`
- `setBorderWidth(Value As Float)`
- `setClickable(Value As Boolean)`
- `setColor(Value As Int)`
- `setColorVariant(VariantName As String)`
- `setHeight(Value As Object)`
- `setPadding(Value As Float)`
- `setPreserveColors(Value As Boolean)`
- `setPreserveOriginalColors(Value As Boolean)`
- `setRoundedBox(Value As Boolean)`
- `setSize(Value As Object)`
- `setSvgAsset(Path As String)`
- `setSvgContent(Content As String)`
- `setSvgFile(Dir As String, FileName As String)`
- `setTag(Value As Object)`
- `setVariant(Value As String)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
