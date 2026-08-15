# image (`B4XDaisyImage`)

Image display component with resize modes, corner radius, and rounded masking.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyImage`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyImage.bas`
- **Verified Demos**: `B4XPageMediaPicker.bas`
- **Web DaisyUI Mapping**: `.image` → `B4XDaisyImage`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim img As B4XDaisyImage
img.Initialize(Me, "img")
img.AddToParent(pnlHost, pad, y, 120dip, 120dip)
img.ResizeMode = "FIT"
img.Rounded = True
img.Load(File.DirAssets, "profile.jpg")
y = y + 120dip + gap

```

## 3. Native Composition Rules & Gotchas
- Styled image view supporting aspect ratios, rounded corners, and shape clipping masks.
- Set `Shape` (`"circle"`, `"squircle"`, `"hexagon"`, `"rounded-2xl"`) for clipping.
- Configure `AspectRatio` (`"16:9"`, `"4:3"`, `"1:1"`, `"none"`) for responsive sizing.
- Assign image path from assets via `ImagePath`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| ResizeMode | Resize Mode | String | FIT | FIT|FILL|FILL_NO_DISTORTIONS|FILL_WIDTH|FILL_HEIGHT|NONE |
| Rounded | Rounded | Boolean | False |  |
| CornersRadius | Corners Radius | Int | 0 |  |
| BackgroundColor | Background Color | Color | 0xFFAAAAAA |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize (Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `Initialize (Callback As Object, EventName As String)`
- `Load (Dir As String, FileName As String)`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Update`
- `getBackgroundColor As Int`
- `getBitmap As B4XBitmap`
- `getCornersRadius As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getResizeMode As String`
- `getRounded As Boolean`
- `getRoundedImage As Boolean`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(Value As Int)`
- `setBitmap(Bmp As B4XBitmap)`
- `setCornersRadius (i As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setResizeMode(s As String)`
- `setRounded (b As Boolean)`
- `setRoundedImage (b As Boolean)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `Tag As Object`
- `mBackgroundColor As Int`
- `mBase As B4XView`
