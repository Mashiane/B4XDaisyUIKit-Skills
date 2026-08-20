# B4XDaisyUIKit — UX Master Doctrine & Definition of Done

> **The definitive design, interaction, ergonomics, and accessibility doctrine for native B4X (B4A, B4i, B4J) mobile and desktop applications built with B4XDaisyUIKit.**

---

## 📖 Core Philosophy

Operating as a principal mobile engineer and UX architect, every interface decision in B4XDaisyUIKit—a component boundary, color assignment, touch target dimension, animation duration, or error message—must trace directly to a verifiable design principle:
1. **Interaction & Ergonomics** (Cognitive load, thumb zones, quantitative laws)
2. **Visual Hierarchy & Tokens** (WCAG contrast, type scales, semantic color roles)
3. **State Completeness** (Loading, Populated, Empty, Error)
4. **Platform Mechanics** (B4XPages lifecycle, non-blocking asynchronous UI, touch conflict resolution)

"It looks fine on my emulator" is never sufficient justification for shipping.

---

## 🏛️ Pillar 1: Quantitative Interaction Laws & Ergonomics

### 1. Fitts's Law — Touch Target Sizing & Spacing
* **Android Target Minimum:** **48 × 48 dip** (Material Design specification; Apple HIG requires 44 × 44 pt; WCAG absolute floor is 24 × 24 px).
* **Hit Area Expansion:** Small icons (`B4XDaisySvgIcon`) or small badges (`B4XDaisyBadge`) must never be naked click targets without an enclosing `B4XDaisyIconButton` (minimum `Height = 48dip, Width = 48dip`) or touch padding.
* **Destructive Separation:** Destructive actions (e.g. Delete, Cancel Subscription) must be physically separated from frequent actions (Save, Submit) by at least **16–24 dip** or placed inside a confirmation modal (`B4XDaisySweetAlert`).

### 2. Hick's Law — Decision Time & Navigation Bounds
* **Navigation Item Limit:** Primary navigation bars (`B4XDaisyDock` bottom tabs or `B4XDaisyNavbar` actions) must contain **$\le 5$ items** on mobile (maximum 7 on tablet/desktop).
* **Competing Primary Actions:** Exactly **one** primary call-to-action (`Color = "primary"`) per visible viewport. Secondary actions must use `Variant = "outline"` or `Color = "neutral"`.

### 3. Miller's Law & Cognitive Chunking ($7 \pm 2$)
* **Form Chunking:** Never present more than **3 to 5 contiguous input fields** without visual grouping. Use `B4XDaisyFieldset` with clear legend titles to partition large forms into digestible sections.
* **Step Wizards:** Multi-stage flows exceeding 6 fields must be partitioned across sequential steps using `B4XDaisySteps`.

### 4. Jakob's Law — Ecosystem Conventions
* Match native mobile expectations:
  * Top navigation bar with left-aligned brand/back navigation and right-aligned contextual actions (`B4XDaisyNavbar`).
  * Bottom thumb-zone dock for core app switching (`B4XDaisyDock`).
  * Swipe-to-dismiss for bottom sheets (`B4XDaisySheetModal`).
  * Standardized search with instant debounced clearing (`B4XDaisyInput` with search icon).

### 5. Peak-End Rule — High-Craft Moments
* Users evaluate mobile workflows by their most intense interaction and the conclusion.
* Invest disproportionate craft into:
  1. **Success confirmations:** Animated modal dialogs with celebratory icons via `B4XDaisySweetAlert`.
  2. **Empty states:** Meaningful illustrations, encouraging copy, and a direct CTA button.
  3. **Error recovery:** Clear explanations with a one-tap retry button.

---

## 🎨 Pillar 2: Visual System, Contrast & Motion

### 1. WCAG 2.2 AA Contrast Compliance
* **Standard Body Text:** Contrast ratio $\ge \mathbf{4.5:1}$ against background surface.
* **Large Text ($\ge 24\text{dip}$ or $\ge 19\text{dip}$ bold) & Component Borders:** Contrast ratio $\ge \mathbf{3.0:1}$.
* **Semantic Independence:** Never rely on color alone to communicate state. Pair semantic colors with distinct icons (e.g., `error` + exclamation circle SVG, `success` + checkmark SVG).

### 2. Semantic Color Mapping
Always reference themes through semantic roles rather than hardcoded hex values:
* `primary`: Main brand action, active tab highlights, primary CTA buttons.
* `secondary`: Supporting actions, featured badges, secondary highlights.
* `accent`: High-visibility notifications, focus indicators, special chips.
* `neutral`: Structural cards, dividers, subtle button variants.
* `info`, `success`, `warning`, `error`: System feedback alerts and validation banners.

### 3. Motion & Transition Budget
* **Micro-interactions (buttons, checkboxes, toggles):** **150–200 ms**.
* **Page transitions & Sheet entrances:** **200–300 ms** (`ease-out` on enter, `ease-in` on exit).
* **Sluggishness Threshold:** Any transition $> \mathbf{350\text{ ms}}$ feels slow and unresponsive on real hardware.

---

## 🔄 Pillar 3: Mandatory 4-State UI Completeness

Every data-driven page, list, or asynchronous component must explicitly implement **all 4 states**:

```text
┌──────────────────────────────────────────────────────────────┐
│                    4-STATE UI ARCHITECTURE                   │
├──────────────────────────────────────────────────────────────┤
│ 1. LOADING   │ B4XDaisySkeleton / B4XDaisyLoading             │
│              │ • Preserves layout geometry (no jump on load)  │
├──────────────┼───────────────────────────────────────────────┤
│ 2. POPULATED │ Standard component hierarchy (Cards/Lists)    │
│              │ • Data bound and fully responsive             │
├──────────────┼───────────────────────────────────────────────┤
│ 3. EMPTY     │ Empty card + SVG Illustration + Action Button │
│              │ • "No records found" + "Create New" CTA       │
├──────────────┼───────────────────────────────────────────────┤
│ 4. ERROR     │ B4XDaisyAlert / B4XDaisySweetAlert            │
│              │ • Plain-language cause + "Retry" Button       │
└──────────────────────────────────────────────────────────────┘
```

### Native Implementation Pattern
```vb
Private Sub RefreshData
    ' 1. State: LOADING
    ShowLoadingState(True)
    
    ' Simulate async fetch (HttpJob or PocketBase)
    Wait For (FetchRecordsAsync) Complete (Records As List)
    ShowLoadingState(False)
    
    If Records = Null Then
        ' 4. State: ERROR
        ShowErrorState("Unable to connect to server. Check connection.", True)
    Else If Records.Size = 0 Then
        ' 3. State: EMPTY
        ShowEmptyState(True)
    Else
        ' 2. State: POPULATED
        RenderRecordList(Records)
    End If
End Sub
```

---

## 📱 Pillar 4: Platform Touch & Layout Mechanics

### 1. Scroll-Container Touch Interception Rule
When nesting touch-drag or sliding components (`B4XDaisyColorWheel`, `B4XDaisyRange`, `B4XDaisyDualRange`, `B4XDaisyCarousel`) inside a scroll container (`B4XDaisyPageScroll` or `ScrollView`), parent touch interception must be disallowed during active gestures:
```vb
#If B4A
Private Sub DisallowParentIntercept(Action As Int)
    If Action = 0 Or Action = 2 Then ' ACTION_DOWN or ACTION_MOVE
        Dim current As JavaObject = mBase
        Do While current.IsInitialized
            Dim parentView As JavaObject
            Try
                parentView = current.RunMethod("getParent", Null)
            Catch
                Exit
            End Try
            If parentView.IsInitialized = False Then Exit
            Try
                parentView.RunMethod("requestDisallowInterceptTouchEvent", Array(True))
            Catch
            End Try
            Try
                Dim parentClass As String = GetType(parentView)
                If parentClass.Contains("ViewRootImpl") Then Exit
            Catch
                Exit
            End Try
            current = parentView
        Loop
    End If
End Sub
#End If
```

### 2. Scroll AutoFit & Z-Index Layering
* `pageScroll.AutoFit` **must** be called at the conclusion of any dynamic layout generation in `RenderContent(W, H)`.
* Pinned top/bottom navigation (`B4XDaisyNavbar`, `B4XDaisyDock`) must have `.BringToFront` called after content mounting so touch events are never trapped behind content layers.

---

## ✅ Definition of Done (DoD) Pre-Ship Gate

Before declaring any B4XDaisy screen or component task complete, verify the following checklist:

- [ ] **Zero Invented APIs:** Every class, property, and method exists in [`component-manifest.md`](component-manifest.md).
- [ ] **Touch Target Floor:** All clickable elements clear the $48 \times 48\text{ dip}$ target threshold.
- [ ] **Contrast Compliance:** Text-to-background contrast verified $\ge 4.5:1$ ($\ge 3:1$ for large headings).
- [ ] **4-State UI Coverage:** Loading, Populated, Empty, and Error states explicitly coded.
- [ ] **Hick's Law Navigation:** Bottom docks and top bar actions contain $\le 5$ items.
- [ ] **Form Chunking:** Contiguous inputs partitioned into groups of 3–5 using `B4XDaisyFieldset`.
- [ ] **Touch Conflict Handled:** Nested gesture components invoke `DisallowParentIntercept`.
- [ ] **Scroll & Layering Safety:** `pageScroll.AutoFit` called at end of layout; `navbar.BringToFront` called.
- [ ] **Compilation Wire Gate:** `.b4a` file count (`NumberOfFiles`) matches `FileN=` and `FileGroupN=` entries; `NumberOfModules` matches `ModuleN=`.
