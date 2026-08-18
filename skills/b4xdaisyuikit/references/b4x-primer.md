# B4X Language Primer for AI Agents

B4X is a BASIC-inspired language for native Android (B4A), iOS (B4i), and desktop (B4J) development. This primer covers every language construct you will encounter when writing B4XDaisyUIKit UI code. Read this before writing any B4X code.

> [!TIP]
> **Companion Skill**: For deep general-purpose B4X syntax, resumable subs, SQLite database operations, and Android manifest editing, install the complementary B4X skill:
> ```bash
> /plugin marketplace add Jerryk133/b4x-skill
> /plugin install b4x@b4x-marketplace
> ```

---

## 1. File Structure and Class Modules

Every B4XPage is a **class module** (`.bas` file). It has:

```vb
' Always at the top — suppresses compiler warnings for common patterns
#IgnoreWarnings:12,9

Sub Class_Globals
    ' Declare all variables (fields) here.
    ' These persist for the life of the page instance.
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost As B4XView
    Private btnSave As B4XDaisyButton
    Private inputName As B4XDaisyInput
End Sub

Public Sub Initialize As Object
    ' Called once when the page is registered.
    ' Must return Me (the class instance itself).
    Return Me
End Sub

Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    ' ... page setup here
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    ' Called on device rotation or window resize.
End Sub

Private Sub B4XPage_Appear
    ' Called each time the page becomes visible.
End Sub

Private Sub B4XPage_Disappear
    ' Called when the page is navigated away from.
End Sub

```

**Rule**: every class module opens with `Sub Class_Globals` and ends with `End Sub`. All field variables are declared inside it.

---

## 2. Variable Types

| B4X type | Equivalent | Notes |
|---|---|---|
| `Int` | Integer | 32-bit |
| `Long` | Long integer | 64-bit |
| `Float` | Single float | 32-bit |
| `Double` | Double float | 64-bit |
| `String` | String | UTF-16 |
| `Boolean` | Boolean | `True` / `False` |
| `Object` | Any object | Use only when type is unknown |
| `B4XView` | Native view | Base type for all views |
| `B4XBitmap` | Image | Used for bitmaps/images |
| `List` | ArrayList | `Dim myList As List : myList.Initialize` |
| `Map` | HashMap | `Dim m As Map : m.Initialize` |

### Declaration syntax

```vb
' In Sub Class_Globals (fields):
Private navbar As B4XDaisyNavbar
Private counter As Int

' In a Sub (local variables):
Dim padding As Int = 16dip
Dim label As String = "Hello"
Dim items As List
items.Initialize

```

`Dim` declares a local variable. `Private` or `Public` declares a field.

---

## 3. dip — Density-Independent Pixels

`dip` is a B4A keyword that scales a pixel value by the device's screen density. Always use `dip` for layout dimensions.

```vb
' Correct — scales with screen density:
navbar.AddToParent(pnlHost, 0, y, maxW, 56dip)

' Wrong — fixed pixels, breaks on high-DPI screens:
navbar.AddToParent(pnlHost, 0, y, maxW, 56)

```

---

## 4. Subroutines (Subs)

```vb
' Public Sub — callable from outside the class
Public Sub Initialize As Object
    Return Me
End Sub

' Private Sub — only callable inside this class
Private Sub RenderPage(W As Int, H As Int)
    ' ... layout code
End Sub

' Sub with no return value
Private Sub BuildNavbar
    navbar.Initialize(Me, "navbar")
    navbar.Title = "My App"
End Sub

' Call a sub
BuildNavbar
RenderPage(Root.Width, Root.Height)

```

---

## 5. Conditional Logic

```vb
If pageScroll.IsInitialized = False Then Return

If value > 0 Then
    Log("Positive")
Else If value = 0 Then
    Log("Zero")
Else
    Log("Negative")
End If

Select Case itemId
    Case "home"
        B4XPages.ShowPage("B4XPageHome")
    Case "settings"
        B4XPages.ShowPage("B4XPageSettings")
    Case Else
        Log("Unknown: " & itemId)
End Select

```

---

## 6. Loops

```vb
' For loop
For i = 0 To items.Size - 1
    Dim item As String = items.Get(i)
    Log(item)
Next

' For Each loop
For Each v As B4XView In pnlHost.GetAllViewsRecursive
    Log(v.Tag)
Next

' Do While loop
Dim n As Int = 0
Do While n < 10
    n = n + 1
Loop

```

---

## 7. String Concatenation

Use `&` to concatenate strings. No `+` for strings.

```vb
Dim msg As String = "Hello " & username & "!"
Log("Value: " & someInt)

```

---

## 8. Event Wiring

B4XDaisyUIKit uses an **event-name callback pattern**. When you initialize a component, you pass:
- `Me` — the callback object (the current class instance, i.e. this page)
- `"eventName"` — a string prefix for the event sub names

The component fires events by calling `Callback.SubName(args)`.

```vb
' Initialize with event name "navbar"
navbar.Initialize(Me, "navbar")

' The component raises: navbar_Click(Payload As Object)
' You handle it with this exact sub name:
Private Sub navbar_Click(Payload As Object)
    Log("Navbar clicked: " & Payload)
End Sub

' Another example:
btnSave.Initialize(Me, "btnSave")

Private Sub btnSave_Click(Tag As Object)
    Log("Save pressed")
End Sub

```

**Rule**: the event sub name is always `eventName_EventType`. The parameters must match the manifest exactly.

### Common event signatures

| Component | Event sub | Parameters |
|---|---|---|
| B4XDaisyButton | `btnX_Click` | `Tag As Object` |
| B4XDaisyInput | `inputX_TextChanged` | `Old As String, New As String` |
| B4XDaisyInput | `inputX_FocusChanged` | `HasFocus As Boolean` |
| B4XDaisyCheckbox | `chkX_Checked` | `Checked As Boolean` |
| B4XDaisyRadio | `radX_Checked` | `Checked As Boolean` |
| B4XDaisyToggle | `togX_Checked` | `Checked As Boolean` |
| B4XDaisySelect | `selX_Changed` | `Value As String` |
| B4XDaisyRange | `rngX_Changed` | `Value As Float` |
| B4XDaisyRating | `ratX_Changed` | `Value As Int` |
| B4XDaisyDock | `dockX_ItemClick` | `ItemId As String` |
| B4XDaisyTab | `tabX_TabClick` | `Index As Int` |
| B4XDaisyNavbar | `navX_Click` | `Payload As Object` |
| B4XDaisyNavbar | `navX_Back` | `Tag As Object` |
| B4XDaisyAccordion | `accX_Change` | `ActiveTag As Object, Status As Boolean` |
| B4XDaisyCollapse | `colX_StateChanged` | `Open As Boolean` |
| B4XDaisySweetAlert | `saX_Result` | `Result As B4XDaisySweetAlertResult` |
| B4XDaisyFilter | `fltX_Changed` | `Keys As List` |
| B4XDaisyFilter | `fltX_ItemChanged` | `Id As String, Text As String, Checked As Boolean` |
| B4XDaisyFileInput | `fiX_FileSelected` | `FileName As String` |
| B4XDaisyPageScroll | `scrX_Scrolling` | `Position As Int` |
| B4XDaisyMenu | `menuX_ItemClick` | `Tag As Object, Text As String` |

---

## 9. B4XPages Lifecycle

```
App start
    └─ B4XMainPage.Initialize
        └─ B4XPage_Created       (registers pages, shows first page)
            └─ B4XPages.AddPage("name", pageInstance)
            └─ B4XPages.ShowPage("name")

Per B4XPage
    B4XPage_Created(Root1 As B4XView)     ← one time, on instantiation
    B4XPage_Appear                         ← every time page becomes visible
    B4XPage_Resize(Width As Int, Height As Int)  ← on rotate / resize
    B4XPage_Disappear                      ← when navigating away

```

**Critical**: `B4XPage_Created` fires once. `B4XPage_Appear` fires every visit. Put initialization in `Created`, data refresh in `Appear`.

---

## 10. Page Navigation

```vb
' Navigate forward (push)
B4XPages.ShowPage("pageName")

' Navigate back (pop)
B4XPages.Back

' With a loading overlay (recommended for transitions)
B4XPages.MainPage.ShowPageWithLoader("pageName")

```

---

## 11. Wait For / ResumableSub (Async Dialogs)

B4X uses `Wait For` to pause a sub until an async event fires, without blocking the UI thread.

```vb
' ShowAsync returns a ResumableSub — pause here until the dialog closes
Dim result As B4XDaisySweetAlertResult
Wait For (swal.ShowAsync) Complete (result As B4XDaisySweetAlertResult)

If result.IsConfirmed Then
    Log("User confirmed: " & result.Value)
End If

```

Any sub containing `Wait For` must be called with `CallSubDelayed(Me, "SubName")` or declared as a resumable sub. For page-level event handlers, the framework handles this automatically.

---

## 12. IsInitialized Guards

Always guard against uninitialized references:

```vb
If pageScroll.IsInitialized = False Then Return

```

`IsInitialized` — returns True after `Initialize(...)` has been called on the B4X object or custom view. Call this before manipulating component layouts during lifecycle events like `RenderPage` or `B4XPage_Resize`.

---

## 13. Logging

```vb
Log("Debug message: " & someVar)

```

Output goes to the B4A IDE log panel. Use freely for debugging.

---

## 14. XUI Helper

`xui` is always declared in `Class_Globals` as `Private xui As XUI`. It provides cross-platform utilities:

```vb
Root.Color = xui.Color_White        ' white background
Root.Color = xui.Color_Transparent  ' transparent
Dim panel As B4XView = xui.CreatePanel("")  ' create a blank panel

```

---

## 15. Common Patterns Quick Reference

```vb
' Initialize a component
myBtn.Initialize(Me, "myBtn")

' Add to parent panel
myBtn.AddToParent(pnlHost, padding, y, maxW, 44dip)

' Advance y cursor
y = y + myBtn.GetComputedHeight + gap

' Set a string property
myBtn.Text = "Save"           ' designer property (direct)
myBtn.setVariant("primary")   ' method-style setter

' Get a value
Dim v As String = myInput.getText

' Validate a form — call Validate() on each required component directly
' (B4XPage demo methodology). Do NOT use ValidateRequiredControls(Parent).
Dim okName As Boolean = inputName.Validate
Dim okEmail As Boolean = inputEmail.Validate
Dim ok As Boolean = okName And okEmail

' Stretch scroll area after adding all views
pageScroll.AutoFit

```


## 8. Subroutine Parameter & Variable Naming Standards (Hungarian Type Prefixes)
To eliminate variable-to-subroutine name shadowing (e.g. `System.Exception: Variable name cannot be the same as a sub name`), all subroutine parameters and local variables must use strict type-based Hungarian prefixes:

| Data Type | Prefix | Canonical Parameter Examples |
| :--- | :--- | :--- |
| **`String`** | `s` | `sText`, `sTitle`, `sValue`, `sIconName`, `sVariant`, `sPlacement` |
| **`Int`** | `i` | `iLeft`, `iTop`, `iWidth`, `iHeight`, `iIndex`, `iDuration`, `iColor` |
| **`Long`** | `l` | `lDuration`, `lTicks`, `lValueMillis`, `lTimestamp` |
| **`Float`** | `f` | `fAlpha`, `fGrow`, `fShrink`, `fRatio`, `fSize`, `fBorderWidth` |
| **`Double`** | `d` | `dWidth`, `dHeight`, `dRatio`, `dValue` |
| **`Boolean`** | `b` | `bValue`, `bVisible`, `bEnabled`, `bAnimated`, `bOpened` |
| **`Object`** | `o` | `oCallback`, `oTag`, `oValue`, `oTarget`, `oItem` |
| **`B4XView`** | `v` | `vParent`, `vChild`, `vTarget`, `vHost`, `vContent` |
| **`Map`** | `m` / `map` | `mProps`, `mapMargin`, `mParams`, `mOptions` |
| **`List`** | `lst` | `lstItems`, `lstPoints`, `lstRecords`, `lstPal` |
| **`B4XBitmap`** | `bmp` | `bmpImage`, `bmpMask`, `bmpAvatar` |
| **`B4XCanvas`** | `cvs` | `cvsTarget`, `cvsCanvas` |
| **`B4XRect`** | `rc` | `rcBase`, `rcContent`, `rcOuter` |
| **`B4XFont`** | `fnt` | `fntCustom`, `fntFont` |
| **`Label`** | `lbl` | `lblTarget`, `lblBase`, `lblText` |
| **`JavaObject`** | `jo` | `joDrawable`, `joPaint`, `joView` |

### Critical Naming Rules:
1. **Never use property/getter/setter names as parameter variables** (e.g. write `Sub setItem1(vItem As B4XView)` instead of `Sub setItem1(View As B4XView)`).
2. **Never shadow class global variables** (e.g. if `Private mMargin As String` exists, name a map parameter `mapMargin As Map`, not `mMargin`).

## 9. Structured Try / Catch / End Try Error Handling
Empty `Catch` blocks are prohibited. Every `Catch` block must log the failure using the canonical `<ClassName>.<SubName>: ` prefix:
```vb
Try
    ' ... operation ...
Catch
    Log("B4XDaisy<Component>.<SubName>: " & LastException.Message)
End Try
```
*(Exception: `DisallowParentIntercept` climbing to `ViewRootImpl` where platform exceptions are expected and silently exited).*
