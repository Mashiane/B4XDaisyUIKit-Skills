# B4XDaisyUIKit Layout Patterns

Every code block here uses only methods confirmed in `component-manifest.md`. No property or method is included unless it appears in the manifest's public methods or designer properties sections for the named component.

---

## PT-01: Sequential Vertical Accumulator

The fundamental layout pattern. All body content mounts inside `pageScroll.Panel` by advancing a `y` cursor.

```vb
' In Class_Globals:
Private pageScroll As B4XDaisyPageScroll
Private pad As Int
Private gap As Int
Private maxW As Int
Private pnl As B4XView
Private y As Int

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear                         ' always first

    pad  = pageScroll.PagePadding            ' Int property (confirmed)
    gap  = pageScroll.YGap                   ' Int property (confirmed)
    maxW = pageScroll.UsableWidth            ' Int property (confirmed)
    pnl  = pageScroll.Panel                 ' B4XView property (confirmed)
    y    = pad

    ' Mount component A
    Dim compA As B4XDaisyText
    compA.Initialize(Me, "compA")
    compA.AddToParent(pnl, pad, y, maxW, 30dip)
    y = y + compA.GetComputedHeight + gap

    ' Mount component B
    Dim compB As B4XDaisyButton
    compB.Initialize(Me, "compB")
    compB.Text = "Action"
    compB.Variant = "primary"
    compB.AddToParent(pnl, pad, y, maxW, 44dip)
    y = y + compB.GetComputedHeight + gap

    pageScroll.AutoFit                       ' always last
End Sub

```

**Rules:**
- `pageScroll.Clear` is always first.
- `pageScroll.AutoFit` is always last.
- Use `pageScroll.Panel` to get the host view, not `Root` directly.
- Use `pageScroll.UsableWidth` for `maxW`.

---

## PT-02: Collapse Reflow with ShiftSiblingsBelow

When a `B4XDaisyCollapse` opens or closes, shift siblings below using `B4XDaisyVariants.ShiftSiblingsBelow`. This is confirmed in the Variants manifest.

```vb
' In Class_Globals:
Private myCollapse  As B4XDaisyCollapse
Private prevColH    As Int

' After AddToParent, record initial height:
prevColH = myCollapse.GetComputedHeight

' Collapse event handler:
Private Sub myCollapse_StateChanged(Open As Boolean)
    Dim currentH As Int = myCollapse.GetComputedHeight
    Dim delta As Int = currentH - prevColH
    If delta = 0 Then Return
    B4XDaisyVariants.ShiftSiblingsBelow(myCollapse.mBase, delta, 250)
    prevColH = currentH
    pageScroll.AutoFit
End Sub

```

Note: `myCollapse.mBase` is the underlying `B4XView` field. This is a public field confirmed by usage in the reference project.

---

## PT-03: Form Validation

Call `Validate()` on each required component directly and branch on its boolean — the B4XPage demo methodology (evidence: `B4XPageRange.bas:492-504`, `B4XPageRating.bas:510-522`). Do NOT use `B4XDaisyVariants.ValidateRequiredControls(Parent)`: it recurses into native `android.widget.TextView` children and silently no-ops. See [negative-knowledge.md](negative-knowledge.md) §3a.

```vb
Private Sub btnSubmit_Click(Tag As Object)
    Dim okName  As Boolean = inputName.Validate
    Dim okEmail As Boolean = inputEmail.Validate
    If okName = False Or okEmail = False Then
        pageScroll.AutoFit   ' re-fit after error height changes
        Return
    End If
    ' Proceed with submission
    SubmitForm
End Sub

```

Components that expose `Public Sub Validate As Boolean`:
Inputs, checkboxes, radios, toggles, selects, ranges, ratings, file inputs, and badge group selects that have `setRequired(True)` set.

---

## PT-04: Pinned Navbar + Bottom Dock

Navbar and dock are pinned to `Root` and never scroll. The `pageScroll` is inset
between them (`top = navH`, `height = H - navH - dockH`) so body content can never
slide under either bar. This mirrors `B4XPageNavScrollDock.bas` in the B4A demo.
Do NOT mount the navbar inside `pageScroll.Panel` (it would scroll away) and do
NOT extend `pnl.Height` by `dockH` to dodge the dock — inset the scroll area.

```vb
' In Class_Globals:
Private navbar   As B4XDaisyNavbar
Private dock     As B4XDaisyDock
Private pageScroll As B4XDaisyPageScroll
Private pnlHost  As B4XView
Private NAVBAR_H As Int = 56dip
Private DOCK_H   As Int = 64dip
Private pad As Int
Private gap As Int
Private maxW As Int
Private y As Int

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews

    ' 1. Inset scroll area between the two bars, sent to back so bars float on top
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, NAVBAR_H, Root.Width, Root.Height - NAVBAR_H - DOCK_H)
    pageScroll.SendToBack
    pnlHost = pageScroll.Panel

    ' 2. Navbar pinned to top of Root
    navbar.Initialize(Me, "navbar")
    navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_H)
    navbar.BringToFront
    navbar.Title = "My App"
    navbar.Variant = "primary"

    ' 3. Dock pinned to bottom of Root
    dock.Initialize(Me, "dock")
    dock.Size = "md"
    dock.ActiveIndex = 0        ' 0-based index — highlight this page's own tab
    dock.AddToParent(Root, 0, Root.Height - DOCK_H, Root.Width, DOCK_H)
    dock.AddItem("home",     "Home",     "home-solid.svg")
    dock.AddItem("settings", "Settings", "cog-solid.svg")

    RenderBody
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If navbar.IsInitialized Then navbar.SetLayoutAnimated(0, 0, 0, Width, NAVBAR_H)
    If dock.IsInitialized Then dock.View.SetLayoutAnimated(0, 0, Height - DOCK_H, Width, DOCK_H)
    If pageScroll.IsInitialized Then
        pageScroll.Base_Resize(Width, Height - NAVBAR_H - DOCK_H)
        RenderBody
    End If
End Sub

Private Sub RenderBody
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    y    = pad

    ' ... body content here using y-cursor (navbar/dock are NOT added here) ...

    pageScroll.AutoFit
End Sub

Private Sub dock_ItemClick(ItemId As String)
    Select Case ItemId
        Case "settings"
            B4XPages.MainPage.ShowPageWithLoader("settings")
    End Select
End Sub

```

Use `IsInitialized` (the B4X standard) to guard components — these components
have no `IsReady` property.

**Dock item badge update:**
```vb
dock.SetItemBadgeValue("home", "3")        ' confirmed: SetItemBadgeValue(ItemId, Value)
dock.SetItemBadgeColor("home", "error")    ' confirmed: SetItemBadgeColor(ItemId, VariantName)

```

---

## PT-05: SweetAlert Async Dialog

`SweetAlert.Initialize` takes 3 parameters: `(Callback, Parent As B4XView, EventName)`.
`ShowAsync` returns a `ResumableSub`. The result event name is `Result`.

```vb
' In Class_Globals:
Private swal As B4XDaisySweetAlert

' Initialize once (e.g. in B4XPage_Created):
swal.Initialize(Me, Root, "swal")

' Show a confirm dialog:
Private Sub ShowDeleteConfirmation
    swal.setTitle("Delete Record?")
    swal.setText("This cannot be undone.")
    swal.setIcon("warning")
    swal.setShowConfirmButton(True)
    swal.setConfirmButtonText("Delete")
    swal.setShowDenyButton(True)
    swal.setDenyButtonText("Cancel")

    Wait For (swal.ShowAsync) swal_Result (result As B4XDaisySweetAlertResult)
    If result.IsConfirmed Then
        DeleteRecord
    End If
End Sub

```

---

## PT-06: Section Titles and Dividers

Both methods are confirmed on `B4XDaisyPageScroll` and return an updated Y position.

```vb
' Add a section title (returns new y after the title)
y = pageScroll.AddSectionTitle("Section Title", y, False) + gap

' Add a horizontal divider line (returns new y after the divider)
y = pageScroll.AddDivider(y) + gap

```

---

## PT-07: Accordion (no GetItem)

`B4XDaisyAccordion` has NO `GetItem` method. Use `AddItemBasic` which returns the collapse directly. Store references in a Map if needed.

```vb
' In Class_Globals:
Private accordion As B4XDaisyAccordion

' Setup:
accordion.Initialize(Me, "accordion")
accordion.setOpenOnlyOne(True)
accordion.setIcon("arrow")
accordion.AddToParent(pnl, pad, y, maxW, 10dip)   ' height is auto-computed

' Note: Add content by retrieving c1.getContentView and adding child B4XViews
' Do NOT call accordion.GetItem or collapse.SetContentText — they do not exist

accordion.Refresh
y = y + accordion.GetComputedHeight + gap

```

---

## PT-08: CanvasSpinner as Page Loader

`B4XDaisyCanvasSpinner.Show(Target As B4XView)` takes a target view (the view it overlays).
`Hide` is confirmed.

```vb
' In Class_Globals:
Private spinner As B4XDaisyCanvasSpinner

' Initialize once:
spinner.Initialize(Me, "spinner")
spinner.AddToParent(Root, 0, 0, Root.Width, Root.Height)
spinner.setVisible(False)

' Show before async work:
spinner.Show(Root)

' Hide after work:
spinner.Hide

```

---

## PT-09: ScrollToView (scroll to a specific component)

```vb
' Scroll the page to bring a component into view
pageScroll.ScrollToView(myInput.View, True)   ' True = animated

```

Confirmed: `ScrollToView(View As B4XView, Animated As Boolean)` and `View As B4XView` on Input.

---

## PT-10: Setting Dock Active State

```vb
' Set active tab by 1-based index (confirmed: setActiveIndex(Value As Int))
dock.setActiveIndex(2)

' Or enable/disable an item by its ID (confirmed: SetItemEnabled(ItemId, Value))
dock.SetItemEnabled("admin", False)

```
