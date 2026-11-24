---
name: negative-knowledge
description: Anti-hallucination rules for B4XDaisyUIKit. Documented anti-patterns, common agent mistakes, and the corrected way. Cite NEG-* IDs in your reasoning trace.
---

# B4XDaisyUIKit — Negative Knowledge

Documented anti-patterns and common agent mistakes when building native Android applications with B4XDaisyUIKit. Each item outlines **the wrong thing** agents tend to produce, **the architectural reality** why it fails, and **the verified correct pattern**. Cite `NEG-*` IDs in reasoning traces and gate reviews.

Grounded in: 108 verified native B4XDaisy custom view classes + 104 demo source files in `B4A/` + audit of common LLM failure modes.

---

## 1. Platform & Technology Hallucinations (Web vs. Native B4A)

### NEG-001 — Emitting Raw HTML Tags
**Wrong**:
```vb
Dim sHtml As String = "<button class=""btn btn-primary"">Submit</button>"
Root.AddView(sHtml, 0, 0, 100%x, 50dip)
```
**Reality**: B4XDaisyUIKit is a 100% native Android library compiled by `B4ABuilder` into Java/Dalvik/ART bytecodes. Emitting raw HTML tags (`<div>`, `<button>`, `<span>`, `<input>`, `<form>`, `<p>`, `<h1-h6>`) causes compilation failures or runtime type errors.
**Correct**: Instantiate native custom views (`B4XDaisyButton`, `B4XDaisyInput`, etc.) and mount them via `.AddToParent(...)`.

---

### NEG-002 — Emitting CSS Classes or Inline CSS Attributes
**Wrong**:
```vb
btnSubmit.Classes = "btn btn-primary"
btnSubmit.Styles = "background-color: blue; padding: 16px;"
```
**Reality**: Native Android views do not have a DOM, CSS engine, or classList parser. `Classes` and `Styles` properties do not exist on B4XDaisyUIKit components.
**Correct**: Use dedicated semantic properties and methods exposed on the component:
```vb
btnSubmit.setColor("primary")
btnSubmit.setStyle("soft")
```

---

### NEG-003 — Emitting Tailwind CSS Utility Tokens
**Wrong**:
```vb
myCard.Classes = "flex flex-col p-4 w-full shadow-lg"
myCard.Width = "full"
```
**Reality**: B4XDaisyUIKit takes aesthetic and semantic inspiration from Tailwind and DaisyUI, but it does NOT execute Tailwind CSS. String tokens like `flex`, `grid`, `w-full`, `p-4`, `m-2`, `shadow-lg` are ignored or cause compilation crashes.
**Correct**: Provide exact numeric dimensions with `dip` units in `.AddToParent(Parent, Left, Top, Width, Height)`.

---

### NEG-004 — Wrapping Screens in a WebView
**Wrong**: Generating an Android `WebView` to load web DaisyUI HTML instead of creating native views.
**Reality**: B4XDaisyUIKit was built specifically to eliminate WebView overhead, delivering true 60fps native Android view hierarchies, native input handling, and hardware acceleration.
**Correct**: Build native screens using the 108 verified `B4XDaisy*` custom views.

---

### NEG-005 — Raw Integer Pixels Instead of Device-Independent Pixels (`dip`)
**Wrong**:
```vb
myButton.AddToParent(pnlHost, 16, y, 300, 48)
```
**Reality**: Android devices range from low-DPI (`mdpi` 160dpi) to ultra-high-DPI (`xxxhdpi` 640dpi). A raw integer `48` represents 48 physical pixels—unreadable and untappable on modern 4K phones.
**Correct**: Always suffix dimension literals with `dip`:
```vb
myButton.AddToParent(pnlHost, 16dip, y, usableWidth, 48dip)
```

---

## 2. Sizing, Layout & Coordinate Anti-Patterns

### NEG-006 — Direct Property Assignment for Component Dimensions
**Wrong**:
```vb
myButton.Width = 200dip
myButton.Height = 44dip
```
**Reality**: Mutating `.Width` or `.Height` directly bypasses the custom view's internal sizing engine (`mBase`, inner canvas, label measurement, icon placement).
**Correct**: Supply explicit dimensions via `.AddToParent(Parent, Left, Top, Width, Height)`.

---

### NEG-007 — Post-Mount Sizing via Raw `SetLayout` / `SetLayoutAnimated`
**Wrong**: Calling `comp.mBase.SetLayout` or raw Android view resizing after `AddToParent`.
**Reality**: Directly resizing `mBase` without triggering custom view layout synchronization corrupts internal SVG icon alignment and text wrapping.
**Correct**: Set the proper layout bounds at initial `AddToParent`, or call the component's exposed `SetLayout(...)` method if supported.

---

### NEG-008 — Banned Page Layout Containers (`B4XDaisyGrid`, `B4XDaisyFlexLayout`, `B4XDaisyFlexItem`)
**Wrong**:
```vb
myGrid.Initialize(Me, "grid")
myGrid.AddToParent(Root, 0, 0, Root.Width, Root.Height)
```
**Reality**: `B4XDaisyGrid`, `B4XDaisyFlexLayout`, and `B4XDaisyFlexItem` are classified as **Documented-only** with zero verified demo implementations. They fail to compute proper scroll container height.
**Correct**: Always use `B4XDaisyPageScroll` as the primary scrollable page host container.

---

### NEG-009 — Misusing `B4XDaisyFlexPanel` as a Screen Wrapper
**Wrong**: Wrapping entire forms or page screens in `B4XDaisyFlexPanel`.
**Reality**: `B4XDaisyFlexPanel` is demonstrated ONLY for inline joined controls (e.g. joined search input + button in `B4XPageInput.bas`). It is not designed to host whole screens.
**Correct**: Use `B4XDaisyPageScroll` for screen structure; restrict `B4XDaisyFlexPanel` to inline horizontal button/input groups.

---

### NEG-010 — Omitting the Vertical Accumulator Pattern (`y = y + h + gap`)
**Wrong**: Hardcoding static Y positions:
```vb
btn1.AddToParent(pnlHost, pad, 50dip, maxW, 48dip)
btn2.AddToParent(pnlHost, pad, 110dip, maxW, 48dip)
btn3.AddToParent(pnlHost, pad, 170dip, maxW, 48dip)
```
**Reality**: Static coordinates collapse when dynamic text wraps, localized strings expand, or font scaling changes, causing views to overlap or clip.
**Correct**: Always maintain an accumulator variable `y`:
```vb
btn1.AddToParent(pnlHost, pad, y, maxW, 48dip)
y = y + 48dip + gap
btn2.AddToParent(pnlHost, pad, y, maxW, 48dip)
y = y + 48dip + gap
```

---

### NEG-011 — Omitting Mandatory `pageScroll.AutoFit`
**Wrong**: Exiting `RenderPage` without calling `pageScroll.AutoFit`.
**Reality**: `B4XDaisyPageScroll` calculates its inner scrollable panel height dynamically. Without `.AutoFit`, the inner panel remains at its initial height, cutting off content below the viewport fold.
**Correct**: The final statement of any scrollable page rendering subroutine MUST be:
```vb
pageScroll.AutoFit
```

---

### NEG-012 — Adding Scrollable Body Content Directly to `Root`
**Wrong**:
```vb
myCard.AddToParent(Root, 16dip, y, usableWidth, 200dip)
```
**Reality**: Views added to `Root` are anchored to the physical window and do not respond to scrolling gestures in `pageScroll`.
**Correct**: Mount all scrollable body content onto `pageScroll.Panel` (`pnlHost`). Reserve `Root` exclusively for `pageScroll` itself and pinned bars (`B4XDaisyDock`).

---

### NEG-013 — Mounting Components with `Parent.AddView` Instead of `.AddToParent`
**Wrong**:
```vb
pnlHost.AddView(comp, left, top, width, height)
```
**Reality**: B4XDaisy components are custom view class wrappers (`Object`), not native Android `android.view.View` objects. Passing a class instance to `AddView` throws `java.lang.ClassCastException`.
**Correct**: Call the component's own mount method:
```vb
comp.AddToParent(pnlHost, left, top, width, height)
```

---

## 3. Lifecycle, Refresh & B4XPages Anti-Patterns

### NEG-014 — Skipping `pageScroll.Clear` on Page Re-render
**Wrong**: Re-mounting views on screen rotation or resize without clearing.
**Reality**: Previous views remain attached to `pnlHost`; re-adding views stacks duplicates on top of existing views, causing visual ghosting, broken hit-testing, and memory leaks.
**Correct**: Always clear the scroll container at the start of `RenderContent`:
```vb
Private Sub RenderPage(W As Int, H As Int)
    pageScroll.Clear
    ' ... re-initialize and mount components ...
    pageScroll.AutoFit
End Sub
```

---

### NEG-015 — Calling `AddToParent` Twice on One Instance Without Clearing
**Wrong**: Calling `comp.AddToParent` a second time on an already-mounted instance without `pageScroll.Clear`.
**Reality**: Android throws `java.lang.IllegalStateException: The specified child already has a parent. You must call removeView() on the child's parent first.`
**Correct**: Re-initialize the component or invoke `pageScroll.Clear` before re-adding.

---

### NEG-016 — Calling `B4XPages.ShowPage` Synchronously Inside `B4XPage_Created`
**Wrong**: Calling `B4XPages.ShowPage("details")` inside `B4XPage_Created` of the same page.
**Reality**: B4XPages is in the middle of executing its creation lifecycle stack; synchronous navigation during creation corrupts the page manager stack.
**Correct**: Use delayed invocation:
```vb
CallSubDelayed2(B4XPages.GetManager, "ShowPage", "details")
```

---

### NEG-017 — Calling `B4XPages.Back` on the Root Page
**Wrong**: Calling `B4XPages.Back` unconditionally from a top-level page.
**Reality**: When `B4XPages.GetManager.GetPageCount = 1`, calling `Back` crashes the page manager with an index out of bounds exception.
**Correct**:
```vb
If B4XPages.GetManager.GetPageCount > 1 Then
    B4XPages.Back
End If
```

---

### NEG-018 — Navigating Auth or Logout Without Clearing History Stack
**Wrong**: Calling `B4XPages.ShowPage("home")` after login, or `B4XPages.ShowPage("login")` after logout.
**Reality**: The hardware Back button returns the user back to the Login screen or previously authenticated session.
**Correct**: Always clear the navigation history:
```vb
B4XPages.ShowPageAndRemovePreviousPages("home")
```

---

### NEG-019 — Missing `#IncludeTitle: False` When Using `B4XDaisyNavbar`
**Wrong**: Mounting `B4XDaisyNavbar` without disabling the native Android ActionBar.
**Reality**: The platform displays the native grey Android title bar directly above `B4XDaisyNavbar`, wasting vertical screen space with double headers.
**Correct**: Add `#IncludeTitle: False` and `#SupportedOrientations: portrait` to Project Attributes in `Main.bas`.

---

### NEG-020 — Unhandled Hardware Back-Key on Unsaved Forms
**Wrong**: Allowing the user to press hardware Back and lose uncommitted form entries.
**Reality**: Android destroys or navigates away from the page immediately with total data loss.
**Correct**: Implement `B4XPage_CloseRequest`:
```vb
Sub B4XPage_CloseRequest As ResumableSub
    Wait For (swal.ShowConfirmAsync("Discard Changes?", "You have unsaved edits.")) Complete (bConfirmed As Boolean)
    Return bConfirmed
End Sub
```

---

## 4. Interaction, Gestures & Ergonomics Anti-Patterns

### NEG-021 — Missing `DisallowParentIntercept` on Gesture Components
**Wrong**: Placing `B4XDaisyColorWheel`, `B4XDaisyRange`, `B4XDaisyDualRange`, or `B4XDaisyCarousel` in a `pageScroll` without touch interception handling.
**Reality**: When the user drags horizontally or circles the wheel, Android's parent `ScrollView` intercepts the touch motion, aborting the gesture mid-drag.
**Correct**: Invoke `DisallowParentIntercept(Action)` on `ACTION_DOWN` (0) and `ACTION_MOVE` (2) in the touch handler:
```vb
#If B4A
Private Sub DisallowParentIntercept(Action As Int)
    If Action = 0 Or Action = 2 Then
        Dim current As JavaObject = mBase
        Do While current.IsInitialized
            Dim parentView As JavaObject
            Try : parentView = current.RunMethod("getParent", Null) : Catch : Exit : End Try
            If parentView.IsInitialized = False Then Exit
            Try : parentView.RunMethod("requestDisallowInterceptTouchEvent", Array(True)) : Catch : End Try
            Try
                If GetType(parentView).Contains("ViewRootImpl") Then Exit
            Catch : Exit : End Try
            current = parentView
        Loop
    End If
End Sub
#End If
```

---

### NEG-022 — Calling `navbar.getView.BringToFront` Instead of `navbar.BringToFront`
**Wrong**:
```vb
navbar.getView.BringToFront
```
**Reality**: `navbar.getView` reaches the internal base panel, bypassing the component wrapper's z-index synchronization. Scrolled body content floats over the navbar.
**Correct**: Call `navbar.BringToFront` directly (`RULE-INTERACT-001`).

---

### NEG-023 — Sub-48dp Touch Targets (Fitts's Law Violation)
**Wrong**: Creating touch buttons, tabs, or chips smaller than `48dip` (`44dip` absolute floor).
**Reality**: High miss-tap rates on mobile screens; fails WCAG 2.5.5 Target Size guidelines.
**Correct**: Ensure all clickable controls have $\ge 48\text{dip}$ touch boundaries; wrap compact icons in `B4XDaisyIconButton` with internal hit-test padding.

---

### NEG-024 — Exceeding 5 Navigation Items in Top or Bottom Bars (Hick's Law)
**Wrong**: Adding 6 to 8 action items in `B4XDaisyDock` or `B4XDaisyNavbar`.
**Reality**: Severe cognitive friction, label truncation, and accidental taps on mobile touchscreens.
**Correct**: Cap dock tabs and top navbar actions at $\le 5$ items. Move auxiliary destinations into `B4XDaisyDrawer`.

---

### NEG-025 — Multiple Primary CTAs on One Viewport
**Wrong**: Placing multiple buttons with `.setColor("primary")` on the same screen.
**Reality**: Destroys visual hierarchy; users cannot discern the primary conversion goal.
**Correct**: Exactly one primary CTA button (`.setColor("primary")`) per viewport. Secondary actions use `secondary`, `neutral`, `soft`, or `ghost`.

---

### NEG-026 — Immediate Destructive Actions Without Confirmation
**Wrong**: Deleting records or clearing accounts directly on a single button tap.
**Reality**: Accidental touch contacts lead to immediate, irreversible data loss.
**Correct**: Always gate destructive actions with `swal.ShowConfirmAsync` + `Wait For`.

---

## 5. Form Validation, Input & Sub-View Anti-Patterns

### NEG-027 — Using Broken `B4XDaisyVariants.ValidateRequiredControls`
**Wrong**:
```vb
Dim bValid As Boolean = B4XDaisyVariants.ValidateRequiredControls(Root)
```
**Reality**: `ValidateRequiredControls` walks the entire view tree recursively and calls `xui.SubExists(v.Tag, "Validate", 0)`. `B4XDaisyInput` contains internal native `android.widget.TextView` children without tags. Because B4A `And` is non-short-circuit, it throws `java.lang.RuntimeException: Type does not match (class android.widget.TextView)` and required-field validation silently fails.
**Correct**: Call `.Validate` directly on each required field instance:
```vb
Dim okEmail As Boolean = inputEmail.Validate
Dim okPass  As Boolean = inputPassword.Validate
If okEmail = False Or okPass = False Then
    pageScroll.AutoFit
    Return
End If
```

---

### NEG-028 — Calling `setLabelRight` / `setLabelLeft` on Checkbox, Toggle, or Radio
**Wrong**:
```vb
chkRemember.setLabelRight("Remember me")
togActive.setLabelLeft("Active Status")
```
**Reality**: `setLabelRight`, `setLabelLeft`, and `setLabelAbove` do NOT exist on Checkbox, Toggle, or Radio. (`setLabelAbove` exists ONLY on `B4XDaisyInput`).
**Correct**: Use `.setText("...")`:
```vb
chkRemember.setText("Remember me")
togActive.setText("Active Status")
```

---

### NEG-029 — Direct Instantiation of Documented-Only Card Sub-Components
**Wrong**: Declaring and initializing `B4XDaisyCardActions`, `B4XDaisyCardBody`, or `B4XDaisyCardTitle`.
**Reality**: These sub-components are internal structures. Direct instantiation creates unattached orphan views.
**Correct**: Instantiate `B4XDaisyCard` and retrieve child layout panels via:
```vb
Dim pnlContent As B4XView = myCard.GetContentPanel
Dim pnlActions As B4XView = myCard.GetActionsPanel
Dim pnlTitle   As B4XView = myCard.GetTitlePanel
```

---

### NEG-030 — Calling `SetContentText` on `B4XDaisyCollapse`
**Wrong**:
```vb
collapse.SetContentText("This is the expanded text content.")
```
**Reality**: `SetContentText` does not exist on `B4XDaisyCollapse`.
**Correct**: Retrieve the content view and mount child controls on it:
```vb
Dim pnlC As B4XView = collapse.getContentView
Dim txt As B4XDaisyText
txt.Initialize(Me, "txt")
txt.setText("This is the expanded text content.")
txt.AddToParent(pnlC, 8dip, 8dip, pnlC.Width - 16dip, 40dip)
```

---

### NEG-031 — Missing 3-Argument Initialization on `B4XDaisySweetAlert`
**Wrong**:
```vb
swal.Initialize(Me, "swal")
```
**Reality**: Compilation error: missing parameter. `B4XDaisySweetAlert` requires the parent root view.
**Correct**:
```vb
swal.Initialize(Me, Root, "swal")
```

---

### NEG-032 — Calling `swal.ShowAsync` Without `Wait For`
**Wrong**:
```vb
swal.ShowAsync("Title", "Message", "success")
' Code proceeds immediately before user dismisses dialog!
```
**Reality**: The method executes asynchronously. Without `Wait For`, execution continues immediately, bypassing user confirmation.
**Correct**:
```vb
Wait For (swal.ShowAsync("Title", "Message", "success")) Complete (oResult As Object)
```

---

## 6. Component-Specific API Hallucinations

### NEG-033 — Calling `accordion.GetItem("q1")`
**Wrong**:
```vb
Dim item As B4XView = accordion.GetItem("q1")
```
**Reality**: `B4XDaisyAccordion` does not expose a `GetItem` method.
**Correct**: Retain references to the panels passed into `AddItem`, or capture the return value of `AddItemBasic`.

---

### NEG-034 — Setting `Orientation` on `B4XDaisyStat` via Property Assignment
**Wrong**:
```vb
mainStat.Orientation = "horizontal"
```
**Reality**: Property assignment fails compilation.
**Correct**: Call the setter method:
```vb
mainStat.setOrientation("horizontal")
```

---

### NEG-035 — Setting `FigureType = "icon"` on `B4XDaisyStatItem`
**Wrong**:
```vb
statItem.setFigureType("icon")
```
**Reality**: `"icon"` is an invalid token. Allowed tokens are strictly: `none`, `svg`, `image`, `radial`.
**Correct**:
```vb
statItem.setFigureType("svg")
```

---

### NEG-036 — Calling `spinner.Show` Without Target View Parameter
**Wrong**:
```vb
spinner.Show
```
**Reality**: Compilation error: parameter count mismatch.
**Correct**:
```vb
spinner.Show(Root)
```

---

### NEG-037 — Calling `dock.SetBadgeValue` With 3 Parameters
**Wrong**:
```vb
dock.SetBadgeValue(0, "5", "error")
```
**Reality**: Does not exist on `B4XDaisyDock`.
**Correct**:
```vb
dock.SetItemBadgeValue("home", "5")
dock.SetItemBadgeColor("home", "error")
```

---

### NEG-038 — Using Documented-Only `B4XDaisyChatBubble`
**Wrong**: Attempting to construct messaging interfaces using `B4XDaisyChatBubble`.
**Reality**: Classified as Documented-only without verified demo.
**Correct**: Use `B4XDaisyChat` with verified patterns from `B4XPageChat.bas`.

---

## 7. Asset, Graphic & Resource Anti-Patterns

### NEG-039 — Passing Relative or Absolute Paths for SVG Icons
**Wrong**:
```vb
comp.setIcon("./assets/icons/home.svg")
comp.setIcon("C:\path\to\home.svg")
```
**Reality**: `B4XDaisyUIKit` reads SVG icon assets directly from Android assets (`File.DirAssets`). Full or relative directory paths cause resource not found exceptions.
**Correct**: Provide the bare asset filename only:
```vb
comp.setIcon("home-solid.svg")
```

---

### NEG-040 — Passing String Filenames Where `B4XBitmap` is Expected
**Wrong**:
```vb
myImage.SetBitmap("avatar.png")
```
**Reality**: Compilation error: type mismatch (`String` cannot be converted to `B4XBitmap`).
**Correct**: Decode the bitmap first:
```vb
Dim bmp As B4XBitmap = xui.LoadBitmap(File.DirAssets, "avatar.png")
myImage.SetBitmap(bmp)
```

---

### NEG-041 — Declaring Bundled `.b4xlib` Assets in `.b4a` Project File
**Wrong**: Adding default DaisyUI SVG icons as `File1=...`, `File2=...` in `<AppName>.b4a`.
**Reality**: `B4XDaisyUIKit.b4xlib` packages all standard SVG icons and fonts internally. Re-declaring them causes duplicate asset packaging conflicts during build.
**Correct**: Reserve `FileN=` entries exclusively for custom project assets placed in `Files/`.

---

### NEG-042 — Missing `FileGroupN=Default Group` for Custom Assets
**Wrong**: Adding `File1=logo.png` without a corresponding `FileGroup1=Default Group`.
**Reality**: `B4ABuilder` crashes with `NullPointerException` or `ResourcesNotFoundException`.
**Correct**: Every custom file declared must have its group specified:
```text
File1=logo.png
FileGroup1=Default Group
```

---

## 8. Code Standards, Scope & Error Handling Anti-Patterns

### NEG-043 — Swallowing Exceptions in Empty Catch Blocks
**Wrong**:
```vb
Try
    ' ... risky operation ...
Catch
End Try
```
**Reality**: Silently masks catastrophic failures (out of memory, null pointers, missing views), preventing diagnosis.
**Correct**: Always log runtime exceptions with the canonical gated prefix:
```vb
Try
    ' ... operation ...
Catch
    If B4XDaisyApp.DebugLogs Then Log("B4XDaisy<Module>.<Sub>: " & LastException.Message)
End Try
```

---

### NEG-044 — Variable Shadowing & Non-Hungarian Parameter Naming
**Wrong**:
```vb
Sub setText(Text As String)
Sub setItem(View As B4XView)
```
**Reality**: Compiler errors: `Variable name cannot be the same as a sub name` or `Parameter name cannot hide global variable name`.
**Correct**: Use strict Hungarian type prefixes:
```vb
Sub setText(sText As String)
Sub setItem(vView As B4XView)
```

---

### NEG-045 — Defining Types Outside `Sub Class_Globals`
**Wrong**: Declaring custom `Type` definitions above or outside `Sub Class_Globals`.
**Reality**: B4X compiler syntax error.
**Correct**: Define all custom types strictly inside `Sub Class_Globals`:
```vb
Sub Class_Globals
    Type TagPoint(X As Float, Y As Float)
    Private Root As B4XView
    ' ...
End Sub
```

---

## 9. Backend, Storage & PocketBase Limitations

### NEG-046 — Assuming Offline Sync in `B4XDaisyPocketBase`
**Wrong**: Expecting PocketBase to automatically synchronize offline edits when network reconnects.
**Reality**: `B4XDaisyPocketBase` is REST-only. There is NO automatic SQLite synchronization or conflict resolution.
**Correct**: Maintain a local SQLite / KeyValueStore database as the offline source of truth, synchronizing manually via HTTP jobs.

---

### NEG-047 — Expecting Real-Time SSE Subscriptions in B4A
**Wrong**: Calling `pb.SubscribeToCollection(...)` or expecting live WebSocket streaming.
**Reality**: Server-Sent Events (SSE) streaming is not implemented in the B4A PocketBase wrapper.
**Correct**: Use periodic polling or explicit pull-to-refresh triggers.

---

### NEG-048 — In-Memory Base64 Upload of Files Larger Than 5 MB
**Wrong**: Uploading large images, audio, or PDF attachments via Base64 strings.
**Reality**: In-memory Base64 encoding triples memory usage, throwing `java.lang.OutOfMemoryError` on budget Android devices.
**Correct**: Cap uploads to $< 5\text{MB}$ or execute streamed multi-part POST via `HttpJob.PostFile`.

---

## 10. State Completeness & Visual Mapping Anti-Patterns

### NEG-049 — Omitting 4-State UI Completeness (Happy-Path Only)
**Wrong**: Only rendering data when records exist:
```vb
If data.Size > 0 Then
    list.SetItems(data)
End If
```
**Reality**: When data is empty, loading, or network fails, the user encounters a frozen, blank screen with no indication of status.
**Correct**: Implement all four states: **Loading** (`B4XDaisyLoading` / `B4XDaisyDivision` skeleton), **Populated** (cards/list), **Empty** (placeholder text + CTA button), and **Error** (`B4XDaisyAlert` with retry button).

---

### NEG-050 — Visual Literal Mapping Instead of Semantic Intent
**Wrong**: Seeing a rounded rectangular container in a design mockup and immediately defaulting to `B4XDaisyCard`.
**Reality**: Visual resemblance is not semantic equivalence. A card cannot group form inputs with a legend (that is `B4XDaisyFieldset`); a card cannot represent a key metric tile (that is `B4XDaisyStat`); a card cannot show progressive steps (that is `B4XDaisyTimeline`).
**Correct**: Classify the region's semantic intent first, then select the matching verified component.
