# mask (`B4XDaisyMask`)

Vector shape clipping masks for avatars, images, ratings, and container blocks.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyMask`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyMask.bas`
- **Verified Demos**: `B4XPageMask.bas`
- **Web DaisyUI Mapping**: `.mask` → `B4XDaisyMask`

## 2. Verified B4X Syntax & Recipe
```b4x
' Apply mask to an avatar
Dim av As B4XDaisyAvatar
av.Initialize(Me, "av")
av.AddToParent(pnlHost, pad, y, 64dip, 64dip)
av.Image = "user.jpg"
av.Mask = "squircle"

' Or clip a custom canvas using Variants
B4XDaisyVariants.ClipCanvasToShape(cvs, rect, "hexagon")

```

## 3. Native Composition Rules & Gotchas
- Vector shape clipping masks for avatars, images, and custom canvas views.
- Supported masks include `"circle"`, `"squircle"`, `"hexagon"`, `"heart"`, `"diamond"`, `"star"`, `"decagon"`.
- Access masking engine via `B4XDaisyVariants.CreateMaskPath` or component `Mask` properties.
- Ensures smooth anti-aliased shape boundaries across all Android screen densities.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `Initialize As Object`

## 7. Public Fields
None declared.
