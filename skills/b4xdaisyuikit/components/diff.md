# diff (`B4XDaisyDiff`)

DaisyUI `Diff` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyDiff`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyDiff.bas`
- **Verified Demo Source**: B4XPageDiff.bas
- **Web DaisyUI Mapping**: `.diff` → `B4XDaisyDiff`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``diff`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``diff-item-1`, `diff-item-2`, `diff-resizer`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |

### Web DaisyUI HTML Syntax
```html
<figure class="diff">
  <div class="diff-item-1">{item1}</div>
  <div class="diff-item-2">{item2}</div>
  <div class="diff-resizer"></div>
</figure>
```

## 2. Verified B4X Syntax & Recipe
```b4x
y = AddSectionTitle("Diff", y, maxW)
    
    Dim diffimg As B4XDaisyDiff
    diffimg.Initialize(Me, "component")
    diffimg.AddToParent(pnlHost, PAGE_PAD, y, maxW, imageHeight)
    diffimg.Tag = "diff-image"
    diffimg.DiffType = "image"
    diffimg.Height = "h-[300px]"
    diffimg.Image1 = "photo-1560717789-0ac7c58ac90a.webp"
    diffimg.Image2 = "photo-1560717789-0ac7c58ac90a-blur.webp"
    diffimg.Position = 0.5
    
    y = y + imageHeight + 20dip
    ' #endregion

    ' #region Example 2: Diff text
    y = AddSectionTitle("Diff text", y, maxW)
    
    Dim difftext As B4XDaisyDiff
    difftext.Initialize(Me, "component")
    difftext.AddToParent(pnlHost, PAGE_PAD, y, maxW, imageHeight)
    difftext.Tag = "diff-text"
    difftext.DiffType = "text"
    difftext.Height = "h-[300px]"
    difftext.Text1 = "DAISY"
    difftext.Text2 = "DAISY"
    difftext.TextSize = "text-4xl"
    difftext.Text1Color = "primary"
    difftext.Text2Color = "success"
    difftext.Position = 0.4
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyDiff` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Visual diff comparator requiring two input views or images to overlay.

### Deviation Mechanism
- Visual diff comparator requiring two input views or images to overlay.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, getItem1View, getItem2View` (+ 29 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-[300px] |  |
| `Rounded` | Rounded | `String` | rounded-xl | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `DiffType` | Diff Type | `String` | auto | auto|image|text |
| `Position` | Position | `String` | 0.5 |  |
| `Image1` | Image 1 | `String` | photo-1560717789-0ac7c58ac90a.webp |  |
| `Image2` | Image 2 | `String` | photo-1560717789-0ac7c58ac90a-blur.webp |  |
| `Text1` | Text 1 | `String` | DAISY |  |
| `Text2` | Text 2 | `String` | DAISY |  |
| `TextSize` | Text Size | `String` | text-4xl |  |
| `Text1Color` | Text 1 Color | `String` | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Text2Color` | Text 2 Color | `String` | success | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Visible` | Visible | `Boolean` | True |  |
| `Enabled` | Enabled | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getItem1View As B4XView`
- `getItem2View As B4XView`
- `setItem1(AView As B4XView)`
- `setItem2(AView As B4XView)`
- `setPosition(Value As Float)`
- `getPosition As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setDiffType(Value As String)`
- `getDiffType As String`
- `setImage1(Value As String)`
- `getImage1 As String`
- `setImage2(Value As String)`
- `getImage2 As String`
- `setText1(Value As String)`
- `getText1 As String`
- `setText2(Value As String)`
- `getText2 As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setText1Color(Value As String)`
- `getText1Color As String`
- `setText2Color(Value As String)`
- `getText2Color As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyDiff` renders an interactive before/after image comparison slider.

```vb
Dim diff As B4XDaisyDiff
diff.Initialize(Me, "diff")
diff.AddToParent(pnlHost, pad, y, maxW, 220dip)
diff.Rounded = "rounded-box"
diff.SetOriginalImage("before_audit.jpg")
diff.SetModifiedImage("after_audit.jpg")
diff.SplitPosition = 50                        ' 50% split position

y = y + 220dip + gap
```
