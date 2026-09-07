# Pattern Reference Index

Feature-level lookup: request → verified component(s) → the demo pages that prove their APIs. Read on demand during **Stage 5 (Component Syntax Expert)** after intent mapping ([intent-to-component.md](intent-to-component.md)).

The right column lists the B4XPage demo names from the reference project. These demos **do not exist in user projects** — they are cited here only to indicate which component APIs have been verified and documented in [component-manifest.md](component-manifest.md). When a request maps to a demo, read the matching component section in the manifest and adapt the scaffold from [app-scaffolds.md](app-scaffolds.md).

| Feature / UI request | Verified B4XDaisy component(s) | API reference demos (reference project only) |
|---|---|---|
| Basic page scaffold | `B4XMainPage` + `B4XDaisyPageScroll` | `B4XMainPage.bas`, `B4XPageScrollDemo.bas` |
| Scrollable content page | `B4XDaisyPageScroll` | `B4XPageScrollDemo.bas`, `B4XPageNavScrollDock.bas` |
| Text input / form fields | `B4XDaisyInput`, `B4XDaisyFieldset` | `B4XPageInput.bas`, `B4XPageTextarea.bas`, `B4XPageFieldset.bas`, `B4XPageFocus.bas` |
| Button / Icon button / Shine button | `B4XDaisyButton`, `B4XDaisyIconButton`, `B4XDaisyShineButton` | `B4XPageButton.bas`, `B4XPageIconButton.bas`, `B4XPageShineButton.bas` |
| Checkbox | `B4XDaisyCheckbox`, `B4XDaisyCheckboxGroup` | `B4XPageCheckbox.bas`, `B4XPageCheckboxGroup.bas` |
| Radio button | `B4XDaisyRadio`, `B4XDaisyRadioGroup` | `B4XPageRadio.bas`, `B4XPageRadioGroup.bas` |
| Toggle / switch | `B4XDaisyToggle`, `B4XDaisyToggleGroup` | `B4XPageToggle.bas`, `B4XPageToggleGroup.bas` |
| Dropdown / select list | `B4XDaisySelect`, `B4XDaisyDropdown` | `B4XPageSelect.bas`, `B4XPageDropdown.bas` |
| File upload | `B4XDaisyFileInput`, `B4XDaisyFileHandler` | `B4XPageFileInput.bas`, `B4XPageMediaPicker.bas` |
| Badge / chip | `B4XDaisyBadge`, `B4XDaisyBadgeGroupSelect` | `B4XPageBadge.bas` |
| Range slider | `B4XDaisyRange` | `B4XPageRange.bas` |
| Dual range slider | `B4XDaisyDualRange` | `B4XPageDualRange.bas` |
| Star rating | `B4XDaisyRating` | `B4XPageRating.bas` |
| Carousel / slider | `B4XDaisyCarousel`, `B4XDaisyCarouselItem` | `B4XPageCarousel.bas` |
| OTP / PIN entry | `B4XDaisyOTP` | `B4XPageOTP.bas` |
| Signature pad | `B4XDaisySignaturePad` | `B4XPageSignaturePad.bas` |
| Color picker | `B4XDaisyColorWheel` | `B4XPageColorWheel.bas` |
| Dashboard / KPIs | `B4XDaisyDashboard`, `B4XDaisyStat`, `B4XDaisyStatItem` | `B4XPageDashboard.bas`, `B4XPageStat.bas` |
| Progress bar | `B4XDaisyProgress` | `B4XPageProgress.bas` |
| Circular progress | `B4XDaisyRadialProgress` | `B4XPageRadialProgress.bas` |
| Timeline | `B4XDaisyTimeline` | `B4XPageTimeline.bas` |
| Countdown timer | `B4XDaisyCountdown` | `B4XPageCountdown.bas` |
| Steps / wizard | `B4XDaisySteps` | `B4XPageSteps.bas` |
| Top navigation bar | `B4XDaisyNavbar` | `B4XPageNavbar.bas`, `B4XPageFabNavbar.bas` |
| Bottom dock bar | `B4XDaisyDock` | `B4XPageDock.bas`, `B4XPageNavScrollDock.bas` |
| Tab pages | `B4XDaisyTab` | `B4XPageTab.bas` |
| Segment control | `B4XDaisySegment` | `B4XPageSegment.bas` |
| Side menu | `B4XDaisyMenu` | `B4XPageMenu.bas`, `B4XPageMenuRuntime.bas`, `B4XPageMenuRuntime2.bas` |
| Navigation drawer / rail / tree | `B4XDaisyDrawer` | `B4XPageDrawer.bas`, `B4XPageDrawerRail.bas`, `B4XPageDrawerTree.bas` |
| Breadcrumbs | `B4XDaisyBreadcrumbs` | `B4XPageBreadcrumbs.bas` |
| Pagination | `B4XDaisyPagination` | `B4XPagePagination.bas` |
| Card | `B4XDaisyCard` | `B4XPageCard.bas` |
| Info card | `B4XDaisyInfoCard` | `B4XPageInfoCard.bas` |
| List / virtual list | `B4XDaisyList` | `B4XPageList.bas`, `B4XPageList1K.bas` |
| Hero section | `B4XDaisyHero` | `B4XPageHero.bas` |
| Stacked cards | `B4XDaisyStack` | `B4XPageStack.bas` |
| Collapse panel | `B4XDaisyCollapse` | `B4XPageCollapse.bas` |
| Accordion | `B4XDaisyAccordion` | `B4XPageAccordion.bas` |
| Modal dialog | `B4XDaisyModal` | `B4XPageModal.bas` |
| Bottom sheet | `B4XDaisySheetModal` | `B4XPageSheetModal.bas` |
| Action sheet | `B4XDaisyActionSheet` | `B4XPageActionSheet.bas` |
| Confirm / input dialog | `B4XDaisySweetAlert` | `B4XPageSweetAlert.bas`, `B4XPageSweetAlertInputs.bas` |
| Native Android dialog (Msgbox / InputList / FilePicker) | native B4X dialogs + `B4XDaisyInput` | `B4XPageNativeDialogs.bas` |
| Alert banner | `B4XDaisyAlert` | `B4XPageAlert.bas` |
| Toast / snackbar | `B4XDaisyToast` | `B4XPageToast.bas` |
| Tooltip | `B4XDaisyTooltip` | `B4XPageTooltip.bas` |
| Loading spinner | `B4XDaisyLoading` | `B4XPageLoading.bas` |
| Canvas spinner | `B4XDaisyCanvasSpinner` | `B4XPageCanvasSpinner.bas` |
| Skeleton loading | `B4XDaisyDivision` (IsSkeleton) | `B4XPageSkeleton.bas` |
| Status dot (online/offline) | `B4XDaisyStatus` | `B4XPageStatus.bas` |
| Avatar | `B4XDaisyAvatar`, `B4XDaisyAvatarGroup` | `B4XPageAvatar.bas`, `B4XPageMask.bas` |
| Chat / messaging | `B4XDaisyChat` | `B4XPageChat.bas` |
| PDF viewer | `B4XDaisyPDFView` | `B4XPagePDFView.bas` |
| FAB / floating button | `B4XDaisyFab` | `B4XPageFab.bas`, `B4XPageFabBasic.bas`, `B4XPageFabFlower.bas` |
| Boom / radial FAB | `B4XDaisyBoomMenu` | `B4XPageBoomMenu.bas` |
| Badge indicator on icon | `B4XDaisyIndicator` | `B4XPageIndicator.bas` |
| Overlay / backdrop | `B4XDaisyOverlay` | `B4XPageOverlay.bas` |
| Drum picker wheel | `B4XDaisyPicker` | `B4XPagePicker.bas` |
| Easing / animation | `B4XDaisyAnimation` | `B4XPageEasing.bas` |
| Diff / compare slider | `B4XDaisyDiff` | `B4XPageDiff.bas` |
| Divider line | `B4XDaisyDivider` | `B4XPageDivider.bas` |
| Container / div | `B4XDaisyDivision` | `B4XPageDivider.bas` |
| Typography / text | `B4XDaisyText` | `B4XPageText.bas`, `B4XPageLink.bas` |
| Text rotation ticker | `B4XDaisyTextRotate` | `B4XPageTextRotate.bas` |
| SVG icon | `B4XDaisySvgIcon` | `B4XPageSvgIcon.bas` |
| Filter chip bar | `B4XDaisyFilter` | `B4XPageFilter.bas` |
| Swap / dual-state button | `B4XDaisySwap` | `B4XPageSwap.bas` |
| Keyboard shortcut badge | `B4XDaisyKbd` | `B4XPageKbd.bas` |
| Form labels / Typography | `B4XDaisyText` | `B4XPageText.bas`, `B4XPageInput.bas` |
| 3D tag sphere | `B4XDaisyTagSphere` | `B4XPageTagSphere.bas` |
| Glow / aura effect | `B4XDaisyAura` | `B4XPageAura.bas` |
| 3D hover card | `B4XDaisyHover3d` | `B4XPageHover3d.bas` |
| Onboarding tour | `B4XDaisyEnjoyHint` | `B4XPageEnjoyHint.bas` |
| Window / device mockup | `B4XDaisyWindow` | `B4XPageWindow.bas` |
| Media picker / image | `B4XDaisyImage`, `B4XDaisyFileHandler` | `B4XPageMediaPicker.bas` |
