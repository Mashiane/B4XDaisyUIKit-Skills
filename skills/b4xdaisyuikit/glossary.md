# B4XDaisyUIKit Exhaustive Component API Glossary (v3)

This exhaustive API Glossary indexes the public methods, property setters/getters, initialization signatures, and event contracts for the complete suite of B4XDaisy custom views and utility classes. 

Since the custom views are compiled externally within a zipped `.b4xlib` archive outside the local project directory, this document serves as the **sole source of truth** for AI development agents to interact with the library programmatically. B4XDaisy custom views must be instantiated and configured using these exact plain-text signatures.

---

## I. Viewport & Core Page Hosts

### 1. B4XDaisyPageScroll
The mandated standard scrolling host for all pages. It covers the full page root viewport, handles content scrolling boundaries, and manages automatic height adjustments to prevent bottom cropping.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `ScrollStart`
    *   `Scrolling(Position As Int)`
    *   `ScrollEnd`
*   **Public Setters / Getters**:
    *   `getPanel As B4XView`: Returns the inner `pnlHost` panel view. This is the **exclusive** container where all visible page controls must be added as child views.
    *   `getScrollView As ScrollView`: Accesses the underlying native scroll host.
    *   `getPagePadding As Int` / `setPagePadding(Value As Int)`: Margin padding in pixels from the left/right page edges.
    *   `getYGap As Int` / `setYGap(Value As Int)`: Vertical gap spacing in pixels stacked between adjacent elements.
    *   `getUsableWidth As Int`: Read-only. Returns the total available content width after subtracting padding on both sides (`W - (PagePadding * 2)`).
    *   `getScrollPosition As Int` / `setScrollPosition(Value As Int)`: Absolute scroll offset from top.
    *   `getScrollEnabled As Boolean` / `setScrollEnabled(Value As Boolean)`: Toggles touch scroll gestures while maintaining interactive child controls.
    *   `getAutoFitHeight As Boolean` / `setAutoFitHeight(Value As Boolean)`: Toggles automatic layout panel growth.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`: Instantiates and attaches the scroll view.
    *   `Clear()`: Completely purges all children from `pnlHost` and resets height states. Used inside `RenderPage` on resizing to prevent duplicate overlapping views.
    *   `AutoFit()`: Iterates through all visible elements inside `Panel`, calculates the bottom Y boundary, and resizes `Panel` height to fit content perfectly.
    *   `AddSectionTitle(Text As String, Y As Int, Center As Boolean) As Int`: Appends a styled section header on `pnlHost` at coordinate `Y`. Returns the updated Y cursor including gaps.
    *   `AddDivider(Y As Int) As Int`: Draws an horizontal separating line at coordinate `Y`. Returns the updated Y cursor.

---

## II. Primary Input & Form Controls

### 1B. B4XDaisyButton
Visual action button wrapper with touch transitions, semantic coloring, and size scaling.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on button click.
*   **Public Setters / Getters**:
    *   `setText(Value As String)` / `getText As String`: Visual button caption.
    *   `setVariant(Value As String)` / `getVariant As String`: Semantic variant coloring (`"primary"`, `"secondary"`, `"accent"`, `"neutral"`, `"info"`, `"success"`, `"warning"`, `"error"`, `"none"`).
    *   `setStyle(Value As String)` / `getStyle As String`: Frame style (`"solid"`, `"outline"`, `"ghost"`, `"link"`).
    *   `setSize(Value As String)` / `getSize As String`: Size scale (`"xs"`, `"sm"`, `"md"`, `"lg"`, `"xl"`).
    *   `setRounded(Value As String)` / `getRounded As String`: Rounded border-radius token.
    *   `setEnabled(Value As Boolean)` / `getEnabled As Boolean`: Interactive state.
    *   `setVisible(Value As Boolean)` / `getVisible As Boolean`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetComputedHeight() As Int`: Returns absolute height bounds in pixels.
    *   `GetEstimateContentWidth() As Float`

### 1C. B4XDaisyBadge
Visual chip, indicator, or pill-like metadata label supporting text, left icons, avatars, and closable tags.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on badge click.
    *   `CloseClick(Tag As Object)`: Raised when the trailing close cross icon is clicked.
    *   `Checked(Id As String, Checked As Boolean)`: Raised on toggle chip state changes.
*   **Public Setters / Getters**:
    *   `setText(Value As String)` / `getText As String`: Text caption.
    *   `setVariant(Value As String)` / `getVariant As String`: Semantic color variant.
    *   `setBadgeStyle(Value As String)` / `getBadgeStyle As String`: Frame style (`"solid"`, `"soft"`, `"outline"`, `"dash"`, `"ghost"`).
    *   `setSize(Value As String)` / `getSize As String`: Size scale.
    *   `setRounded(Value As String)` / `getRounded As String`: Radius rounding spec.
    *   `setClosable(Value As Boolean)`: Toggles trailing close icon.
    *   `setToggle(Value As Boolean)`: Toggles selection chip behaviour.
    *   `setChecked(Value As Boolean)` / `getChecked As Boolean`: Toggle selection state.
    *   `setAvatarImage(Value As String)`: Set local image path.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetComputedHeight() As Int`

### 1D. B4XDaisyAlert
Responsive notification banner, information panel, or alert layout displaying titles, descriptions, left icons, and custom action badges.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on alert frame click.
    *   `ActionClick(Tag As Object)`: Raised when a child action badge is clicked.
*   **Public Setters / Getters**:
    *   `setTitle(Value As String)`: Top heading caption.
    *   `setText(Value As String)`: Main body paragraph copy.
    *   `setDescription(Value As String)`: Bottom description note.
    *   `setVariant(Value As String)` / `getVariant As String`: Color variant.
    *   `setAlertStyle(Value As String)`: Style (`"solid"`, `"soft"`, `"outline"`, `"dash"`).
    *   `setDirection(Value As String)`: Child layout flow alignment (`"horizontal"`, `"vertical"`).
    *   `setIconAsset(Value As String)`: SVG filename asset.
    *   `setShadow(Value As String)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddActionButton(Text As String, Tag As Object) As B4XView`: Appends action buttons programmatically in the end actions slot.
    *   `GetContentPanel() As B4XView`: Accesses actions panel.



### 1E. B4XDaisyIconButton
Visual action button that is rendered exclusively as an icon (no text caption), wrapping B4XDaisySvgIcon.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Click(Tag As Object)`: Raised on click.
*   **Public Setters / Getters**:
    *   `setIconAsset(Value As String)`: SVG asset path.
    *   `setVariant(Value As String)`: Semantic variant color.
    *   `setStyle(Value As String)`: Frame style.
    *   `setSize(Value As String)`: Dimension scale.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`

### 2B. B4XDaisySelect
The standard single-option list dropdown field wrapper with floating legends, default values, required validations, helper captions, and error states.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Changed(Value As String)`: Fired when selected item option key is changed.
*   **Public Setters / Getters**:
    *   `setLegend(Value As String)`: Caption above the select container.
    *   `setItemsSpec(Value As String)`: Semicolon key-value specs (e.g. `"light:Light|dark:Dark|cyber:Cyberpunk"`).
    *   `setValue(Value As String)` / `getValue() As String`: Selected key ID.
    *   `setRequired(Value As Boolean)`: Toggles error check on validate.
    *   `setErrorText(Value As String)`: Sets active validation message and applies error variant borders.
    *   `setHintText(Value As String)` / `getHintText() As String`: Bottom description caption.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`: Local validation engine check.

### 2C. B4XDaisyRange
Continuous or stepped numeric range slider wrapper for touch slider entries.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Changed(Value As Float)`: Raised on slider dragging updates.
*   **Public Setters / Getters**:
    *   `setValue(Value As Float)` / `getValue() As Float`: Current slider value.
    *   `setMin(Value As Float)` / `getMin() As Float`: Minimum scale.
    *   `setMax(Value As Float)` / `getMax() As Float`: Maximum scale.
    *   `setStep(Value As Float)` / `getStep() As Float`: Incremental step resolution.
    *   `setVariant(Value As String)`: Color variant.
    *   `setSize(Value As String)`: Sizing scale.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`

### 2D. B4XDaisyRating
Star-based selection indicator wrapper supporting custom scales, visual styles, and selected rating callbacks.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Changed(Value As Int)`: Raised when a star node is clicked.
*   **Public Setters / Getters**:
    *   `setValue(Value As Int)` / `getValue() As Int`: Current star count selection.
    *   `setMaxRating(Value As Int)`: Max limit (e.g. `5` or `10`).
    *   `setVariant(Value As String)`: Semantic color variant.
    *   `setSize(Value As String)`: Sizing scale.
    *   `setStyle(Value As String)`: Star visual format.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`

### 2E. B4XDaisySlider
A custom slider wrapper that behaves similarly to `B4XDaisyRange` but implements native B4A continuous slider mechanics.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Changed(Value As Float)`
*   **Public Setters / Getters**:
    *   `setValue(Value As Float)` / `getValue() As Float`
    *   `setMin(Value As Float)` / `setMax(Value As Float)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`


### 2. B4XDaisyInput
Standard single-line text entry field implementing responsive floating labels above, input type configurations, and validation errors.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `TextChanged(Old As String, New As String)`
    *   `FocusChanged(HasFocus As Boolean)`: Wires focus loss to auto-trigger inline field validations.
*   **Public Setters / Getters**:
    *   `setText(Value As String)` / `getText As String`: Text entry value.
    *   `setPlaceholder(Value As String)` / `getPlaceholder As String`: Background hint text.
    *   `setLabelAbove(Value As String)` / `getLabelAbove As String`: Heading legend label.
    *   `setRequired(Value As Boolean)` / `getRequired As Boolean`: Validation constraint. Appends red star (`*`) to the label when active.
    *   `setHintText(Value As String)` / `getHintText As String`: Bottom description helper copy.
    *   `setErrorText(Value As String)` / `getErrorText As String`: Enforces error text below input, applies the `error` variant border, and triggers height reflows.
    *   `setInputType(Value As String)`: Restricts input entry patterns (`"text"`, `"password"`, `"phone"`, `"numeric"`, `"email"`).
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`: Local validation hook. If empty and required, shows error texts, shifts siblings, and returns `False`.
    *   `ShowError(Message As String)` / `ClearError()`: Overrides to manage validation states programmatically.
    *   `ReceiveFocus()` / `Blur()`: Clears/updates error visibility state on touch entry.

### 3. B4XDaisyCheckbox
Custom-drawn square checkmark switch option with left/right label configurations, required checks, and focus error bounds.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Checked(Checked As Boolean)`
    *   `Click(Tag As Object)`
*   **Public Setters / Getters**:
    *   `setChecked(Value As Boolean)` / `getChecked As Boolean`: Option check state.
    *   `setText(Value As String)` / `getText As String`: Option text label.
    *   `setVariant(Value As String)` / `getVariant As String`: Color variant.
    *   `setSize(Value As String)` / `getSize As String`: Size scale (`"xs"`, `"sm"`, `"md"`, `"lg"`).
    *   `setPosition(Value As String)`: Places label relative to checkbox square (`"start"` / left, `"end"` / right).
    *   `setValue(Value As String)` / `getValue As String`: Data value payload.
    *   `setGroupName(Value As String)` / `getGroupName As String`: Sets single-select group restrictions across checkboxes.
    *   `setRequired(Value As Boolean)` / `getRequired As Boolean`: Enforces validation checks on submit.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`: Enforces required checked states, returning `False` on empty selections.

### 4. B4XDaisyRadio
Custom-drawn circular radio option button that automatically traverses parent child views to clear checked states of sibling radio elements sharing the same `GroupName`.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Checked(Checked As Boolean)`
    *   `Click(Tag As Object)`
*   **Public Setters / Getters**:
    *   `setGroupName(Value As String)` / `getGroupName As String`: Group cluster name. Checking a radio unchecks siblings with matching groups in the parent view.
    *   `setChecked(Value As Boolean)` / `getChecked As Boolean`: Toggle check state.
    *   `setText(Value As String)` / `getText As String`: Text label.
    *   `setVariant(Value As String)` / `getVariant As String`: Color variant.
    *   `setSize(Value As String)` / `getSize As String`: Sizing scale.
    *   `setPosition(Value As String)` / `getPosition As String`: Label placement (`"start"`, `"end"`).
    *   `setValue(Value As String)` / `getValue As String`: Data value payload.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`

### 5. B4XDaisyToggle
Semantic sliding toggle switch control wrapping checkbox-checked transformations into fluid B4A material animations.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Checked(Checked As Boolean)`
    *   `Click(Tag As Object)`
*   **Public Setters / Getters**:
    *   `setChecked(Value As Boolean)` / `getChecked As Boolean`: Toggle sliding state.
    *   `setText(Value As String)` / `getText As String`: Visual label option.
    *   `setVariant(Value As String)` / `getVariant As String`: Color variant.
    *   `setSize(Value As String)` / `getSize As String`: Switch sizing scale.
    *   `setPosition(Value As String)` / `getPosition As String`: Label placement (`"start"`, `"end"`).
    *   `setValue(Value As String)` / `getValue As String`: Logical data payload value.
    *   `setGroupName(Value As String)` / `getGroupName As String`: Groups toggle instances together.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`

### 6. B4XDaisyFileInput
An interactive upload field widget wrapping native directory file/media pickers with inline file preview assets and error states.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `FileSelected(FileName As String)`
    *   `Cancelled`
*   **Public Setters / Getters**:
    *   `setPlaceholder(Value As String)` / `getPlaceholder As String`: Placeholder hint text.
    *   `setButtonText(Value As String)`: Suffix browse button caption (e.g. `"Browse"`).
    *   `setAccept(Value As String)`: Extension mime-type filter specs (e.g. `"image/*"`, `"application/pdf"`).
    *   `getFileBase64 As String`: Read-only. Encoded String representation of the picked file.
    *   `getMimeType As String`: Read-only. File format extension.
    *   `getFileSize As Long`: Read-only. File size in bytes.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetBitmap() As B4XBitmap`: Decodes and returns the chosen image asset.
    *   `Clear()`: Completely purges all selected file metadata.
    *   `Validate() As Boolean`

### 7. B4XDaisyOTP
Custom pin code input cluster that distributes keyboard entries and paste operations sequentially across multiple single-digit text boxes.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Input`: Raised on digit entry.
    *   `Complete(Value As String)`: Raised when all digits are successfully completed.
*   **Public Setters / Getters**:
    *   `setLength(Value As Int)`: Number of digit cells (e.g. `4` or `6`).
    *   `setValue(Value As String)` / `getValue As String`: Complete OTP string.
    *   `setInputType(Value As String)`: Restricts entry character types (`"number"`, `"text"`).
    *   `getIsComplete As Boolean`: Returns true if all cells contain a digit.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `setFocus(Index As Int)`: Forces keyboard cursor focus directly onto target cell.

### 8. B4XDaisySignaturePad
Fully custom vector signing surface implementing canvas drawing lines, smooth speed filters, and file data serialization.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `BeginStroke`
    *   `EndStroke`
    *   `Changed`
*   **Public Setters / Getters**:
    *   `setPenColor(Value As Int)`: Ink hex color.
    *   `setPadBackgroundColor(Value As Int)`: Background signature block canvas color.
    *   `setMinWidth(Value As Float)` / `setMaxWidth(Value As Float)`: Dynamic vector stroke line width.
    *   `getIsEmpty As Boolean`: Returns true if signature pad has no canvas drawings.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetBitmap() As B4XBitmap`: Rasterizes and returns signature canvas as an image asset.
    *   `GetBase64() As String` / `SetBase64(Base64String As String)`: Serializes or restores vector signature drawings in string formats.
    *   `Clear()`: Wipes canvas back to default.

---

## III. Layout & Interactive Container Views

### 9. B4XDaisyBadgeGroupSelect
Composite visual option row/column that compiles key-value option schemas into responsive wrapping structures of badge select chips.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Changed(SelectedIds As List)`: Returns list of currently checked item option keys.
*   **Public Setters / Getters**:
    *   `setItemsSpec(Value As String)`: Semicolon key-value schema string (e.g. `"ui:User Interface|api:API|db:Database"`).
    *   `setChecked(CheckedIds As String)` / `getChecked As String`: Sets or returns checked chip keys as semicolon-delimited lists (e.g. `"ui;db"`).
    *   `setBadgeSelectionMode(Value As String)`: Forces chip rules (`"single"`, `"multi"`).
    *   `setLegend(Value As String)`: Legend title.
    *   `setLabelAbove(Value As Boolean)`: Displays legend title above the container border frame.
    *   `setRequired(Value As Boolean)`: Form validation rule.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`: Enforces required checked states, appending red error text and adjusting heights on empty selections.
    *   `ClearSelection()`: Programmatic reset unchecked loop.

### 10. B4XDaisyCheckboxGroup
Thematic fieldset container hosting multiple checkboxes arranged inside logical groups.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `ItemChanged(Id As String, Text As String, Checked As Boolean)`
    *   `Changed(SelectedIds As List)`
*   **Public Setters / Getters**:
    *   `setItems(Value As Map)`: Compiles list options where keys map to IDs and values map to label descriptions.
    *   `setChecked(CheckedIds As String)` / `getChecked As String`: Checkbox values checked matching semicolon IDs.
    *   `setLegend(Value As String)`: Group legend title.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`

### 11. B4XDaisyToggleGroup
Thematic fieldset container hosting multiple toggle switch rows arranged inside logical groups.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `ItemChanged(Id As String, Text As String, Checked As Boolean)`
    *   `Changed(SelectedIds As List)`
*   **Public Setters / Getters**:
    *   `setItemsSpec(Value As String)`: Option items formatting specs (e.g. `"sms:SMS Alert|email:Email Updates"`).
    *   `setChecked(CheckedIds As String)` / `getChecked As String`: Semicolon-delimited toggled IDs.
    *   `setLegend(Value As String)`: Fieldset title caption.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`



### 11B. B4XDaisyRadioGroup
Fieldset container hosting multiple B4XDaisyRadio elements grouped programmatically to implement single-select logic.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `ItemChanged(id As String, text As String, checked As Boolean)`
    *   `Changed(SelectedId As String)`: Raised when selection shifts to a new option ID.
*   **Public Setters / Getters**:
    *   `setLegend(Value As String)`: Group fieldset legend heading.
    *   `setItemsSpec(Value As String)`: Key-value options string specs (e.g. `"cash:Pay Cash|card:Credit Card"`).
    *   `setChecked(CheckedId As String)` / `getChecked() As String`: Selected ID.
    *   `setRequired(Value As Boolean)` / `getRequired() As Boolean`: Validation rule.
    *   `setErrorText(Value As String)`: Appends red validation messages.
    *   `setHintText(Value As String)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Validate() As Boolean`

### 12. B4XDaisyCollapse
*Uses auxiliary sub-classes **B4XDaisyCollapseTitle** and **B4XDaisyCollapseContent** to render clickable header and padded content body components natively.*
Collapsible panel wrapper implementing click transitions, toggle arrow animations, and child view hosting.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Events**:
    *   `Click(Tag As Object)`
    *   `StateChanged(Open As Boolean)`: Fires on state transitions. **Requires** the page controller to capture the event, evaluate `GetComputedHeight - previousHeight`, and run `B4XDaisyVariants.ShiftSiblingsBelow` to avoid coordinate collisions.
*   **Public Setters / Getters**:
    *   `setOpen(Value As Boolean)` / `getOpen As Boolean`: Expanded status.
    *   `setTitleText(Value As String)` / `getTitleText As String`: Clickable header caption text.
    *   `setIcon(Value As String)`: Trailing visual icon type (`"none"`, `"arrow"`, `"plus"`).
    *   `setVariant(Value As String)` / `getVariant As String`: Semantic color variant.
    *   `setRounded(Value As String)` / `getRounded As String`: Rounded border-radius scale.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `getContentView() As B4XView`: Returns the transparent backing child panel view. Users must append child controls onto this panel.
    *   `RefreshContent()`: Recalculates internal bounds and stretches parent limits on dynamic child views insertions.
    *   `Toggle()`: Programmatically toggles expand/collapse states.

### 13. B4XDaisyAccordion
Logical orchestrator cluster holding multiple `B4XDaisyCollapse` items, restricting open states to a single panel when enabled.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Public Setters / Getters**:
    *   `setOpenOnlyOne(Value As Boolean)`: Toggles accordion restrict rules. If true, opening a collapse item automatically collapses all others.
    *   `setRounded(Value As String)`: Accordion border-radius.
    *   `setShadow(Value As String)`: Container shadow elevation.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`: Spawns and returns a new initialized collapse panel child matching index keys.
    *   `SetItemActive(ItemTag As Object, Value As Boolean)`: Programmatically slides open/close target collapse child.
    *   `SetItemTitle(ItemTag As Object, Title As String)`: Updates child header string.

### 14. B4XDaisyWindow
Mock Operating System window container implementing OS control dots, header slots, and expandable content panes.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Public Setters / Getters**:
    *   `setToolBarTitle(Value As String)`: Centered toolbar caption string.
    *   `setShowHeader(Value As Boolean)`: Toggles top window toolbar visibility.
    *   `setShowControls(Value As Boolean)`: Toggles three window control dots.
    *   `setAutoHeight(Value As Boolean)`: Recalculates window heights based on internal child views.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Content() As B4XView`: Accesses transparent internal workspace panel. Real content views must be appended as child elements of this panel.
    *   `AddHeaderView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`: Appends custom toolbar widgets.
    *   `ClearContent()`: Wipes workspace views.

### 15. B4XDaisyFieldset
Visual boundary box container providing semantic grouping borders, legend captions, and spacing margins.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Public Setters / Getters**:
    *   `setLegend(Value As String)`: Fieldset grouping caption.
    *   `setLegendSize(Value As String)`: Legend font-size token (`"text-xs"`, `"text-sm"`, `"text-base"`).
    *   `setLegendBold(Value As Boolean)`: Toggles bold rendering.
    *   `setRequired(Value As Boolean)`: Renders a red asterisk next to the legend when active.
    *   `setAutoHeight(Value As Boolean)`: Recalculates height of fieldset box based on workspace contents.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetContentPanel() As B4XView`: Returns transparent internal panel. Workspace controls must be added onto this panel.
    *   `ClearContent()`: Wipes child views inside workspace.

### 16. B4XDaisyStack
Layered card deck container mimicking cascading opacities and offsets to simulate nested material stacks.

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Public Setters / Getters**:
    *   `setDirection(Value As String)`: Cascade offset angle (`"top"`, `"bottom"`, `"start"`, `"end"`).
    *   `setStrictDaisyParity(Value As Boolean)`: Evaluates standard opacities (layer 1: `1.0`, layer 2: `0.9`, layer 3: `0.7`) on deck layers.
    *   `setAutoFillLayers(Value As Boolean)`: Automatically stretches nested layers to parent dimensions.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddLayer(ChildView As B4XView) As Int`: Appends view element on top of the card deck.
    *   `AddLayerWithTag(ChildView As B4XView, Tag As Object) As Int`
    *   `RemoveLayerAt(Index As Int) As Boolean`
    *   `Clear()`: Purges card stack views.

---

## IV. Core Utility & Infrastructure Classes

### 17. B4XDaisyVariants (Static Code)
The foundational static orchestrator translating daisyUI design tokens, evaluating theme palettes, executing validations, and shifting view coordinates.

*   **Design & Theme API**:
    *   `ResolveBackgroundColorVariant(Variant As String, DefaultColor As Int) As Int`: Returns resolved ARGB color.
    *   `ResolveBorderColorVariant(Variant As String, DefaultColor As Int) As Int`
    *   `ResolveTextColorVariant(Variant As String, DefaultColor As Int) As Int`
    *   `ResolveRoundedDip(RoundedToken As String, DefaultDip As Float) As Float`: Resolves radius properties (`"rounded-md"`, `"rounded-full"`).
    *   `SetActiveTheme(ThemeName As String)` / `GetActiveTheme() As String`: Evaluates active palette map states (`"light"`, `"dark"`).
*   **Layout & Reflow API**:
    *   `ShiftSiblingsBelow(View As B4XView, Delta As Int, AnimDuration As Int)`: Loops through siblings of `View` situated below on the parent panel, translating their `Top` coordinates by `Delta` pixels with animated transitions of `AnimDuration` milliseconds.
    *   `SetOverflowHidden(v As B4XView)`: Clips parent layout shapes and children view overlays.
*   **Validation Pipeline API** (per-component `Validate()` is the supported path — see negative-knowledge.md §3a):
    *   `<B4XDaisyInput|Checkbox|Toggle|Select|Range|Rating>.Validate As Boolean`: Sets the error UI (red border + error text + height shift) and returns True when valid/none. Call on each required component directly and branch on the boolean — the B4XPage demo methodology.
    *   `ValidateControls(Controls As List) As Boolean`: Non-recursive; calls `Validate()` on each list member. Works, but demos do not use it for submit validation. Prefer direct per-component `Validate()`.
    *   `ValidateRequiredControls(Parent As B4XView) As Boolean`: **BROKEN — do not use.** Recurses into native `android.widget.TextView` children of `B4XDaisyInput`; `xui.SubExists` throws and the catch leaves `allValid=True`, so required enforcement silently no-ops.

### 18. B4XDaisyAnimation
Hardware-accelerated animation transitions wrapping native Android ViewPropertyAnimators.

*   **Core Animation Methods**:
    *   `SetNativeAlpha(v As B4XView, AlphaValue As Float)`
    *   `SetNativeScale(v As B4XView, ScaleX As Float, ScaleY As Float)`
    *   `AnimateAlpha(v As B4XView, FromAlpha As Float, ToAlpha As Float, DurationMs As Int)`
    *   `AnimateRotation(v As B4XView, FromDegrees As Float, ToDegrees As Float, DurationMs As Int)`
    *   `AnimateTranslationY(v As B4XView, TranslationYPx As Float, DurationMs As Int)`
    *   `AnimateTranslationXY(v As B4XView, TransX As Float, TransY As Float, DurationMs As Int)`
    *   `EvaluateEasing(EaseName As String, Time As Float, StartValue As Float, ChangeInValue As Float, Duration As Int) As Float`: Evaluates Penner equations.

### 19. B4XDaisyPocketBase
Complete asynchronous CRUD client mapping database collections to B4X Resumable Subs using standard HttpJob connections.

*   **Schema Configurations**:
    *   `SchemaAddText1(FieldName As String)` / `SchemaAddLongText1(FieldName As String)`
    *   `SchemaAddInt1(FieldName As String)` / `SchemaAddDouble1(FieldName As String)`
    *   `SchemaAddBoolean1(FieldName As String)`
    *   `FILE_FIELD(FieldName As String, UrlFieldName As String)`: Registers document streams.
*   **Filters & Sorting API**:
    *   `whereEqual(FieldName As String, Value As Object) As B4XDaisyPocketBase`
    *   `OrWhereEqual(FieldName As String, Value As Object) As B4XDaisyPocketBase`
    *   `whereLike(FieldName As String, Value As Object) As B4XDaisyPocketBase`
    *   `orderBy(FieldNames As List) As B4XDaisyPocketBase`
    *   `selectFields(FieldNames As List) As B4XDaisyPocketBase`
    *   `CLEAR_WHERE() As B4XDaisyPocketBase`
*   **Database Query Operations**:
    *   `SELECT_ALL_FETCH() As ResumableSub`: Selects collections matching fields. Returns `List`.
    *   `SELECT_WHERE_FETCH() As ResumableSub`: Selects collections matching filters. Returns `List`.
    *   `GetFirstListItemFetch(TableName As String) As ResumableSub`: Returns `Map`.
*   **Asynchronous Database Writing API**:
    *   `PrepareRecord()`: Initiates record maps.
    *   `SetField(FieldName As String, Value As Object) As B4XDaisyPocketBase`
    *   `CREATE_FETCH() As ResumableSub`: Pushes record payload, returning successful ID.
    *   `UPDATE_BY(FieldName As String, Value As String) As ResumableSub`: Updates record payload matching target values. Returns successful ID.
    *   `DELETE_FETCH(RecordID As String) As ResumableSub`: Wipes record, returning successful Boolean.
*   **Authentication Resumable Subs**:
    *   `USER_AUTH_WITH_PASSWORD(Email As String, Password As String) As ResumableSub`
    *   `ADMIN_AUTH_WITH_PASSWORD(Email As String, Password As String) As ResumableSub`
    *   `USER_SIGNOUT()`


---

## V. Excluded Layout & Sizing Components (BANNED SYSTEMS)

These components are compiled within the library files but are **strictly excluded** from all active application generation patterns. The AI skill developer must **never** instantiate or arrange these components; all responsive coordinates layouts are assembled flatly and sequentially inside `B4XDaisyPageScroll`.

### 20. B4XDaisyGrid
Breakpoint-aware grid matrix wrappers. *DO NOT USE.*

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Methods**:
    *   `AddItem(View As B4XView, ClassText As String)`: *Forbidden.*

### 21. B4XDaisyFlexPanel
Fluent CSS Flexbox arrangement wrapper panel. *DO NOT USE.*

*   **Initialization**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    
```
*   **Methods**:
    *   `AddItem(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`: *Forbidden.*

### 22. B4XDaisyFlexLayout
Calculates raw positioning coordinates for flex matrices. *DO NOT USE.*

### 23. B4XDaisyFlexItem
Configures individual item flex weight parameters. *DO NOT USE.*
