# animation (`B4XDaisyAnimation`)

DaisyUI `Animation` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAnimation`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyAnimation.bas`
- **Verified Demo Source**: B4XPageEasing.bas
- **Web DaisyUI Mapping**: `.animation` → `B4XDaisyAnimation`

## 2. Verified B4X Syntax & Recipe
```b4x
Public Sub Initialize As Object
    animObj.Initialize
    graphX.Initialize
    graphY.Initialize
    Return Me
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAnimation` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Deviation Mechanism
- Utility/Helper/Animation class with specialized non-visual or animation lifecycle (not a standard CustomView).

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetNativeAlpha, SetNativeRotation, SetNativeRotationY` (+ 44 more).

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize`
- `SetNativeAlpha(View As B4XView, AlphaValue As Float)`
- `SetNativeRotation(View As B4XView, Degrees As Float)`
- `SetNativeRotationY(View As B4XView, Degrees As Float)`
- `AnimateLayerNative(View As B4XView, AlphaValue As Float, Degrees As Float, DegreesY As Float, DurationMs As Int)`
- `SetNativeCameraDistance(View As B4XView, DistancePx As Float)`
- `SetTranslationX(View As B4XView, TranslationXPx As Float)`
- `SetTranslationY(View As B4XView, TranslationYPx As Float)`
- `AnimateTranslationX(View As B4XView, TranslationXPx As Float, DurationMs As Int)`
- `linearTween(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuad(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutCubic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuart(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutQuint(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutSine(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutExpo(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutCirc(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutBack(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutBounce(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeOutElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `easeInOutElastic(Time As Float, Start As Float, ChangeInValue As Float, Duration As Int) As Float`
- `AnimateTranslationY(View As B4XView, TranslationYPx As Float, DurationMs As Int)`
- `AnimateTranslationXY(View As B4XView, TransX As Float, TransY As Float, DurationMs As Int)`
- `SetNativePivot(View As B4XView, PivotX As Float, PivotY As Float)`
- `AnimateScaleFrom(View As B4XView, FromScaleX As Float, FromScaleY As Float, ToScaleX As Float, ToScaleY As Float, DurationMs As Int)`
- `SetNativeScale(View As B4XView, ScaleX As Float, ScaleY As Float)`
- `AnimateAlpha(View As B4XView, FromAlpha As Float, ToAlpha As Float, DurationMs As Int)`
- `AnimateRotation(View As B4XView, FromDegrees As Float, ToDegrees As Float, DurationMs As Int)`
- `AnimateScale(View As B4XView, ScaleX As Float, ScaleY As Float, DurationMs As Int)`
- `AnimateRotationX(View As B4XView, DegreesX As Float, DurationMs As Int)`
- `AnimateRotationY(View As B4XView, DegreesY As Float, DurationMs As Int)`
- `AnimateExtended(View As B4XView, Alpha As Float, TransX As Float, TransY As Float, ScaleX As Float, ScaleY As Float, RotX As Float, RotY As Float, DurationMs As Int)`
- `AnimateTada(View As B4XView, DurationMs As Int)`
- `AnimateRubberBand(View As B4XView, DurationMs As Int)`
- `AnimateShake(View As B4XView, DurationMs As Int)`
- `AnimateWobble(View As B4XView, DurationMs As Int)`
- `AnimatePulse(View As B4XView, DurationMs As Int)`
- `AnimateSlidePushLeftOut(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateSlidePushLeftIn(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateZoomSlideOut(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateZoomSlideIn(View As B4XView, ScreenWidth As Int, DurationMs As Int)`
- `AnimateStackOut(View As B4XView, DurationMs As Int)`
- `AnimateCubeLeftOut(View As B4XView, DurationMs As Int)`
- `AnimateCubeLeftIn(View As B4XView, DurationMs As Int)`
- `AnimateAccordionOut(View As B4XView, DurationMs As Int)`
- `AnimateAccordionIn(View As B4XView, DurationMs As Int)`
- `AnimateFlash(View As B4XView, DurationMs As Int)`
- `AnimateSwing(View As B4XView, DurationMs As Int)`
- `AnimateAttentionBounce(View As B4XView, DurationMs As Int)`
- `AnimateStandUp(View As B4XView, DurationMs As Int)`
- `AnimateWave(View As B4XView, DurationMs As Int)`
- `AnimateHinge(View As B4XView, DurationMs As Int)`
- `AnimateFlight(View As B4XView, Mode As String, DurationMs As Int)`
- `AnimateRoll(View As B4XView, Mode As String, DurationMs As Int)`
- `AnimateFadeDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateZoomDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateSlideDirectional(View As B4XView, Mode As String, Direction As String, OffsetPx As Float, DurationMs As Int)`
- `AnimateFlipDirectional(View As B4XView, Mode As String, Axis As String, DurationMs As Int)`
- `EvaluateEasing(EaseName As String, Time As Float, StartValue As Float, ChangeInValue As Float, Duration As Int) As Float`

## 7. Public Fields
(none declared in packaged source)

