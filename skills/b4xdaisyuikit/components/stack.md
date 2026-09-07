# stack (`B4XDaisyStack`)

DaisyUI `Stack` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyStack`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStack.bas`
- **Verified Demo Source**: B4XPageStack.bas
- **Web DaisyUI Mapping**: `.stack` → `B4XDaisyStack`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<div class="stack {MODIFIER}">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub CreateStackPhotosDemo(TargetSV As ScrollView, TopOffset As Int) As Int
	Dim w As Int = B4XDaisyVariants.TailwindSizeToDip("w-48", 192dip)
	Dim h As Int = B4XDaisyVariants.TailwindSizeToDip("h-64", 256dip)
	
	Dim lbl As B4XDaisyText
	lbl.Initialize(Me, "")
	lbl.AddToParent(TargetSV.Panel, 20dip, TopOffset, 300dip, 30dip)
	lbl.Text = "Photos (direction: bottom)"
	lbl.TextColor = xui.Color_Black
	lbl.TextSize = 14
	lbl.setAutoResize(False)
	TopOffset = TopOffset + lbl.GetComputedHeight
	
	Dim photoStack As B4XDaisyStack
	photoStack.Initialize(Me, "")
	Dim stackView As B4XView = photoStack.AddToParent(TargetSV.Panel, 50dip, TopOffset, w, h)
	photoStack.Direction = "bottom"
	photoStack.setLayoutAnimationMs(0)
	photoStack.setStepPrimary(18)
	photoStack.setStepSecondary(8)
	
	AddPhotoLayer(TargetSV.Panel, photoStack, stackView, w, h, "photo-1559703248-dcaaec9fab78")
	AddPhotoLayer(TargetSV.Panel, photoStack, stackView, w, h, "photo-1565098772267-60af42b81ef2")
	AddPhotoLayer(TargetSV.Panel, photoStack, stackView, w, h, "photo-1572635148818-ef6fd45eb394")
	
	RefreshAvatarLayerSizes
	StackEntries.Add(CreateMap("stack": photoStack, "stepPrimary": 18, "stepSecondary": 8, "animationMs": 220))
	
	Return TopOffset + h + 30dip
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyStack` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddViewToContent, AddLayerWithTag, SetLayers` (+ 25 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | w-10 |  |
| `Height` | Height | `String` | h-10 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `Direction` | Direction | `String` | bottom | bottom|top|start|end |
| `StepPrimary` | Primary Step | `Int` | 7 |  |
| `StepSecondary` | Secondary Step | `Int` | 3 |  |
| `AutoFillLayers` | Auto Fill Layers | `Boolean` | True |  |
| `LayoutAnimationMs` | Layout Animation | `Int` | 0 |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `StrictDaisyParity` | Strict Daisy Parity | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddLayer(ChildView As B4XView) As Int`
- `AddLayerWithTag(ChildView As B4XView, Tag As Object) As Int`
- `SetLayers(lstViews As List)`
- `RemoveLayerAt(Index As Int) As Boolean`
- `Clear`
- `getLayer(Index As Int) As B4XView`
- `getLayerCount As Int`
- `setLayerTag(Index As Int, Tag As Object)`
- `getLayerTag(Index As Int) As Object`
- `setDirection(Value As String)`
- `getDirection As String`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Width As Int, Height As Int)`
- `setStepPrimary(Value As Object)`
- `getStepPrimary As Float`
- `setStepSecondary(Value As Object)`
- `getStepSecondary As Float`
- `setAutoFillLayers(Value As Boolean)`
- `getAutoFillLayers As Boolean`
- `setLayoutAnimationMs(Value As Int)`
- `getLayoutAnimationMs As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setStrictDaisyParity(Value As Boolean)`
- `getStrictDaisyParity As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `AddColorLayer(BackColor As Int, Text As String, TextColor As Int, CornerRadius As Float) As B4XView`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

