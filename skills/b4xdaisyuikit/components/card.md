# card (`B4XDaisyCard`)

Versatile content container with optional image, title, body, and action areas. Layout modes control image placement.

## 1. Overview
- **Class**: `B4XDaisyCard`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCard.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearImage`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActionsContainer As B4XView`
- `getActionsCount As Int`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `getBackgroundColor As Int`
- `getBodyContainer As B4XView`
- `getBodyPartContainer As B4XView`
- `getCardActions As B4XView`
- `getCardBody As B4XView`
- `getCardTitle As B4XView`
- `GetComputedHeight As Int`
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
- `HideActions`
- `HideImage`
- `HideTitle`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setHeight(sValue As String)`
- `SetImage(bmpImage As B4XBitmap)`
- `setImageClasses(sValue As String)`
- `setImageHeight(sValue As String)`
- `setImagePath(sValue As String)`
- `setImageWidth(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `ShowActions`
- `ShowImage`
- `ShowTitle`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyCardTitle`**: Title container inside the card header (`crd.Title`).
- **`B4XDaisyCardBody`**: Main content area container accessed via `crd.getBodyContainer`. Mount child views here.
- **`B4XDaisyCardActions`**: Bottom actions bar container accessed via `crd.getActionsContainer` or `crd.AddAction(btn)`.
