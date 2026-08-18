# B4XDaisyUIKit Web-to-Native Component Translation Matrix (v3 Complete)

This translation index serves as the definitive reference map bridging web-focused **Tailwind CSS + daisyUI** HTML structures and class names directly with their corresponding **B4XDaisyUIKit** native classes, methods, and properties.

Since custom view modules reside inside the compiled `.b4xlib` archive, this mapping file enables AI developer agents to parse incoming web layouts, identify semantic daisyUI structures, and systematically compile them into clean native B4X Pages following the **Vertical Coordinate Accumulator Pattern** on `B4XDaisyPageScroll`.

---

## I. Master Component Translation Index (All 101 Native Classes)

| daisyUI Web Element / Class | Native B4XDaisy Class | B4X Fluent Properties & Key APIs | Web Class Parity & Description |
| :--- | :--- | :--- | :--- |
| `.accordion` | `B4XDaisyAccordion` | `Icon`, `IconPosition`, `OpenOnlyOne`, `AddItemBasic`, `Refresh` | Accordion container wrapping expandable panels with single-open enforcement. |
| `.action-sheet` | `B4XDaisyActionSheet` | `Header`, `Mode`, `ButtonsColor`, `AddButton`, `Present` | Modal action sheet menu (iOS/Material style) with destructive/cancel roles. |
| `.alert` | `B4XDaisyAlert` | `Title`, `Text`, `Variant`, `AlertStyle`, `IconAsset`, `AddActionButton` | Feedback banner with info/success/warning/error severity styles. |
| `animate-*` / `@keyframes` | `B4XDaisyAnimation` | `AnimateFadeIn`, `AnimateBounceIn`, `AnimateSlideDirectional`, `AnimateShake` | Vector animation service for transitions, bounce, and shake validation errors. |
| `.aura` (glow border) | `B4XDaisyAura` | `Style`, `Size`, `Color`, `TextColor`, `Wrap`, `StartRotation` | Glowing, holographic, or rainbow shimmer animated border wrapping views. |
| `.avatar` | `B4XDaisyAvatar` | `Image`, `Mask`, `Size`, `Online`, `PlaceholderText`, `Variant` | Circular or squircle user avatar with online/offline status indicators. |
| `.avatar-group` | `B4XDaisyAvatarGroup` | `Spacing`, `MaxVisible`, `AddAvatar`, `SetCounter` | Overlapping avatar stack with `+N` excess counter badge. |
| `.badge` | `B4XDaisyBadge` | `Text`, `Variant`, `BadgeStyle`, `Size`, `Closable`, `Outline` | Compact pill tag or count indicator with colors and outline styles. |
| `.badge-group-select` | `B4XDaisyBadgeGroupSelect` | `ItemsSpec`, `BadgeColor`, `SelectionMode`, `SelectedIds` | Multi-select or single-select interactive tag filter cloud. |
| `.boom-menu` | `B4XDaisyBoomMenu` | `ButtonType`, `PiecePlaceType`, `ButtonPlaceType`, `AddSimpleCircleButton` | Radial exploding action button menu with circular and grid expansions. |
| `BoomPathManager` | `B4XDaisyBoomPathManager` | *(Internal helper)* | Geometric vector expansion path calculator for radial boom buttons. |
| `ButtonPlaceManager` | `B4XDaisyButtonPlaceManager`| *(Internal helper)* | Placement slot calculator for radial boom buttons. |
| `PiecePlaceManager` | `B4XDaisyPiecePlaceManager` | *(Internal helper)* | Trigger dot piece geometry calculator for radial boom buttons. |
| `BoxModel` | `B4XDaisyBoxModel` | *(Internal helper)* | Native box sizing and margin/padding geometry engine. |
| `App` | `B4XDaisyApp` | *(Internal helper)* | Native application context and global theme manager. |
| `.breadcrumbs` | `B4XDaisyBreadcrumbs` | `AddCrumb`, `SeparatorIcon`, `ActiveColor`, `CrumbClick` | Hierarchical navigation trail with custom icons and separators. |
| `.btn` | `B4XDaisyButton` | `Variant`, `Style`, `Size`, `Text`, `IconName`, `Loading`, `Circle` | The primary action trigger with styles (solid/soft/outline/ghost) and sizes. |
| `.loading` / `canvas-spinner`| `B4XDaisyCanvasSpinner` | `SpinnerType`, `PrimaryColor`, `Start`, `Stop`, `Speed` | High-performance vector canvas spinners (gear, pulse, arcs, orbit). |
| `.card` | `B4XDaisyCard` | `Title`, `LayoutMode`, `Style`, `Variant`, `setImagePath`, `getBodyContainer` | Structured container card with top/side/overlay images and actions. |
| `.card-title` | `B4XDaisyCardTitle` | `Text`, `TextColor`, `Visible` | Title header component inside `B4XDaisyCard`. |
| `.card-body` | `B4XDaisyCardBody` | `Padding`, `BackgroundColor` | Main content container inside `B4XDaisyCard` (`getBodyContainer`). |
| `.card-actions` | `B4XDaisyCardActions` | `AddAction`, `Alignment` | Action button row at the base of `B4XDaisyCard` (`getActionsContainer`). |
| `.carousel` | `B4XDaisyCarousel` | `AutoPlay`, `Interval`, `IndicatorStyle`, `ShowArrows`, `AddImageSlide` | Horizontal swipeable slide carousel for banners and featured cards. |
| `.carousel-item` | `B4XDaisyCarouselItem` | `SlideId`, `ImagePath`, `Caption` | Individual slide item container inside `B4XDaisyCarousel`. |
| `.chat` | `B4XDaisyChat` | `AddMessage`, `Variant`, `Placement`, `ShowTime`, `AvatarImage` | Chat conversation thread with left/right bubbles, timestamps, and avatars. |
| `.chat-bubble` | `B4XDaisyChatBubble` | `Text`, `Variant`, `Placement`, `Header`, `Footer` | Individual speech bubble element within a chat stream. |
| `.checkbox` | `B4XDaisyCheckbox` | `Checked`, `Text`, `Position`, `Variant`, `Validate`, `Required` | Standalone square check toggle with label positioning and validation. |
| `.checkbox-group` | `B4XDaisyCheckboxGroup` | `ItemsSpec`, `SelectedValues`, `Direction`, `Variant` | Vertical or horizontal group of selectable multi-choice options. |
| `.collapse` | `B4XDaisyCollapse` | `Title`, `Icon`, `Open`, `getContentView`, `Toggle` | Expandable content disclosure container with smooth open/close. |
| `.collapse-title` | `B4XDaisyCollapseTitle` | `Title`, `Icon`, `IconPosition` | Clickable header trigger for `B4XDaisyCollapse`. |
| `.collapse-content` | `B4XDaisyCollapseContent` | `getContentView` | Expandable content body for `B4XDaisyCollapse`. |
| `.color-picker` / `.color-wheel`| `B4XDaisyColorWheel` | `SelectedColor`, `Brightness`, `ShowAlpha`, `ColorChanged` | HSV color wheel and brightness slider for graphic and theme pickers. |
| `.countdown` | `B4XDaisyCountdown` | `TargetDate`, `TimeLeft`, `ShowDays`, `ShowSeconds`, `Start` | Animated flip/numeric countdown timer for sales and deadlines. |
| `CountdownItem` | `B4XDaisyCountdownItem` | `Value`, `UnitLabel` | Individual numeric unit box (days/hours/mins/secs) in a countdown. |
| `.dashboard` / `.stats-grid`| `B4XDaisyDashboard` | `Title`, `Subtitle`, `AddKpi`, `SetKpiValue`, `Variant` | KPI analytics grid aggregating multiple metric tiles and trend sparklines. |
| `.diff` | `B4XDaisyDiff` | `Image1`, `Image2`, `SplitPosition`, `Orientation` | Visual before/after slider comparing two images or content views. |
| `.divider` | `B4XDaisyDivider` | `Text`, `Vertical`, `Variant`, `StartAlign`, `EndAlign` | Visual separator line with optional center, start, or end text pill. |
| `<div>` container | `B4XDaisyDivision` | `BackgroundColor`, `Rounded`, `Shadow`, `GetContentPanel`, `IsSkeleton` | Generic styled div container with custom borders, background, and shadows. |
| `.dock` / `.bottom-nav` | `B4XDaisyDock` | `AddItem`, `ActiveId`, `Variant`, `BadgeText`, `DockItemClick` | Fixed bottom mobile tab bar with active icon pill highlight. |
| `.dropdown` | `B4XDaisyDropdown` | `Items`, `SelectedValue`, `Icon`, `Position`, `Open`, `ItemClick` | Popover selection menu with trigger button and auto-positioning. |
| `.enjoy-hint` / `.tour` | `B4XDaisyEnjoyHint` | `AddStep`, `StartTour`, `NextStep`, `Shape`, `DimOpacity` | Spotlight walkthrough tour highlighting UI elements for user onboarding. |
| `.fab` | `B4XDaisyFab` | `TriggerVariant`, `TriggerIconName`, `LayoutMode`, `PlacementMode`, `AddAction` | Floating Action Button with vertical, flower, or toolbar action expansion. |
| `.fieldset` | `B4XDaisyFieldset` | `Legend`, `Description`, `AddViewToContent`, `Variant` | Form group container with bordered legend title and description text. |
| `<input type="file">` | `B4XDaisyFileHandler` | `PickImage`, `PickFile`, `FileToBase64`, `FileSelected` | Helper service for selecting gallery images, documents, and MIME decoding. |
| `.file-input` | `B4XDaisyFileInput` | `ButtonText`, `FileName`, `Variant`, `Size`, `SelectedFile` | Styled file selector field with attach icon and chosen filename display. |
| `.filter` / `.filter-bar` | `B4XDaisyFilter` | `AddFilterOption`, `SelectedId`, `Variant`, `FilterChange` | Filter pill bar for list sorting and category switching. |
| `.hero` | `B4XDaisyHero` | `BackgroundImage`, `OverlayVisible`, `OverlayColor`, `GetContentPanel` | Prominent promotional banner with background image and text container. |
| `.hover-3d` / `.tilt` | `B4XDaisyHover3d` | `MaxTilt`, `Perspective`, `Scale`, `Wrap` | 3D perspective tilt effect responding to finger drag and touch. |
| `.btn-circle` / `.btn-square`| `B4XDaisyIconButton` | `Variant`, `Style`, `Size`, `IconAsset`, `Shape` | Square or circle icon button for navigation bars and headers. |
| `<img>` / `.mask` | `B4XDaisyImage` | `ImagePath`, `Shape`, `AspectRatio`, `Rounded`, `Click` | Styled image view supporting aspect ratios, rounded corners, and masks. |
| `.indicator` | `B4XDaisyIndicator` | `BadgeText`, `BadgeVariant`, `Placement`, `Wrap` | Corner badge overlay indicator for unread counts and status dots. |
| `.stat` / `.info-card` | `B4XDaisyInfoCard` | `Title`, `Value`, `Description`, `IconAsset`, `Variant` | Single KPI metric card with icon, value highlight, and trend label. |
| `.input`, `input[type="text"]`| `B4XDaisyInput` | `Text`, `Placeholder`, `LabelAbove`, `IconLeft`, `InputType`, `Validate` | Single-line text input with icons, floating label, and inline validation. |
| `.kbd` | `B4XDaisyKbd` | `KeyText`, `Size`, `Variant`, `Clickable` | Keyboard shortcut key pill badge (e.g. ⌘K, Ctrl+C). |
| `.link` | `B4XDaisyText` *(Link=True)* | `Link`, `Underline`, `Url`, `setTextColorVariant` | Hyperlink text element with underline on hover and custom action. |
| `.list` | `B4XDaisyList` | `AddItem`, `AddItemWithIcon`, `RemoveItem`, `ItemClick` | High-performance scrolling list with leading icons, titles, and chevrons. |
| `.loading` | `B4XDaisyLoading` | `LoadingType`, `Variant`, `Size`, `Color` | Spinner indicator supporting dots, ring, ball, bars, and infinity styles. |
| `.mask` | `B4XDaisyAvatar` *(Mask)* | `SetAvatarMask` (`squircle`, `hexagon`, `heart`, `diamond`, `star`) | Vector shape clipping masks for avatars, images, and containers. |
| `.menu` | `B4XDaisyMenu` | `AddMenuItem`, `AddSubMenu`, `ActiveId`, `MenuClick` | Multi-level vertical menu list with sub-items and collapsible categories. |
| `.modal` | `B4XDaisyModal` | `Title`, `Message`, `Show`, `Dismiss`, `ConfirmText`, `CancelText` | Centered alert or confirmation popup dialog with action buttons. |
| `.navbar` | `B4XDaisyNavbar` | `Title`, `ShowBackButton`, `AddStartAction`, `AddEndAction`, `Variant` | Top application navigation bar with title, back arrow, and action icons. |
| `.otp` / `input[type="pin"]`| `B4XDaisyOTP` | `Digits`, `Masked`, `Variant`, `AutoSubmit`, `Complete` | Multi-box PIN / One-Time Password verification input with auto-advance. |
| `.overlay` / `.backdrop` | `B4XDaisyOverlay` | `Opacity`, `DimColor`, `DismissOnClick`, `Show`, `Hide` | Full-screen dimming backdrop overlay for modals and drawers. |
| `<body>` / `.page-scroll` | `B4XDaisyPageScroll` | `PagePadding`, `YGap`, `UsableWidth`, `Panel`, `Clear`, `AutoFit` | The canonical vertical scrolling host container for all B4XPages. |
| `.pagination` | `B4XDaisyPagination` | `TotalPages`, `CurrentPage`, `Size`, `Variant`, `PageChange` | Numbered page switcher with prev/next buttons and active highlight. |
| `.pdf-viewer` | `B4XDaisyPDFView` | `LoadPdfFromAssets`, `CurrentPage`, `PageCount`, `Zoom` | Native embedded PDF document viewer with multi-page navigation. |
| `.picker` / `.drum-roll` | `B4XDaisyPicker` | `AddColumn`, `GetSelectedValue`, `SetSelectedValue`, `Changed` | Drum roll wheel picker for dates, times, currencies, and categories. |
| `.pocketbase` | `B4XDaisyPocketBase` | `AuthWithPassword`, `GetList`, `Create`, `Update`, `Subscribe` | Integrated client for PocketBase auth, CRUD, file storage, and SSE events. |
| `.progress` | `B4XDaisyProgress` | `Value`, `MaxValue`, `Variant`, `Indeterminate`, `AnimateTo` | Horizontal progress bar supporting determinate values and pulsing loading. |
| `.radial-progress` | `B4XDaisyRadialProgress` | `Value`, `Variant`, `Size`, `Thickness`, `ShowPercentage` | Circular percentage progress ring with animated value transitions. |
| `.radio` | `B4XDaisyRadio` | `Checked`, `GroupName`, `Text`, `Variant`, `Validate` | Single circular radio choice button. |
| `.radio-group` | `B4XDaisyRadioGroup` | `ItemsSpec`, `SelectedValue`, `Direction`, `Variant` | Group of mutually exclusive radio options with single-select binding. |
| `.range` | `B4XDaisyRange` | `Value`, `MinValue`, `MaxValue`, `Step`, `Variant`, `ShowSteps` | Horizontal draggable slider for numeric ranges and volume adjustments. |
| `.rating` | `B4XDaisyRating` | `Rating`, `MaxRating`, `StarSize`, `AllowHalf`, `IconAsset` | Star rating selector supporting half-stars, hearts, and custom shapes. |
| `.segment` / `.tabs-boxed` | `B4XDaisySegment` | `ItemsSpec`, `SelectedIndex`, `Variant`, `SegmentChange` | iOS-style boxed segment tab bar for switching views. |
| `.select`, `<select>` | `B4XDaisySelect` | `Options`, `SelectedValue`, `Placeholder`, `LabelAbove`, `Validate` | Dropdown picker with label, placeholder, and validation rules. |
| `.sheet-modal` | `B4XDaisySheetModal` | `Title`, `HeightPercent`, `Show`, `Dismiss`, `GetContentPanel` | Draggable bottom sheet modal with custom height and content slot. |
| `.btn` (shine) / `.shine-button` | `B4XDaisyShineButton` | `Shape`, `Size`, `Variant`, `Checked`, `TriggerShine`, `SetSvgAsset` | Interactive like/heart/favorite toggle button with particle burst animations. |
| `.signature-pad` | `B4XDaisySignaturePad` | `PenColor`, `PenWidth`, `Clear`, `GetBitmap`, `IsBlank` | Touch-drawing canvas for capturing digital signatures. |
| `.skeleton` | `B4XDaisyDivision` *(Skeleton)* | `BackgroundColor` (`0xFFF3F4F6`), `Rounded`, `IsSkeleton` | Shimmering placeholder box for loading states before content arrives. |
| `.stack` | `B4XDaisyStack` | `AddLayer`, `StackOffset`, `CardPerspective`, `TopLayerClick` | Visual deck of cards with offset layers and tap-to-cycle gestures. |
| `.stat` | `B4XDaisyStat` | `AddStatBasic`, `SetStatIcon`, `SetStatBadge` | Metric card container with title, figure, and sub-text description. |
| `.stat-item` / `.stat-value`| `B4XDaisyStatItem` | `Title`, `Value`, `Description`, `IconAsset`, `BadgeText` | Individual metric cell within a `B4XDaisyStat` container. |
| `.status` | `B4XDaisyStatus` | `StatusType`, `Pulse`, `Size`, `Text` | Status dot (online/offline/busy/away) with optional pulse ring. |
| `.steps` | `B4XDaisySteps` | `AddStep`, `CurrentStep`, `Direction`, `Variant`, `StepClick` | Multi-step progress tracker for checkouts and multi-stage wizards. |
| `<svg>` / `icon-*` | `B4XDaisySvgIcon` | `IconName`, `IconColor`, `Size`, `Click` | Vector SVG icon renderer supporting FontAwesome and custom assets. |
| `.swap` | `B4XDaisySwap` | `SwapOnIcon`, `SwapOffIcon`, `State`, `AnimationType`, `Change` | Two-state animated icon/text toggle (e.g. play/pause, light/dark). |
| `.sweet-alert` | `B4XDaisySweetAlert` | `ShowSuccess`, `ShowError`, `ShowWarning`, `ShowInput`, `ShowConfirm` | Beautiful alert dialogs with vector animations and promise-like returns. |
| `SweetAlertIcon` | `B4XDaisySweetAlertIcon` | *(Internal helper)* | Animated checkmark and cross icon renderer inside SweetAlert dialogs. |
| `.tabs` | `B4XDaisyTab` | `AddTab`, `ActiveTabId`, `TabStyle`, `SetTabContent`, `TabClick` | Top tab navigation bar with bordered, lifted, or boxed tab styles. |
| `.tag-sphere` / `3D tags` | `B4XDaisyTagSphere` | `Tags`, `Radius`, `AutoRotate`, `Speed`, `TagClick` | Interactive 3D spinning tag cloud sphere responding to drag gestures. |
| `.text-rotate` | `B4XDaisyTextRotate` | `Words`, `Interval`, `AnimationType`, `TextColor`, `Start` | Text rotator cycling through headline words with vertical flip animations. |
| `<p>`, `<span>`, `<h1>-<h6>`| `B4XDaisyText` | `Text`, `HeadingType`, `Variant`, `TextAlignment`, `Bold`, `Wrap` | Full typography component for titles, headings, body text, and labels. |
| `.textarea`, `<textarea>` | `B4XDaisyInput` *(SingleLine=False)* | `SingleLine=False`, `MaxLines`, `AutoHeight`, `LabelAbove`, `Placeholder`, `Validate` | Multi-line text field with character count, auto-grow, and validation. |
| `.timeline` | `B4XDaisyTimeline` | `AddItem`, `Orientation`, `Snap`, `AddItemBasic` | Chronological activity feed and milestone tracker with status icons. |
| `.toast` | `B4XDaisyToast` | `Show`, `Message`, `Variant`, `DurationMs`, `Position` | Non-blocking popup toast notification with auto-dismiss timer. |
| `.toggle` | `B4XDaisyToggle` | `Checked`, `Text`, `Position`, `Variant`, `Size`, `Validate` | Switch toggle for binary on/off settings and preferences. |
| `.toggle-group` | `B4XDaisyToggleGroup` | `ItemsSpec`, `SelectedValues`, `Direction`, `Variant` | Segmented group of toggle switches for feature settings. |
| `.tooltip` | `B4XDaisyTooltip` | `Text`, `Position`, `Variant`, `Wrap`, `Open` | Hover/touch hint popover pointing to a target component. |
| `Theme tokens` / `Variants`| `B4XDaisyVariants` | `SetActiveTheme`, `GetTokenColor`, `ShiftSiblingsBelow`, `CreateMaskPath`| Master theme engine, dynamic color token resolver, and reflow helper. |
| `.mockup-window` | `B4XDaisyWindow` | `Title`, `ShowControls`, `GetContentPanel`, `Variant` | macOS-style window frame with traffic light buttons for content mockups. |

---

| .calendar / datepicker | B4XDaisyPicker | AddColumn, GetSelectedValue, SetSelectedValue | Drum wheel date/time/month roll picker. |
| .hover-gallery | B4XDaisyCarousel / B4XDaisyStack | AddImageSlide, AddLayer, TopLayerClick | Swipeable image banner carousel or interactive card stack. |
| .join / button group | B4XDaisySegment / B4XDaisyBadgeGroupSelect | ItemsSpec, SelectedIndex, SelectedIds | Boxed segment tab bar or contiguous button group. |
| .megamenu | B4XDaisyMenu | AddMenuItem, AddSubMenu, MenuClick | Multi-level hierarchical menu with collapsible sub-sections. |
| .mockup-browser / .mockup-code / .mockup-phone | B4XDaisyWindow | Title, ShowControls, GetContentPanel | Framed mockup container with window controls for demos. |
| .theme-controller | B4XDaisyVariants + B4XDaisySwap | SetActiveTheme, SwapOnIcon, SwapOffIcon | Theme controller toggle for dark/light mode switching. |
| .validator | .Validate() on input controls | Validate As Boolean, ShowError, Required | Per-component validation checking format, min/max, and required. |

---

## II. Prohibited Web Patterns in B4X Native

| Prohibited Web Element | Prohibited B4A Class | Reason & Native Replacement |
| :--- | :--- | :--- |
| `.grid`, `.grid-cols-*` | `B4XDaisyGrid` | **Banned.** Do not use Grid. Use `B4XDaisyPageScroll` with explicit X-coordinate math: `Dim w As Int = (maxW - gap)/cols`, `c.AddToParent(pnl, pad + i*(w+gap), y, w, h)`. |
| `.flex`, `.flex-row` | `B4XDaisyFlexLayout`, `B4XDaisyFlexPanel`, `B4XDaisyFlexItem` | **Banned.** Do not use Flex containers. Compute side-by-side positioning explicitly using `maxW`, `pad`, and `gap` on `B4XDaisyPageScroll.Panel`. |
| `<label>` (raw) | `B4XDaisyLabel` | **Deleted.** Use `B4XDaisyText` for text/headings/captions or `B4XDaisyBadge` for pill tags. |
