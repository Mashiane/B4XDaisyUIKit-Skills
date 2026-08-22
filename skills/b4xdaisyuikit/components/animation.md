# animation (`B4XDaisyAnimation`)

DaisyUI `Animation` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyAnimation`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyAnimation.bas`
- **Verified Demo Source**: B4XPageEasing.bas (lines 34–251)
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AnimateAccordionIn(vView As B4XView, iDurationMs As Int)`
- `AnimateAccordionOut(vView As B4XView, iDurationMs As Int)`
- `AnimateAlpha(vView As B4XView, fFromAlpha As Float, fToAlpha As Float, iDurationMs As Int)`
- `AnimateAttentionBounce(vView As B4XView, iDurationMs As Int)`
- `AnimateCubeLeftIn(vView As B4XView, iDurationMs As Int)`
- `AnimateCubeLeftOut(vView As B4XView, iDurationMs As Int)`
- `AnimateExtended(vView As B4XView, fAlpha As Float, fTransX As Float, fTransY As Float, fScaleX As Float, fScaleY As Float, fRotX As Float, fRotY As Float, iDurationMs As Int)`
- `AnimateExtended2( _
    vView As B4XView, _
    fAlpha As Float, _
    fTransX As Float, _
    fTransY As Float, _
    fScaleX As Float, _
    fScaleY As Float, _
    fRotation As Float, _
    fRotX As Float, _
    fRotY As Float, _
    iDurationMs As Int, _
    sEasing As String, _
    iDelayMs As Int)`
- `AnimateFadeDirectional(vView As B4XView, sMode As String, sDirection As String, fOffsetPx As Float, iDurationMs As Int)`
- `AnimateFlash(vView As B4XView, iDurationMs As Int)`
- `AnimateFlight(vView As B4XView, sMode As String, iDurationMs As Int)`
- `AnimateFlipDirectional(vView As B4XView, sMode As String, sAxis As String, iDurationMs As Int)`
- `AnimateHinge(vView As B4XView, iDurationMs As Int)`
- `AnimateLayerNative(vView As B4XView, fAlphaValue As Float, fDegrees As Float, fDegreesY As Float, iDurationMs As Int)`
- `AnimatePulse(vView As B4XView, iDurationMs As Int)`
- `AnimateRoll(vView As B4XView, sMode As String, iDurationMs As Int)`
- `AnimateRotation(vView As B4XView, fFromDegrees As Float, fToDegrees As Float, iDurationMs As Int)`
- `AnimateRotationX(vView As B4XView, fDegreesX As Float, iDurationMs As Int)`
- `AnimateRotationY(vView As B4XView, fDegreesY As Float, iDurationMs As Int)`
- `AnimateRubberBand(vView As B4XView, iDurationMs As Int)`
- `AnimateScale(vView As B4XView, fScaleX As Float, fScaleY As Float, iDurationMs As Int)`
- `AnimateScaleFrom(vView As B4XView, fFromScaleX As Float, fFromScaleY As Float, fToScaleX As Float, fToScaleY As Float, iDurationMs As Int)`
- `AnimateShake(vView As B4XView, iDurationMs As Int)`
- `AnimateSlideDirectional(vView As B4XView, sMode As String, sDirection As String, fOffsetPx As Float, iDurationMs As Int)`
- `AnimateSlidePushLeftIn(vView As B4XView, iScreenWidth As Int, iDurationMs As Int)`
- `AnimateSlidePushLeftOut(vView As B4XView, iScreenWidth As Int, iDurationMs As Int)`
- `AnimateStackOut(vView As B4XView, iDurationMs As Int)`
- `AnimateStandUp(vView As B4XView, iDurationMs As Int)`
- `AnimateSwing(vView As B4XView, iDurationMs As Int)`
- `AnimateTada(vView As B4XView, iDurationMs As Int)`
- `AnimateTranslationX(vView As B4XView, fTranslationXPx As Float, iDurationMs As Int)`
- `AnimateTranslationXY(vView As B4XView, fTransX As Float, fTransY As Float, iDurationMs As Int)`
- `AnimateTranslationY(vView As B4XView, fTranslationYPx As Float, iDurationMs As Int)`
- `AnimateWave(vView As B4XView, iDurationMs As Int)`
- `AnimateWobble(vView As B4XView, iDurationMs As Int)`
- `AnimateZoomDirectional(vView As B4XView, sMode As String, sDirection As String, fOffsetPx As Float, iDurationMs As Int)`
- `AnimateZoomSlideIn(vView As B4XView, iScreenWidth As Int, iDurationMs As Int)`
- `AnimateZoomSlideOut(vView As B4XView, iScreenWidth As Int, iDurationMs As Int)`
- `EvaluateEasing(sEaseName As String, fTime As Float, fStartValue As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `Initialize`
- `SetNativeAlpha(vView As B4XView, fAlphaValue As Float)`
- `SetNativeCameraDistance(vView As B4XView, fDistancePx As Float)`
- `SetNativePivot(vView As B4XView, fPivotX As Float, fPivotY As Float)`
- `SetNativeRotation(vView As B4XView, fDegrees As Float)`
- `SetNativeRotationY(vView As B4XView, fDegrees As Float)`
- `SetNativeScale(vView As B4XView, fScaleX As Float, fScaleY As Float)`
- `SetTranslationX(vView As B4XView, fTranslationXPx As Float)`
- `SetTranslationY(vView As B4XView, fTranslationYPx As Float)`
- `easeInBack (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInBounce (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInCirc (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInCubic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInElastic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInExpo (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutBack (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutBounce (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutCirc (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutCubic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutElastic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutExpo (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutQuad (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutQuart (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutQuint (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInOutSine (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInQuad (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInQuart (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInQuint (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeInSine (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutBack (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutBounce (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutCirc (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutCubic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutElastic (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutExpo (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutQuad (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutQuart (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutQuint (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `easeOutSine (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`
- `linearTween (fTime As Float, fStart As Float, fChangeInValue As Float, iDuration As Int) As Float`

## 7. Public Fields
- `mBase As B4XView`

