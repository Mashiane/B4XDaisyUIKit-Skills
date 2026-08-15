# DaisyUI-to-B4XDaisyUIKit Native Compatibility

Use this reference to translate DaisyUI visual intent into verified native B4X composition. It does not authorize HTML, CSS, Tailwind class names, browser behavior, or one-to-one web API assumptions.

---

## Translation Rules

1. Identify the web concept and user intent.
2. Select the native B4XDaisy component and named B4XPage demo in the table below.
3. Confirm exact properties, methods, and events in [component-manifest.md](component-manifest.md).
4. Preserve the native demo's lifecycle, layout, and interaction model.
5. If a DaisyUI concept is absent or partial, say so and offer the closest demonstrated native composition.

---

## Complete Semantic Mapping Table

| DaisyUI / web concept | Native B4XDaisy component(s) | Primary demo page(s) | Notes |
|---|---|---|---|
| `btn` / Button | `B4XDaisyButton`, `B4XDaisyIconButton` | `B4XPageButton`, `B4XPageIconButton` | Use manifest-supported variant, style, size, icon only. |
| Alert / notification banner | `B4XDaisyAlert` | `B4XPageAlert` | Supports title, text, icon, action buttons. |
| Badge / chip / tag | `B4XDaisyBadge` | `B4XPageBadge` | Closable, toggleable, avatar, outline styles. |
| Multi-select chip bar | `B4XDaisyBadgeGroupSelect` | `B4XPageBadgeGroupSelect` | Key-value spec string; single/multi mode. |
| Card | `B4XDaisyCard` | `B4XPageCard` | Sub-slots: title, body, actions via `Get*Panel`. |
| Info card | `B4XDaisyInfoCard` | `B4XPageInfoCard` | Horizontal or vertical summary card. |
| Text input | `B4XDaisyInput` | `B4XPageInput`, `B4XPageScrollDemo` | Float label, hint, error, required, input types. |
| Textarea | `B4XDaisyInput` (multiline) | `B4XPageTextarea` | Use `setInputType("multiline")`. |
| Fieldset / grouped fields | `B4XDaisyFieldset` | `B4XPageFieldset` | Groups form controls with a legend border. |
| Select / dropdown list | `B4XDaisySelect` | `B4XPageSelect` | Key-value spec string. |
| Checkbox | `B4XDaisyCheckbox` | `B4XPageCheckbox`, `B4XPageFocus` | GroupName auto-deselects siblings. |
| Checkbox group | `B4XDaisyCheckboxGroup` | `B4XPageCheckboxGroup` | Multi-select fieldset container. |
| Radio button | `B4XDaisyRadio` | `B4XPageRadio` | GroupName auto-deselects sibling radios. |
| Radio group | `B4XDaisyRadioGroup` | `B4XPageRadioGroup` | Fieldset wrapper for radio options. |
| Toggle / switch | `B4XDaisyToggle` | `B4XPageToggle` | Sliding switch with variant and size. |
| Toggle group | `B4XDaisyToggleGroup` | `B4XPageToggleGroup` | Multi-toggle selector row. |
| Range slider | `B4XDaisyRange` | `B4XPageRange` | Continuous or stepped; min/max/step. |
| Star rating | `B4XDaisyRating` | `B4XPageRating` | Scale 1-5 or 1-10; multiple styles. |
| File upload | `B4XDaisyFileInput` | `B4XPageFileInput`, `B4XPageAvatar` | MIME filter; base64 and bitmap access. |
| OTP / PIN input | `B4XDaisyOTP` | `B4XPageOTP` | Multi-cell PIN; auto-advance on input. |
| Signature pad | `B4XDaisySignaturePad` | `B4XPageSignaturePad` | Canvas drawing; export base64 or bitmap. |
| Color picker | `B4XDaisyColorWheel` | `B4XPageColorWheel` | HSV wheel; thickness, handle size. |
| Carousel / image slider | `B4XDaisyCarousel`, `B4XDaisyCarouselItem` | `B4XPageCarousel` | Horizontal scroll; auto-play. |
| Avatar | `B4XDaisyAvatar` | `B4XPageAvatar` | Masks: circle, squircle, heart, hexagon, etc. |
| Avatar group / stack | `B4XDaisyAvatarGroup` | `B4XPageAvatarGroup` | Overlapping avatar row. |
| Top navigation bar | `B4XDaisyNavbar` | `B4XPageNavbar`, `B4XPageNavScrollDock` | Glass, back button, icon slots, avatar. |
| Bottom dock / tab bar | `B4XDaisyDock` | `B4XPageDock`, `B4XPageNavScrollDock` | SVG icons, badge counts, active index. |
| Tab pages | `B4XDaisyTab` | `B4XPageTab` | Style tokens: default, box, lift, border. |
| Segment control | `B4XDaisySegment` | `B4XPageSegment`, `B4XPageTagSphere` | Single-select segmented button row. |
| Dropdown menu | `B4XDaisyDropdown` | `B4XPageDropdown` | Anchors to a trigger view. |
| Context / side menu | `B4XDaisyMenu` | `B4XPageMenu`, `B4XPageMenuRuntime` | Hierarchical menu items; runtime population. |
| Floating action button (FAB) | `B4XDaisyFab` | `B4XPageFab`, `B4XPageFabBasic`, `B4XPageFabFlower` | Single or multi-action FAB. |
| Radial FAB / boom menu | `B4XDaisyBoomMenu` | `B4XPageBoomMenu` | Spiral/arc layout of action buttons. |
| Breadcrumbs | `B4XDaisyBreadcrumbs` | `B4XPageBreadcrumbs` | Clickable path trail. |
| Pagination | `B4XDaisyPagination` | `B4XPagePagination` | Page range; current/total; click events. |
| Collapse panel | `B4XDaisyCollapse` | `B4XPageCollapse` | Toggle open/close; use ShiftSiblingsBelow for reflow. |
| Accordion (multiple collapses) | `B4XDaisyAccordion` | `B4XPageAccordion` | OpenOnlyOne mode; arrow or plus icon. |
| Modal dialog | `B4XDaisyModal` | `B4XPageModal` | Programmatic open/close; backdrop click. |
| Bottom sheet | `B4XDaisySheetModal` | `B4XPageSheetModal` | Drag-to-dismiss bottom drawer. |
| Action sheet | `B4XDaisyActionSheet` | `B4XPageActionSheet` | List of action buttons in a bottom sheet. |
| Confirm dialog | `B4XDaisySweetAlert` | `B4XPageSweetAlert`, `B4XPageSweetAlertInputs` | Async / `Wait For` pattern; input dialogs. |
| Toast / snackbar | `B4XDaisyToast` | `B4XPageToast` | Stacked; position, auto-dismiss, progress bar. |
| Tooltip | `B4XDaisyTooltip` | `B4XPageTooltip` | AttachTo target view; top/bottom/left/right. |
| Loading spinner | `B4XDaisyLoading` | `B4XPageLoading` | Styles: spinner, dots, ring, ball, bars, infinity. |
| Canvas spinner | `B4XDaisyCanvasSpinner` | `B4XPageCanvasSpinner` | Customizable canvas-drawn spinner. |
| Skeleton loading | `B4XDaisyDivision` | `B4XPageSkeleton` | Set `.IsSkeleton = True` on Division or Text. |
| Progress bar | `B4XDaisyProgress` | `B4XPageProgress` | Linear; animated; inline counter. |
| Radial / circular progress | `B4XDaisyRadialProgress` | `B4XPageRadialProgress` | Arc sweep; count-up animation; icon center. |
| Countdown timer | `B4XDaisyCountdown` | `B4XPageCountdown` | Days/hours/min/sec flip cards. |
| Status dot (online/offline) | `B4XDaisyStatus` | `B4XPageStatus` | Ping/pulse/bounce animations. |
| Timeline | `B4XDaisyTimeline` | `B4XPageTimeline` | Vertical or horizontal; status icons. |
| Steps / wizard progress | `B4XDaisySteps` | `B4XPageSteps` | Multi-step wizard indicator. |
| KPI stat panel | `B4XDaisyStat`, `B4XDaisyStatItem` | `B4XPageStat` | Horizontal/vertical; radial, SVG, or image figure. |
| Dashboard layout | `B4XDaisyDashboard` | `B4XPageDashboard` | Preset responsive card grid layout. |
| Divider line | `B4XDaisyDivider` | `B4XPageDivider` | Horizontal/vertical; centered text label. |
| Division / container | `B4XDaisyDivision` | `B4XPageDivider`, `B4XPageStack` | Margin, padding, shadow, skeleton. |
| Stack of cards | `B4XDaisyStack` | `B4XPageStack`, `B4XPageStackPhotos` | Overlapping z-stack of views. |
| Hero / landing section | `B4XDaisyHero` | `B4XPageHero` | Full-width hero block with content slot. |
| Diff / compare slider | `B4XDaisyDiff` | `B4XPageDiff` | Image or text side-by-side with drag handle. |
| Window / mockup frame | `B4XDaisyWindow` | `B4XPageWindow` | Browser or device chrome mockup. |
| Keyboard shortcut badge | `B4XDaisyKbd` | `B4XPageKbd` | Keyboard key visual. |
| Filter chips bar | `B4XDaisyFilter` | `B4XPageFilter` | Horizontal scroll chip bar; multi-select. |
| Hyperlink text | `B4XDaisyText` | `B4XPageLink` | Set `.IsLink = True` and `.Url`. |
| Typography / text | `B4XDaisyText` | `B4XPageText` | Size tokens, headings, auto-resize, skeleton. |
| Text rotation ticker | `B4XDaisyTextRotate` | `B4XPageTextRotate` | Vertical scrolling text list. |
| SVG icon | `B4XDaisySvgIcon` | `B4XPageSvgIcon` | Asset or inline SVG; color tint. |
| Indicator / badge on icon | `B4XDaisyIndicator` | `B4XPageIndicator` | Badge counter on top-right of any view. |
| Overlay / backdrop | `B4XDaisyOverlay` | `B4XPageOverlay` | Full-screen dim layer; pass-through option. |
| Date/time/value picker | `B4XDaisyPicker` | `B4XPagePicker` | Drum-scroll wheel columns. |
| Label / typography | `B4XDaisyText` | `B4XPageTypography` | Primary typography component for headings, body text, labels, and captions. |
| Chat / messaging UI | `B4XDaisyChat` | `B4XPageChat` | Incoming/outgoing bubble row. |
| Swap toggle button | `B4XDaisySwap` | `B4XPageSwap` | Dual-state icon/text rotate/flip animation. |
| 3D tag sphere | `B4XDaisyTagSphere` | `B4XPageTagSphere` | Rotating 3D sphere of clickable tags. |
| Glow / aura effect | `B4XDaisyAura` | `B4XPageAura` | Animated color glow border on any view. |
| 3D hover card | `B4XDaisyHover3d` | `B4XPageHover3d` | Tilt perspective card on touch. |
| Onboarding tour | `B4XDaisyEnjoyHint` | `B4XPageEnjoyHint` | Spotlight-guided feature tour. |
| Media picker | `B4XDaisyFileHandler`, `B4XDaisyImage` | `B4XPageMediaPicker` | Image selection and preview. |
| PDF viewer | `B4XDaisyPDFView` | `B4XPagePDFView` | Inline PDF renderer. |
| Animation / easing | `B4XDaisyAnimation` | `B4XPageEasing` | Preset easing functions for view animation. |
| Shine / burst toggle button | `B4XDaisyShineButton` | `B4XPageShineButton` | Animated interactive toggle button with particle burst effects (heart, like, smile, star, svg). |
| Mask shapes | (via Avatar) | `B4XPageMask` | Apply shape masks to any bitmap view. |

---

## Semantic Token Summary

Use DaisyUI terms such as `primary`, `secondary`, `accent`, `neutral`, `info`, `success`, `warning`, `error`, `outline`, `ghost`, `solid`, `soft`, `dash` only when the target native component declares that value in the component manifest. These names carry visual intent — they are not CSS class names.

Full token tables are in [design-tokens.md](design-tokens.md).

---

## Partial or Unavailable Parity

| DaisyUI feature | Native status | Alternative |
|---|---|---|
| CSS Grid layout | `B4XDaisyGrid` is Documented-only | Use y-cursor accumulator in `B4XDaisyPageScroll` |
| Flex wrapping layout | `B4XDaisyFlexLayout` is Documented-only | Use `B4XDaisyFlexPanel` only for inline joined controls |
| `ChatBubble` sub-component | Documented-only | Use `B4XDaisyChat` via `B4XPageChat.bas` |
| `CardActions`, `CardBody`, `CardTitle` | Documented-only | Use `B4XDaisyCard.Get*Panel()` accessors |
| Browser hover states | No native equivalent | Use `B4XDaisyHover3d` for tilt effects on touch |
| URL/DOM routing | No native equivalent | Use `B4XPages.ShowPage("pageName")` |
| CSS media queries / responsive breakpoints | No native equivalent | Use `Root.Width` / `Root.Height` checks in `B4XPage_Resize` |
| Mouse events (hover, right-click) | No native equivalent | Android touch events only |
| CSS animations (keyframes, transitions) | Partial | Use `B4XDaisyAnimation` for preset easing; `SetLayoutAnimated` for moves |

---

## Internal Engine & Sub-component Helpers

These 17 components exist in the B4A framework as internal engine utilities or sub-components. They are not direct top-level DaisyUI user concepts:

| Component | Role | Status |
|---|---|---|
| `B4XDaisyApp` | Global SVG icon cache and memory manager | Engine internal |
| `B4XDaisyVariants` | Static theme token & layout calculation engine | Engine internal |
| `B4XDaisyBoxModel` | Padding, margin, and border metrics model | Engine internal |
| `B4XDaisyBoomPathManager` | Path animation manager for BoomMenu | Helper |
| `B4XDaisyPiecePlaceManager` | Layout position calculator for BoomMenu | Helper |
| `B4XDaisyButtonPlaceManager` | Button position calculator for FAB | Helper |
| `B4XDaisyCardActions` | Card actions sub-slot panel | Sub-component (use `Card.GetActionsPanel`) |
| `B4XDaisyCardBody` | Card body sub-slot panel | Sub-component (use `Card.GetContentPanel`) |
| `B4XDaisyCardTitle` | Card title sub-slot panel | Sub-component (use `Card.GetTitlePanel`) |
| `B4XDaisyChatBubble` | Sub-item bubble | Sub-component (use `B4XDaisyChat`) |
| `B4XDaisyCollapseContent` | Collapse content sub-slot | Sub-component (use `Collapse.getContentView`) |
| `B4XDaisyCollapseTitle` | Collapse title sub-slot | Sub-component (use `Collapse.setTitleText`) |
| `B4XDaisyCountdownItem` | Countdown digit card | Sub-component (managed by `B4XDaisyCountdown`) |
| `B4XDaisyFlexItem` | Flex item layout properties | Helper (managed by `B4XDaisyFlexPanel`) |
| `B4XDaisyList` | List view item wrapper | Helper (use `B4XDaisyList` page demo) |
| `B4XDaisyPocketBase` | PocketBase REST client wrapper | Backend service (Documented-only) |
| `B4XDaisySweetAlertIcon` | SweetAlert icon renderer | Helper (managed by `B4XDaisySweetAlert`) |

