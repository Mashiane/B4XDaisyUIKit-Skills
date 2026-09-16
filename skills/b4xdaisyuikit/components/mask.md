# mask (`B4XDaisyAvatar` Shape Masking)

> **Mode component**: `mask` is not a standalone class. Shape masking is implemented by configuring `B4XDaisyAvatar` with `SetAvatarMask(...)` and no status/online decorations.

Visual shape masking for images and avatars (squircle, hexagon, heart, star, decagon, pentagon, diamond, circle, badge).
In B4XDaisyUIKit, shape masking is integrated directly into `B4XDaisyAvatar` using `.SetAvatarMask(...)`.

## 1. Overview
- **Class**: `B4XDaisyAvatar`
- **Status**: `Demonstrated`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyAvatar.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyAvatar.bas)
- **Verified Demo Source**: B4XPageAvatar.bas, B4XPageDropdown.bas, B4XPageEnjoyHint.bas, B4XPageIndicator.bas, B4XPageList.bas, B4XPageMask.bas, B4XPageNavbar.bas, B4XPageScrollDemo.bas, B4XPageStack.bas, B4XPageStat.bas
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

## 3. Native Composition Rules & Gotchas
- **No separate `B4XDaisyMask` class exists**: Always use `B4XDaisyAvatar` and invoke `.SetAvatarMask(sMaskType)`.
- When using masked images inside cards or custom panels, set `avatar.SetCenterOnParent(True)` for automatic geometric alignment.
- Combine with `avatar.SetShadow("md")` or border properties if outline rings are needed.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Image` | Image Path | `String` | mashymain.jpg |  |
| `Mask` | Mask | `String` | circle | circle|square|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| `Rounded` | Rounded | `String` | rounded-full | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Width` | Width | `String` | w-10 |  |
| `Height` | Height | `String` | h-10 |  |
| `AvatarType` | Avatar Type | `String` | image | image|svg|text |
| `PlaceHolder` | Placeholder | `String` |  |  |
| `TextSize` | Text Size | `String` | text-sm |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `CenterOnParent` | Center On Parent | `Boolean` | True |  |
| `ChatImage` | Chat Image Mode | `Boolean` | False |  |
| `Status` | Status | `String` | none | none|online|offline |
| `ShowOnline` | Show Online Indicator | `Boolean` | False |  |
| `UseVariantStatusColors` | Use Variant Colors | `Boolean` | False |  |
| `OnlineColor` | Online Color | `Color` | 0x00000000 |  |
| `OfflineColor` | Offline Color | `Color` | 0x00000000 |  |
| `RingColor` | Ring Color | `Color` | 0x00000000 |  |
| `RingWidth` | Ring Width | `Int` | 0 |  |
| `RingOffset` | Ring Offset | `Int` | 0 |  |
| `Clickable` | Clickable | `Boolean` | True |  |
| `ResizeMode` | Resize Mode | `String` | FILL_NO_DISTORTIONS | FIT|FILL|FILL_NO_DISTORTIONS|NONE |
| `BlurRadius` | Blur Radius | `Int` | 0 |  |
| `Glass` | Glass Effect | `Boolean` | False |  |

## 5. Key APIs for Masking
- `SetAvatarMask(sMask As String)`
- `SetImage(sImage As String)`
- `SetCenterOnParent(bCenter As Boolean)`
- `SetResizeMode(sMode As String)`
