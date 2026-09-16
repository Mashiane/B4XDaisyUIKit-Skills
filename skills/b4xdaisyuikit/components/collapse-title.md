# collapse-title (`B4XDaisyCollapseTitle`)

DaisyUI `CollapseTitle` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCollapseTitle`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyCollapseTitle.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyCollapseTitle.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.collapse-title` → `B4XDaisyCollapseTitle`

## 2. Verified B4X Syntax & Recipe
```b4x
' Collapse title header element
Dim colTitle As B4XDaisyCollapseTitle
colTitle.Initialize(Me, "colTitle")
colTitle.AddToParent(pnlHost, 0, 0, maxW, 40dip)
colTitle.Text = "Click to toggle content"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCollapseTitle` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCollapseTitle` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | Collapse Title |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `IconName` | Icon Name | `String` |  |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `IconColor` | Icon Color | `Color` | 0x00000000 |  |
| `Visible` | Visible | `Boolean` | True |  |

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
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setSize(Value As String)`
- `getSize As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setIconName(Value As String)`
- `getIconName As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

