# tag-sphere (`B4XDaisyTagSphere`)

Rotating 3D tag cloud of text labels or avatar images. Interactive touch-to-rotate with depth-based scaling.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTagSphere`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTagSphere.bas`
- **Verified Demos**: `B4XPageTagSphere.bas`
- **Web DaisyUI Mapping**: `.tag-sphere` → `B4XDaisyTagSphere`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ts As B4XDaisyTagSphere
ts.Initialize(Me, "ts")
ts.AddToParent(pnlHost, 0, y, pnlHost.Width, 300dip)
ts.Items = "Android|iOS|Flutter|Kotlin|Swift|Java|React|Vue|Svelte"
ts.Radius = 1.5
ts.AutoRotate = True
ts.AutoSpeed = 0.4
ts.TextColor = Colors.Blue
ts.TextSize = 14
y = y + 300dip + gap

```

## 3. Native Composition Rules & Gotchas
- Interactive 3D spinning tag cloud sphere responding to touch drag.
- Populate tags using `Tags` (List of strings).
- Configure `Radius` and `Speed`, with `AutoRotate = True`.
- Handle tag taps in the `TagClick (TagText As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Items | Items (| list) | String | Android|iOS|Flutter|React|Vue|Svelte|Kotlin|Swift|Java|Dart|Node|Python|Rust|Go|PHP|Ruby |  |
| TextColor | Text Color | Color | 0xFF1F2937 |  |
| TextSize | Text Size | Float | 14 |  |
| Radius | Sphere Radius | Float | 1.5 |  |
| Sensitivity | Touch Sensitivity | Int | 11 |  |
| CircularAvatars | Circular Avatars | Boolean | True |  |
| AvatarBorderColor | Avatar Border Color | Color | 0xFFFFFFFF |  |
| AvatarBorderWidth | Avatar Border Width | Float | 2 |  |
| AutoRotate | Auto Rotate | Boolean | True |  |
| Easing | Depth Easing | String | easeOut | none|easeIn|easeOut|easeInExpo|easeOutExpo|inQuint|outQuint|reverseQuint |
| RotateOnTouch | Rotate On Touch | Boolean | True |  |
| AutoSpeed | Auto Speed | Float | 0.4 |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `TagTap (Tag As String)`
- `TagLongPress (Tag As String)`
- `DrawTag (Info As Map)`

## 6. Public Methods & APIs
- `AddRotation(DeltaX As Float, DeltaY As Float)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `Redraw`
- `addTag(Tag As String)`
- `addTagsAt(StartIndex As Int, Tags As List)`
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
- `removeTag(Tag As String) As Boolean`
- `removeTagAt(Index As Int) As Boolean`
- `setAutoRotate(Value As Boolean)`
- `setAutoSpeed(Value As Float)`
- `setAvatarBorderColor(Value As Int)`
- `setAvatarBorderWidth(Value As Float)`
- `setBitmaps(Bitmaps As List)`
- `setBitmaps2(Bitmaps As List, WidthDip As Float, HeightDip As Float)`
- `setCircularAvatars(Value As Boolean)`
- `setEasing(Value As String)`
- `setImageSize(WidthDip As Float, HeightDip As Float)`
- `setItems(Tags As List)`
- `setRadius(Value As Float)`
- `setRotateOnTouch(Value As Boolean)`
- `setSensitivity(Value As Int)`
- `setTextColor(Value As Int)`
- `setTextSize(Value As Float)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
