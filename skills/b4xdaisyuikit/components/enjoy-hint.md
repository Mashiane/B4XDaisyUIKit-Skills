# enjoy-hint (`B4XDaisyEnjoyHint`)

Interactive onboarding and feature tour guide that spotlights views on screen with a dark backdrop mask, directional arrows, and step tooltip explanations.

## 1. Overview
- **Class**: `B4XDaisyEnjoyHint`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyEnjoyHint.bas`
- **Reference Page**: `B4XPageEnjoyHint.bas`
- **Web DaisyUI Mapping**: `.enjoy-hint` → `B4XDaisyEnjoyHint`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim enjoyHint As B4XDaisyEnjoyHint
enjoyHint.Initialize(Me, "enjoyHint", Root)

' Customize button labels
enjoyHint.BtnNextText = "Next"
enjoyHint.BtnSkipText = "Skip"
enjoyHint.BtnPrevText = "Previous"
enjoyHint.BtnFinishText = "Done"

' Add tour steps: (TargetView, Message, Shape, Margin, TimeoutMs, ArrowPosition)
enjoyHint.AddStep(refAvatar.View, "This is your profile picture. Tap to change it.", "circle", 8dip, 0, "center")
enjoyHint.AddStep(refNameInput.View, "Enter your full name here.", "rect", 4dip, 0, "left")
enjoyHint.AddStep(refEmailInput.View, "Provide a valid email address.", "rect", 4dip, 0, "left")
enjoyHint.AddStep(refSaveBtn.View, "Save your changes here.", "rect", 4dip, 0, "right")

' Run the tour
enjoyHint.RunWithResume
```

### Stop / Dismiss Tour
```b4x
enjoyHint.EndTour
```

## 3. Native Composition Rules & Gotchas
- Mount over `Root` during `Initialize(Me, "enjoyHint", Root)` so the backdrop overlay dims the full window.
- The target view must be an initialized, laid-out `B4XView` (`view.View`).
- `Shape` options: `"rect"`, `"circle"`.
- `ArrowPosition` options: `"top"`, `"bottom"`, `"left"`, `"right"`, `"center"`.
- Always dismiss with `enjoyHint.EndTour` on `B4XPage_Resize` or page exit if the tour is active.

## 4. Designer Properties
None declared (runtime overlay helper).

## 5. Declared Events
- `OnNextClick`
- `OnSkipClick`
- `OnPrevClick`
- `OnFinishClick`

## 6. Public Methods & APIs
- `Initialize(oCallback As Object, sEventName As String, vRoot As B4XView)`
- `AddStep(vTarget As B4XView, sMessage As String, sShape As String, iMargin As Int, iTimeoutMs As Int, sArrowPosition As String)`
- `AddStep2(vTarget As B4XView, sMessage As String, sShape As String, iMargin As Int, iTimeoutMs As Int, bShowNext As Boolean, bShowSkip As Boolean, bShowPrev As Boolean, bCloseOnOverlay As Boolean, iExplicitLeft As Int, iExplicitTop As Int, iExplicitRight As Int, iExplicitBottom As Int, sPositionMode As String, iShadowColor As Int, fOpacity As Float, sArrowPosition As String)`
- `RunWithResume`
- `EndTour`
- `Recalc`

## 7. Public Fields
- `BtnFinishText As String`
- `BtnNextText As String`
- `BtnPrevText As String`
- `BtnSkipText As String`
- `RectCornerRadius As Int`
