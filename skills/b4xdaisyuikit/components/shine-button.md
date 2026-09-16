# shine-button (`B4XDaisyShineButton`)

DaisyUI `ShineButton` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyShineButton`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyShineButton.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyShineButton.bas)
- **Verified Demo Source**: B4XPageShineButton.bas
- **Web DaisyUI Mapping**: `.shine-button` → `B4XDaisyShineButton`

## 2. Verified B4X Syntax & Recipe
```b4x
' --- Row 1: xs, sm, md, lg ---
	' xs: 28dip
	Dim dsbXs As B4XDaisyShineButton
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
| `Shape` | Shape | `String` | heart | heart|like|smile|star|svg |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `CustomSize` | Custom Size | `Int` | 0 |  |
| `Variant` | Variant | `String` | primary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `SvgAsset` | SVG Asset | `String` |  |  |
| `Checked` | Checked | `Boolean` | False |  |
| `BtnColor` | Unchecked Color | `Color` | 0xFF9CA3AF |  |
| `BtnFillColor` | Fill Color | `Color` | 0x00FFFFFF |  |
| `BigShineColor` | Big Shine Color | `Color` | 0x00FFFFFF |  |
| `SmallShineColor` | Small Shine Color | `Color` | 0x00FFFFFF |  |
| `AllowRandomColor` | Random Particle Colors | `Boolean` | True |  |
| `EnableFlashing` | Enable Flashing | `Boolean` | False |  |
| `AnimDuration` | Animation Duration | `Int` | 1500 |  |
| `ClickAnimDuration` | Click Duration | `Int` | 200 |  |
| `ShineCount` | Particle Count | `Int` | 7 |  |
| `ShineTurnAngle` | Turn Angle | `Float` | 20 |  |
| `ShineDistanceMultiple` | Distance Multiple | `Float` | 1.5 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Clickable` | Clickable | `Boolean` | True |  |

## 5. Declared Events
- `CheckChanged (Checked As Boolean)`
- `Click`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(SizeDip As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `ApplyAllProperties`
- `Base_Resize(Width As Double, Height As Double)`
- `SetSvgAsset(FileName As String)`
- `SetSvg(Dir As String, FileName As String)`
- `SetSvgContent(SvgMarkup As String)`
- `SetShapeBitmap(Bmp As Bitmap)`
- `SetShapeResource(ResourceName As String)`
- `TriggerShine`
- `ShowAnim`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setShape(Value As String)`
- `getSvgAsset As String`
- `getShape As String`
- `setBtnColor(Color As Int)`
- `getBtnColor As Int`
- `setBtnFillColor(Color As Int)`
- `getBtnFillColor As Int`
- `setAllowRandomColor(Value As Boolean)`
- `getAllowRandomColor As Boolean`
- `setEnableFlashing(Value As Boolean)`
- `getEnableFlashing As Boolean`
- `setBigShineColor(Color As Int)`
- `getBigShineColor As Int`
- `setSmallShineColor(Color As Int)`
- `getSmallShineColor As Int`
- `setAnimDuration(Value As Int)`
- `getAnimDuration As Int`
- `setClickAnimDuration(Value As Int)`
- `getClickAnimDuration As Int`
- `setShineCount(Value As Int)`
- `getShineCount As Int`
- `setShineTurnAngle(Value As Float)`
- `getShineTurnAngle As Float`
- `setShineDistanceMultiple(Value As Float)`
- `getShineDistanceMultiple As Float`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

