# card-title (`B4XDaisyCardTitle`)

DaisyUI `CardTitle` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCardTitle`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyCardTitle.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyCardTitle.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.card-title` → `B4XDaisyCardTitle`

## 2. Verified B4X Syntax & Recipe
```b4x
' Direct composition: Card title container
Dim cardTitle As B4XDaisyCardTitle
cardTitle.Initialize(Me, "cardTitle")
cardTitle.AddToParent(pnlHost, 0, 0, maxW, 40dip)
cardTitle.Text = "Card Title"
cardTitle.Size = "md"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCardTitle` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCardTitle` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | Card Title |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Centered` | Centered | `Boolean` | False |  |
| `Gap` | Gap | `Int` | 8 |  |
| `SingleLine` | Single Line | `Boolean` | False |  |
| `Ellipsize` | Ellipsize | `String` | none | none|start|middle|end|marquee |
| `Visible` | Visible | `Boolean` | True |  |
| `AutoResize` | Auto Resize | `Boolean` | True |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setText(Value As String)`
- `getText As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setCentered(Value As Boolean)`
- `getCentered As Boolean`
- `setGapDip(Value As Int)`
- `getGapDip As Int`
- `setGap(Value As Int)`
- `getGap As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setEllipsize(Value As String)`
- `getEllipsize As String`
- `getTextSize As Float`
- `getLabel As B4XView`
- `getExtrasContainer As B4XView`
- `getContainer As B4XView`
- `Relayout`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `View As B4XView`
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

## 7. Public Fields
- `mBase As B4XView`

