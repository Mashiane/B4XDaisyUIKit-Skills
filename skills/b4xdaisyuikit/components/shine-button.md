# shine-button (`B4XDaisyShineButton`)

DaisyUI animated interactive toggle button with multi-color particle bursts, pure `File.DirAssets` asset loading (no `res/raw` required), and full DaisyUI size scale.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyShineButton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyShineButton.bas`
- **Verified Demos**: `B4XPageShineButton.bas`
- **Web DaisyUI Mapping**: `.shine-button` → `B4XDaisyShineButton`

## 2. Verified B4X Syntax & Recipe

### Standard Sizing Scale & Shapes
```b4x
' Size Scale: xs (28dip), sm (36dip), md (48dip), lg (64dip), xl (80dip)

' XS Heart
dsbXs.Initialize(Me, "dsbXs")
dsbXs.AddToParent(pnlSizes, 16dip, 26dip, 28dip, 28dip)
dsbXs.Shape = "heart"
dsbXs.Size = "xs"
dsbXs.Variant = "error"
dsbXs.AllowRandomColor = True
dsbXs.ApplyAllProperties

' SM Like (Thumbs Up)
dsbSm.Initialize(Me, "dsbSm")
dsbSm.AddToParent(pnlSizes, 76dip, 20dip, 36dip, 36dip)
dsbSm.Shape = "like"
dsbSm.Size = "sm"
dsbSm.Variant = "primary"
dsbSm.AllowRandomColor = True
dsbSm.ApplyAllProperties

' MD Smile
dsbMd.Initialize(Me, "dsbMd")
dsbMd.AddToParent(pnlSizes, 144dip, 12dip, 48dip, 48dip)
dsbMd.Shape = "smile"
dsbMd.Size = "md"
dsbMd.Variant = "warning"
dsbMd.AllowRandomColor = True
dsbMd.ApplyAllProperties

' LG Star
dsbLg.Initialize(Me, "dsbLg")
dsbLg.AddToParent(pnlSizes, 224dip, 4dip, 64dip, 64dip)
dsbLg.Shape = "star"
dsbLg.Size = "lg"
dsbLg.Variant = "success"
dsbLg.AllowRandomColor = True
dsbLg.ApplyAllProperties

' XL Custom SVG Icon from File.DirAssets
dsbXl.Initialize(Me, "dsbXl")
dsbXl.AddToParent(pnlSizes, 16dip, 105dip, 80dip, 80dip)
dsbXl.Size = "xl"
dsbXl.SetSvgAsset("palette-solid-full.svg")
dsbXl.Variant = "secondary"
dsbXl.AllowRandomColor = True
dsbXl.ApplyAllProperties
```

### Programmatic Control & Burst Animation
```b4x
' Programmatic checked state toggle
dsbHeart.Checked = Not(dsbHeart.Checked)

' Programmatic particle burst trigger
dsbHeart.TriggerShine   ' or dsbHeart.ShowAnim
```

### Event Handling
```b4x
Sub dsbHeart_CheckChanged (Checked As Boolean)
    Log("Heart checked = " & Checked)
End Sub

Sub dsbHeart_Click
    Log("Heart clicked")
End Sub
```

## 3. Native Composition Rules & Gotchas
- **Zero `res/` Dependency**: All shapes (`heart.png`, `like.png`, `smile.png`, `star.png`) and vector icons are loaded directly from `File.DirAssets`. There is NO need for `res/raw` or `#AdditionalRes: res`.
- **Built-in Shapes**: `"heart"`, `"like"`, `"smile"`, `"star"`.
- **Custom Shapes & SVGs**: Use `.SetSvgAsset("icon.svg")`, `.SetSvg(Dir, FileName)`, or `.SetShapeBitmap(bmp)` to use any custom asset.
- **DaisyUI Size Scale**: Supports `"xs"` (28dip), `"sm"` (36dip), `"md"` (48dip), `"lg"` (64dip), `"xl"` (80dip), or custom pixel width/height via `CustomSize`.
- **Semantic Colors**: Auto-derives fill and particle burst colors from the semantic `Variant` (`"primary"`, `"secondary"`, `"accent"`, `"info"`, `"success"`, `"warning"`, `"error"`, `"neutral"`).
- **Particle Customization**: Customize particle colors (`BigShineColor`, `SmallShineColor`), count (`ShineCount`), rotation (`ShineTurnAngle`), spread distance multiplier (`ShineDistanceMultiple`), and animation durations (`AnimDuration`, `ClickAnimDuration`).
- **Always Call `ApplyAllProperties`** after dynamically configuring properties in code.

## 4. Designer Properties
| Key | Display Name | Field Type | Default Value | List / Options | Description |
|---|---|---|---|---|---|
| Shape | Shape | String | heart | heart\|like\|smile\|star\|svg | Built-in shape or custom SVG asset |
| Size | Size | String | md | xs\|sm\|md\|lg\|xl | DaisyUI size token (xs=28dip, sm=36dip, md=48dip, lg=64dip, xl=80dip) |
| CustomSize | Custom Size | Int | 0 | | Custom width/height in dip (overrides Size token when > 0) |
| Variant | Variant | String | primary | default\|neutral\|primary\|secondary\|accent\|info\|success\|warning\|error\|none | Semantic color variant for checked state |
| SvgAsset | SVG Asset | String | | | SVG file name from File.DirAssets (used when Shape=svg or to override shape) |
| Checked | Checked | Boolean | False | | Initial checked state |
| BtnColor | Unchecked Color | Color | 0xFF9CA3AF | | Unchecked icon color |
| BtnFillColor | Fill Color | Color | 0x00FFFFFF | | Override checked fill color (0 = auto from Variant) |
| BigShineColor | Big Shine Color | Color | 0x00FFFFFF | | Main burst particle color (0 = auto) |
| SmallShineColor | Small Shine Color | Color | 0x00FFFFFF | | Secondary sparkle color (0 = auto) |
| AllowRandomColor | Random Particle Colors | Boolean | True | | Enables multi-colored burst particles |
| EnableFlashing | Enable Flashing | Boolean | False | | Flashes random colors during burst |
| AnimDuration | Animation Duration | Int | 1500 | | Particle burst duration in ms |
| ClickAnimDuration | Click Duration | Int | 200 | | Button press bounce duration in ms |
| ShineCount | Particle Count | Int | 7 | | Number of starburst particles |
| ShineTurnAngle | Turn Angle | Float | 20 | | Rotation angle for flying particles |
| ShineDistanceMultiple | Distance Multiple | Float | 1.5 | | Particle spread radius multiplier |
| Visible | Visible | Boolean | True | | Show or hide component |
| Clickable | Clickable | Boolean | True | | Enable or disable touch events |

## 5. Declared Events
- `CheckChanged (Checked As Boolean)`: Fired when button toggle state changes.
- `Click`: Fired when button is tapped.

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ApplyAllProperties`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(SizeDip As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `SetShapeBitmap(Bmp As Bitmap)`
- `SetShapeResource(ResourceName As String)`
- `SetSvg(Dir As String, FileName As String)`
- `SetSvgAsset(FileName As String)`
- `SetSvgContent(SvgMarkup As String)`
- `ShowAnim`
- `TriggerShine`
- `getAllowRandomColor As Boolean`
- `getAnimDuration As Int`
- `getBigShineColor As Int`
- `getBtnColor As Int`
- `getBtnFillColor As Int`
- `getChecked As Boolean`
- `getClickAnimDuration As Int`
- `getEnableFlashing As Boolean`
- `getShape As String`
- `getShineCount As Int`
- `getShineDistanceMultiple As Float`
- `getShineTurnAngle As Float`
- `getSize As String`
- `getSmallShineColor As Int`
- `getSvgAsset As String`
- `getVariant As String`
- `getVisible As Boolean`
- `setAllowRandomColor(Value As Boolean)`
- `setAnimDuration(Value As Int)`
- `setBigShineColor(Color As Int)`
- `setBtnColor(Color As Int)`
- `setBtnFillColor(Color As Int)`
- `setChecked(Value As Boolean)`
- `setClickAnimDuration(Value As Int)`
- `setEnableFlashing(Value As Boolean)`
- `setShape(Value As String)`
- `setShineCount(Value As Int)`
- `setShineDistanceMultiple(Value As Float)`
- `setShineTurnAngle(Value As Float)`
- `setSize(Value As String)`
- `setSmallShineColor(Color As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
