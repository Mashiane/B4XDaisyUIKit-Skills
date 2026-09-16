# enjoy-hint (`B4XDaisyEnjoyHint`)

DaisyUI `EnjoyHint` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyEnjoyHint`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyEnjoyHint.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyEnjoyHint.bas)
- **Verified Demo Source**: B4XPageEnjoyHint.bas
- **Web DaisyUI Mapping**: `.enjoy-hint` → `B4XDaisyEnjoyHint`

## 2. Verified B4X Syntax & Recipe

```b4x
' Interactive user onboarding tour over UI elements:
Dim enjoyHint As B4XDaisyEnjoyHint
enjoyHint.Initialize(Me, "enjoyHint", Root)
enjoyHint.BtnNextText = "Next"
enjoyHint.BtnSkipText = "Skip"
enjoyHint.BtnFinishText = "Done"

' Add tour steps pointing to existing view targets:
enjoyHint.AddStep(btnSearch.View, "Tap here to search catalog items.", "circle", 8dip, 0, "center")
enjoyHint.AddStep(cardTotal.View, "This card displays your total balances.", "rect", 4dip, 0, "left")

' Start the spotlight tour:
enjoyHint.RunWithResume
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

