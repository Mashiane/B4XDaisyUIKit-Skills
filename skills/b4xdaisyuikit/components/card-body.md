# card-body (`B4XDaisyCardBody`)

DaisyUI `CardBody` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCardBody`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyCardBody.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyCardBody.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.card-body` → `B4XDaisyCardBody`

## 2. Verified B4X Syntax & Recipe
```b4x
' Direct composition: Card body inside a parent card container
Dim cardBody As B4XDaisyCardBody
cardBody.Initialize(Me, "cardBody")
cardBody.AddToParent(pnlHost, 0, 0, maxW, 120dip)
cardBody.Size = "md"
cardBody.Visible = True
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyCardBody` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyCardBody` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Height` | Height | `String` | auto |  |
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
- `setSize(Value As String)`
- `getSize As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `getPaddingDip As Int`
- `getGapDip As Int`
- `getBodyTextSize As Float`
- `setTag(Value As Object)`
- `getTag As Object`
- `getContainer As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

