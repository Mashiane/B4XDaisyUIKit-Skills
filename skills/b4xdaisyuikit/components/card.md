# card (`B4XDaisyCard`)

Versatile content container with optional image, title, body, and action areas. Layout modes control image placement.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyCard`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCard.bas`
- **Verified Demos**: `B4XPageAura.bas, B4XPageCard.bas, B4XPageMediaPicker.bas`
- **Web DaisyUI Mapping**: `.card` → `B4XDaisyCard`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim crd As B4XDaisyCard
crd.Initialize(Me, "crd")
crd.AddToParent(pnlHost, pad, y, maxW, 280dip)
crd.Variant = "none"
crd.Style = "border"
crd.LayoutMode = "top"
crd.Title = "Card Title"
crd.setImagePath("landscape.jpg")

' Add body content
Dim txt As B4XDaisyText
txt.Initialize(Me, "txt")
txt.AddToParent(crd.getBodyContainer, 0, 0, crd.getBodyContainer.Width, 40dip)
txt.Text = "Card body text here."

' Add action button
Dim btn As B4XDaisyButton
btn.Initialize(Me, "btn")
crd.AddAction(btn)
y = y + crd.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Control layout and image placement via `LayoutMode` (`"top"`, `"bottom"`, `"side"`, `"overlay"`).
- Mount custom body content into `getBodyContainer` (e.g. `B4XDaisyText`, inputs, badges).
- Add action buttons at the base using `AddAction(btn)` or access `getActionsContainer`.
- `LayoutMode = "overlay"` renders the image as a full background banner; ensure text contrast is maintained.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-full |  |
| Height | Height | String | auto |  |
| Title | Title | String | Card Title |  |
| ImagePath | Image Path | String |  |  |
| ImageWidth | Image Width | String | w-full |  |
| ImageHeight | Image Height | String | h-full |  |
| ImageClasses | Image Classes | String |  |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Style | Style | String | none | none|border|dash |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| LayoutMode | Layout Mode | String | top | top|bottom|side|overlay|none |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextColor | Text Color | Color | 0x00000000 |  |
| PlaceItemsCenter | Place Items Center | Boolean | False |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | sm | none|xs|sm|md|lg|xl|2xl |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddAction(btn As B4XDaisyButton)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearImage`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `HideActions`
- `HideImage`
- `HideTitle`
- `Initialize(Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetImage(Image As B4XBitmap)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowActions`
- `ShowImage`
- `ShowTitle`
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
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setHeight(Value As String)`
- `setImageClasses(Value As String)`
- `setImageHeight(Value As String)`
- `setImagePath(Value As String)`
- `setImageWidth(Value As String)`
- `setLayoutMode(Value As String)`
- `setLeft(Value As Int)`
- `setPlaceItemsCenter(Value As Boolean)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTitle(Value As String)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyCardTitle`**: Title container inside the card header (`crd.Title`).
- **`B4XDaisyCardBody`**: Main content area container accessed via `crd.getBodyContainer`. Mount child views here.
- **`B4XDaisyCardActions`**: Bottom actions bar container accessed via `crd.getActionsContainer` or `crd.AddAction(btn)`.
