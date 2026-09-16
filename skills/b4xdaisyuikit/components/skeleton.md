# skeleton (`B4XDaisyDivision` Placeholder Loading Blocks)

> **Mode component**: `skeleton` is not a standalone class. Skeleton loading states are implemented by toggling `IsSkeleton = True` on `B4XDaisyDivision`, `B4XDaisyText`, and other compatible components, or by composing placeholder blocks with `B4XDaisyDivision`.

Placeholder shimmer/skeleton loading blocks with rounded corners, circle shapes, and card frames for content-loading states.
In B4XDaisyUIKit, skeleton screens are composed natively using `B4XDaisyDivision` or `B4XDaisyLoading`.

## 1. Overview
- **Class**: `B4XDaisyDivision` / `B4XDaisyLoading`
- **Status**: `Demonstrated`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyDivision.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyDivision.bas)
- **Verified Demo Source**: B4XPageDivider.bas, B4XPageIndicator.bas, B4XPageSkeleton.bas, B4XPageStack.bas
- **Web DaisyUI Mapping**: `.skeleton` → `B4XDaisyDivision (Skeleton Placeholder)`

## 2. Verified B4X Syntax & Recipe

### Full lifecycle — create, initialize, add to parent, configure
```b4x
' 1. Declare the placeholder variable
Dim skCircle As B4XDaisyDivision

' 2. Initialize with no events (Me = callback host, "" = no event name)
skCircle.Initialize(Me, "")

' 3. Add to a parent view at position (x, y) and size (w, h)
skCircle.AddToParent(pnlHost, pad, y, 64dip, 64dip)

' 4. Configure the skeleton shape and color
skCircle.Width = "w-16"
skCircle.Height = "h-16"
skCircle.Rounded = "rounded-full"
skCircle.BackgroundColor = 0xFFF3F4F6

' 5. Advance layout cursor for next element
y = y + 74dip + gap
```

### Basic Skeleton Shapes (Circle & Text Bars)
```b4x
' Circular avatar skeleton
Dim skCircle As B4XDaisyDivision
skCircle.Initialize(Me, "")
skCircle.AddToParent(pnlHost, pad, y, 64dip, 64dip)
skCircle.Width = "w-16"
skCircle.Height = "h-16"
skCircle.Rounded = "rounded-full"
skCircle.BackgroundColor = 0xFFF3F4F6

' Text title skeleton bar
Dim skTitle As B4XDaisyDivision
skTitle.Initialize(Me, "")
skTitle.AddToParent(pnlHost, pad + 74dip, y + 10dip, 128dip, 16dip)
skTitle.Width = "w-32"
skTitle.Height = "h-4"
skTitle.BackgroundColor = 0xFFF3F4F6

' Text subtitle skeleton bar
Dim skSub As B4XDaisyDivision
skSub.Initialize(Me, "")
skSub.AddToParent(pnlHost, pad + 74dip, y + 32dip, 200dip, 16dip)
skSub.Width = "w-full"
skSub.Height = "h-4"
skSub.BackgroundColor = 0xFFF3F4F6

y = y + 74dip + gap
```

### Full Skeleton Card Container
```b4x
Dim skCard As B4XDaisyDivision
skCard.Initialize(Me, "")
skCard.AddToParent(pnlHost, pad, y, maxW, 180dip)
skCard.Width = "w-full"
skCard.Height = "h-48"
skCard.Shadow = "md"
skCard.Rounded = "rounded-xl"
skCard.Padding = "p-4"
skCard.BackgroundColor = 0xFFFFFFFF
skCard.BorderWidth = 1dip
skCard.BorderColor = 0xFFE5E7EB

' Large image placeholder inside card
Dim skImg As B4XDaisyDivision
skImg.Initialize(Me, "")
skImg.AddToParent(skCard.View, 12dip, 12dip, maxW - 24dip, 100dip)
skImg.BackgroundColor = 0xFFF3F4F6
skImg.Rounded = "rounded-lg"

y = y + 180dip + gap
```

## 3. Native Composition Rules & Gotchas
- **No separate `B4XDaisySkeleton` class exists**: Create placeholder wireframes using `B4XDaisyDivision`, or toggle `IsSkeleton` on existing components.
- Use `0xFFF3F4F6` (DaisyUI neutral/gray placeholder background) for skeleton elements.
- Use `Rounded = "rounded-full"` for circle avatars and `Rounded = "rounded"` or `"rounded-md"` for text bars.
- **Built-in skeleton mode**: `B4XDaisyDivision` (and other compatible components) expose `IsSkeleton`. Set it to `True` to switch the component into an animated shimmer loading placeholder without removing it from the layout.
  ```b4x
  divAvatar.IsSkeleton = True
  lblTitle.IsSkeleton = True
  lblSubtitle.IsSkeleton = True
  ```
- When live data arrives, either toggle `IsSkeleton = False` or replace the skeleton panel views with real content panels.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | w-10 |  |
| `Height` | Height | `String` | h-10 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0xFF000000 |  |
| `TextSize` | Text Size | `String` | text-sm |  |
| `Text` | Text | `String` |  |  |
| `Rounded` | Rounded | `String` | none | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `PlaceContentCenter` | Place Content Center | `Boolean` | False |  |
| `BorderWidth` | Border Width | `Int` | 0 |  |
| `BorderColor` | Border Color | `Color` | 0xFF000000 |  |
| `BorderStyle` | Border Style | `String` | solid | none|hidden|solid|double|dashed|dotted|groove|ridge|inset|outset |
| `BorderReliefStrength` | Relief Strength | `Int` | 55 |  |
| `AutoReliefByStyle` | Auto Relief By Style | `Boolean` | True |  |
| `IsSkeleton` | Is Skeleton | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `AutoResize` | Auto Resize | `Boolean` | False |  |

## 5. Alternative: Animated Loading Spinners
For dynamic loading animations alongside skeleton layouts, see [loading.md](file:///c:/b4a/workspace/0SithasoDaisyUIKit/b4xdaisyuikit-skills/skills/b4xdaisyuikit/components/loading.md) (`B4XDaisyLoading`).
