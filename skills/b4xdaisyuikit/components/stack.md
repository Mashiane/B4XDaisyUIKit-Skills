# stack (`B4XDaisyStack`)

CSS stacking component for layered views — offset cards, image stacks, avatar piles, and decorative layered effects.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyStack`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStack.bas`
- **Verified Demos**: `B4XPageStack.bas, B4XPageStackPhotos.bas`
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
- `AddColorLayer(BackColor As Int, Text As String, TextColor As Int, CornerRadius As Float) As B4XView`
- `AddLayer(ChildView As B4XView) As Int`
- `AddLayerWithTag(ChildView As B4XView, Tag As Object) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `RemoveLayerAt(Index As Int) As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayers(Views As List)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `getAutoFillLayers As Boolean`
- `getDirection As String`
- `getHeight As Float`
- `getLayer(Index As Int) As B4XView`
- `getLayerCount As Int`
- `getLayerTag(Index As Int) As Object`
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
- `setAutoFillLayers(Value As Boolean)`
- `setDirection(Value As String)`
- `setHeight(Value As Object)`
- `setLayerTag(Index As Int, Tag As Object)`
- `setLayoutAnimationMs(Value As Int)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setSize(Width As Int, Height As Int)`
- `setStepPrimary(Value As Object)`
- `setStepSecondary(Value As Object)`
- `setStrictDaisyParity(Value As Boolean)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
