# mask (`B4XDaisyAvatar` Shape Masking)

> **Mode component**: `mask` is not a standalone class. Shape masking is implemented by configuring `B4XDaisyAvatar` with `SetAvatarMask(...)` and no status/online decorations.

Visual shape masking for images and avatars (squircle, hexagon, heart, star, decagon, pentagon, diamond, circle, badge).
In B4XDaisyUIKit, shape masking is integrated directly into `B4XDaisyAvatar` using `.SetAvatarMask(...)`.

## 1. Overview
- **Class**: `B4XDaisyAvatar`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAvatar.bas`
- **Reference Page**: `B4XPageMask.bas`
- **Web DaisyUI Mapping**: `.mask` / `.mask-*` → `B4XDaisyAvatar.SetAvatarMask(...)`
- **Companion Reference**: See [avatar.md](file:///c:/b4a/workspace/0SithasoDaisyUIKit/b4xdaisyuikit-skills/skills/b4xdaisyuikit/components/avatar.md) for full avatar options.

## 2. Verified B4X Syntax & Recipe

### Full lifecycle — create, initialize, add to parent, configure
```b4x
' 1. Declare the variable
Dim avatar As B4XDaisyAvatar

' 2. Initialize (Me = callback host, "avatar" = event prefix)
avatar.Initialize(Me, "avatar")

' 3. Add to a parent view at position (x, y) and size (w, h)
Dim avatarView As B4XView = avatar.AddToParent(pnlHost, pad, y, 160dip, 160dip)

' 4. Configure mask shape and content
avatar.SetImage("profile.png")
avatar.SetAvatarMask("squircle") ' Options: squircle, hexagon, heart, star, decagon, pentagon, diamond, circle, badge
avatar.SetCenterOnParent(True)
avatar.SetVariant("none")

' 5. Advance layout cursor
y = y + 160dip + gap
```

### Mask Gallery Pattern
```b4x
Dim masks As List = Array As String("squircle", "hexagon", "heart", "star", "decagon", "pentagon", "diamond", "badge")
For Each m As String In masks
    Dim av As B4XDaisyAvatar
    av.Initialize(Me, "av")
    av.AddToParent(card, 0, 0, 120dip, 120dip)
    av.SetImage("photo.webp")
    av.SetAvatarMask(m)
Next
```

## 3. Supported Mask Shapes
| Mask Token | Visual Description |
|---|---|
| `squircle` | Smooth rounded square with continuous curve corners |
| `hexagon` | 6-sided geometric polygon |
| `hexagon-2` | Vertically oriented hexagon |
| `heart` | Stylized heart silhouette |
| `star` | Multi-point star shape |
| `star-2` | Alternate star polygon |
| `decagon` | 10-sided polygon |
| `pentagon` | 5-sided polygon |
| `diamond` | 4-sided diamond rhombus |
| `circle` | Perfect circular clip |
| `badge` | Scalloped badge frame |

## 4. Native Composition Rules & Gotchas
- **No separate `B4XDaisyMask` class exists**: Always use `B4XDaisyAvatar` and invoke `.SetAvatarMask(sMaskType)`.
- When using masked images inside cards or custom panels, set `avatar.SetCenterOnParent(True)` for automatic geometric alignment.
- Combine with `avatar.SetShadow("md")` or border properties if outline rings are needed.

## 5. Key APIs for Masking
- `SetAvatarMask(sMask As String)`
- `SetImage(sImage As String)`
- `SetCenterOnParent(bCenter As Boolean)`
- `SetResizeMode(sMode As String)`
