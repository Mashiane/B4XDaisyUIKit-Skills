# svg-icon (`B4XDaisySvgIcon`)

DaisyUI `SvgIcon` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySvgIcon`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisySvgIcon.bas`
- **Verified Demo Source**: B4XPageDropdown.bas (lines 96–96), B4XPageIndicator.bas (lines 354–354), B4XPageNavbar.bas (lines 202–696), B4XPageSvgIcon.bas (lines 80–216)
- **Web DaisyUI Mapping**: `.svg-icon` → `B4XDaisySvgIcon`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim iconTop As Int = cellTop

		Dim iconComp As B4XDaisySvgIcon
		iconComp.Initialize(Me, "")
		Dim iconView As B4XView = iconComp.AddToParent(card, iconLeft, iconTop, iconSize, iconSize)
		iconComp.setSvgAsset("book-open-solid.svg")
		iconComp.setPreserveOriginalColors(False)
		iconComp.setColorVariant(v)
		iconComp.setSize("28px")
		iconComp.ResizeToParent(iconView)

		Dim lbl As Label
		lbl.Initialize("")
		Dim xLbl As B4XView = lbl
		xLbl.Text = v
		xLbl.Font = xui.CreateDefaultFont(11)
		xLbl.TextColor = xui.Color_RGB(71, 85, 105)
		xLbl.SetTextAlignment("CENTER", "CENTER")
		card.AddView(xLbl, cellLeft, iconTop + iconSize + 4dip, cellW, 16dip)
	Next

	y = y + cardH + 14dip
	Return y
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySvgIcon` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setSvgFile, getSvgAsset, setSvgContent` (+ 16 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `SvgAsset` | SVG Asset | `String` | `` |  |
| `Width` | Width | `String` | `w-6` |  |
| `Height` | Height | `String` | `h-6` |  |
| `Color` | Color | `Color` | `0xFF3B82F6` |  |
| `PreserveColors` | Preserve Original Colors | `Boolean` | `False` |  |
| `Padding` | Padding | `Int` | `0` |  |
| `BorderWidth` | Border Width | `Int` | `0` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `Rounded` | Rounded | `String` | `rounded-none` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `SvgContent` | SVG Content | `String` | `` |  |
| `SvgFile` | SVG File | `String` | `` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetContentView As B4XView`
- `Initialize (oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeToParent(vParentView As B4XView)`
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
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getSvgAsset As String`
- `getSvgContent As String`
- `getTag As Object`
- `getVariant As String`
- `getWidth As Float`
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
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(oValue As Object)`
- `setSvgAsset(sPath As String)`
- `setSvgContent(sContent As String)`
- `setSvgFile(sDir As String, sFileName As String)`
- `setTag(oValue As Object)`
- `setVariant(sValue As String)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

