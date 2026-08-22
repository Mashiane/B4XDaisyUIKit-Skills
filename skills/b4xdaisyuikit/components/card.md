# card (`B4XDaisyCard`)

DaisyUI `Card` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCard.bas`
- **Verified Demo Source**: B4XPageAura.bas (lines 185–218), B4XPageCard.bas (lines 68–321), B4XPageDrawer.bas (lines 95–123), B4XPageDrawerRail.bas (lines 149–387), B4XPageDrawerTree.bas (lines 96–155), B4XPageMediaPicker.bas (lines 20–20)
- **Web DaisyUI Mapping**: `.card` → `B4XDaisyCard`

## 2. Verified B4X Syntax & Recipe
```b4x
AddSectionTitle("User baseline card")
	Dim cBase As B4XDaisyCard
	cBase.Initialize(Me, "card")
	Dim vBase As B4XView = cBase.AddToParent(pnlHost, leftBase, currentY, baseW, 0)
	ApplyCardDefaults(cBase, "baseline")
	cBase.ImagePath = "photo-1606107557195-0e29a4b5b4aa.webp"
	SetCardContent(cBase, "Card Title", "A card component has a figure, a body part, and inside body there are title and actions parts", "Buy Now", "buynow")
	AddTitleBadges(cBase)
	cBase.Size = "md"
	cBase.Style = "none"
	cBase.LayoutMode = "top"
	cBase.Shadow = "sm"
	currentY = currentY + vBase.Height + SECTION_GAP
	Sleep(0)

	AddSectionTitle("Border and dash styles")
	Dim cBorder As B4XDaisyCard
	cBorder.Initialize(Me, "card")
	Dim vBorder As B4XView = cBorder.AddToParent(pnlHost, leftBase, currentY, baseW, 0)
	ApplyCardDefaults(cBorder, "border")
	cBorder.ImagePath = "photo-1606107557195-0e29a4b5b4aa.webp"
	cBorder.Style = "border"
	SetCardContent(cBorder, "Card Title", "A card component has a figure, a body part, and inside body there are title and actions parts", "Buy Now", "buynow")
	currentY = currentY + vBorder.Height + 10dip

	Dim cDash As B4XDaisyCard
	cDash.Initialize(Me, "card")
	Dim vDash As B4XView = cDash.AddToParent(pnlHost, leftBase, currentY, baseW, 0)
	ApplyCardDefaults(cDash, "dash")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCard` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setLeft, setTop, getFigureContainer` (+ 34 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `auto` |  |
| `Title` | Title | `String` | `Card Title` |  |
| `ImagePath` | Image Path | `String` | `` |  |
| `ImageWidth` | Image Width | `String` | `w-full` |  |
| `ImageHeight` | Image Height | `String` | `h-full` |  |
| `ImageClasses` | Image Classes | `String` | `` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Style` | Style | `String` | `none` | none|border|dash |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `LayoutMode` | Layout Mode | `String` | `top` | top|bottom|side|overlay|none |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextColor` | Text Color | `Color` | `0x00000000` |  |
| `PlaceItemsCenter` | Place Items Center | `Boolean` | `False` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | `sm` | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddAction(btn As B4XDaisyButton)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearImage`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `HideActions`
- `HideImage`
- `HideTitle`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetImage(bmpImage As B4XBitmap)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowActions`
- `ShowImage`
- `ShowTitle`
- `View As B4XView`
- `getActionsContainer As B4XView`
- `getActionsCount As Int`
- `getBackgroundColor As Int`
- `getBodyContainer As B4XView`
- `getBodyPartContainer As B4XView`
- `getCardActions As B4XView`
- `getCardBody As B4XView`
- `getCardTitle As B4XView`
- `getContainer As B4XView`
- `getFigureContainer As B4XView`
- `getHeight As String`
- `getImageClasses As String`
- `getImageHeight As String`
- `getImageWidth As String`
- `getLeft As Int`
- `getPlaceItemsCenter As Boolean`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTitle As String`
- `getTitleContainer As B4XView`
- `getTitleExtrasContainer As B4XView`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setHeight(sValue As String)`
- `setImageClasses(sValue As String)`
- `setImageHeight(sValue As String)`
- `setImagePath(sValue As String)`
- `setImageWidth(sValue As String)`
- `setLayoutMode(sValue As String)`
- `setLeft(iValue As Int)`
- `setPlaceItemsCenter(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

