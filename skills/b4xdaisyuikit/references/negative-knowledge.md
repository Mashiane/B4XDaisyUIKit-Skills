# Negative Knowledge — What B4XDaisyUIKit Cannot Do

This file documents known limitations, incorrect API assumptions, and things that will cause compilation errors or runtime failures. Read before using any advanced feature.

---

## 1. Layout Prohibitions

### Do NOT use Grid or Flex as a page layout host
`B4XDaisyGrid`, `B4XDaisyFlexLayout`, and `B4XDaisyFlexItem` are classified as **Documented-only** in the component manifest. They have no verified demo pages. Do not use them as the primary layout container of any page.

```vb
' WRONG — will cause layout failures:
myGrid.Initialize(Me, "grid")
myGrid.AddToParent(Root, 0, 0, Root.Width, Root.Height)

' CORRECT — use B4XDaisyPageScroll:
pageScroll.Initialize(Me, "pageScroll")
pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)

```

`B4XDaisyFlexPanel` is the only flex-style component that is Demonstrated, and only inside the inline joined-control pattern (`B4XPageInput.bas`). Do not use it as a page wrapper.

### Do NOT size components with direct property assignment
```vb
' WRONG — will break the component's internal size engine:
myButton.Width = 200
myButton.Height = 44

' CORRECT — use AddToParent with explicit dimensions:
myButton.AddToParent(pnlHost, padding, y, 200dip, 44dip)

```

### Do NOT skip `pageScroll.Clear` at the start of `RenderPage`
Failing to clear before re-rendering will create duplicate views on every resize/rotate event, causing visual glitches and layout corruption.

### Do NOT call `AddToParent` twice without calling `pageScroll.Clear` first
After a component has been mounted with `AddToParent`, calling `AddToParent` again without clearing will add a duplicate view on top of the existing one.

### Do NOT add body content views directly to `Root`
All scrollable body content belongs on `pnlHost` (the `pageScroll.Panel`). Only pinned elements (bottom docks) go directly on `Root`.

---

## 2. B4XDaisyPocketBase Limitations

`B4XDaisyPocketBase` is Documented-only (no demo page). Additionally, even if used:

- **No offline/local sync**: PocketBase is REST-only. There is no SQLite mirror or local-first capability.
- **No real-time SSE**: Server-Sent Events (SSE) streaming is not implemented in this B4X wrapper. `SubscribeToCollection` does not exist.
- **No JWT refresh**: The wrapper does not auto-refresh expired JWT tokens. Sessions expire silently.
- **No file streaming**: Large file uploads are not streamed; they are encoded to Base64 in memory first. This will crash on files larger than ~5 MB on low-memory devices.
- **No transactions**: PocketBase's REST API has no multi-record transaction support.
- **No schema migration from code**: You cannot create or alter PocketBase collections from within the B4A app.

---

## 3a. Required-field validation — call Validate() on each component directly

The B4XPage demos validate a form on submit by calling `Validate()` on each
required component directly and branching on its boolean. Follow that
methodology. Evidence: `B4XPageRange.bas:492-504`, `B4XPageRating.bas:510-522`.

```vb
Private Sub btnLogin_Click(Tag As Object)
    Dim okEmail As Boolean = inputEmail.Validate
    Dim okPass  As Boolean = inputPassword.Validate
    If okEmail = False Or okPass = False Then
        pageScroll.AutoFit
        Return
    End If
    ' ... proceed
End Sub

```

`Validate()` sets the error UI (red border + error text + height shift) and
returns `True` when the field is valid or in the neutral/none state. Call it on
every required field so each one renders its own error, then branch on the
combined result. `B4XDaisyInput`, `B4XDaisyCheckbox`, `B4XDaisyToggle`,
`B4XDaisySelect`, `B4XDaisyRange`, and `B4XDaisyRating` all expose
`Public Sub Validate As Boolean`.

Do NOT use these two helpers for submit validation:

- `B4XDaisyVariants.ValidateRequiredControls(Parent As B4XView)` is **broken**.
  It calls `ValidateRequiredControlsRecursive`, which walks every descendant
  view and runs `xui.SubExists(v.Tag, "Validate", 0)` on each child's `Tag`.
  `B4XDaisyInput`'s `mBase` contains native `android.widget.TextView` children
  (floating label, above label, hint label). `xui.SubExists` throws
  `java.lang.RuntimeException: Type does not match (class android.widget.TextView)`
  when handed a native Java object that is not a B4A class instance, and B4A
  `And` is non-short-circuit so the `v.Tag <> Null` guard does not prevent the
  call. The exception is caught and logged, `allValid` stays `True`, and
  required-field enforcement silently no-ops.
- `B4XDaisyVariants.ValidateControls(List)` exists and does work (it calls
  `Validate()` on each list member, non-recursive), but the demos do not use it
  for submit validation. Prefer the direct per-component `Validate()` pattern
  above so the skill matches the demos and stays debuggable per-field.

---

## 3. SweetAlert Limitations

- `B4XDaisySweetAlert.ShowAsync` **must be called with `Wait For`** in a resumable context. Calling it without `Wait For` returns immediately and the result is never received.
- `B4XDaisySweetAlertIcon` is **Documented-only**. Do not reference it in generated UI code.
- SweetAlert dialogs are **modal and blocking** to the user but not to background B4X timers or async subs. Timers will continue to fire while a dialog is visible.

---

## 4. Component API Boundaries

### Non-existent methods — confirmed absent from manifest

The following methods were checked against the manifest and do NOT exist. Do not generate them:

```vb
' B4XDaisyAccordion — has NO GetItem method
accordion.GetItem("q1")                     ' DOES NOT EXIST — use AddItemBasic return value

' B4XDaisyCollapse — has NO SetContentText method
collapse.SetContentText("text")             ' DOES NOT EXIST — use getContentView then add a B4XDaisyText

' B4XDaisyNavbar — has NO IsReady property
If navbar.IsReady Then ...                  ' DOES NOT EXIST — IsInitialized is the B4X standard check

' B4XDaisySweetAlert — Initialize takes 3 params, NOT 2
swal.Initialize(Me, "swal")                 ' WRONG — missing Parent param
swal.Initialize(Me, Root, "swal")           ' CORRECT [M]

' B4XDaisyDock — no 3-param badge setter
dock.SetBadgeValue(0, "5", "error")        ' DOES NOT EXIST
dock.SetItemBadgeValue("home", "5")        ' CORRECT [M]
dock.SetItemBadgeColor("home", "error")    ' CORRECT [M]

' B4XDaisyStat — no direct property assignment style for configuration
mainStat.Orientation = "horizontal"        ' WRONG — use setter methods
mainStat.setOrientation("horizontal")      ' CORRECT [M]

' B4XDaisyStatItem — FigureType "icon" is not valid
s1.setFigureType("icon")                   ' WRONG — not in allowed values
s1.setFigureType("svg")                    ' CORRECT [M] — allowed: none|svg|image|radial

' B4XDaisyCanvasSpinner — Show takes a target view parameter
spinner.Show                               ' WRONG — missing param
spinner.Show(Root)                         ' CORRECT [M]: Show(Target As B4XView)

' B4XDaisyCheckbox / B4XDaisyToggle / B4XDaisyRadio — label is set with setText, NOT setLabel*
chk.setLabelRight("Remember me")           ' DOES NOT EXIST — no setLabelRight / setLabelLeft / setLabelAbove on these
tog.setLabelRight("Email notifications")  ' DOES NOT EXIST
chk.setText("Remember me")                ' CORRECT [M]
tog.setText("Email notifications")         ' CORRECT [M]
' setLabelAbove(Value) exists ONLY on B4XDaisyInput. Do NOT generalize it to Toggle/Checkbox/Radio.

```

### B4XDaisyChatBubble is Documented-only
Despite being documented in glossary files, `B4XDaisyChatBubble` has no verified demo. Use `B4XDaisyChat` with `B4XPageChat.bas` as the reference instead.

### B4XDaisyCardActions, B4XDaisyCardBody, B4XDaisyCardTitle are Documented-only
These sub-components of `B4XDaisyCard` are documented but have no direct standalone demo. Use `B4XDaisyCard` via `B4XPageCard.bas` and rely only on `GetContentPanel`, `GetActionsPanel`, and `GetTitlePanel` methods.

### B4XDaisyCollapseContent and B4XDaisyCollapseTitle are Documented-only
Do not instantiate `B4XDaisyCollapseContent` or `B4XDaisyCollapseTitle` directly. There is **no** `B4XDaisyCollapse.SetContentText` and **no** `B4XDaisyCollapse.SetContent` method — confirmed absent from the manifest. Add content by getting the raw content panel and mounting a child view (e.g. `B4XDaisyText`) onto it:

```vb
Dim pnlC As B4XView = collapse.getContentView   ' [M]
Dim txt As B4XDaisyText
txt.Initialize(Me, "txt")
txt.setText("...")
txt.AddToParent(pnlC, 8dip, 8dip, pnlC.Width - 16dip, 30dip)

```

---

## 5. Image and Asset Handling

- **SVG files must be in the `Files` folder** inside the B4A project. Reference them by filename only (e.g. `"home-solid.svg"`, not `/path/to/home-solid.svg`).
- **Bitmaps must be decoded before use**. Do not pass a file path string where a `B4XBitmap` is expected. Use `xui.LoadBitmap(File.DirAssets, "image.png")` first.
- **B4XDaisyImage** wraps a `B4XBitmap`, not a file path. Call `myImage.SetBitmap(bmp)` after loading.

---

## 6. Theme Limitations

- Only one active theme is supported at runtime. Theme switching mid-session requires a full page re-render.
- Custom CSS variables (beyond the 8 semantic tokens + base surfaces) are not guaranteed to resolve correctly if a non-standard theme is active. Always fall back to hex values in `ResolveBackgroundColorVariant(name, fallbackHex)`.
- There is no dark-mode auto-switch based on system preference. Dark mode must be toggled manually by the user via a `B4XDaisyVariants.SetTheme("dark")` call.

---

## 7. B4XPages Navigation Rules

- **Do not call `B4XPages.ShowPage` from inside `B4XPage_Created`** of the same page. Use `CallSubDelayed` or a button handler instead.
- **Do not call `B4XPages.Back` if the current page is the first (root) page** — this will crash the app. Check `B4XPages.GetManager.PagesCount > 1` before calling `Back`.
- **B4XPage_Resize fires immediately after B4XPage_Created** on first launch. Ensure all variables are initialized before `RenderPage` is called from either lifecycle event.

---

## 8. Resize / Orientation Change

- `pageScroll.Clear` removes all child views from `pnlHost`. After a call to `Clear`, the `IsReady` property of every mounted component returns `False`. You must call `AddToParent` again (not `SetLayoutAnimated`) for every component on the next `RenderPage` pass.
- Component instances declared in `Class_Globals` are persistent across `RenderPage` calls. Their `Initialize` call does not need to be repeated if you are only repositioning. However, if `pageScroll.Clear` is always called, it is safe (and standard practice in the demos) to call `Initialize` and `AddToParent` unconditionally on every `RenderPage`.

---

## 9. No Web Technologies

Do not emit:
- HTML tags (`<div>`, `<button>`, `<input>`, etc.)
- CSS class names (`class="btn btn-primary"`)
- Tailwind utilities (`text-lg`, `flex`, `grid`, etc.)
- JavaScript or TypeScript
- React, Vue, Angular, or any web framework code
- WebView-based implementations unless the user explicitly requests one

B4XDaisyUIKit is a **native Android framework**. All output must be valid B4X/B4A code.
