# Intent → Component Selection Matrix

Map the **user's intent** to an interaction pattern, then to the native B4XDaisyUIKit component — before retrieving component syntax. This is the intent-first lookup that complements the element-first mappings in [`conversion-workflows.md`](conversion-workflows.md) (DaisyUI class → component) and [`component-manifest.md`](component-manifest.md).

Use during **Stage 4 (Page Architect)** / **Stage 5 (Component Syntax Expert)**: identify what the user must *do*, find the matching row, then confirm the component's exact API in `components/<name>.md` and its demo in `component-manifest.md`. Never skip the manifest check — this file names components, not exhaustive APIs.

---

## Selection Matrix

| User intent | Interaction pattern | Semantic role | Native component(s) | Verified demo |
|---|---|---|---|---|
| Confirm an irreversible/destructive action | Modal blocking confirmation | Destructive gate | `B4XDaisySweetAlert` (`Initialize(Me, Root, "swal")`, `Wait For` `ShowAsync`) | `B4XPageSweetAlert.bas` |
| Non-blocking success/failure notice | Transient toast, auto-dismiss | Feedback | `B4XDaisyToast` (`ShowToast`, `Duration`, `Position`) | `B4XPageToast.bas` |
| Inline feedback that must stay visible | Persistent banner on screen | Feedback | `B4XDaisyAlert` (`Title`, `Text`, `Color`) | `B4XPageAlert.bas` |
| Switch between ≤5 top-level app destinations | Persistent bottom navigation | Primary nav | `B4XDaisyDock` (`AddHomeTab`, `ActiveTab`, `SetItemBadgeValue`) | `B4XPageDock.bas` |
| Navigate deeper structure (>5 destinations) | Side navigation / collapsible menu | Primary nav | `B4XDaisyDrawer` (`Open`, `Close`) + `B4XDaisyMenu` (`AddMenuItem`, `AddSubMenu`) | `B4XPageDrawerTree.bas` |
| Switch between peer views of one context | Local tab switch | Secondary nav | `B4XDaisyTab` (`AddTab`, `ActiveIndex`) / `B4XDaisySegment` | `B4XPageTab.bas` |
| Complete a task in ordered stages | Wizard / stepper | Progressive disclosure | `B4XDaisySteps` (`AddStep`, `CurrentStep`, `Orientation`) | `B4XPageSteps.bas` |
| Collect structured input with validation | Form with grouped fields | Data entry | `B4XDaisyFieldset` (`Legend`, `AddToContent`) + `B4XDaisyInput` (`Validate`, `LabelAbove`) | `B4XPageFieldset.bas` |
| Binary yes/no preference | Toggle switch | Choice | `B4XDaisyToggle` (`setText`, `Checked`) | `B4XPageToggle.bas` |
| One choice from a small set | Radio group | Choice | `B4XDaisyRadioGroup` (`ItemsSpec`, `Checked`) | `B4XPageRadioGroup.bas` |
| One choice from a long set | Dropdown select | Choice | `B4XDaisySelect` (`SetOptions`, `SelectedValue`) | `B4XPageSelect.bas` |
| Teach first-time users a flow | Guided feature tour | Onboarding | `B4XDaisyEnjoyHint` | `B4XPageEnjoyHint.bas` |
| Compare key metrics at a glance | Statistic tiles | Data display | `B4XDaisyStat` (`setOrientation`) + `B4XDaisyStatItem` (`setFigureType`: `none\|svg\|image\|radial`) | `B4XPageStat.bas` |
| Show progress toward a goal | Linear bar / circular ring | Data display | `B4XDaisyProgress` (`Value`, `MaxValue`) / `B4XDaisyRadialProgress` (`Value`, `Size`, `StrokeWidth`) | `B4XPageProgress.bas`, `B4XPageRadialProgress.bas` |
| Scan and act on repeated data | Vertical list rows | Data display | `B4XDaisyList` (`AddItem`, `AddItemWithIcon`, `ItemClick`) | `B4XPageList.bas`, `B4XPageList1K.bas` |
| Browse media-rich content horizontally | Swipeable carousel | Data display | `B4XDaisyCarousel` + `B4XDaisyCarouselItem` (`AutoPlay`, `Interval`) | `B4XPageCarousel.bas` |
| Reveal detail without leaving the screen | Expand/collapse | Progressive disclosure | `B4XDaisyCollapse` (`Open`, `Toggle`) / `B4XDaisyAccordion` (`OpenOnlyOne`, `AddItemBasic`) | `B4XPageCollapse.bas` |
| Launch the screen's primary action | Floating action button | Primary action | `B4XDaisyFab` (single) / `B4XDaisyBoomMenu` (radial multi-action) | `B4XPageFab.bas`, `B4XPageBoomMenu.bas` |
| Filter a list by facets | Chip bar / toggle chips | Filtering | `B4XDaisyFilter` / `B4XDaisyBadgeGroupSelect` (`ItemsSpec`) | `B4XPageFilter.bas`, `B4XPageBadge.bas` |
| Pick a value from a wheel of options | Drum picker | Data entry | `B4XDaisyPicker` | `B4XPagePicker.bas` |
| Attach a photo, file, or audio | Media capture/selection | Data entry | `B4XDaisyFileInput` / `B4XDaisyFileHandler` | `B4XPageMediaPicker.bas` |
| Capture a handwritten signature | Signature pad | Data entry | `B4XDaisySignaturePad` (`SaveSignature`, `ClearSignature`) | `B4XPageSignaturePad.bas` |
| Enter a one-time code | Multi-digit PIN entry | Data entry | `B4XDaisyOTP` (`Digits`, `Masked`, `AutoSubmit`) | `B4XPageOTP.bas` |

---

## Rules

1. **Intent before component.** If you cannot state the user intent in one sentence, you are not ready to pick a component — go back to the Screen Contract (§1 User Goal, §2 Actions).
2. **One primary action per viewport.** Only the single most important intent gets the `primary` variant (`design-heuristics.md` §2A.3); everything else is `neutral` / `ghost` / `outline`.
3. **Destructive intents are always separated** (`error` variant + `B4XDaisySweetAlert` confirmation, ≥16dip away from primary) — `screen-contract.template.md` §2.
4. **Verify before generating.** This matrix maps intent to component *class*. Exact constructor order, setter signatures, and event names come from `component-manifest.md` + `components/<name>.md`. Container deviations (`Stat`, `Dock`, `Timeline`, `Accordion`, `SweetAlert`, `Carousel`) are listed in [`component-creation-patterns.md`](component-creation-patterns.md).
5. **No component exists → say so.** If the intent has no row here and no manifest match (e.g. true charts, calendar month grid), state the gap to the user and propose the closest documented recipe (e.g. `Progress` rows as bar charts, `RadialProgress` as a ring gauge) instead of inventing an API.
