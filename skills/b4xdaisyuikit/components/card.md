# card (`B4XDaisyCard`)

DaisyUI `Card` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCard`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCard.bas`
- **Verified Demo Source**: B4XPageAura.bas, B4XPageCard.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageMediaPicker.bas
- **Web DaisyUI Mapping**: `.card` → `B4XDaisyCard`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``card`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``card-title`, `card-body`, `card-actions`` | Sub-Panel | `GetTitlePanel`, `GetContentPanel`, `GetActionsPanel` | Mount child views inside target sub-panel |
| `style` | ``card-border`, `card-dash`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `modifier` | ``card-side`, `image-full`` | Property | `.LayoutMode = "side"` | Places media/figure alongside body |
| `size` | ``card-xs`, `card-sm`, `card-md`, `card-lg`, `card-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<div class="card {MODIFIER}">
  <figure><img src="{image-url}" alt="{alt-text}" /></figure>
  <div class="card-body">
    <h2 class="card-title">{title}</h2>
    <p>{CONTENT}</p>
    <div class="card-actions">{actions}</div>
  </div>
</div>
```

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
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | auto |  |
| `Title` | Title | `String` | Card Title |  |
| `ImagePath` | Image Path | `String` |  |  |
| `ImageWidth` | Image Width | `String` | w-full |  |
| `ImageHeight` | Image Height | `String` | h-full |  |
| `ImageClasses` | Image Classes | `String` |  |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Style` | Style | `String` | none | none|border|dash |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `LayoutMode` | Layout Mode | `String` | top | top|bottom|side|overlay|none |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `PlaceItemsCenter` | Place Items Center | `Boolean` | False |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | sm | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `setTop(Value As Int)`
- `getFigureContainer As B4XView`
- `getCardBody As B4XView`
- `getBodyPartContainer As B4XView`
- `getTitleContainer As B4XView`
- `getCardTitle As B4XView`
- `getCardActions As B4XView`
- `getContainer As B4XView`
- `getBodyContainer As B4XView`
- `getTitleExtrasContainer As B4XView`
- `getActionsContainer As B4XView`
- `AddAction(btn As B4XDaisyButton)`
- `getActionsCount As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `setTitle(Value As String)`
- `getTitle As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setImagePath(Value As String)`
- `setImageWidth(Value As String)`
- `getImageWidth As String`
- `setImageHeight(Value As String)`
- `getImageHeight As String`
- `setImageClasses(Value As String)`
- `getImageClasses As String`
- `SetImage(bmpImage As B4XBitmap)`
- `ClearImage`
- `setSize(Value As String)`
- `getSize As String`
- `setStyle(Value As String)`
- `setPlaceItemsCenter(Value As Boolean)`
- `getPlaceItemsCenter As Boolean`
- `ShowTitle`
- `HideTitle`
- `ShowActions`
- `HideActions`
- `ShowImage`
- `HideImage`
- `setVariant(Value As String)`
- `getVariant As String`
- `setLayoutMode(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setVisible(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColorVariant(VariantName As String)`
- `getLeft As Int`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `BringToFront`
- `SendToBack`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyCard` is a composite container with dedicated sub-panels for title, body content, and action buttons.

```vb
Dim card As B4XDaisyCard
card.Initialize(Me, "card")
card.AddToParent(pnlHost, x, y, maxW, 0)
card.ImagePath = "sample.webp"                 ' Top/side image asset
card.LayoutMode = "top"                        ' "top" | "side" | "bottom" | "responsive"
card.Style = "border"                          ' "none" | "border" | "dash"
card.Shadow = "md"                             ' "none" | "sm" | "md" | "lg" | "xl"

' 1. Title sub-panel:
Dim pnlTitle As B4XView = card.GetTitlePanel
Dim txtT As B4XDaisyText
txtT.Initialize(Me, "")
txtT.AddToParent(pnlTitle, 0, 0, pnlTitle.Width, 24dip)
txtT.Text = "Card Title"
txtT.FontBold = True

' 2. Body sub-panel:
Dim pnlContent As B4XView = card.GetContentPanel
Dim txtB As B4XDaisyText
txtB.Initialize(Me, "")
txtB.AddToParent(pnlContent, 0, 0, pnlContent.Width, 40dip)
txtB.Text = "Body description text goes here."

' 3. Action button sub-panel:
Dim pnlActions As B4XView = card.GetActionsPanel
Dim btnAction As B4XDaisyButton
btnAction.Initialize(Me, "btnAction")
btnAction.AddToParent(pnlActions, 0, 0, 100dip, 36dip)
btnAction.Text = "Action"
btnAction.Variant = "primary"

y = y + card.GetComputedHeight + gap
```
