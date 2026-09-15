# enjoy-hint (`B4XDaisyEnjoyHint`)

DaisyUI `EnjoyHint` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyEnjoyHint`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyEnjoyHint.bas`
- **Verified Demo Source**: B4XPageEnjoyHint.bas
- **Web DaisyUI Mapping**: `.enjoy-hint` → `B4XDaisyEnjoyHint`

## 2. Verified B4X Syntax & Recipe
```b4x
' End any previous tour and remove stale overlay before re-initializing
    Try
        If tourRunning And enjoyHint.IsInitialized Then
            enjoyHint.EndTour
        End If
    Catch
        If B4XDaisyApp.DebugLogs Then Log("B4XPageEnjoyHint.StartTour: " & LastException.Message)
    End Try
    tourRunning = False
    
    ' Scroll to top so the first spotlight is positioned correctly
    If pageScroll.IsInitialized Then
        pageScroll.ScrollToTop(False)
    End If
    
    Try
        enjoyHint.Initialize(Me, "enjoyHint", Root)
    Catch
        If B4XDaisyApp.DebugLogs Then Log("B4XPageEnjoyHint.StartTour: " & LastException.Message)
        Return
    End Try
    tourRunning = True
    enjoyHint.BtnNextText = "Next"
    enjoyHint.BtnSkipText = "Skip"
    enjoyHint.BtnPrevText = "Previous"
    enjoyHint.BtnFinishText = "Done"
    
    enjoyHint.AddStep(refAvatar.View, "This is your profile picture. Tap to change it.", "circle", 8dip, 0, "center")
    enjoyHint.AddStep(refNameInput.View, "Enter your full name here.", "rect", 4dip, 0, "left")
    enjoyHint.AddStep(refEmailInput.View, "Provide a valid email address.", "rect", 4dip, 0, "left")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyEnjoyHint` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Interactive tour/hint overlay attached dynamically to sequential target views.

### Deviation Mechanism
- Utility/Helper/Animation class with specialized non-visual or animation lifecycle (not a standard CustomView).; Interactive tour/hint overlay attached dynamically to sequential target views.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddStep2, Recalc`.

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String, Root As B4XView)`
- `AddStep(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ArrowPosition As String)`
- `AddStep2(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ShowNext As Boolean, ShowSkip As Boolean, ShowPrev As Boolean, CloseOnOverlay As Boolean, ExplicitLeft As Int, ExplicitTop As Int, ExplicitRight As Int, ExplicitBottom As Int, PositionMode As String, ShadowColor As Int, Opacity As Float, ArrowPosition As String)`
- `RunWithResume`
- `EndTour`
- `Recalc`

## 7. Public Fields
(none declared in packaged source)

## Canonical Creation Pattern & Recipe

`B4XDaisyEnjoyHint` runs step-by-step interactive onboarding spotlight tours over target views.

```vb
Dim hint As B4XDaisyEnjoyHint
hint.Initialize(Me, "hint")
hint.AddToParent(Root, 0, 0, Root.Width, Root.Height)

' Add steps:
hint.AddStep(btnScan.getView, "Tap here to scan product barcodes.", "next")
hint.AddStep(btnSave.getView, "Tap here when physical count is done.", "finish")

' Start tour:
hint.StartTour
```
