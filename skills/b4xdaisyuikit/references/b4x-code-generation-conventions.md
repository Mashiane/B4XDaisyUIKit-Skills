# B4X Code Generation Conventions

Apply these conventions when generating, converting, or reviewing B4X code.

> [!IMPORTANT]
> **Platform Target Scope**: B4XDaisyUIKit currently targets **B4A (Android) only**. All application templates, page architectures, UI composition, and verification tools are certified for B4A. Mentions of B4J or conditional `#If B4J` blocks within component source code represent **projections for future roadmap expansion** (desktop XUI support) and are not active target environments today.

---

## 1. Shared B4X Language & API Hygiene

The core B4X transpiler targets Java (on both B4A and B4J). The following shared hygiene rules prevent compiler failure, runtime crashes, and memory leaks across both environments:

1. **Use SmartStrings (`$"..."$`)**: Always use SmartStrings for string interpolation, SQL statements, and multi-line text. Avoid legacy double-double-quote escaping (`""...""`).
2. **Initialize objects before use**: Objects (`Map`, `List`, `SQL`, custom views, custom `Type` instances) are never auto-initialized. Always call `.Initialize` or use constructors like `CreateMap(...)`. In B4A, an uninitialized map or view causes an immediate `NullPointerException` that crashes the Android Activity.
3. **Expose predictable properties**: Use `getX` / `setX` for public properties, keep backing fields private (`Private m<PropName>`), and assign safe defaults. The B4X compiler automatically exposes these as Designer and runtime properties.
4. **Declare fields at the correct scope**: Put instance and page state fields in `Class_Globals`. Put process-wide singletons (e.g., shared SQLite connection) in `Main.Process_Globals`. Never declare `Process_Globals` inside a `B4XPage` (compile error).
5. **Guard cross-module event calls**: Check `xui.SubExists` or `SubExists` before calling callback targets with `CallSub` or `CallSubDelayed2`; handle a missing handler without crashing.
6. **Keep asynchronous work non-blocking**: Use `Wait For` and `Sleep`; never block the UI thread. In B4A, blocking the main thread for 5 seconds triggers the fatal Android **ANR (Application Not Responding)** dialog.
7. **Filter resumable sub events with Sender**: Always use `Wait For (senderObj) EventName(...)` to prevent event cross-talk when multiple asynchronous operations or network calls are active.
8. **Release owned resources**: Release `HttpJob` objects (`job.Release`) in both success and failure paths. Close `ResultSet` and `SQL` connections to prevent SQLite database lock and file descriptor exhaustion.
9. **Keep classes small and APIs predictable**: Provide a concise class header listing public properties, methods, and emitted `#Event:` declarations.

---

## 2. Mandatory B4A Code Generation Conventions

Because B4A compiles B4X code directly to Java for the Android runtime, adherence to the following platform rules is mandatory:

### A. Hungarian / Type-Based Parameter & Variable Naming
To eliminate compiler identifier collisions (`Parameter name cannot hide global variable name` and `Variable name cannot be the same as a sub name`), all subroutine parameters and local variables must use strict type-based Hungarian prefixes:

| Data Type | Prefix | Standard Parameter / Variable Examples |
| :--- | :--- | :--- |
| **`String`** | `s` | `sText`, `sTitle`, `sValue`, `sIconName`, `sVariant`, `sPlacement` |
| **`Int`** | `i` | `iLeft`, `iTop`, `iWidth`, `iHeight`, `iIndex`, `iDuration`, `iColor` |
| **`Long`** | `l` | `lDuration`, `lTicks`, `lValueMillis`, `lTimestamp` |
| **`Float`** | `f` | `fAlpha`, `fGrow`, `fShrink`, `fRatio`, `fSize`, `fBorderWidth` |
| **`Double`** | `d` | `dWidth`, `dHeight`, `dRatio`, `dValue` |
| **`Boolean`** | `b` | `bValue`, `bVisible`, `bEnabled`, `bAnimated`, `bOpened` |
| **`Object`** | `o` | `oCallback`, `oTag`, `oValue`, `oTarget`, `oItem` |
| **`B4XView`** | `v` | `vParent`, `vChild`, `vTarget`, `vHost`, `vContent` |
| **`Map`** | `m` / `map` | `mapMargin`, `mProps`, `mParams`, `mOptions` |
| **`List`** | `lst` | `lstItems`, `lstPoints`, `lstRecords`, `lstPal` |
| **`B4XBitmap`** | `bmp` | `bmpImage`, `bmpMask`, `bmpAvatar` |
| **`B4XCanvas`** | `cvs` | `cvsTarget`, `cvsCanvas` |
| **`B4XRect`** | `rc` | `rcBase`, `rcContent`, `rcOuter` |
| **`B4XFont`** | `fnt` | `fntCustom`, `fntFont` |
| **`Label`** | `lbl` | `lblTarget`, `lblBase`, `lblText` |
| **`JavaObject`** | `jo` | `joDrawable`, `joPaint`, `joView` |

**Key Rules:**
- **Never use plain property names as parameter variables**: Do NOT write `Sub setItem(View As B4XView)` or `Sub setText(Text As String)`. Write `Sub setItem(vView As B4XView)` and `Sub setText(sText As String)`.
- **Never shadow member variables**: If `Private mMargin As String` exists in `Class_Globals`, do not name a parameter `mMargin As Map`; use `mapMargin As Map`.

### B. Structured Try / Catch / End Try Error Handling
Empty `Catch` blocks are strictly prohibited across all components and generated screens so runtime exceptions are never silently swallowed:
```vb
Try
    ' ... operation ...
Catch
    If B4XDaisyApp.DebugLogs Then Log("B4XDaisy<Component>.<SubName>: " & LastException.Message)
End Try
```

### C. Type Definition Scope
Always declare custom `Type` structures (e.g., `Type TagPoint(X As Float, Y As Float)`) **inside `Sub Class_Globals`**, never outside or above `Sub Class_Globals`.

### D. Prevent Parent Scroll Interception in Touch Views
On Android, views involving touch gestures, dragging, or scrubbing (sliders, ranges, color wheels, carousels, pickers, dropdown popovers) nested inside parent scroll containers (`ScrollView`, `HorizontalScrollView`, or `B4XDaisyPageScroll`) have their touch events stolen by the parent container.
Implement and invoke `DisallowParentIntercept` during touch handling:
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
            
            ' Stop climbing at ViewRootImpl to prevent platform exceptions
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

### E. Density-Independent Units (`dip`)
In B4A UI layout code, always specify coordinates, widths, heights, and padding using `dip` units (e.g., `16dip`, `48dip`). Raw numeric integers represent hardware pixels and render at unusable miniature sizes on modern high-DPI Android devices.

### F. Runtime Permissions
Dangerous permissions (Camera, Location, External Storage, Audio) require runtime authorization on Android 6+ (API 23+). Request them via the `RuntimePermissions` library:
```vb
#If B4A
Private rp As RuntimePermissions
rp.CheckAndRequest(rp.PERMISSION_ACCESS_FINE_LOCATION)
Wait For B4XPage_PermissionResult (Permission As String, Result As Boolean)
If Result Then
    ' Permission granted
Else
    ' Graceful degradation
End If
#End If
```

### G. Edge-to-Edge and Insets (targetSdkVersion 36)
Google Play requires targetSdkVersion 36, which enforces edge-to-edge layout where system bars draw over content.
- B4XPages automatically handles insets via `B4XPages.HandleInsets = True` (default).
- Never generate obsolete opt-out flags like `android:windowOptOutEdgeToEdgeEnforcement="true"`, which are deprecated and ignored on targetSdk 36.

### H. Memory Management: No UI Views in `Process_Globals`
Never declare `B4XView`, `Panel`, `Label`, or any UI component in `Process_Globals`. Doing so holds a static reference to the enclosing Android Activity Context, preventing garbage collection and causing critical Activity memory leaks across screen rotations and app backgrounding.

---

## 3. Target-Specific Rules & Roadmap Projections

- **B4A UI applications (Active Platform)**: Follow the shared rules and all B4A-specific rules above. Do NOT add `StartMessageLoop` to an Android UI app. B4XDaisyUIKit component composition is exclusively supported on B4A Android.
- **B4J Projections (Future Roadmap)**: Any `#If B4J` conditional blocks inside B4XDaisyUIKit component source exist to preserve XUI compatibility for future desktop support. When writing non-UI server code or standalone desktop tools in B4J:
  - Add `StartMessageLoop` only in headless/non-UI server applications to keep the event loop alive.
  - Desktop UI uses JavaFX coordinates (logical pixels, not `dip`).
- **Before returning generated code**: Confirm that referenced libraries and APIs are available in the target B4A project. Never silently invent Android APIs or assume desktop B4J libraries are available in B4A.
