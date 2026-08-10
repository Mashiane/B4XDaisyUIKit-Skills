# B4XDaisyUIKit Component API Glossary — Navigation Extension (v2)
This modular glossary extension details the alphabetical API dictionary, event structures, and properties for the **Navigation, Dock, Menus, Popups, and Guided Onboarding** visual custom views of B4XDaisyUIKit.

Since these components reside within the zipped external `.b4xlib` archive outside the user project workspace, local AI agents must rely on this reference file to compile layout, callback, and positioning logic.

---

## I. Viewport Headers, Footers, and Switchers

### 1. B4XDaisyNavbar
The standard top bar visual toolbar. Manages start/center/end programmatic slot allocations, automated back clicks, hamburger swaps, and overlay FAB setups.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Click(Payload As Object)`: Fired on toolbar taps.
    *   `Opened` / `Closed`: Raised on hamburger/drawer state toggles.
    *   `Back(Tag As Object)`: Raised when the back button is clicked.
*   **Public Setters / Getters**:
    *   `setVariant(Value As String)` / `getVariant As String`: Semantic color token.
    *   `setBackgroundColor(Color As Int)` / `getBackgroundColor As Int`: Custom background color.
    *   `setTextColor(Color As Int)` / `getTextColor As Int`: Custom text color.
    *   `setShadow(Value As String)` / `getShadow As String`: Elevation shadow (`"none"`, `"sm"`, `"md"`, `"lg"`, `"xl"`, `"2xl"`).
    *   `setRounded(Value As String)` / `getRounded As String`: Rounding spec.
    *   `setGlass(Value As Boolean)` / `getGlass As Boolean`: Enables translucent blur.
    *   `setGlassSize(Value As String)` / `getGlassSize As String`: Glass token scale.
    *   `setTitle(Value As String)`: Caption text.
    *   `setTitlePosition(Value As String)`: Alignment placement (`"start"`, `"center"`, `"end"`).
    *   `setTitleVisible(Value As Boolean)`: Toggles title text visible.
    *   `setBackVisible(Value As Boolean)`: Toggles back button.
    *   `setBackLabel(Value As String)`: Sets back button caption text.
    *   `setHamburgerVisible(Value As Boolean)`: Toggles start-slot hamburger swap icon.
*   **Primary Slot & Component Adapters**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GetStartPanel() As B4XView` / `GetCenterPanel() As B4XView` / `GetEndPanel() As B4XView`: Returns slot panel.
    *   `AddViewToStart(v As B4XView, Width As Int, Height As Int)` / `AddViewToCenter(...)` / `AddViewToEnd(...)`: Appends views.
    *   `AddTitleToCenter(Title As String)` / `AddTitleToStart(Title As String)` / `AddTitleToEnd(Title As String)`: Instantiates headers.
    *   `AddBackButton(SizeDip As Int, Label As String)`: Programmatic back button setup.
    *   `AddHamburger(SizeDip As Int)`: Appends toggleable hamburger swap in start slot.
    *   `AddLogo(ImagePath As String, WidthDip As Int, HeightDip As Int, Mask As String) As B4XDaisyAvatar`: Starts start logo.
    *   `AddAvatarToEnd(ID As String, ImagePath As String, SizeDip As Int, Mask As String) As B4XDaisyAvatar`: Appends profile avatar in end slot.
    *   `AddSVGIconToEnd(ID As String, AssetPath As String, SizeDip As Int, Color As Int) As B4XDaisySvgIcon`: Inserts trailing SVG vector.
    *   `AddButtonIconToEnd(ID As String, SizeDip As Int, Icon As String, Color As Int, Ghost As Boolean) As B4XDaisyButton`: Trailing circular action.
    *   `AddButtonToEnd(ID As String, ButtonText As String, Variant As String, WidthDip As Int, HeightDip As Int, Ghost As Boolean) As B4XDaisyButton`
    *   `AddFabToEnd(ID As String, OverlayHost As B4XView, SizeDip As Int) As B4XDaisyFab`: Anchors expandable floating action.

---

### 2. B4XDaisyDock
Standard bottom main toolbar. Arranges navigation items, text labels, SVG icons, active indicators, and unread bubble badges.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `ItemClick(ItemId As String)`: Raised when a dock navigation item is clicked. Passes the registered Item ID.
*   **Public Setters / Getters**:
    *   `setSize(Value As String)` / `getSize As String`: Sizing scale (`"xs"`, `"sm"`, `"md"`, `"lg"`, `"xl"`).
    *   `setBadgeSize(Value As String)` / `getBadgeSize As String`: Sizing for indicator counts.
    *   `setActiveIndex(Index As Int)` / `getActiveIndex As Int`: 0-based active highlighting index.
    *   `setActivePosition(Value As String)`: Alignment of the active line (`"top"`, `"bottom"`).
    *   `setGlass(Value As Boolean)` / `getGlass As Boolean`: Translucent glass background.
    *   `setBackgroundColor(Value As Int)` / `getBackgroundColor As Int`: Custom background override.
    *   `setTextColor(Value As Int)` / `getTextColor As Int`: Normal icon/text color.
    *   `setShadow(Value As String)`: Base elevation token.
    *   `setRounded(Value As String)`: Corner rounding mode.
    *   `setEnabled(Value As Boolean)` / `getEnabled As Boolean`: Interactive state toggle.
    *   `setVisible(Value As Boolean)` / `getVisible As Boolean`: Viewport visibility.
*   **Primary Methods**:
    *   `CreateView(Width As Int, Height As Int) As B4XView`: Programmatic factory.
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItem(Id As String, Text As String, SvgAssetFile As String) As Int`: Appends standard nav node.
    *   `AddItemWithVariant(Id As String, Text As String, SvgAssetFile As String, VariantName As String) As Int`: Appends with variant tint.
    *   `SetBadge(Index As Int, Value As String, Variant As String)`: Displays/updates red bubble metrics.
    *   `ClearItems()`: Purges all dock entries.

---

### 3. B4XDaisyTab
Standard horizontal paging tab layout. Supports border, lift, or boxed tabs, inline icons, disabled tab nodes, and scrollable tab lists.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `TabClick(Index As Int)`: Raised on tab segment tap.
*   **Public Setters / Getters**:
    *   `setActiveIndex(Value As Int)` / `getActiveIndex As Int`: Current active tab selection.
    *   `setStyle(Value As String)` / `getStyle As String`: Layout style (`"default"`, `"border"`, `"lift"`, `"box"`).
    *   `setSize(Value As String)` / `getSize As String`: Size scale (`"xs"`, `"sm"`, `"md"`, `"lg"`, `"xl"`).
    *   `setPlacement(Value As String)`: Anchor placement relative to panels (`"top"`, `"bottom"`).
    *   `setScrollable(Value As Boolean)` / `getScrollable As Boolean`: Toggles horizontal scrolling overflow.
    *   `setAlignment(Value As String)`: Horizontal alignment of tab buttons (`"left"`, `"center"`, `"right"`).
    *   `setActiveColor(Value As String)`: Custom color variant for active node.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddTab(Text As String)`: Appends plain text tab.
    *   `AddTabWithIcon(Text As String, IconText As String)`: Appends icon + text tab.
    *   `SetTabDisabled(Index As Int, Disabled As Boolean)`: Toggles tab segment interactive block.
    *   `SetTabVariant(Index As Int, Variant As String)`: Updates specific tab color.
    *   `SetTabTitle(Index As Int, Text As String)`: Programmatic title setter.
    *   `SetTabContent(Index As Int, Content As B4XView)`: Mounts separate layout panel to the tab page index.
    *   `GetTabContent(Index As Int) As B4XView`: Returns panel wrapper.
    *   `SetTabContentText(Index As Int, Text As String)`: Displays simple text paragraph in the tab panel.
    *   `SetTabs(TabsList As List)`: Batch configures tabs.
    *   `ClearTabs()`: Wipes all segments and child panels.

---

## II. Menus, Overlays, and Segmented Navigation

### 4. B4XDaisyMenu
Standard structural list menu. Compiles titles, divider lines, leading icons, text captions, submenu groups, and selection badges into vertical/horizontal columns.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `ItemClick(Tag As Object, Text As String)`: Fired on clicking menu options.
    *   `SubmenuToggle(Tag As Object, Open As Boolean)`: Fired when a submenu expands/contracts.
*   **Public Setters / Getters**:
    *   `setWidth(Value As String)` / `getWidth As String`: Preferred width.
    *   `setHeight(Value As String)` / `getHeight As String`: Preferred height.
    *   `setPadding(Value As String)`: Tailwind spacing specification.
    *   `setDividers(Value As Boolean)`: Toggles automatic line dividers between clickable rows.
    *   `setSize(Value As String)`: Font and layout padding scale.
    *   `setOrientation(Value As String)`: List direction (`"vertical"`, `"horizontal"`).
    *   `setRounded(Value As String)`: Corner radius token.
    *   `setShadow(Value As String)`: Elevation level.
*   **Primary Item Assembly Methods**:
    *   `AddTitle(Text As String) As Int`: Appends bold non-clickable category label.
    *   `AddDivider() As Int`: Appends margin-aware horizontal line.
    *   `AddItem(TagValue As Object, Text As String) As Int`: Appends flat option row.
    *   `AddIconItem(TagValue As Object, Text As String, IconName As String) As Int`: Option with leading SVG.
    *   `AddBadgeItem(TagValue As Object, Text As String, BadgeText As String, BadgeVariant As String) As Int`: Option with trailing badge.
    *   `AddIconBadgeItem(TagValue As Object, Text As String, IconName As String, BadgeText As String, BadgeVariant As String) As Int`
    *   `AddSubmenu(TagValue As Object, Text As String, InitiallyOpen As Boolean) As B4XDaisyMenu`: Creates nested cascading menu.
    *   `SetItemDisabled(TagValue As Object, Value As Boolean)`: Toggles item row active.
    *   `SetItemActive(TagValue As Object, Value As Boolean)`: Highlights the option row as active.

---

### 5. B4XDaisyDropdown
Translucent floating anchor popup context. Intercepts screen clicks, computes spatial clearances, and positions associated floating menu lists safely over page views.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   Shares callback event pipeline with internal `B4XDaisyMenu` options.
*   **Public Setters / Getters**:
    *   `getMenu() As B4XDaisyMenu`: Accessor to assemble visual options.
    *   `setPlacement(Value As String)`: Horizontal alignment relative to parent (`"start"`, `"end"`).
    *   `setDirection(Value As String)`: Floating popup drop direction (`"top"`, `"bottom"`, `"left"`, `"right"`).
    *   `setHoverOpen(Value As Boolean)`: Opens dropdown popup instantly on pointer hover.
    *   `setForceOpen(Value As Boolean)` / `setForceClose(Value As Boolean)`: Programmatic overrides.
    *   `setAnchorTarget(Value As B4XView)`: Attaches dropdown trigger bounds to an arbitrary workspace view.
    *   `setMenuWidth(Value As String)`: Column width specs.
    *   `setMenuPadding(Value As String)` / `setMenuRounded(Value As String)` / `setMenuShadow(Value As String)`: Floating container styling overrides.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `Open()` / `Close()` / `Toggle()`: Manages layout popup states.
    *   `AddItem(...)` / `AddIconItem(...)` / `AddBadgeItem(...)`: Programmatic menu adapters.

---

### 6. B4XDaisyPagination
Composite navigation switcher constructed of connected button segments. Implements daisyUI join corner radius styling and handles numeric pages, chevrons, and limits.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Changed(PageIndex As Int, ItemId As String)`: Raised when page adjustments occur.
*   **Public Setters / Getters**:
    *   `setSize(Value As String)`: Sizing scale.
    *   `setStyle(Value As String)`: Segment visual design.
    *   `setActiveColor(Value As String)`: Primary highlight color token.
    *   `setActiveIndex(Index As Int)` / `getActiveIndex As Int`: 0-based highlighted index.
    *   `setPageCount(Value As Int)`: Number of pages to render.
    *   `setShowPrevNext(Value As Boolean)` / `setShowFirstLast(Value As Boolean)`: Toggles arrows.
    *   `setPrevText(Value As String)` / `setNextText(Value As String)`: Chevron label or SVG icon name.
    *   `setCircle(Value As Boolean)`: Forces square/circle buttons instead of soft pill shapes.
    *   `setGapX(Value As Int)`: Space interval between buttons.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `GoToPage(Index As Int)`: Jumps to target page programmatically.
    *   `NextPage()` / `PrevPage()`: Adjusts index steps.
    *   `SetItemDisabled(Id As String, Disabled As Boolean)`: Toggles interactive state of specific nodes (`"prev"`, `"next"`, `"first"`, `"last"`).

---



### 6B. B4XDaisyActionSheet
A styled bottom-drawer sheet container displaying selectable option rows with icons, cancel buttons, and custom background overlay masks.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `ItemClick(ItemId As String)`: Raised when an option row is tapped. Returns option ID.
    *   `CancelClick`: Raised when the cancel drawer row is clicked.
*   **Public Setters / Getters**:
    *   `setTitle(Value As String)` / `getTitle() As String`: Drawer heading text.
    *   `setSubTitle(Value As String)`: Secondary description subtitle.
    *   `setGlass(Value As Boolean)` / `getGlass() As Boolean`: Applies glass shine styling.
    *   `setShadow(Value As String)` / `getShadow() As String`: Elevation shadow.
    *   `setRounded(Value As String)`: Rounded corners scale.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItem(Id As String, Title As String, IconName As String)`: Appends option row.
    *   `AddItemWithVariant(Id As String, Title As String, IconName As String, VariantName As String)`: Appends with semantic colors.
    *   `Show()` / `Hide()`: Animates drawer sliding up or down.
    *   `ClearItems()`: Purges options list.

## III. Floating Actions and Onboarding Tour Highlight Systems

### 7. B4XDaisyFab
Floating expandable action menu button. Handles overlay backdrops, main/close toggle animations, and mounts nested radial or vertical sub-actions.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `MainActionClick(Tag As Object)`: Fired on primary trigger clicks.
    *   `ActionClick(Index As Int, Tag As Object)`: Fired on child sub-item selection.
    *   `CloseClick(Tag As Object)`: Raised when the close button is clicked.
    *   `Opened` / `Closed`: State transition triggers.
*   **Public Setters / Getters**:
    *   `setPlacementMode(Value As String)`: Attachment rules (`"manual"`, `"anchored"`, `"fixed"`).
    *   `setPlacement(Value As String)`: Screen edge alignment (`"bottom-right"`, `"bottom-left"`, `"top-right"`, `"top-left"`).
    *   `setDirection(Value As String)`: Child pop direction (`"top"`, `"bottom"`, `"left"`, `"right"`, `"flower"` / radial overlay).
    *   `setDuration(Value As Int)`: Animation ms speed.
    *   `setTriggerText(Value As String)` / `setTriggerIconName(Value As String)`: Captions for primary button.
    *   `setTriggerVariant(Value As String)` / `setTriggerStyle(Value As String)`: Trigger design.
    *   `setUseMainAction(Value As Boolean)`: Separates trigger toggle from a separate click event.
    *   `setUseCloseAction(Value As Boolean)`: Swaps trigger button into a close button when open.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddActionEx(Text As String, LabelText As String, Variant As String, Style As String, IconName As String, TagValue As Object) As Int`: Appends sub-action choice.
    *   `SetActionVisible(Index As Int, Value As Boolean)`: Toggles visibility of specific sub-buttons.
    *   `Open()` / `Close()` / `Toggle()`: Programmatic actions.
    *   `IsOpen() As Boolean`: Read-only state checker.
    *   `ClearActions()`: Purges action lists.

---



### 7B. B4XDaisyBoomMenu
*Delegates spiral layouts and dot calculations to static helper classes **B4XDaisyButtonPlaceManager** and **B4XDaisyPiecePlaceManager** respectively.*
Advanced multi-node floating action trigger. Calculates spiral/radial coordinate paths programmatically to explode circular/ham menu buttons with elastic easings.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `BoomButtonClick(Index As Int, Tag As Object)`: Raised when an exploded sub-button node is clicked.
    *   `BackgroundClick`: Raised when clicking the backdrop to close the menu.
    *   `Opened` / `Closed`: Navigation triggers.
*   **Public Setters / Getters**:
    *   `setButtonType(Value As String)`: Node visual style (`"SimpleCircle"`, `"TextInsideCircle"`, `"TextOutsideCircle"`, `"Ham"`).
    *   `setPiecePlace(Value As String)`: Preset layout spec for preview piece dots (e.g. `"DOT_9_1"`).
    *   `setButtonPlace(Value As String)`: Preset layout spec for exploded button nodes (e.g. `"SC_9_1"`).
    *   `setButtonSize(Value As Int)`: Node size in dip.
    *   `setButtonGap(Value As Int)`: Pixels spacing between exploded nodes.
    *   `setVisible(Value As Boolean)` / `setEnabled(Value As Boolean)`
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddButton(Id As String, Text As String, ImagePath As String, SvgPath As String)`: Appends node record map.
    *   `Open()` / `Close()` / `Toggle()`: Programmatically triggers explosion or collapse animations.

### 8. B4XDaisyEnjoyHint
Guided step-by-step walkthrough onboarding tour engine. Focuses spotlights over targeted components and displays annotations.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String, Root As B4XView)
    ```
*   **Events**:
    *   `StepClick(Index As Int, Tag As Object)`: Raised when the user clicks next or previous controls.
    *   `OnFinished`: Raised when the final walkthrough node is completed.
*   **Public Configurations**:
    *   `BtnNextText As String`: Caption for forward buttons.
    *   `BtnSkipText As String`: Caption for skip button.
    *   `BtnPrevText As String`: Caption for backward buttons.
    *   `BtnFinishText As String`: Caption for completion button.
    *   `RectCornerRadius As Int`: Rounding bounds of rect-spotlights.
*   **Primary Steps Configuration**:
    *   `AddStep(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ArrowPosition As String)`: Appends step spotlight. Target is the element, Shape is `"circle"` or `"rect"`, ArrowPosition configures pointer placement (`"top"`, `"bottom"`, `"left"`, `"right"`).
    *   `AddStep2(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ShowNext As Boolean, ShowSkip As Boolean, ShowPrev As Boolean, CloseOnOverlay As Boolean, ExplicitLeft As Int, ExplicitTop As Int, ExplicitRight As Int, ExplicitBottom As Int, PositionMode As String, ShadowColor As Int, Opacity As Float, ArrowPosition As String)`: Detailed step spec.
    *   `RunWithResume()`: Restores step state.
    *   `EndTour()`: Safely closes tour layer.
    *   `Recalc()`: Forces overlay redraw (resize safety).

---

### 9. B4XDaisySteps
Horizontal or vertical wizard progress tracker. Arranges connection nodes, step count indicators, titles, and handles step navigation clicked signals.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `StepClick(Index As Int, Tag As Object)`: Fired on clicking step nodes.
*   **Public Setters / Getters**:
    *   `setOrientation(Value As String)`: Direct path alignment (`"horizontal"`, `"vertical"`).
    *   `setActiveStep(Value As Int)` / `getActiveStep As Int`: Completed steps cap index. Steps below are highlighted.
    *   `setActiveColor(Value As String)`: Main highlighted color token.
    *   `setScrollable(Value As Boolean)`: Toggles viewport scrollable panel.
    *   `setCircleSize(Value As Int)`: Spot size in dip.
    *   `setStepGap(Value As Int)`: Spacing gap interval between steps.
    *   `setConnectOnClick(Value As Boolean)`: Toggles whether clicking a circle highlights the progress path automatically.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddStep(Text As String, Variant As String)`: Appends step text.
    *   `AddStepWithContent(Text As String, Variant As String, Content As String)`: Appends with detailed panel.
    *   `AddStepWithIcon(Text As String, Variant As String, Icon As String)`: Appends with custom font icon.
    *   `AddStepWithSvgIcon(Text As String, Variant As String, SvgFileName As String)`: Appends with trailing vector.
    *   `SetSteps(Steps As List)`: Batch updates.
    *   `ClearSteps()`: Wipes progress.

---

### 10. B4XDaisyAccordion
Specialized container hosting a grouped stack of collapsible containers (`B4XDaisyCollapse`). Enforces single-open constraints.

*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize(Callback As Object, EventName As String)
    ```
*   **Events**:
    *   `Change(ItemTag As Object, Open As Boolean)`: Raised when nested collapses toggle.
*   **Public Setters / Getters**:
    *   `setOpenOnlyOne(Value As Boolean)`: Toggles single-open accordion constraints.
    *   `setIconPosition(Value As String)`: Indicator arrow location (`"left"`, `"right"`).
    *   `setIcon(Value As String)`: Arrow type (`"none"`, `"arrow"`, `"plus"`).
    *   `setSpaceY(Value As Int)`: Spacing vertical distance between nested collapse boxes.
    *   `setRounded(Value As String)` / `setShadow(Value As String)`: Visual outer styling.
*   **Primary Methods**:
    *   `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
    *   `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`: Factory that spawns, registers, and returns nested collapse frames.
    *   `SetItemActive(ItemTag As Object, Value As Boolean)`: Forces segment state.
    *   `SetItemTitle(ItemTag As Object, Title As String)`: Updates child headers.
