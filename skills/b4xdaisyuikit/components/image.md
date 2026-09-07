# image (`B4XDaisyImage`)

DaisyUI `Image` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyImage`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyImage.bas`
- **Verified Demo Source**: B4XPageMediaPicker.bas
- **Web DaisyUI Mapping**: `.image` → `B4XDaisyImage`

## 2. Verified B4X Syntax & Recipe
```b4x
currentY = currentY + 68dip

	' --- Photo Preview Section (B4XDaisyImage) ---
	currentY = pageScroll.AddSectionTitle("Captured Photo Preview", currentY, False)
	
	imgPreview.Initialize(Me, "imgPreview")
	imgPreview.AddToParent(pnlHost, padding, currentY, maxW, 200dip)
	imgPreview.Rounded = True
	imgPreview.ResizeMode = "FIT"
	currentY = currentY + 210dip

	' --- Selected Media Information Card ---
	currentY = pageScroll.AddSectionTitle("Selected Media Metadata", currentY, False)
	
	lblMediaInfo.Initialize(Me, "lblMediaInfo")
	lblMediaInfo.Text = "No media selected yet. Tap an icon button above to capture or select media."
	lblMediaInfo.TextColor = xui.Color_RGB(100, 116, 139)
	lblMediaInfo.AddToParent(pnlHost, padding, currentY, maxW, 80dip)
	currentY = currentY + 90dip

	' --- Placeholder Sections for Video/Audio & PDF Viewers ---
	currentY = pageScroll.AddSectionTitle("Video & Audio Player Placeholder", currentY, False)
	currentY = AddDescription("Placeholder section for video and audio playback components.", currentY, maxW)
	currentY = currentY + 10dip

	currentY = pageScroll.AddSectionTitle("Document & PDF Viewer Placeholder", currentY, False)
	currentY = AddDescription("Placeholder section for PDF and document rendering components.", currentY, maxW)
	currentY = currentY + 20dip

	pageScroll.AutoFit
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

