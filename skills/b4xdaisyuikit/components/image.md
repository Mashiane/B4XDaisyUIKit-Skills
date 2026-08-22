# image (`B4XDaisyImage`)

DaisyUI `Image` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyImage`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyImage.bas`
- **Verified Demo Source**: B4XPageMediaPicker.bas (lines 18–116)
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
| `ResizeMode` | Resize Mode | `String` | `FIT` | FIT|FILL|FILL_NO_DISTORTIONS|FILL_WIDTH|FILL_HEIGHT|NONE |
| `Rounded` | Rounded | `Boolean` | `False` |  |
| `CornersRadius` | Corners Radius | `Int` | `0` |  |
| `BackgroundColor` | Background Color | `Color` | `0xFFAAAAAA` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize (dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize (oCallback As Object, sEventName As String)`
- `Load (sDir As String, sFileName As String)`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Update`
- `View As B4XView`
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
- `setBackgroundColor(iValue As Int)`
- `setBitmap(bmpBmp As B4XBitmap)`
- `setCornersRadius (iValue As Int)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setResizeMode(sValue As String)`
- `setRounded (bValue As Boolean)`
- `setRoundedImage (bValue As Boolean)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

