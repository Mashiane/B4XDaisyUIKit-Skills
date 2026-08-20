# skeleton (`B4XDaisyDivision` Placeholder Loading Blocks)

Placeholder shimmer/skeleton loading blocks with rounded corners, circle shapes, and card frames for content-loading states.
In B4XDaisyUIKit, skeleton screens are composed natively using `B4XDaisyDivision` or `B4XDaisyLoading`.

## 1. Overview
- **Class**: `B4XDaisyDivision` / `B4XDaisyLoading`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDivision.bas`
- **Reference Page**: `B4XPageSkeleton.bas`
- **Web DaisyUI Mapping**: `.skeleton` → `B4XDaisyDivision (Skeleton Placeholder)`

## 2. Verified B4X Syntax & Recipe

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
- **No separate `B4XDaisySkeleton` class exists**: Create placeholder wireframes using `B4XDaisyDivision`.
- Use `0xFFF3F4F6` (DaisyUI neutral/gray placeholder background) for skeleton elements.
- Use `Rounded = "rounded-full"` for circle avatars and `Rounded = "rounded"` or `"rounded-md"` for text bars.
- When live data arrives, toggle view visibility or replace the skeleton panel views with real content panels.

## 4. Alternative: Animated Loading Spinners
For dynamic loading animations alongside skeleton layouts, see [loading.md](file:///c:/b4a/workspace/0SithasoDaisyUIKit/b4xdaisyuikit-skills/skills/b4xdaisyuikit/components/loading.md) (`B4XDaisyLoading`).
