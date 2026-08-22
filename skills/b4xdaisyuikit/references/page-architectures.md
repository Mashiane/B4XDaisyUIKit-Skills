# B4XDaisyUIKit — Page Architectures

The Page Architect catalog provides pre-structured, verified native Android page composition models. Rather than creating layouts ad-hoc, select an architecture matching your UI requirements.

---

## Architecture Index

| ID | Name | Primary Interaction | Core Components |
|---|---|---|---|
| **`ARCH-01`** | **NavScrollDock App Shell** | Pinned top/bottom navigation with scrollable body | `Navbar`, `PageScroll`, `Dock`, `Card`, `Button` |
| **`ARCH-02`** | **Auth & Onboarding Flow** | Secure entry, OTP verification, feature tour | `Hero`, `Input`, `OTP`, `Button`, `EnjoyHint`, `SweetAlert` |
| **`ARCH-03`** | **KPI & Analytics Dashboard** | Real-time telemetry, metric stat tiles, progress | `Stat`, `RadialProgress`, `Progress`, `Card`, `Badge` |
| **`ARCH-04`** | **Interactive Form & CRUD** | Fieldsets, inputs, dynamic validation, signatures | `Fieldset`, `Input`, `Select`, `Toggle`, `SignaturePad`, `FileInput` |
| **`ARCH-05`** | **Master-Detail Explorer** | Search, filter chips, virtual list, subpage review | `Navbar` (Search/Back), `Filter`, `List`, `Card`, `Drawer` |
| **`ARCH-06`** | **Barcode & Inventory Stock-Take** | High-density count, live table, action sheets | `Stat`, `Table`, `Badge`, `ActionSheet`, `Fab` |
| **`ARCH-07`** | **Multi-Step Wizard / Checkout** | Step indicator, segmented forms, review | `Steps`, `Card`, `RadioGroup`, `Button`, `SweetAlert` |
| **`ARCH-08`** | **Settings & Profile Manager** | Avatar banner, segmented controls, theme switch | `Avatar`, `Segment`, `ToggleGroup`, `Modal`, `Variants` |
| **`ARCH-09`** | **Chat & Realtime Collaboration** | Messaging thread, input bar, status dots | `Navbar`, `Chat`, `Input`, `IconButton`, `Status` |
| **`ARCH-10`** | **Document & PDF Viewer** | Embedded document view, toolbar, signoff | `Navbar`, `PDFView`, `Pagination`, `SignaturePad`, `Modal` |

---

## Detailed Architectural Specifications

### `ARCH-01: NavScrollDock App Shell`
* **Purpose**: Primary multi-tab application container.
* **Layout Geometry**:
  * Root panel hosting pinned `B4XDaisyNavbar` at `Top=0, Height=64dip`.
  * Pinned `B4XDaisyDock` at `Top=Root.Height-64dip, Height=64dip`.
  * `B4XDaisyPageScroll` at `Top=64dip, Height=Root.Height-128dip`.
* **State & Transition**: Dock tabs trigger page switches via `ShowPageWithLoader`.
* **Verification Proof**: Verified in `B4XPageNavScrollDock.bas` & `B4XPageNavDock.template.bas`.

---

### `ARCH-02: Auth & Onboarding Flow`
* **Purpose**: User authentication, account creation, and 6-digit OTP verification.
* **Section Order**:
  1. Header Brand Hero (`B4XDaisyHero` or `B4XDaisyAvatar` logo).
  2. Input Fieldset (`B4XDaisyFieldset` wrapping `B4XDaisyInput` email/phone).
  3. Action CTA (`B4XDaisyButton` Color="primary").
  4. OTP Verification Modal/Sheet (`B4XDaisyOTP` 6 digits + `B4XDaisyCountdown` resend timer).
  5. First-time feature walkthrough (`B4XDaisyEnjoyHint`).
* **Stack Transition (RULE-LIFECYCLE-005)**:
  Upon successful login/verification, transition to the main app shell via `B4XPages.ShowPageAndRemovePreviousPages("home")` to clear the auth history from the back stack.
* **Verification Proof**: Verified in `B4XPageOTP.bas`, `B4XPageCountdown.bas`, `B4XPageEnjoyHint.bas`.

---

### `ARCH-03: KPI & Analytics Dashboard`
* **Purpose**: Executive metrics, performance telemetry, and KPI cards.
* **Section Order**:
  1. Quick Filter / Date Range (`B4XDaisySegment` or `B4XDaisyBadgeGroupSelect`).
  2. Top Metric Tiles (`B4XDaisyStat` with `B4XDaisyStatItem` values and trends).
  3. Circular Goal Progress (`B4XDaisyRadialProgress` + `B4XDaisyProgress`).
  4. Detailed Breakdowns (`B4XDaisyCard` with KPI lists or stacked cards).
* **Verification Proof**: Verified in `B4XPageDashboard.bas`, `B4XPageStat.bas`, `B4XPageRadialProgress.bas`.

---

### `ARCH-04: Interactive Form & CRUD`
* **Purpose**: Data capture, profile editing, and document generation.
* **Section Order**:
  1. Section Header (`B4XDaisyFieldset` Legend="Personal Information").
  2. Inputs (`B4XDaisyInput`, `B4XDaisySelect`, `B4XDaisyCheckboxGroup`, `B4XDaisyToggle`).
  3. Attachments (`B4XDaisyFileInput`).
  4. Verification (`B4XDaisySignaturePad` for digital signoff).
  5. Action Buttons (Submit `B4XDaisyButton` + Reset `B4XDaisyButton` Ghost).
  6. Feedback Toast/Alert (`B4XDaisyToast` on success, `B4XDaisyAlert` on error).
* **Back-Key Protection (RULE-LIFECYCLE-006)**:
  Implement `Sub B4XPage_CloseRequest As ResumableSub` to confirm discarding unsaved edits when the user presses Android hardware Back.
* **Verification Proof**: Verified in `B4XPageFieldset.bas`, `B4XPageInput.bas`, `B4XPageSignaturePad.bas`.

---

### `ARCH-05: Master-Detail Explorer`
* **Purpose**: Searchable catalog, inventory list, or customer explorer.
* **Section Order**:
  1. Top Search & Filter Bar (`B4XDaisyNavbar` Search slot + `B4XDaisyFilter` badge chips).
  2. Virtual Item List (`B4XDaisyList` with item click callbacks).
  3. Detail Subpage (`B4XPageNavOnly.template.bas` with pinned Navbar + Back Button).
  4. Action Sheet for item operations (`B4XDaisyActionSheet` Edit/Delete/Share).
* **Verification Proof**: Verified in `B4XPageList.bas`, `B4XPageActionSheet.bas`, `B4XPageFilter.bas`.

---

### `ARCH-06: Barcode & Inventory Stock-Take`
* **Purpose**: Fast-paced mobile scanning, inventory audit, and count reconciliation.
* **Section Order**:
  1. Summary Banner (`B4XDaisyStat` Items Scanned / Total Expected).
  2. Live Count Input (`B4XDaisyInput` + Stepper Buttons).
  3. Scanned Items List (`B4XDaisyList` with dynamic badge status).
  4. Floating Action Trigger (`B4XDaisyFab` for camera/scanner toggle).
* **Verification Proof**: Verified in `B4XPageStat.bas`, `B4XPageFab.bas`, `B4XPageBadge.bas`.

---

### `ARCH-07: Multi-Step Wizard / Checkout`
* **Purpose**: Guided multi-stage workflows (e.g. Order Checkout, Loan Application).
* **Section Order**:
  1. Steps Progress Bar (`B4XDaisySteps` Step 1 $\rightarrow$ Step 2 $\rightarrow$ Step 3).
  2. Active Step Content Card (`B4XDaisyCard` hosting step fields).
  3. Bottom Navigation Controls (Previous `B4XDaisyButton` + Next/Submit `B4XDaisyButton`).
  4. Confirmation Dialog (`B4XDaisySweetAlert` with confirmation summary).
* **Step Navigation & Back-Key (RULE-LIFECYCLE-006)**:
  `B4XPage_CloseRequest` steps back one step if `currentStep > 1`, or asks confirmation if at step 1.
* **Verification Proof**: Verified in `B4XPageSteps.bas`, `B4XPageSweetAlert.bas`.

---

### `ARCH-08: Settings & Profile Manager`
* **Purpose**: User preferences, theme customizer, and account security.
* **Section Order**:
  1. Profile Banner (`B4XDaisyAvatar` + Name + Online `B4XDaisyStatus`).
  2. App Preferences (`B4XDaisyToggleGroup` Notifications, Biometrics, Dark Mode).
  3. Theme Switcher (`B4XDaisySegment` Light / Dark / Synthwave via `B4XDaisyVariants`).
  4. Danger Zone Accordion (`B4XDaisyAccordion` Delete Account with `B4XDaisyModal`).
* **Verification Proof**: Verified in `B4XPageAvatar.bas`, `B4XPageSegment.bas`, `B4XPageModal.bas`.

---

### `ARCH-09: Chat & Realtime Collaboration`
* **Purpose**: In-app support, team messaging, and customer assistance.
* **Section Order**:
  1. User Header (`B4XDaisyNavbar` with recipient avatar and status dot).
  2. Message Feed (`B4XDaisyChat` with alternating speech bubbles, timestamps, avatars).
  3. Bottom Composer (`B4XDaisyDivision` containing `B4XDaisyInput` + Send `B4XDaisyIconButton`).
* **Background/Foreground Suspension (RULE-LIFECYCLE-007)**:
  Pause polling/subscriptions in `B4XPage_Background` and re-sync in `B4XPage_Foreground`.
* **Verification Proof**: Verified in `B4XPageChat.bas`, `B4XPageIconButton.bas`.

---

### `ARCH-10: Document & PDF Viewer`
* **Purpose**: Invoice review, contracts, reports, and digital signatures.
* **Section Order**:
  1. Document Header (`B4XDaisyNavbar` Document Title, Share button, Page counter).
  2. Embedded PDF Surface (`B4XDaisyPDFView` rendering page assets).
  3. Page Navigation Bar (`B4XDaisyPagination` Prev / Page / Next).
  4. Signoff Action Sheet (`B4XDaisySheetModal` hosting `B4XDaisySignaturePad`).
* **Verification Proof**: Verified in `B4XPagePDFView.bas`, `B4XPagePagination.bas`, `B4XPageSheetModal.bas`.