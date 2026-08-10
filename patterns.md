# B4XDaisyUIKit Code Design Patterns (v2)
## Core Layout Assembly Algorithms, Dynamic Reflow loops, and Traceable Pattern Matrix

This document establishes the definitive collection of verified, evidence-backed codebase design patterns for assembling **B4XPages** applications using **B4XDaisyUIKit**. 

To protect against design hallucinations, every pattern and compositional workflow is formally indexed with its audited **Evidence ID** traced directly back to the B4X source corpus.

---

## I. Master Pattern Matrix

| Pattern ID | Pattern Name | Key Components | Target Examples | Page Context | Primary Workflow / Use Case | Confidence |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **`PT_COMP_CARD`** | Card Composition | `B4XDaisyCard`, `Body`, `Title`, `Actions`, `Badge`, `Button` | `SetCardContent`, `AddTitleBadges` | `B4XPageCard.bas` | Composes nested content grids within styled cards (`EV_COMP_STK`, `PATTERN-COMP-001`) [721, 858, 864]. | **HIGH** |
| **`PT_PAGE_SCROLL`** | Scrollable Section Page | `B4XDaisyPageScroll`, `B4XDaisyText` (Title), `B4XDaisyDivider` | `AddSectionTitle`, `AddDivider` | `B4XPageDashboard.bas`, `B4XPageScrollDemo.bas` | Default layout viewport host clearing and resizing pages (`EV_SCROLL_HOST`, `PATTERN-COMP-002`) [14, 858]. | **HIGH** |
| **`PT_VALIDATION_FLOW`** | Form Entry with Toast | `B4XDaisyInput`, `B4XDaisyButton`, `B4XMainPage` Toast helpers | `inp_EnterPressed`, `ShowToast` | `B4XPageInput.bas` | Validates inputs recursively, showing red borders and height shifts (`PATTERN-COMP-003`) [15, 858]. | **HIGH** |
| **`PT_JOINED_CONTROL`** | Joined Form Control | `B4XDaisyFlexPanel`, `B4XDaisyInput`, `B4XDaisyButton` | `AddRowFlex`, `LayoutInputs` | `B4XPageInput.bas` | Places submit action buttons inline on the right of input fields (`PATTERN-COMP-004`) [864]. | **HIGH** |
| **`PT_ACCORDION_FLOW`** | Accordion Disclosure | `B4XDaisyCollapse`, `CollapseTitle`, `CollapseContent`, `Accordion` | `AddItemBasic`, `SetItemActive` | `B4XPageAccordion.bas` | Arranges collapses in a group, restricting open panels to a single index (`PATTERN-COMP-005`) [12, 858]. | **HIGH** |
| **`PT_NAV_DOCK_PAGE`** | Navigation-Dock Split | `B4XDaisyNavbar`, `B4XDaisyDock`, `B4XDaisyPageScroll` | `LayoutNavbar`, `LayoutDock` | `B4XPageNavScrollDock.bas` | Pins header navbar and bottom nav dock, letting center body elements scroll safely [863]. | **HIGH** |

---

## II. Code Assembly Specifications & Evidence IDs

### 1. The Sequential Vertical Accumulator Pattern (`EV_LAYOUT_ACCUMULATOR`)
The fundamental layout pattern for all mobile screens in B4XDaisyUIKit. Since complex Grid and Flex panels are excluded, all pages are assembled sequentially inside `pageScroll` by tracking a vertical cursor `y` inside `RenderPage(Width, Height)` [14]:

```b4x
' y accumulation formula:
y = y + Component.GetComputedHeight + gap
```

#### Ground-Truth Assembly Sequence:
1.  **Host Panel Clear**: Call `pageScroll.Clear` first inside `RenderPage` to purge all previous views, preventing duplicate overlapping view overlays when the screen rotates [14].
2.  **Width Fluidity**: Sizing is achieved by querying `pageScroll.UsableWidth` as the maximum width for block elements, keeping components responsive across device forms [14].
3.  **Automatic fitting**: Once all views are positioned, the scroll host is updated using `pageScroll.AutoFit` to calculate content boundaries and stretch the container height perfectly [14].

### 2. Sibling-Shifting Expand/Collapse Reflow (`EV_REFLOW_SHIFT`)
Collapsible panels (`B4XDaisyCollapse`) grow and shrink at runtime. To prevent overlaps, the page must capture state changes, calculate height deltas, and animate coordinates programmatically [14]:

```b4x
' Event raised by B4XDaisyCollapse on toggle click
Sub collapseItem_StateChanged(Open As Boolean)
    ' Calculate the change in height (Delta)
    Dim currentH As Int = collapseItem.GetComputedHeight
    Dim delta As Int = currentH - previousHeight
    
    If delta = 0 Then Return
    
    ' Translate sibling views located below this view programmatically
    B4XDaisyVariants.ShiftSiblingsBelow(collapseItem.mBase, delta, 250) ' Animates for 250ms
    
    ' Update recorded state and re-calculate scrollable bounds
    previousHeight = currentH
    pageScroll.AutoFit
End Sub
```

### 3. Recursive Form Validation Pipeline (`EV_COMP_BGS`)
The submit routine crawls panels to locate failing inputs, triggering error classes and height shifts dynamically [15]:

```b4x
Private Sub btnSubmit_Click(Tag As Object)
    ' Execute recursive validation over all host panel child views (PT_VALIDATION_FLOW)
    Dim isFormClean As Boolean = B4XDaisyVariants.ValidateRequiredControls(pnlHost)
    
    If isFormClean = False Then
        ' Required fields show error text, grow in height, and trigger dynamic auto-height shifts
        pageScroll.AutoFit
        B4XPages.MainPage.ShowToastError(\"Please resolve field errors.\", True)
        Return
    End If
End Sub
```

### 4. Interactive guided Tour Walkthroughs (`PT_TOUR_GUIDE`)
The onboarding tour guide overlays target viewports and routes connecting arrows using standard spotlight shapes [344, 345]:

```b4x
Public Sub TriggerOnboardingTutorial
    Dim hintTour As B4XDaisyEnjoyHint
    hintTour.Initialize(Me, \"hintTour\", Root)
    
    ' Setup spotlight circular cut-out over the Navbar avatar logo
    hintTour.AddStep(navbar.LogoAvatar.getView, \"Click here to edit your profile details.\", \"circle\", 8dip, 0, \"bottom\")
    hintTour.Start
End Sub
```
