# skeleton (`B4XDaisySkeleton`)

Placeholder loading block with pulse animation for text, circles, cards, and custom shapes.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySkeleton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySkeleton.bas`
- **Verified Demos**: `B4XPageSkeleton.bas`
- **Web DaisyUI Mapping**: `.skeleton` → `B4XDaisySkeleton`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sk As B4XDaisySkeleton
sk.Initialize(Me, "sk")
sk.AddToParent(pnlHost, pad, y, maxW, 20dip)
sk.Shape = "rounded"
sk.Animated = True
y = y + 20dip + gap

```

## 3. Native Composition Rules & Gotchas
- Shimmering placeholder box for loading states before content arrives.
- Configure `Shape` (`"rect"`, `"circle"`, `"text"`) and dimensions.
- Start animation via `StartAnimation`, stop with `StopAnimation`.
- Replace skeleton with real views once data is loaded.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `Initialize`

## 7. Public Fields
None declared.
