# diff (`B4XDaisyDiff`)

DaisyUI `Diff` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyDiff`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyDiff.bas`
- **Verified Demo Source**: B4XPageDiff.bas (lines 57–73)
- **Web DaisyUI Mapping**: `.diff` → `B4XDaisyDiff`

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
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-[300px]` |  |
| `Rounded` | Rounded | `String` | `rounded-xl` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `DiffType` | Diff Type | `String` | `auto` | auto|image|text |
| `Position` | Position | `String` | `0.5` |  |
| `Image1` | Image 1 | `String` | `photo-1560717789-0ac7c58ac90a.webp` |  |
| `Image2` | Image 2 | `String` | `photo-1560717789-0ac7c58ac90a-blur.webp` |  |
| `Text1` | Text 1 | `String` | `DAISY` |  |
| `Text2` | Text 2 | `String` | `DAISY` |  |
| `TextSize` | Text Size | `String` | `text-4xl` |  |
| `Text1Color` | Text 1 Color | `String` | `primary` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Text2Color` | Text 2 Color | `String` | `success` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `UpdateTheme`
- `View As B4XView`
- `getDiffType As String`
- `getEnabled As Boolean`
- `getHeight As String`
- `getImage1 As String`
- `getImage2 As String`
- `getItem1View As B4XView`
- `getItem2View As B4XView`
- `getLeft As Int`
- `getPosition As Float`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getText1 As String`
- `getText1Color As String`
- `getText2 As String`
- `getText2Color As String`
- `getTextSize As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `setDiffType(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setImage1(sValue As String)`
- `setImage2(sValue As String)`
- `setItem1(vAView As B4XView)`
- `setItem2(vAView As B4XView)`
- `setLeft(iValue As Int)`
- `setPosition(fValue As Float)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setText1(sValue As String)`
- `setText1Color(sValue As String)`
- `setText2(sValue As String)`
- `setText2Color(sValue As String)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

