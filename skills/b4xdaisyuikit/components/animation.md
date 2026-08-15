# animation (`B4XDaisyAnimation`)

Native animation utilities for transitions, translations, rotations, and alpha fading.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAnimation`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAnimation.bas`
- **Verified Demos**: `B4XPageAnimation.bas`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim anim As B4XDaisyAnimation
anim.Initialize
anim.SetNativeAlpha(myView, 0.0)
anim.AnimateLayerNative(myView, 1.0, 0, 0, 400)
```
