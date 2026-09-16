# image (`B4XDaisyImage`)

DaisyUI `Image` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyImage`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyImage.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyImage.bas)
- **Verified Demo Source**: B4XPageMediaPicker.bas
- **Web DaisyUI Mapping**: `.image` → `B4XDaisyImage`

## 2. Verified B4X Syntax & Recipe
```b4x
currentY = currentY + 68dip

Dim imgPreview As B4XDaisyImage
imgPreview.Initialize(Me, "imgPreview")
imgPreview.AddToParent(pnlHost, padding, currentY, maxW, 200dip)
imgPreview.Rounded = True
imgPreview.ResizeMode = "FIT"

currentY = currentY + 200dip + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyImage` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, getRounded, getCornersRadius` (+ 10 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `ResizeMode` | Resize Mode | `String` | FIT | FIT|FILL|FILL_NO_DISTORTIONS|FILL_WIDTH|FILL_HEIGHT|NONE, DefaultValue: FIT |
| `Rounded` | Rounded | `Boolean` | False |  |
| `CornersRadius` | Corners Radius | `Int` | 0 |  |
| `BackgroundColor` | Background Color | `Color` | 0xFFAAAAAA |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `getRounded As Boolean`
- `setRounded(Value As Boolean)`
- `getCornersRadius As Int`
- `setCornersRadius(Value As Int)`
- `getRoundedImage As Boolean`
- `setRoundedImage(Value As Boolean)`
- `getBackgroundColor As Int`
- `setBackgroundColor(Value As Int)`
- `getResizeMode As String`
- `setResizeMode(Value As String)`
- `Update`
- `Load(Dir As String, FileName As String)`
- `Clear`
- `setBitmap(bmpBmp As B4XBitmap)`
- `getBitmap As B4XBitmap`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`
- `Tag As Object`
- `mBackgroundColor As Int`

