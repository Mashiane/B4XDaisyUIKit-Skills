# tag-sphere (`B4XDaisyTagSphere`)

DaisyUI `TagSphere` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyTagSphere`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyTagSphere.bas`
- **Verified Demo Source**: B4XPageTagSphere.bas
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
| `Items` | Items (| list) | `String` | Android|iOS|Flutter|React|Vue|Svelte|Kotlin|Swift|Java|Dart|Node|Python|Rust|Go|PHP|Ruby |  |
| `TextColor` | Text Color | `Color` | 0xFF1F2937 |  |
| `TextSize` | Text Size | `Float` | 14 |  |
| `Radius` | Sphere Radius | `Float` | 1.5 |  |
| `Sensitivity` | Touch Sensitivity | `Int` | 11 |  |
| `CircularAvatars` | Circular Avatars | `Boolean` | True |  |
| `AvatarBorderColor` | Avatar Border Color | `Color` | 0xFFFFFFFF |  |
| `AvatarBorderWidth` | Avatar Border Width | `Float` | 2 |  |
| `AutoRotate` | Auto Rotate | `Boolean` | True |  |
| `Easing` | Depth Easing | `String` | easeOut | none|easeIn|easeOut|easeInExpo|easeOutExpo|inQuint|outQuint|reverseQuint |
| `RotateOnTouch` | Rotate On Touch | `Boolean` | True |  |
| `AutoSpeed` | Auto Speed | `Float` | 0.4 |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
- `TagTap (Tag As String)`
- `TagLongPress (Tag As String)`
- `DrawTag (Info As Map)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setItems(lstTags As List)`
- `getItems As List`
- `setBitmaps(lstBitmaps As List)`
- `setBitmaps2(lstBitmaps As List, WidthDip As Float, HeightDip As Float)`
- `getBitmaps As List`
- `setImageSize(WidthDip As Float, HeightDip As Float)`
- `getImageWidth As Float`
- `getImageHeight As Float`
- `setCircularAvatars(Value As Boolean)`
- `getCircularAvatars As Boolean`
- `setAvatarBorderColor(Value As Int)`
- `getAvatarBorderColor As Int`
- `setAvatarBorderWidth(Value As Float)`
- `getAvatarBorderWidth As Float`
- `getCount As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextSize(Value As Float)`
- `getTextSize As Float`
- `setRadius(Value As Float)`
- `getRadius As Float`
- `setSensitivity(Value As Int)`
- `getSensitivity As Int`
- `setAutoRotate(Value As Boolean)`
- `getAutoRotate As Boolean`
- `setEasing(Value As String)`
- `getEasing As String`
- `setRotateOnTouch(Value As Boolean)`
- `getRotateOnTouch As Boolean`
- `setAutoSpeed(Value As Float)`
- `getAutoSpeed As Float`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `AddRotation(DeltaX As Float, DeltaY As Float)`
- `addTag(Tag As String)`
- `addTagsAt(StartIndex As Int, lstTags As List)`
- `removeTagAt(Index As Int) As Boolean`
- `removeTag(Tag As String) As Boolean`
- `clearTags`
- `Base_Resize(Width As Double, Height As Double)`
- `Redraw`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

