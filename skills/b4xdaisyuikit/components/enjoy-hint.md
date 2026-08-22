# enjoy-hint (`B4XDaisyEnjoyHint`)

DaisyUI `EnjoyHint` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyEnjoyHint`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyEnjoyHint.bas`
- **Verified Demo Source**: B4XPageEnjoyHint.bas (lines 19–19)
- **Web DaisyUI Mapping**: `.enjoy-hint` → `B4XDaisyEnjoyHint`

## 2. Verified B4X Syntax & Recipe
```b4x
' End any previous tour and remove stale overlay before re-initializing
    Try
        If tourRunning And enjoyHint.IsInitialized Then
            enjoyHint.EndTour
        End If
    Catch
        Log("B4XPageEnjoyHint.StartTour: " & LastException.Message)
    End Try
    tourRunning = False
    
    ' Scroll to top so the first spotlight is positioned correctly
    If pageScroll.IsInitialized Then
        pageScroll.ScrollToTop(False)
    End If
    
    Try
        enjoyHint.Initialize(Me, "enjoyHint", Root)
    Catch
        Log("B4XPageEnjoyHint.StartTour: " & LastException.Message)
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddStep(vTarget As B4XView, sMessage As String, sShape As String, iMargin As Int, iTimeoutMs As Int, sArrowPosition As String)`
- `AddStep2(vTarget As B4XView, sMessage As String, sShape As String, iMargin As Int, iTimeoutMs As Int, bShowNext As Boolean, bShowSkip As Boolean, bShowPrev As Boolean, bCloseOnOverlay As Boolean, iExplicitLeft As Int, iExplicitTop As Int, iExplicitRight As Int, iExplicitBottom As Int, sPositionMode As String, iShadowColor As Int, fOpacity As Float, sArrowPosition As String)`
- `EndTour`
- `Initialize (oCallback As Object, sEventName As String, vRoot As B4XView)`
- `Recalc`
- `RunWithResume`

## 7. Public Fields
- `xui As XUI`

