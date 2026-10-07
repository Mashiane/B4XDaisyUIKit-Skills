# B4XDaisyUIKit Master Component Catalog & Inventory Index

This master index lists all native B4XDaisyUIKit classes, their extracted API evidence, and demo source references.
For exhaustive designer properties, public methods, parameter signatures, and code recipes, open the individual component skill in `components/<name>.md`.

---

# B4XDaisyUIKit Component Source-of-Truth Manifest

## Purpose

Use this generated reference to prevent invented B4XDaisyUIKit APIs while assembling apps. It records declarations extracted from the packaged library and textual class-name references found in current B4XPage demos. A demo reference does not prove that the component is instantiated or exercised; inspect the linked source before relying on it as a usage example.

## Snapshot

- Generated: 2026-10-07 01:12 UTC
- Source repository: `Mashiane/0SithasoDaisyUIKit`
- Library artifact: `B4A/B4XDaisyUIKit.b4xlib` (v0.96)
- B4XPage demos scanned: 94
- B4XDaisy source modules found: 104
- Demo-referenced components: 87
- Documented-only components: 13
- Banned components: 4 (FlexItem/FlexLayout/FlexPanel/Grid — negative knowledge)
- Skills in `components/`: 108 (includes 4 banned-component guides kept as negative knowledge)

## How to use

1. Build application UI by adapting the listed B4XPage demo(s), not by implementing custom views.
2. Treat `Demo-referenced` as an index hint only. Inspect the linked demo and confirm it actually uses the relevant API before treating that pattern as demonstrated.
3. Treat a `Documented-only` component as known API surface, but do not introduce it into generated app UI unless the user explicitly requests it or approves an unsupported composition.
4. Use only properties, methods, events, and public fields recorded below. Inspect the linked source demo before composing a new combination.

## Extraction limits

- API facts are mechanically extracted from `#DesignerProperty`, `#Event`, public declarations, and public methods in the `.b4xlib`.
- Demo-reference status is based on direct class-name text matches in `B4A/B4XPage*.bas`; matches can occur in comments or strings. It does not establish instantiation, exercised behavior, compilation, or visual styling.
- API, property, and event metadata are mechanically extracted from library declarations; styling is not checked by this pipeline.
- Empty sections mean the packaged source declares no facts of that kind; they do not imply that private implementation details are absent.

## Support index

| Component | Status | Demo pages |
|---|---|---|
| B4XDaisyAccordion | Demo-referenced | B4XPageAccordion.bas |
| B4XDaisyActionSheet | Demo-referenced | B4XPageActionSheet.bas |
| B4XDaisyAlert | Demo-referenced | B4XPageAlert.bas |
| B4XDaisyAnimation | Demo-referenced | B4XPageEasing.bas |
| B4XDaisyApp | Demo-referenced | B4XPageBoomMenu.bas<br>B4XPageButton.bas<br>B4XPageCard.bas<br>B4XPageColorWheel.bas<br>B4XPageDashboard.bas<br>B4XPageDivider.bas<br>B4XPageDock.bas<br>B4XPageEasing.bas<br>B4XPageEnjoyHint.bas<br>B4XPageHover3d.bas<br>B4XPageMediaPicker.bas<br>B4XPagePDFView.bas<br>B4XPagePagination.bas<br>B4XPageProgress.bas<br>B4XPageRange.bas<br>B4XPageSelect.bas |
| B4XDaisyAura | Demo-referenced | B4XPageAura.bas |
| B4XDaisyAvatar | Demo-referenced | B4XPageAvatar.bas<br>B4XPageDropdown.bas<br>B4XPageEnjoyHint.bas<br>B4XPageIndicator.bas<br>B4XPageList.bas<br>B4XPageMask.bas<br>B4XPageNavbar.bas<br>B4XPageScrollDemo.bas<br>B4XPageStack.bas<br>B4XPageStat.bas |
| B4XDaisyAvatarGroup | Demo-referenced | B4XPageAvatar.bas |
| B4XDaisyBadge | Demo-referenced | B4XPageAlert.bas<br>B4XPageBadge.bas<br>B4XPageCard.bas<br>B4XPageTooltip.bas<br>B4XPageWindow.bas |
| B4XDaisyBadgeGroupSelect | Demo-referenced | B4XPageBadge.bas |
| B4XDaisyBoomMenu | Demo-referenced | B4XPageBoomMenu.bas |
| B4XDaisyBoomPathManager | Documented-only | — |
| B4XDaisyBoxModel | Documented-only | — |
| B4XDaisyBreadcrumbs | Demo-referenced | B4XPageBreadcrumbs.bas |
| B4XDaisyButton | Demo-referenced | B4XPageActionSheet.bas<br>B4XPageAura.bas<br>B4XPageButton.bas<br>B4XPageCanvasSpinner.bas<br>B4XPageCard.bas<br>B4XPageColorWheel.bas<br>B4XPageDock.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDropdown.bas<br>B4XPageEasing.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageHero.bas<br>B4XPageMenuRuntime.bas<br>B4XPageMenuRuntime2.bas<br>B4XPageModal.bas<br>B4XPageNavScrollDock.bas<br>B4XPageNavbar.bas<br>B4XPageOverlay.bas<br>B4XPagePicker.bas<br>B4XPageProgress.bas<br>B4XPageRadialProgress.bas<br>B4XPageRange.bas<br>B4XPageRating.bas<br>B4XPageScrollDemo.bas<br>B4XPageSheetModal.bas<br>B4XPageShineButton.bas<br>B4XPageSignaturePad.bas<br>B4XPageStat.bas<br>B4XPageSweetAlert.bas<br>B4XPageSweetAlertInputs.bas<br>B4XPageTagSphere.bas<br>B4XPageToast.bas<br>B4XPageTooltip.bas |
| B4XDaisyButtonPlaceManager | Documented-only | — |
| B4XDaisyCanvasSpinner | Demo-referenced | B4XPageCanvasSpinner.bas |
| B4XDaisyCard | Demo-referenced | B4XPageAura.bas<br>B4XPageCard.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageMediaPicker.bas |
| B4XDaisyCardActions | Documented-only | — |
| B4XDaisyCardBody | Documented-only | — |
| B4XDaisyCardTitle | Documented-only | — |
| B4XDaisyCarousel | Demo-referenced | B4XPageCarousel.bas |
| B4XDaisyCarouselItem | Demo-referenced | B4XPageCarousel.bas |
| B4XDaisyChat | Demo-referenced | B4XPageChat.bas |
| B4XDaisyChatBubble | Documented-only | — |
| B4XDaisyCheckbox | Demo-referenced | B4XPageCheckbox.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageNavScrollDock.bas |
| B4XDaisyCheckboxGroup | Demo-referenced | B4XPageCheckboxGroup.bas |
| B4XDaisyCollapse | Demo-referenced | B4XPageAccordion.bas<br>B4XPageCollapse.bas |
| B4XDaisyCollapseContent | Documented-only | — |
| B4XDaisyCollapseTitle | Documented-only | — |
| B4XDaisyColorWheel | Demo-referenced | B4XPageColorWheel.bas |
| B4XDaisyCountdown | Demo-referenced | B4XPageCountdown.bas |
| B4XDaisyCountdownItem | Documented-only | — |
| B4XDaisyDashboard | Demo-referenced | B4XPageDashboard.bas |
| B4XDaisyDiff | Demo-referenced | B4XPageDiff.bas |
| B4XDaisyDivider | Demo-referenced | B4XPageDivider.bas |
| B4XDaisyDivision | Demo-referenced | B4XPageDivider.bas<br>B4XPageIndicator.bas<br>B4XPageSkeleton.bas<br>B4XPageStack.bas |
| B4XDaisyDock | Demo-referenced | B4XPageDock.bas<br>B4XPageNavScrollDock.bas |
| B4XDaisyDrawer | Demo-referenced | B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas |
| B4XDaisyDropdown | Demo-referenced | B4XPageDropdown.bas |
| B4XDaisyDualRange | Demo-referenced | B4XPageDualRange.bas |
| B4XDaisyEnjoyHint | Demo-referenced | B4XPageEnjoyHint.bas |
| B4XDaisyFab | Demo-referenced | B4XPageBoomMenu.bas<br>B4XPageFab.bas<br>B4XPageFabBasic.bas<br>B4XPageFabFlower.bas<br>B4XPageFabNavbar.bas<br>B4XPageNavbar.bas |
| B4XDaisyFieldset | Demo-referenced | B4XPageCheckbox.bas<br>B4XPageCheckboxGroup.bas<br>B4XPageFieldset.bas<br>B4XPageRadio.bas<br>B4XPageRadioGroup.bas<br>B4XPageToggle.bas<br>B4XPageToggleGroup.bas |
| B4XDaisyFileHandler | Demo-referenced | B4XPageMediaPicker.bas |
| B4XDaisyFileInput | Demo-referenced | B4XPageAvatar.bas<br>B4XPageFileInput.bas<br>B4XPageFocus.bas |
| B4XDaisyFilter | Demo-referenced | B4XPageFilter.bas |
| B4XDaisyFlexItem | **Banned** — unreliable layout primitive — use B4XDaisyPageScroll | — |
| B4XDaisyFlexLayout | **Banned** — unreliable layout primitive — use B4XDaisyPageScroll | — |
| B4XDaisyFlexPanel | **Banned** — unreliable layout primitive — use B4XDaisyPageScroll | — |
| B4XDaisyGrid | **Banned** — unreliable layout primitive — use B4XDaisyPageScroll | — |
| B4XDaisyHero | Demo-referenced | B4XPageHero.bas |
| B4XDaisyHover3d | Demo-referenced | B4XPageHover3d.bas |
| B4XDaisyIconButton | Demo-referenced | B4XPageIconButton.bas<br>B4XPageList.bas<br>B4XPageMediaPicker.bas |
| B4XDaisyImage | Demo-referenced | B4XPageMediaPicker.bas |
| B4XDaisyIndicator | Demo-referenced | B4XPageDropdown.bas<br>B4XPageIndicator.bas<br>B4XPageNavbar.bas<br>B4XPageSvgIcon.bas |
| B4XDaisyInfoCard | Demo-referenced | B4XPageInfoCard.bas |
| B4XDaisyInput | Demo-referenced | B4XPageColorWheel.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFieldset.bas<br>B4XPageFocus.bas<br>B4XPageInput.bas<br>B4XPageNativeDialogs.bas<br>B4XPageNavScrollDock.bas<br>B4XPageScrollDemo.bas<br>B4XPageSheetModal.bas<br>B4XPageTextarea.bas |
| B4XDaisyKbd | Demo-referenced | B4XPageKbd.bas |
| B4XDaisyList | Demo-referenced | B4XPageList.bas<br>B4XPageList1K.bas |
| B4XDaisyLoading | Demo-referenced | B4XPageLoading.bas |
| B4XDaisyMenu | Demo-referenced | B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDropdown.bas<br>B4XPageMenu.bas<br>B4XPageMenuRuntime.bas<br>B4XPageMenuRuntime2.bas |
| B4XDaisyModal | Demo-referenced | B4XPageColorWheel.bas<br>B4XPageModal.bas<br>B4XPagePicker.bas |
| B4XDaisyNavbar | Demo-referenced | B4XPageColorWheel.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDualRange.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFabNavbar.bas<br>B4XPageNavScrollDock.bas<br>B4XPageNavbar.bas<br>B4XPagePDFView.bas<br>B4XPagePicker.bas<br>B4XPageSheetModal.bas |
| B4XDaisyOTP | Demo-referenced | B4XPageOTP.bas |
| B4XDaisyOverlay | Demo-referenced | B4XPageOverlay.bas |
| B4XDaisyPageScroll | Demo-referenced | B4XPageActionSheet.bas<br>B4XPageAura.bas<br>B4XPageBoomMenu.bas<br>B4XPageCanvasSpinner.bas<br>B4XPageColorWheel.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDualRange.bas<br>B4XPageEasing.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageInput.bas<br>B4XPageMediaPicker.bas<br>B4XPageNativeDialogs.bas<br>B4XPageNavScrollDock.bas<br>B4XPageOTP.bas<br>B4XPagePicker.bas<br>B4XPageProgress.bas<br>B4XPageScrollDemo.bas<br>B4XPageSegment.bas<br>B4XPageSheetModal.bas<br>B4XPageShineButton.bas<br>B4XPageSignaturePad.bas<br>B4XPageSweetAlertInputs.bas<br>B4XPageTagSphere.bas |
| B4XDaisyPagination | Demo-referenced | B4XPagePagination.bas |
| B4XDaisyPDFView | Demo-referenced | B4XPagePDFView.bas |
| B4XDaisyPicker | Demo-referenced | B4XPagePicker.bas |
| B4XDaisyPiecePlaceManager | Documented-only | — |
| B4XDaisyPocketBase | Documented-only | — |
| B4XDaisyProgress | Demo-referenced | B4XPageDrawerRail.bas<br>B4XPageProgress.bas |
| B4XDaisyRadialProgress | Demo-referenced | B4XPageRadialProgress.bas<br>B4XPageStat.bas |
| B4XDaisyRadio | Demo-referenced | B4XPageFocus.bas<br>B4XPageRadio.bas |
| B4XDaisyRadioGroup | Demo-referenced | B4XPageRadioGroup.bas |
| B4XDaisyRange | Demo-referenced | B4XPageCanvasSpinner.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageNavScrollDock.bas<br>B4XPageRange.bas<br>B4XPageSignaturePad.bas<br>B4XPageTagSphere.bas |
| B4XDaisyRating | Demo-referenced | B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageNavScrollDock.bas<br>B4XPageRating.bas |
| B4XDaisySegment | Demo-referenced | B4XPageSegment.bas<br>B4XPageTagSphere.bas |
| B4XDaisySelect | Demo-referenced | B4XPageEnjoyHint.bas<br>B4XPageFieldset.bas<br>B4XPageFocus.bas<br>B4XPageNavScrollDock.bas<br>B4XPageSelect.bas |
| B4XDaisySheetModal | Demo-referenced | B4XPageColorWheel.bas<br>B4XPagePicker.bas<br>B4XPageSheetModal.bas |
| B4XDaisyShineButton | Demo-referenced | B4XPageShineButton.bas |
| B4XDaisySignature | Demo-referenced | B4XPageSignaturePad.bas |
| B4XDaisySignaturePad | Demo-referenced | B4XPageSignaturePad.bas |
| B4XDaisyStack | Demo-referenced | B4XPageStack.bas |
| B4XDaisyStat | Demo-referenced | B4XPageDrawerRail.bas<br>B4XPageStat.bas |
| B4XDaisyStatItem | Demo-referenced | B4XPageDrawerRail.bas<br>B4XPageStat.bas |
| B4XDaisyStatus | Demo-referenced | B4XPageStatus.bas |
| B4XDaisySteps | Demo-referenced | B4XPageSteps.bas |
| B4XDaisySvgIcon | Demo-referenced | B4XPageDropdown.bas<br>B4XPageIndicator.bas<br>B4XPageNavbar.bas<br>B4XPageSvgIcon.bas |
| B4XDaisySwap | Demo-referenced | B4XPageSwap.bas |
| B4XDaisySweetAlert | Demo-referenced | B4XPageSweetAlert.bas<br>B4XPageSweetAlertInputs.bas |
| B4XDaisySweetAlertIcon | Documented-only | — |
| B4XDaisyTab | Demo-referenced | B4XPageTab.bas |
| B4XDaisyTagSphere | Demo-referenced | B4XPageTagSphere.bas |
| B4XDaisyText | Demo-referenced | B4XPageAccordion.bas<br>B4XPageAlert.bas<br>B4XPageBreadcrumbs.bas<br>B4XPageButton.bas<br>B4XPageCanvasSpinner.bas<br>B4XPageCard.bas<br>B4XPageCarousel.bas<br>B4XPageCheckbox.bas<br>B4XPageCheckboxGroup.bas<br>B4XPageCollapse.bas<br>B4XPageCountdown.bas<br>B4XPageDiff.bas<br>B4XPageDock.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDropdown.bas<br>B4XPageDualRange.bas<br>B4XPageFieldset.bas<br>B4XPageFileInput.bas<br>B4XPageFilter.bas<br>B4XPageHero.bas<br>B4XPageHover3d.bas<br>B4XPageIconButton.bas<br>B4XPageInfoCard.bas<br>B4XPageInput.bas<br>B4XPageKbd.bas<br>B4XPageLink.bas<br>B4XPageList.bas<br>B4XPageMediaPicker.bas<br>B4XPageMenu.bas<br>B4XPageMenuRuntime.bas<br>B4XPageMenuRuntime2.bas<br>B4XPageModal.bas<br>B4XPageNavbar.bas<br>B4XPageOverlay.bas<br>B4XPagePagination.bas<br>B4XPageProgress.bas<br>B4XPageRadialProgress.bas<br>B4XPageRadio.bas<br>B4XPageRadioGroup.bas<br>B4XPageRange.bas<br>B4XPageRating.bas<br>B4XPageSelect.bas<br>B4XPageShineButton.bas<br>B4XPageSignaturePad.bas<br>B4XPageSkeleton.bas<br>B4XPageStack.bas<br>B4XPageStat.bas<br>B4XPageSteps.bas<br>B4XPageSweetAlert.bas<br>B4XPageTab.bas<br>B4XPageTagSphere.bas<br>B4XPageText.bas<br>B4XPageTextRotate.bas<br>B4XPageTextarea.bas<br>B4XPageTimeline.bas<br>B4XPageToast.bas<br>B4XPageToggle.bas<br>B4XPageToggleGroup.bas<br>B4XPageTooltip.bas<br>B4XPageWindow.bas |
| B4XDaisyTextRotate | Demo-referenced | B4XPageTextRotate.bas |
| B4XDaisyTimeline | Demo-referenced | B4XPageTimeline.bas |
| B4XDaisyToast | Demo-referenced | B4XPageCard.bas<br>B4XPageTagSphere.bas<br>B4XPageToast.bas |
| B4XDaisyToggle | Demo-referenced | B4XPageDrawerRail.bas<br>B4XPageEnjoyHint.bas<br>B4XPageFocus.bas<br>B4XPageNavScrollDock.bas<br>B4XPageSignaturePad.bas<br>B4XPageTagSphere.bas<br>B4XPageToggle.bas |
| B4XDaisyToggleGroup | Demo-referenced | B4XPageToggleGroup.bas |
| B4XDaisyTooltip | Demo-referenced | B4XPageTooltip.bas |
| B4XDaisyVariants | Demo-referenced | B4XPageAura.bas<br>B4XPageAvatar.bas<br>B4XPageBadge.bas<br>B4XPageBreadcrumbs.bas<br>B4XPageButton.bas<br>B4XPageCanvasSpinner.bas<br>B4XPageCard.bas<br>B4XPageChat.bas<br>B4XPageColorWheel.bas<br>B4XPageDivider.bas<br>B4XPageDock.bas<br>B4XPageDrawer.bas<br>B4XPageDrawerRail.bas<br>B4XPageDrawerTree.bas<br>B4XPageDropdown.bas<br>B4XPageEasing.bas<br>B4XPageFieldset.bas<br>B4XPageHover3d.bas<br>B4XPageIndicator.bas<br>B4XPageMenu.bas<br>B4XPageMenuRuntime.bas<br>B4XPageMenuRuntime2.bas<br>B4XPageNavbar.bas<br>B4XPagePDFView.bas<br>B4XPagePagination.bas<br>B4XPageSelect.bas<br>B4XPageSignaturePad.bas<br>B4XPageStack.bas<br>B4XPageSteps.bas<br>B4XPageSvgIcon.bas<br>B4XPageSweetAlertInputs.bas<br>B4XPageTab.bas<br>B4XPageTagSphere.bas<br>B4XPageWindow.bas |
| B4XDaisyWindow | Demo-referenced | B4XPageWindow.bas |

---

## Component Skills Directory

All 108 component skill files are located in [`skills/b4xdaisyuikit/components/`](../components/):

- [accordion](../components/accordion.md)
- [action-sheet](../components/action-sheet.md)
- [alert](../components/alert.md)
- [animation](../components/animation.md)
- [aura](../components/aura.md)
- [avatar](../components/avatar.md)
- [avatar-group](../components/avatar-group.md)
- [badge](../components/badge.md)
- [badge-group-select](../components/badge-group-select.md)
- [boom-menu](../components/boom-menu.md)
- [breadcrumbs](../components/breadcrumbs.md)
- [button](../components/button.md)
- [canvas-spinner](../components/canvas-spinner.md)
- [card](../components/card.md)
- [carousel](../components/carousel.md)
- [chat](../components/chat.md)
- [checkbox](../components/checkbox.md)
- [checkbox-group](../components/checkbox-group.md)
- [collapse](../components/collapse.md)
- [color-wheel](../components/color-wheel.md)
- [countdown](../components/countdown.md)
- [dashboard](../components/dashboard.md)
- [diff](../components/diff.md)
- [divider](../components/divider.md)
- [division](../components/division.md)
- [dock](../components/dock.md)
- [drawer](../components/drawer.md)
- [dropdown](../components/dropdown.md)
- [dual-range](../components/dual-range.md)
- [enjoy-hint](../components/enjoy-hint.md)
- [fab](../components/fab.md)
- [fieldset](../components/fieldset.md)
- [file-handler](../components/file-handler.md)
- [file-input](../components/file-input.md)
- [filter](../components/filter.md)
- [hero](../components/hero.md)
- [hover3d](../components/hover3d.md)
- [icon-button](../components/icon-button.md)
- [image](../components/image.md)
- [indicator](../components/indicator.md)
- [info-card](../components/info-card.md)
- [input](../components/input.md)
- [kbd](../components/kbd.md)
- [link](../components/link.md)
- [list](../components/list.md)
- [loading](../components/loading.md)
- [mask](../components/mask.md)
- [menu](../components/menu.md)
- [modal](../components/modal.md)
- [navbar](../components/navbar.md)
- [otp](../components/otp.md)
- [overlay](../components/overlay.md)
- [page-scroll](../components/page-scroll.md)
- [pagination](../components/pagination.md)
- [pdf-view](../components/pdf-view.md)
- [picker](../components/picker.md)
- [pocket-base](../components/pocket-base.md)
- [progress](../components/progress.md)
- [radial-progress](../components/radial-progress.md)
- [radio](../components/radio.md)
- [radio-group](../components/radio-group.md)
- [range](../components/range.md)
- [rating](../components/rating.md)
- [segment](../components/segment.md)
- [select](../components/select.md)
- [sheet-modal](../components/sheet-modal.md)
- [shine-button](../components/shine-button.md)
- [signature](../components/signature.md)
- [signature-pad](../components/signature-pad.md)
- [skeleton](../components/skeleton.md)
- [stack](../components/stack.md)
- [stat](../components/stat.md)
- [status](../components/status.md)
- [steps](../components/steps.md)
- [svg-icon](../components/svg-icon.md)
- [swap](../components/swap.md)
- [sweet-alert](../components/sweet-alert.md)
- [tab](../components/tab.md)
- [tag-sphere](../components/tag-sphere.md)
- [text](../components/text.md)
- [text-rotate](../components/text-rotate.md)
- [textarea](../components/textarea.md)
- [timeline](../components/timeline.md)
- [toast](../components/toast.md)
- [toggle](../components/toggle.md)
- [toggle-group](../components/toggle-group.md)
- [tooltip](../components/tooltip.md)
- [variants](../components/variants.md)
- [window](../components/window.md)
