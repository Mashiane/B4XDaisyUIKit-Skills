# B4XDaisyUIKit Component API Glossary — Visuals Extension (v2)
This modular glossary extension details the alphabetical API dictionary, event structures, and properties for the **Visual Indicators, Timelines, Dividers, Progress Meters, Bubbles, and Vector Asset** custom views of B4XDaisyUIKit.

Since these components reside within the zipped external `.b4xlib` archive outside the user project workspace, local AI agents must rely on this reference file to compile layout, callback, and positioning logic.

---

## I. Timelines, Status Dots, and Progress Meters

### 1. B4XDaisyTimeline
Interactive step timeline or historical log track. Draws connecting lines, status indicators, start-slot, and end-slot boxes.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `ItemClick(Id As String)`: Raised when a timeline segment, card, or icon is tapped. Passes the target Item ID.
*   **Public Setters / Getters**:
    *   `setOrientation(Value As String)`: Alignment track direction (`"vertical"`, `"horizontal"`).
    *   `setCompact(Value As Boolean)`: Removes start-slot content to condense space.
    *   `setSnapIcon(Value As Boolean)`: Clips timeline icons neatly.
    *   `setLineColor(Value As String)`: Semicolon-delimited theme line color token.
    *   `setMarkerSize(Value As Int)`: Diameter of middle status dots.
    *   `setMarkerColor(Value As String)`: Color variant for status dots.
    *   `setTextSize(Value As String)`: Font size token applied to all nested content.
    *   `setBoxShadow(Value As String)`: Shadow elevation level applied to boxed cards.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItem(Id As String, StartText As String, EndText As String) As String`: Appends timeline row. Passes standard SVG check indicator.
    *   `AddItemBox(Id As String, StartText As String, EndText As String, BoxOnStart As Boolean, BoxOnEnd As Boolean) As String`: Appends with card groupings.
    *   `UpdateItem(id As String, StartText As String, MiddleIcon As Object, IconColor As Int, EndText As String, IsBox As Boolean, BoxOnStart As Boolean, BoxOnEnd As Boolean, Variant As String, DashedBorder As Boolean)`: Exhaustive update.
    *   `SetItemDone(id As String, bDone As Boolean)`: Toggles check indicator on/off.
    *   `Clear()`: Wipes all segments.

---

### 2. B4XDaisyStatus
Online breathing, flashing, or solid status indicator dot. Supports hardware-accelerated ripple circles and color transitions.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   Click triggers are supported recursively if Clickable is set to True.
*   **Public Setters / Getters**:
    *   `setSize(Value As String)`: Dot diameter token (`"xs"`/2dip, `"sm"`/4dip, `"md"`/8dip, `"lg"`/12dip, `"xl"`/16dip).
    *   `setVariant(Value As String)`: Color variant token.
    *   `setAnimation(Value As String)`: Motion effects (`"none"`, `"ping"` / breathing expand circle, `"pulse"` / glowing, `"bounce"`).
    *   `setDepth(Value As Float)`: Shadow elevation factor.
    *   `setClickable(Value As Boolean)`: Toggles touch interception. Passes touches through to lists when False.
    *   `setBackgroundColor(Value As Int)` / `setTextColor(Value As Int)`: Direct overrides.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `CenterInParent(Parent As B4XView)`: Layout helper that anchors dot.

---

### 3. B4XDaisyProgress
Horizontal indicator bar. Supports custom maximum milestones, animated duration transitions, and inline text progress counters.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Changed(Value As Float)`: Fired on progression updates.
*   **Public Setters / Getters**:
    *   `setValue(Value As Float)`: Current progress value.
    *   `setMaxValue(Value As Float)`: Maximum progress bound.
    *   `setVariant(Value As String)`: Main track color variant.
    *   `setIndeterminate(Value As Boolean)`: Indeterminate infinite animation loop.
    *   `setShowNumberInline(Value As Boolean)`: Displays caption percent numbers.
    *   `setAnimated(Value As Boolean)`: Enables smooth count transitions.
    *   `setDuration(Value As Int)`: Speeds of count updates in ms.
    *   `setLabelAbove(Value As String)`: standard descriptive legend above the bar.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `SetValueColor(Color As Int)` / `SetTrackColor(Color As Int)`: Native draw overrides.
    *   `StopAnimation()`: Halts timers.

---

### 4. B4XDaisyRadialProgress
Circular percentage progression ring. Draws progress arcs, svg icons, and counts text values upwards smoothly.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setValue(Val As Int)`: Core percentage value (0 to 100).
    *   `setMinValue(MinVal As Int)` / `setMaxValue(MaxVal As Int)`: Range bounds.
    *   `setThickness(Value As String)`: Width percentage scale (`"10%"`).
    *   `setVariant(Value As String)`: Arc color variant.
    *   `setDisplayType(Value As String)`: Content mode (`"text"`, `"image"`, `"none"`).
    *   `setSuffix(Value As String)` / `setPrefix(Value As String)`: Labels attached to numbers.
    *   `setSvgAsset(Value As String)`: Shows centered SVG vector when type is image.
    *   `setTextCountUp(Value As Boolean)`: Counters value smoothly on-screen.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `SetValueAnimated(NewValue As Float, Duration As Int)`: Triggers smooth arc sweep.
    *   `StartTimer(DurationMs As Int)`: Runs as countdown timer.

---

### 5. B4XDaisyCountdown
*Populates each digit frame sequentially utilizing **B4XDaisyCountdownItem** to calculate card dimensions and ticks flips.*
Breakpoint-aware countdown timer. Manages separate nested digits blocks and decrements milestones sequentially.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setOrientation(Value As String)`: Layout axis (`"horizontal"`, `"vertical"`).
    *   `setTargetDate(Value As Long)`: Target epoch date-milliseconds limit.
    *   `setAutoStart(Value As Boolean)`: Toggles auto-run on create.
    *   `setLabels(Value As String)`: Semicolon-delimited indicator tags (`"days;hours;min;sec"`).
    *   `setLabelPosition(Value As String)`: Placements (`"top"`, `"bottom"`).
    *   `setTextSize(Value As String)`: Digit size token.
    *   `setVariant(Value As String)`: Digit panel color variant.
    *   `setOutline(Value As Boolean)`: Toggles outlined card styles.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Start()` / `Stop()`: Controls clock ticks.
    *   `Clear()`: Resets digit structures.

---



### 5B. B4XDaisyTooltip
Message tooltip indicator that anchors to a target B4XView, displaying custom message blocks and alignment chevrons.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Shown` / `Hidden`: Transition triggers.
    *   `Click(Tag As Object)`: Raised on tooltip click.
*   **Public Setters / Getters**:
    *   `setMessage(Value As String)`: Caption message text.
    *   `setPosition(Value As String)`: Anchor alignment (`"top"`, `"bottom"`, `"left"`, `"right"`).
    *   `setVariant(Value As String)`: Semantic color variant.
    *   `setShowArrow(Value As Boolean)`: Toggles trailing pointer arrow.
    *   `setClickToClose(Value As Boolean)`: Wipes tooltip on touch.
    *   `setVisible(Value As Boolean)` / `setAutoResize(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AttachTo(Target As B4XView)`: Dynamically anchors tooltip to `Target` bounding rectangles.
    *   `DetachTarget()`: Dissolves anchor bindings.
    *   `Show()` / `Hide()` / `ShowAnimated(Duration As Int)` / `HideAnimated(Duration As Int)`

### 5C. B4XDaisyChatBubble
Speech bubble layout component mapping daisyUI chat components. Uses canvas cache routines to render tails and status notes.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `AvatarClick(Payload As Object)`: Raised when clicking profile image.
    *   `BubbleClick(Tag As Object)`: Raised when tapping bubble frame.
*   **Public Setters / Getters**:
    *   `setId(Value As String)` / `getId() As String`: Message identifier.
    *   `setFromId(Value As String)`: Current user ID. Used to resolve start (incoming) versus end (outgoing) alignments.
    *   `setSide(Value As String)`: Alignment side (`"start"`, `"end"`).
    *   `setVariant(Value As String)`: Color variant.
    *   `setAvatarMask(Value As String)`: Profile shape mask (`"circle"`, `"squircle"`).
    *   `setAvatarSize(Value As Int)`: Dot size in dip.
    *   `setBubbleStyle(Value As String)` / `getBubbleStyle() As String`: Shape type (`"rounded"`, `"block"`).
    *   `setVisible(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `SetMessage(Text As String)`: Loads plain message copy.
    *   `SetImage(bmp As B4XBitmap, MaxHeight As Int)`: Injects media content.
    *   `SetStatus(Mode As String, ExtraText As String)`: Sets status notes (e.g. `"Delivered"`).
    *   `SetCustomContent(v As B4XView)`: Embeds arbitrary custom views.

### 5D. B4XDaisyToast
Global notifications orchestrator. Manages stacked alert boxes, progress timers, and auto-dismiss runs.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `NotificationClosed(View As B4XView)`: Raised when a stacked toast finishes its duration or gets tapped.
*   **Public Setters / Getters**:
    *   `setHorizontalAlignment(Value As String)`: Positions (`"start"`, `"center"`, `"end"`).
    *   `setVerticalAlignment(Value As String)`: Positions (`"top"`, `"middle"`, `"bottom"`).
    *   `setShowProgress(Value As Boolean)`: Toggles active countdown progress bar below toast frame.
*   **Primary Methods**:
    *   `CreateView() As B4XView`: Generates toast surface.
    *   `SetRoot(Root1 As B4XView)`: Anchors toast parent window. (Should match current page root).
    *   `Success(Message As String)` / `SuccessWithDuration(Message As String, DurationMs As Int)`: Displays success toast.
    *   `Info(Message As String)` / `Warning(Message As String)` / `Error(Message As String)`: Standard overlays.
    *   `Clear()`: Wipes active stacks.

## II. Loading Indicators, Typography, and Svg Rasterizers

### 6. B4XDaisyLoading
Animated loading indicator. Generates spin and fade vectors natively across multiple responsive design presets.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setStyle(Value As String)`: Animation type (`"spinner"`, `"dots"`, `"ring"`, `"ball"`, `"bars"`, `"infinity"`).
    *   `setSize(Value As String)`: Dimension scale.
    *   `setVariant(Value As String)`: Color variant.
    *   `setClickable(Value As Boolean)`: Intercepts clicks to lock interaction during background transfers.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `StartAnimation()` / `StopAnimation()`: Safely controls tickers.

---



### 6B. B4XDaisyText
High-performance typography custom view wrapper parsing daisyUI size tokens, rendering markdown links, and performing auto-resize height fits.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on text click.
*   **Public Setters / Getters**:
    *   `setText(Value As String)` / `getText() As String`: String text content.
    *   `setTextColor(Value As Int)` / `setBackgroundColor(Value As Int)`
    *   `setTextSize(Value As Object)`: Sizing token (`"text-xs"`, `"text-sm"`, `"text-base"`, `"text-lg"` up to `"text-9xl"`).
    *   `setHeading(Value As String)`: Auto-applies standard daisyUI heading sizes (`"h1"`, `"h2"`, `"h3"`, `"h4"`).
    *   `setFontBold(Value As Boolean)` / `setSingleLine(Value As Boolean)`
    *   `setHAlign(Value As String)` / `setVAlign(Value As String)`: Alignment (`"LEFT"`, `"CENTER"`, `"RIGHT"`).
    *   `setAutoResize(Value As Boolean)`: Automatically resizes parent height to wrap multi-line text fully.
    *   `setLink(Value As Boolean)`: Toggles underline hyperlink states.
    *   `setUrl(Value As String)`: Sets active url.
    *   `setIsSkeleton(Value As Boolean)`: Toggles skeleton animation loading mask.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `MeasureTextHeight() As Float`: Measures wraps based on bounds.
    *   `GetPreferredHeight(MaxContentWidth As Int) As Int`

### 6C. B4XDaisyTextRotate
Scrolling ticker component rotating a list of B4XDaisyText labels vertically with customized transition durations.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setDuration(Value As String)`: Rotation speed (e.g. `"3s"` or `"3000ms"`).
    *   `setVariant(Value As String)`: Color variant for all labels.
    *   `setVisible(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `SetItems(ItemList As List)`: Converts string list into text views.
    *   `AddItem(dt As B4XDaisyText)`: Appends custom-drawn text.
    *   `Start()` / `Stop()`: Controls ticker.

### 7. B4XDaisySvgIcon
Native vector SVG asset rasterizer. Parses paths, overrides colors, and supports click events and border shells.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on tap (if Clickable is True).
*   **Public Setters / Getters**:
    *   `setSvgAsset(Value As String)`: Loads filename path from Assets.
    *   `setSvgContent(Value As String)`: Parses inline SVG XML markup directly.
    *   `setColor(Value As Int)`: Direct tint color. Replaces fill/stroke properties.
    *   `setVariant(Value As String)`: Variant color token.
    *   `setPreserveOriginalColors(Value As Boolean)`: Stops auto-tinting to retain original vector gradients.
    *   `setRoundedBox(Value As Boolean)`: Applies standard frame borders.
    *   `setClickable(Value As Boolean)`: Toggles touch interception.
*   **Primary Methods**:
    *   `CreateView(Width As Int, Height As Int) As B4XView`
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `ResizeToParent(ParentView As B4XView)`: Adjusts dimensions.

---

## III. Layout Spacers, Timelines, Statistics, and Filter Chips

### 8. B4XDaisyDivider
Margin-aware structural separating rule. Supports vertical/horizontal axis lines and centers caption titles or icons.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Fired on divider clicks.
*   **Public Setters / Getters**:
    *   `setDirection(Value As String)`: Axis line (`"horizontal"`, `"vertical"`).
    *   `setPlacement(Value As String)`: Label position alignment (`"start"`, `"center"`, `"end"`).
    *   `setText(Value As String)`: Centers custom caption label.
    *   `setGap(Value As Object)`: Outer padding gap.
    *   `setLineThickness(Value As Object)`: Line thickness dip scale.
    *   `setVariant(Value As String)` / `setBackgroundColor(Value As Int)`: Colors line.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetComputedHeight() As Int`: Returns absolute size.

---

### 9. B4XDaisyDivision
Versatile container component inspired by HTML div. Supports margins, custom elevations, skeleton indicators, and center content alignments.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Click event.
*   **Public Setters / Getters**:
    *   `setPadding(Value As String)` / `setMargin(Value As String)`: Tailwind spacing tokens.
    *   `setBackgroundColor(Color As Int)` / `setTextColor(Color As Int)`: Direct style overrides.
    *   `setText(Value As String)`: Centers text caption.
    *   `setRounded(Value As String)`: Sizing corner radius.
    *   `setShadow(Value As String)`: Shadow elevation.
    *   `setPlaceContentCenter(Value As Boolean)`: Toggles centered alignments.
    *   `setIsSkeleton(Value As Boolean)`: Toggles skeleton breathing gray loading indicator.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetContentPanel() As B4XView`: Returns container panel.

---

### 10. B4XDaisySwap
Dual-state interactive swap button. Animates rotations, flips, or fades when swapping text, SVGs, or avatars.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(State As String, Checked As Boolean)`: Toggled click callback.
    *   `Changed(State As String, Checked As Boolean)`: Raised on state updates.
*   **Public Setters / Getters**:
    *   `setSwapType(Value As String)`: Content mode (`"text"`, `"svg"`, `"avatar"`).
    *   `setSwapStyle(Value As String)`: Transition effect (`"none"`, `"rotate"`, `"flip"`).
    *   `setState(Value As String)`: Current state (`"on"`, `"off"`, `"indeterminate"`).
    *   `setChecked(Value As Boolean)`: Toggles state boolean.
    *   `setOnText(Value As String)` / `setOffText(Value As String)`: Content path or label.
    *   `setOnColor(Value As Object)` / `setOffColor(Value As Object)`: Color specs.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `SetOnView(v As B4XView)` / `SetOffView(v As B4XView)`: Custom layouts swaps.


### 10B. B4XDaisyFilter
Highly responsive multi-select filter chip bar wrapping horizontal scroll containers with dynamic selection keys and cancel chips.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `ItemChanged(Id As String, Text As String, Checked As Boolean)`
    *   `Changed(Keys As List)`
    *   `ResetClick`: Raised when the leading cancel chip (`"×"`) is tapped.
*   **Public Setters / Getters**:
    *   `setOptions(Value As String)`: Key-value options string specs (e.g. `"svelte:Svelte, vue:Vue, react:React"`).
    *   `setActiveKey(Value As String)`: Checked item key.
    *   `setMultiSelect(Value As Boolean)`: Toggles selection criteria.
    *   `setFilterStyle(Value As String)`: Visual styles (`"solid"`, `"outline"`).
    *   `setResetText(Value As String)`: Cancel button text.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `isItemChecked(Key As String) As Boolean`
    *   `SetItemChecked(Key As String, Checked As Boolean)`
    *   `ClearSelection()`: Purges checked states.

### 10C. B4XDaisyStat
Main card wrapper displaying horizontal or vertical statistics summary panels, accommodating responsive scrollbars when items overflow screen widths.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Public Setters / Getters**:
    *   `setOrientation(Value As String)`: Axis track (`"horizontal"`, `"vertical"`).
    *   `setShadow(Value As String)` / `setRounded(Value As String)`
    *   `setBorderWidth(Value As String)` / `setBorderColor(Value As String)`
    *   `setWidth(Value As String)`: Block sizing spec (`"w-content"` / shrink-wrap, or numeric dip).
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItem(Item As B4XDaisyStatItem)`: Appends stat metric panel.
    *   `StartAnimation()`: Re-runs count-up value numbers on all child metrics.
    *   `getContentWidth() As Int` / `getContentHeight() As Int`: Returns natural boundaries.

### 10D. B4XDaisyStatItem
Metric node child added programmatically inside `B4XDaisyStat`. Features side-positioned icons, radial circles, action buttons, and animated count-up numerical metrics.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on metric panel click.
*   **Public Setters / Getters**:
    *   `setTitle(Value As String)` / `setValue(Value As String)` / `setDescription(Value As String)`
    *   `setCenterItems(Value As Boolean)`: Centered layout alignments.
    *   `setVariant(Value As String)`: Variant color for background card.
    *   `setFigureType(Value As String)`: Left media type (`"none"`, `"svg"`, `"image"`, `"radial"`).
    *   `setFigureSource(Value As String)`: SVG filename asset or image path.
    *   `setFigureSize(Value As Int)`: Media size in dip.
    *   `setAnimated(Value As Boolean)` / `setDuration(Value As Int)`: Handles counting value animations.
*   **Primary Methods**:
    *   `AddAction(btn As B4XDaisyButton)`: Programmatically appends action button in the bottom slot.
    *   `AddActionButton(Text As String, Variant As String, EventName As String) As B4XDaisyButton`: Spawns action in one call.

### 10E. B4XDaisyBoxModel (Helper Class)
Static layout engine calculating custom spacing, margins, borders, and rounding rectangles inside canvas-drawn custom views.

*   **Methods**:
    *   `CreateDefaultModel() As Map`: Registers standard box layouts.
    *   `ApplyPaddingUtilities(Box As Map, PaddingSpec As String, RTL As Boolean)`: Translates padding specs (`"px-4 py-2"`) into pixel offsets.
    *   `ApplyMarginUtilities(Box As Map, MarginSpec As String, RTL As Boolean)`: Translates margin specs (`"my-2"`).
    *   `ResolveBorderRect(OuterRect As B4XRect, Box As Map) As B4XRect`
    *   `ResolveContentRect(BorderRect As B4XRect, Box As Map) As B4XRect`
    *   `ToLocalRect(AbsRect As B4XRect, OuterRect As B4XRect) As B4XRect`
