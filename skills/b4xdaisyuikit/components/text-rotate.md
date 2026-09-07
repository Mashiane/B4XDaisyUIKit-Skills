# text-rotate (`B4XDaisyTextRotate`)

DaisyUI `TextRotate` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyTextRotate`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyTextRotate.bas`
- **Verified Demo Source**: B4XPageTextRotate.bas
- **Web DaisyUI Mapping**: `.text-rotate` → `B4XDaisyTextRotate`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<span class="text-rotate">
  <span>
    <span>Word 1</span>
    <span>Word 2</span>
    <span>Word 3</span>
    <span>Word 4</span>
    <span>Word 5</span>
    <span>Word 6</span>
  </span>
</span>
```
Example:
Big font size, horizontally centered
```html
<span class="text-rotate max-md:text-3xl text-7xl font-title">
  <span class="justify-items-center">
    <span>DESIGN</span>
    <span>DEVELOP</span>
    <span>DEPLOY</span>
    <span>SCALE</span>
    <span>MAINTAIN</span>
    <span>REPEAT</span>
  </span>
</span>
```
Rotating words in a sentence, different colors for each word
```html
<span>
  Providing AI Agents for 
  <span class="text-rotate">
    <span>
      <span class="bg-teal-400 text-teal-800 px-2">Designers</span>
      <span class="bg-red-400 text-red-800 px-2">Developers</span>
      <span class="bg-blue-400 text-blue-800 px-2">Managers</span>
    </span>
  </span>
</span>
```
Custom line height in case you have a tall font or need more vertical spacing between lines
```html
<span class="text-rotate max-md:text-3xl text-7xl font-title leading-[2]">
  <span class="justify-items-center">
    <span>DESIGN</span>
    <span>DEVELOP</span>
    <span>DEPLOY</span>
    <span>SCALE</span>
    <span>MAINTAIN</span>
    <span>REPEAT</span>
  </span>
</span>
```

## 2. Verified B4X Syntax & Recipe
```b4x
y = AddSectionTitle("Basic Rotation (3 items, text-sm, 3s)", y, maxW)
    y = AddSectionNote("Rotates through 3 words every 3 seconds using SetItems.", y, maxW)
    Dim tr1 As B4XDaisyTextRotate
    tr1.Initialize(Me, "tr1")
    tr1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 42dip)
    tr1.setDuration("3s")
    tr1.SetItems(Array As String("ONE", "TWO", "THREE"))
    mRotates.Add(tr1)
    y = y + tr1.GetComputedHeight + 18dip

    ' Example 2: Six words, large, centered
    y = AddSectionTitle("Six Words, text-3xl, Centered (3s)", y, maxW)
    y = AddSectionNote("Large bold text, centered. Each item added via AddItem then Refresh to start.", y, maxW)
    Dim tr2 As B4XDaisyTextRotate
    tr2.Initialize(Me, "tr2")
    tr2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 48dip)
    tr2.setDuration("3s")
    Dim words(6) As String
    words(0) = "DESIGN"
    words(1) = "DEVELOP"
    words(2) = "DEPLOY"
    words(3) = "SCALE"
    words(4) = "MAINTAIN"
    words(5) = "REPEAT"
    For i = 0 To 5
        Dim dt2 As B4XDaisyText
        dt2.Initialize(Me, "")
        dt2.Text = words(i)
        dt2.TextSize = "text-3xl"
        dt2.FontBold = True
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyTextRotate` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, GetItems, getDuration` (+ 7 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Items` | Items | `List` | 1 |  |
| `Duration` | Duration | `String` | 3s |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `Stop`
- `Start`
- `GetItems As List`
- `SetItems(lstItemList As List)`
- `AddItem(dt As B4XDaisyText)`
- `Clear`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setDuration(Value As String)`
- `getDuration As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

