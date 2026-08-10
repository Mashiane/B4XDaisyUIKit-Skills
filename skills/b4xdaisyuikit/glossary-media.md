# B4XDaisyUIKit Component API Glossary — Media & Overlay Extension (v1)
This modular glossary extension details the alphabetical API dictionary, event structures, and properties for the **PDF Document Renderers, Color Pickers, Image Selectors, Touch Canvases, and Popups** custom views of B4XDaisyUIKit.

Since these components reside within the zipped external `.b4xlib` archive outside the user project workspace, local AI agents must rely on this reference file to compile layout, callback, and positioning logic.

---

## I. Image Pickers, Canvases, Interactive Spheres & Rotating Rings

### 1. B4XDaisySignaturePad
Smooth signature pad canvas inspired by szimek/signature_pad. Handles drag strokes, ink widths, velocity filters, and serializes bitmap bytes to base64.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `BeginStroke`: Raised when user touches pad.
    *   `EndStroke`: Raised when strokes complete.
    *   `Changed`: Raised on drawing updates.
*   **Public Setters / Getters**:
    *   `setPenColor(Value As Int)`: Ink stroke color.
    *   `setPadBackgroundColor(Value As Int)`: Background canvas color override.
    *   `setMinWidth(Value As Float)` / `setMaxWidth(Value As Float)`: Pressure width limits.
    *   `setVelocityFilterWeight(Value As Float)`: Easing curve factors.
    *   `setStrokeCap(Value As String)`: Stroke cap shape (`"BUTT"`, `"ROUND"`, `"SQUARE"`).
    *   `setStrokeJoin(Value As String)`: Joint type (`"BEVEL"`, `"MITER"`, `"ROUND"`).
    *   `setFieldsetMode(Value As Boolean)`: Wraps Pad inside a standard B4XDaisyFieldset container.
    *   `setHintText(Value As String)`: Displays floating background watermark help copy.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Clear()`: Purges pad and empties canvas history.
    *   `IsEmpty() As Boolean`: Read-only canvas checker.
    *   `GetBitmap() As B4XBitmap`: Converts ink history into B4XBitmap object.
    *   `GetBase64() As String`: Converts bitmap into Base64-serialized string.
    *   `SetBase64(Base64String As String)`: Restores canvas from base64 string.
    *   `SetBitmap(Bmp As B4XBitmap)`: Restores canvas from bitmap.

---

### 2. B4XDaisyColorWheel
Hue/Saturation/Value color selection ring. Draws hue gradients, provides draggable handles, and maps color updates.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Changed(Color As Int)`: Raised on selecting colors.
*   **Public Setters / Getters**:
    *   `setColor(NewColor As Int)` / `getColor As Int`: Directly sets/retrieves color.
    *   `setHSV(hsv() As Float)` / `getHSV As Float()`: Current selection array (`[Hue, Sat, Val]`).
    *   `setHSV3(H As Float, S As Float, V As Float)`: Updates HSV coordinates independently.
    *   `setWheelThickness(Size As Int)`: Ring thickness in dip.
    *   `setHandleDiameter(Size As Int)`: Selector handle knob size in dip.
    *   `setShadow(Value As String)`: Handle shadow token.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Refresh()`: Redraws gradients.

---

### 3. B4XDaisyFileInput
Standard file select field wrapper. Implements daisyUI fileinput styles, handles image picks via Content Chooser, and returns bytes and Base64 buffers.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Fired on picker clicks.
    *   `FileSelected(FileName As String)`: Fired after choosing files.
    *   `Cancelled`: Raised on selection cancel.
    *   `AppendClick`: Fired on clicking trailing action icon.
*   **Public Setters / Getters**:
    *   `setButtonText(Value As String)`: Primary select button label.
    *   `setPlaceholder(Value As String)`: Caption text shown when empty.
    *   `setAccept(Value As String)`: Filters extensions (`".pdf, .jpg, .png"`).
    *   `setMaxSize(Value As Int)`: Size limit in MB. 0 is unlimited.
    *   `setAppendIcon(Value As String)`: Suffix SVG icon asset name.
    *   `setRequired(Value As Boolean)`: Form validation contract.
    *   `getFileName As String`: Chosen file name.
    *   `getFileSize As Long`: Chosen size in bytes.
    *   `getFileBase64 As String`: Serialized string representation of file bytes.
    *   `getMimeType As String`: Resolved file mime-type.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetBitmap() As B4XBitmap`: Tries to decode and return file as B4XBitmap if it is an image.
    *   `Clear()`: Wipes selection and clears buffers.
    *   `Validate() As Boolean`: Local validation engine. Shows error if blank.

---



### 3B. B4XDaisyTagSphere
3D spinning text sphere drawing rotating interactive tag labels utilizing custom spherical trigonometric projection models.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `TagTap(Tag As String)`: Raised when a text tag node is clicked.
    *   `TagLongPress(Tag As String)`
*   **Public Setters / Getters**:
    *   `setItems(Tags As List)`: Pipe-separated tag string lists.
    *   `setRadius(Value As Float)`: Bounding orbit depth factor.
    *   `setSensitivity(Value As Int)`: Multipliers mapping scroll touch speeds.
    *   `setAutoRotate(Value As Boolean)` / `setAutoSpeed(Value As Float)`: Rotates sphere when idle.
    *   `setRotateOnTouch(Value As Boolean)` / `setEasing(Value As String)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `addTag(Tag As String)` / `removeTag(Tag As String)`
    *   `clearTags()`: Wipes sphere.

### 3C. B4XDaisyAura
Glowing rotation halo frame wrapping visual card nodes to simulate continuous background rainbow animations.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setStyle(Value As String)`: Presets types (`"rainbow"`, `"halo"`).
    *   `setSize(Value As String)` / `setDuration(Value As Int)`: Speeds of ring rotation.
    *   `setColor(Value As Int)` / `setBackgroundColor(Value As Int)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Wrap(Target As B4XView)`: Anchors and binds glowing halos around `Target` limits.
    *   `StartRotation()` / `StopRotation()`: Commands halo motors.

### 3D. B4XDaisyCanvasSpinner (The Global Loader)
Natively drawn high-fidelity vector progress indicator loader overlaid modal-style to block touch events during transfers.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Primary Methods**:
    *   `Show(Parent As B4XView)`: Cover `Parent` panel with dark translucent loading shields.
    *   `Hide()`: Unmasks page panel interactions.
    *   `Resize(Width As Int, Height As Int)`: Keeps spinner centered on device rotations.

## II. Document Readers, Complex Cards, and File Utilities

### 4. B4XDaisyPDFView
Native document viewer wrapper utilizing PdfiumCore. Displays document sheets, nav bars, chevron controls, and page indicator text.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setCurrentPage(Value As Int)` / `getCurrentPage As Int`: Jump page index (0-based).
    *   `getTotalPages As Int`: Total documents count.
    *   `setAutoSpacing(Value As Boolean)`: Spacing gaps.
    *   `setEnableSwipe(Value As Boolean)`: Drag transitions.
    *   `setPageSnap(Value As Boolean)`: Snaps page boundaries.
    *   `setSwipeHorizontal(Value As Boolean)`: Swipe axis (`"horizontal"`, `"vertical"`).
    *   `setShowToolbar(Value As Boolean)`: Toggles toolbar.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
    *   `LoadFile(Dir As String, FileName As String)`: Mounts PDF from workspace paths.
    *   `LoadAsset(FileName As String)`: Copies PDF fromassets to temp folder and loads view.
    *   `JumpToPage(Page As Int)`: Programmatic jump.
    *   `FirstPage()` / `LastPage()` / `NextPage()` / `PrevPage()`: Navigation actions.

---

### 5. B4XDaisySweetAlert
Rich promise-driven dialog card overlay. Renders alert symbols, titles, captions, form inputs (combobox, select, radios, ranges, files), and side-by-side action buttons.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, Parent As B4XView, EventName As String)
    ```
*   **Events**:
    *   `Result(Result As B4XDaisySweetAlertResult)`: Promises callback event on confirm/deny actions.
*   **Public Promise / Async Properties**:
    *   `ShowAsync() As ResumableSub`: Primary async caller. Use `Wait For` to resolve confirm and output payloads.
    *   `GetActiveInputValue() As Object`: Reads input value.
    *   `showLoading()` / `hideLoading()`: Controls action buttons.
*   **Public Configurations**:
    *   `setTitle(Value As String)` / `setText(Value As String)`: Dialog captions.
    *   `setIcon(Value As String)`: Built-in type (`"none"`, `"success"`, `"error"`, `"warning"`, `"info"`, `"question"`, `"loading"`).
    *   `setIconColor(Value As Int)` / `setIconSize(Value As Int)`: Style overrides.
    *   `setShowConfirmButton(Value As Boolean)` / `setConfirmButtonText(Value As String)`: Confirms button settings.
    *   `setInputType(Value As String)`: Embeds input fields inside dialog (`"text"`, `"password"`, `"select"`, `"checkbox"`, `"radio"`, `"toggle"`, `"range"`, `"rating"`).
    *   `setInputPlaceholder(Value As String)` / `setInputLabel(Value As String)`: Input labels.
    *   `setInputOptions(Value As List)`: Spec options for checkbox/radio choices.
*   **Primary Methods**:
    *   `Show()`: Displays alert dialog.
    *   `Close()`: Removes popup.

---

### 6. B4XDaisyPicker
Native multi-wheel selection dialog. Resolves scroll inputs, snaps option values, and renders fading layers.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setMode(Value As String)`: UI rendering framework.
    *   `setFadeBackground(Value As Int)`: Gradient fade colors.
    *   `setHighlightBackground(Value As Int)`: Active selection bar background color.
    *   `setHighlightVariant(Value As String)`: Variant highlights.
    *   `setShadow(Value As String)` / `setRounded(Value As String)`: Root panel styling.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddColumn(Name As String, Options As List, DefaultValue As Object, Prefix As String, Suffix As String)`: Appends select column wheels. Options are `TDockItem` elements.
    *   `GetValue(ColName As String) As Object`: Reads chosen key.
    *   `GetDisplayValue() As String`: Formats active text representation.

---

### 7. B4XDaisyOverlay
Semi-transparent background shroud. Attaches over any container panel, overrides radius corners, and captures screen touches.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click`: Fired on backdrop tap (if CloseOnClick is True).
*   **Public Setters / Getters**:
    *   `setOverlayColor(Value As Int)`: Backdrop tint color.
    *   `setOpacity(Value As Float)`: Shroud alpha scale (0.0 to 1.0).
    *   `setRounded(Value As String)`: Corner rounding token.
    *   `setPassThrough(Value As Boolean)`: Permits clicks to leak through.
    *   `setCloseOnClick(Value As Boolean)`: Auto-closes backdrop overlay on click.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AttachTo(Target As B4XView) As B4XView`: Shrouds target container panel at (0, 0) bounds.
    *   `Open()` / `Close()` / `Toggle()`: Manages layout states.


### 7B. B4XDaisyCard
*Renders the optional card header caption utilizing **B4XDaisyCardTitle**.*
Clean visual content block wrapper implementing standard daisyUI card boundaries, shadow overlays, and nested body slots.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setTitle(Value As String)`: Top card title.
    *   `setVariant(Value As String)` / `setShadow(Value As String)` / `setRounded(Value As String)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `CardBody() As B4XView`: Accesses the padded inner workspace content block panel. Calling layout panels must be added flat inside this body.
    *   `getContainer() As B4XView`: Returns the outer shell wrapper.

### 7C. B4XDaisyFileHandler (Helper Class)
Utility class wrapping low-level system streams and intent operations to perform async file loads and temporary caching directory purges.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize()
    ```
*   **Primary Methods**:
    *   `Load() As ResumableSub`: Triggers device directory chooser. Returns `LoadResult` map structure.
    *   `LoadWithFilter(MimeType As String, Title As String) As ResumableSub`: Chooses specific file types (e.g. `".pdf"`).
    *   `SaveAs(Source As InputStream, MimeType As String, Title As String) As ResumableSub`: Saves input streams.
    *   `DeleteTemporaryFiles()`: Purges cached bytes buffers.

### 7D. B4XDaisySweetAlertIcon (Helper Class)
Natively animated canvas vector icon elements displaying status shapes (check, warning alert, error cross, loading spinner) inside SweetAlert Prompts.
