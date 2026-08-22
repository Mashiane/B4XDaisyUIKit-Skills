# shine-button (`B4XDaisyShineButton`)

DaisyUI `ShineButton` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyShineButton`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyShineButton.bas`
- **Verified Demo Source**: B4XPageShineButton.bas (lines 17–28)
- **Web DaisyUI Mapping**: `.shine-button` → `B4XDaisyShineButton`

## 2. Verified B4X Syntax & Recipe
```b4x
' --- Row 1: xs, sm, md, lg ---
	' xs: 28dip
	dsbXs.Initialize(Me, "dsbXs")
	dsbXs.AddToParent(pnlSizes, 16dip, 26dip, 28dip, 28dip)
	dsbXs.Shape = "heart"
	dsbXs.Size = "xs"
	dsbXs.Variant = "error"
	dsbXs.AllowRandomColor = True
	dsbXs.ApplyAllProperties

	Dim lblXs As Label = CreateMiniLabel("XS (28dip)")
	pnlSizes.AddView(lblXs, 8dip, 60dip, 44dip, 20dip)

	' sm: 36dip
	dsbSm.Initialize(Me, "dsbSm")
	dsbSm.AddToParent(pnlSizes, 76dip, 20dip, 36dip, 36dip)
	dsbSm.Shape = "like"
	dsbSm.Size = "sm"
	dsbSm.Variant = "primary"
	dsbSm.AllowRandomColor = True
	dsbSm.ApplyAllProperties

	Dim lblSm As Label = CreateMiniLabel("SM (36dip)")
	pnlSizes.AddView(lblSm, 68dip, 60dip, 52dip, 20dip)

	' md: 48dip (Default)
	dsbMd.Initialize(Me, "dsbMd")
	dsbMd.AddToParent(pnlSizes, 144dip, 12dip, 48dip, 48dip)
	dsbMd.Shape = "smile"
	dsbMd.Size = "md"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyShineButton` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetSvg, SetSvgContent, SetShapeBitmap` (+ 30 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Shape` | Shape | `String` | `heart` | heart|like|smile|star|svg |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `CustomSize` | Custom Size | `Int` | `0` |  |
| `Variant` | Variant | `String` | `primary` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `SvgAsset` | SVG Asset | `String` | `` |  |
| `Checked` | Checked | `Boolean` | `False` |  |
| `BtnColor` | Unchecked Color | `Color` | `0xFF9CA3AF` |  |
| `BtnFillColor` | Fill Color | `Color` | `0x00FFFFFF` |  |
| `BigShineColor` | Big Shine Color | `Color` | `0x00FFFFFF` |  |
| `SmallShineColor` | Small Shine Color | `Color` | `0x00FFFFFF` |  |
| `AllowRandomColor` | Random Particle Colors | `Boolean` | `True` |  |
| `EnableFlashing` | Enable Flashing | `Boolean` | `False` |  |
| `AnimDuration` | Animation Duration | `Int` | `1500` |  |
| `ClickAnimDuration` | Click Duration | `Int` | `200` |  |
| `ShineCount` | Particle Count | `Int` | `7` |  |
| `ShineTurnAngle` | Turn Angle | `Float` | `20` |  |
| `ShineDistanceMultiple` | Distance Multiple | `Float` | `1.5` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Clickable` | Clickable | `Boolean` | `True` |  |

## 5. Declared Events
- `CheckChanged (Checked As Boolean)`
- `Click`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `ApplyAllProperties`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iSizeDip As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `SetShapeBitmap(Bmp As Bitmap)`
- `SetShapeResource(sResourceName As String)`
- `SetSvg(sDir As String, sFileName As String)`
- `SetSvgAsset(sFileName As String)`
- `SetSvgContent(sSvgMarkup As String)`
- `ShowAnim`
- `TriggerShine`
- `View As B4XView`
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
- `setAllowRandomColor(bValue As Boolean)`
- `setAnimDuration(iValue As Int)`
- `setBigShineColor(iColor As Int)`
- `setBtnColor(iColor As Int)`
- `setBtnFillColor(iColor As Int)`
- `setChecked(bValue As Boolean)`
- `setClickAnimDuration(iValue As Int)`
- `setEnableFlashing(bValue As Boolean)`
- `setShape(sValue As String)`
- `setShineCount(iValue As Int)`
- `setShineDistanceMultiple(fValue As Float)`
- `setShineTurnAngle(fValue As Float)`
- `setSize(sValue As String)`
- `setSmallShineColor(iColor As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

