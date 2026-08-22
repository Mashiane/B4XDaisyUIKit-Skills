# tag-sphere (`B4XDaisyTagSphere`)

DaisyUI `TagSphere` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyTagSphere`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyTagSphere.bas`
- **Verified Demo Source**: B4XPageTagSphere.bas (lines 15–19)
- **Web DaisyUI Mapping**: `.tag-sphere` → `B4XDaisyTagSphere`

## 2. Verified B4X Syntax & Recipe
```b4x
y = pageScroll.AddSectionTitle("1. Playground - 24 emoji, sliders, easings", y, False)

	sphere1.Initialize(Me, "sphere1")
	sphere1.AddToParent(pnlHost, pad, y, maxW, 340dip)
	sphere1.setRadius(1.5)
	sphere1.setSensitivity(11)
	sphere1.setAutoRotate(True)
	sphere1.setAutoSpeed(0.3)
	sphere1.setEasing("easeout")
	sphere1.setTextSize(18)
	sphere1.setItems(EmojiList(24))
	y = y + 340dip + gap

	Dim labelW As Int = 110dip
	Dim sliderW As Int = maxW - labelW - gap

	lblRadius.Initialize(Me, "lblRadius")
	lblRadius.AddToParent(pnlHost, pad, y, labelW, 32dip)
	lblRadius.setText("Radius: 1.5")
	lblRadius.setTextColor(0xFF374151)
	lblRadius.setHAlign("left")
	lblRadius.setVAlign("middle")
	sbRadius.Initialize(Me, "sbRadius")
	sbRadius.AddToParent(pnlHost, pad + labelW + gap, y, sliderW, 32dip)
	sbRadius.setMinValue(10)
	sbRadius.setMaxValue(100)
	sbRadius.setValue(15)
	y = y + 32dip + 4dip

	lblSensitivity.Initialize(Me, "lblSensitivity")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyTagSphere` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getItems, setBitmaps2, getBitmaps` (+ 18 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Items` | Items (| list) | `String` | `Android|iOS|Flutter|React|Vue|Svelte|Kotlin|Swift|Java|Dart|Node|Python|Rust|Go|PHP|Ruby` |  |
| `TextColor` | Text Color | `Color` | `0xFF1F2937` |  |
| `TextSize` | Text Size | `Float` | `14` |  |
| `Radius` | Sphere Radius | `Float` | `1.5` |  |
| `Sensitivity` | Touch Sensitivity | `Int` | `11` |  |
| `CircularAvatars` | Circular Avatars | `Boolean` | `True` |  |
| `AvatarBorderColor` | Avatar Border Color | `Color` | `0xFFFFFFFF` |  |
| `AvatarBorderWidth` | Avatar Border Width | `Float` | `2` |  |
| `AutoRotate` | Auto Rotate | `Boolean` | `True` |  |
| `Easing` | Depth Easing | `String` | `easeOut` | none|easeIn|easeOut|easeInExpo|easeOutExpo|inQuint|outQuint|reverseQuint |
| `RotateOnTouch` | Rotate On Touch | `Boolean` | `True` |  |
| `AutoSpeed` | Auto Speed | `Float` | `0.4` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- `TagTap (Tag As String)`
- `TagLongPress (Tag As String)`
- `DrawTag (Info As Map)`

## 6. Public Methods & APIs
- `AddRotation(fDeltaX As Float, fDeltaY As Float)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `Redraw`
- `View As B4XView`
- `addTag(sTag As String)`
- `addTagsAt(iStartIndex As Int, lstTags As List)`
- `clearTags`
- `getAutoRotate As Boolean`
- `getAutoSpeed As Float`
- `getAvatarBorderColor As Int`
- `getAvatarBorderWidth As Float`
- `getBitmaps As List`
- `getCircularAvatars As Boolean`
- `getCount As Int`
- `getEasing As String`
- `getImageHeight As Float`
- `getImageWidth As Float`
- `getItems As List`
- `getRadius As Float`
- `getRotateOnTouch As Boolean`
- `getSensitivity As Int`
- `getTextColor As Int`
- `getTextSize As Float`
- `getVisible As Boolean`
- `removeTag(sTag As String) As Boolean`
- `removeTagAt(iIndex As Int) As Boolean`
- `setAutoRotate(bValue As Boolean)`
- `setAutoSpeed(fValue As Float)`
- `setAvatarBorderColor(iValue As Int)`
- `setAvatarBorderWidth(fValue As Float)`
- `setBitmaps(lstBitmaps As List)`
- `setBitmaps2(lstBitmaps As List, fWidthDip As Float, fHeightDip As Float)`
- `setCircularAvatars(bValue As Boolean)`
- `setEasing(sValue As String)`
- `setImageSize(fWidthDip As Float, fHeightDip As Float)`
- `setItems(lstTags As List)`
- `setRadius(fValue As Float)`
- `setRotateOnTouch(bValue As Boolean)`
- `setSensitivity(iValue As Int)`
- `setTextColor(iValue As Int)`
- `setTextSize(fValue As Float)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

