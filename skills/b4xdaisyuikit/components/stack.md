# stack (`B4XDaisyStack`)

CSS stacking component for layered views — offset cards, image stacks, avatar piles, and decorative layered effects.

## 1. Overview
- **Class**: `B4XDaisyStack`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStack.bas`
- **Web DaisyUI Mapping**: `.stack` → `B4XDaisyStack`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim stk As B4XDaisyStack
stk.Initialize(Me, "stk")
stk.AddToParent(pnlHost, pad, y, 200dip, 120dip)
stk.Direction = "bottom"
stk.StepPrimary = 7
stk.StepSecondary = 3
stk.RoundedBox = True

' Add layers (bottom to top order)
Dim layer1 As B4XDaisySvgIcon
layer1.Initialize(Me, "layer1")
stk.AddLayer(layer1.getView)

stk.AddColorLayer(Colors.LightGray, "Layer 1", Colors.Black, 12dip)
stk.AddColorLayer(Colors.Gray, "Layer 2", Colors.White, 12dip)
stk.AddColorLayer(Colors.DarkGray, "Layer 3", Colors.White, 12dip)
y = y + stk.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Visual deck of overlapping cards with tap-to-cycle gestures.
- Add stacked layers via `AddLayer(view)` or `AddImageLayer(imagePath)`.
- Configure `StackOffset` and `CardPerspective`.
- Handle top card interaction in the `TopLayerClick (LayerIndex As Int)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-10 |  |
| Height | Height | String | h-10 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Direction | Direction | String | bottom | bottom|top|start|end |
| StepPrimary | Primary Step | Int | 7 |  |
| StepSecondary | Secondary Step | Int | 3 |  |
| AutoFillLayers | Auto Fill Layers | Boolean | True |  |
| LayoutAnimationMs | Layout Animation | Int | 0 |  |
| RoundedBox | Rounded Box | Boolean | False |  |
| StrictDaisyParity | Strict Daisy Parity | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddColorLayer(iBackColor As Int, sText As String, iTextColor As Int, fCornerRadius As Float) As B4XView`
- `AddLayer(vChildView As B4XView) As Int`
- `AddLayerWithTag(vChildView As B4XView, oTag As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoFillLayers As Boolean`
- `GetComputedHeight As Int`
- `getDirection As String`
- `getHeight As Float`
- `getLayer(iIndex As Int) As B4XView`
- `getLayerCount As Int`
- `getLayerTag(iIndex As Int) As Object`
- `getLayoutAnimationMs As Int`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getRoundedBox As Boolean`
- `getStepPrimary As Float`
- `getStepSecondary As Float`
- `getStrictDaisyParity As Boolean`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveLayerAt(iIndex As Int) As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoFillLayers(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setHeight(oValue As Object)`
- `SetLayers(lstViews As List)`
- `setLayerTag(iIndex As Int, oTag As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLayoutAnimationMs(iValue As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(iWidth As Int, iHeight As Int)`
- `setStepPrimary(oValue As Object)`
- `setStepSecondary(oValue As Object)`
- `setStrictDaisyParity(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
