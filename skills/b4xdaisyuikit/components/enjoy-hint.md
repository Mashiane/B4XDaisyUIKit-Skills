# enjoy-hint (`B4XDaisyEnjoyHint`)

Interactive onboarding and feature tour guide that highlights views on screen with a spotlight mask and step tooltip explanations.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyEnjoyHint`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyEnjoyHint.bas`
- **Verified Demos**: `B4XPageEnjoyHint.bas`
- **Web DaisyUI Mapping**: `.enjoy-hint` → `B4XDaisyEnjoyHint`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tour As B4XDaisyEnjoyHint
tour.Initialize(Me, "tour")
tour.AddToParent(Activity.RootPanel, 0, 0, Activity.RootPanel.Width, Activity.RootPanel.Height)

' Add tour steps
tour.AddStep("step1", btnAdd.getView, "Tap here to create a new task.", "circle", "top")
tour.AddStep("step2", searchInput.getView, "Search existing records quickly.", "rect", "bottom")
tour.AddStep("step3", btnSettings.getView, "Configure your workspace preferences.", "circle", "left")

' Start the tour
tour.StartTour

```

## 3. Native Composition Rules & Gotchas
- Interactive step-by-step onboarding walkthrough that spotlights UI elements.
- Mount over `Activity.RootPanel` so the spotlight dim overlay covers the entire screen.
- Add steps via `AddStep(Id, TargetView, Description, Shape, Position)`.
- `TargetView` must be an initialized, positioned `B4XView` on screen.
- Start the tour using `tour.StartTour`.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddStep(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ArrowPosition As String)`
- `AddStep2(Target As B4XView, Message As String, Shape As String, Margin As Int, TimeoutMs As Int, ShowNext As Boolean, ShowSkip As Boolean, ShowPrev As Boolean, CloseOnOverlay As Boolean, ExplicitLeft As Int, ExplicitTop As Int, ExplicitRight As Int, ExplicitBottom As Int, PositionMode As String, ShadowColor As Int, Opacity As Float, ArrowPosition As String)`
- `EndTour`
- `Initialize (Callback As Object, EventName As String, Root As B4XView)`
- `Recalc`
- `RunWithResume`

## 7. Public Fields
- `BtnFinishText As String`
- `BtnNextText As String`
- `BtnPrevText As String`
- `BtnSkipText As String`
- `RectCornerRadius As Int`
