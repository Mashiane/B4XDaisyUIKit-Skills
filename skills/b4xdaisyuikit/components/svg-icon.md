# svg-icon (`B4XDaisySvgIcon`)

DaisyUI `SvgIcon` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySvgIcon`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisySvgIcon.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisySvgIcon.bas)
- **Verified Demo Source**: B4XPageDropdown.bas, B4XPageIndicator.bas, B4XPageNavbar.bas, B4XPageSvgIcon.bas
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
| `SvgAsset` | SVG Asset | `String` |  |  |
| `Width` | Width | `String` | w-6 |  |
| `Height` | Height | `String` | h-6 |  |
| `Color` | Color | `Color` | 0xFF3B82F6 |  |
| `PreserveColors` | Preserve Original Colors | `Boolean` | False |  |
| `Padding` | Padding | `Int` | 0 |  |
| `BorderWidth` | Border Width | `Int` | 0 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `Rounded` | Rounded | `String` | rounded-none | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Clickable` | Clickable | `Boolean` | True |  |
| `SvgContent` | SVG Content | `String` |  |  |
| `SvgFile` | SVG File | `String` |  |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `ResizeToParent(ParentView As B4XView)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetContentView As B4XView`
- `setSvgAsset(Path As String)`
- `setSvgFile(Dir As String, FileName As String)`
- `getSvgAsset As String`
- `setSvgContent(Content As String)`
- `getSvgContent As String`
- `setColor(Value As Int)`
- `getColor As Int`
- `setColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setPreserveOriginalColors(Value As Boolean)`
- `getPreserveOriginalColors As Boolean`
- `setPreserveColors(Value As Boolean)`
- `getPreserveColors As Boolean`
- `getLastRenderer As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setPadding(Value As Float)`
- `getPadding As Float`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setSize(Value As Object)`
- `Refresh`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
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

