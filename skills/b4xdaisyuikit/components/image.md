# image (`B4XDaisyImage`)

Image display component with resize modes, corner radius, and rounded masking.

## 1. Overview
- **Class**: `B4XDaisyImage`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyImage.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Load(sDir As String, sFileName As String)`
- `SendToBack`
- `setBackgroundColor(iValue As Int)`
- `setBitmap(bmpBmp As B4XBitmap)`
- `setCornersRadius(iValue As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setResizeMode(sValue As String)`
- `setRounded(bValue As Boolean)`
- `setRoundedImage(bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Update`
- `View As B4XView`


## 7. Public Fields
- `Tag As Object`
- `mBackgroundColor As Int`
- `mBase As B4XView`
