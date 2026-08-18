# animation (`B4XDaisyAnimation`)

Comprehensive animation engine providing 78 native transitions, Robert Penner easing equations, 3D layer transformations, and keyframe visual effects.

## 1. Overview
- **Class**: `B4XDaisyAnimation`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAnimation.bas`
- **Reference Page**: `B4XPageEasing.bas`

## 2. Verified B4X Syntax & Recipe

### Native Layer Transformation (Position, Alpha & Rotation)
```b4x
Dim anim As B4XDaisyAnimation
anim.Initialize

' Fade view in with scale
anim.SetNativeAlpha(targetView, 0.0)
anim.AnimateLayerNative(targetView, 1.0, 0, 0, 400)

' Move / slide view smoothly
anim.AnimateTranslationXY(targetView, 0, 100dip, 300)
```

### Keyframe Effects (Tada, Pulse, Shake, Wobble, Bounce)
```b4x
Dim anim As B4XDaisyAnimation
anim.Initialize

' Attention seekers
anim.AnimateTada(btnSubmit.View, 600)
anim.AnimatePulse(badgeView, 400)
anim.AnimateShake(inputField.View, 500)
anim.AnimateRubberBand(avatarView, 600)
```

### Directional Page Transitions
```b4x
' Transition out old view, transition in new view
anim.AnimateSlidePushLeftOut(oldPagePanel, 350)
anim.AnimateSlidePushLeftIn(newPagePanel, 350)

' Zoom & Flip Transitions
anim.AnimateZoomSlideIn(dialogPanel, 300)
anim.AnimateFlipDirectional(cardView, "right", 400)
```

## 3. Supported Easing Functions
`B4XDaisyAnimation` provides standard mathematical easing functions:
- **Quad**: `easeInQuad`, `easeOutQuad`, `easeInOutQuad`
- **Cubic**: `easeInCubic`, `easeOutCubic`, `easeInOutCubic`
- **Quart**: `easeInQuart`, `easeOutQuart`, `easeInOutQuart`
- **Quint**: `easeInQuint`, `easeOutQuint`, `easeInOutQuint`
- **Sine**: `easeInSine`, `easeOutSine`, `easeInOutSine`
- **Expo**: `easeInExpo`, `easeOutExpo`, `easeInOutExpo`
- **Circ**: `easeInCirc`, `easeOutCirc`, `easeInOutCirc`
- **Back**: `easeInBack`, `easeOutBack`, `easeInOutBack`
- **Bounce**: `easeInBounce`, `easeOutBounce`, `easeInOutBounce`
- **Elastic**: `easeInElastic`, `easeOutElastic`, `easeInOutElastic`

Evaluate easing dynamically:
```b4x
Dim currentVal As Float = anim.EvaluateEasing("easeInOutCubic", fTime, fStart, fChange, iDuration)
```

## 4. Key Public Methods & APIs
| Method | Description |
|---|---|
| `Initialize` | Initializes the animation helper |
| `AnimateLayerNative(vView, fAlpha, fTransX, fTransY, iDuration)` | Animates opacity and 2D translation simultaneously |
| `SetNativeAlpha(vView, fAlpha)` | Immediately sets view alpha opacity (0.0 to 1.0) |
| `SetNativeRotation(vView, fDegrees)` | Immediately rotates view on Z axis |
| `SetNativeRotationY(vView, fDegrees)` | 3D perspective rotation on Y axis |
| `SetTranslationX(vView, fX)` / `SetTranslationY(vView, fY)` | Immediately offsets view position |
| `AnimateTranslationX(vView, fX, iDuration)` | Smoothly animates X offset |
| `AnimateTranslationY(vView, fY, iDuration)` | Smoothly animates Y offset |
| `AnimateTranslationXY(vView, fX, fY, iDuration)` | Smoothly animates both X and Y offsets |
| `AnimateTada(vView, iDuration)` | Attention-grabbing scale/rotate wobble |
| `AnimateRubberBand(vView, iDuration)` | Elastic stretch effect |
| `AnimateShake(vView, iDuration)` | Horizontal error shake |
| `AnimatePulse(vView, iDuration)` | Rhythmic scale pulse |
| `AnimateSlidePushLeftIn(vView, iDuration)` | Enters from right to left |
| `AnimateSlidePushLeftOut(vView, iDuration)` | Exits to left |
| `AnimateZoomSlideIn(vView, iDuration)` | Scale from 0 to 1 while fading in |
| `AnimateFlipDirectional(vView, sDir, iDuration)` | 3D card flip animation |
