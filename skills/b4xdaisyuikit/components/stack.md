# stack (`B4XDaisyStack`)

DaisyUI `Stack` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyStack`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyStack.bas`
- **Verified Demo Source**: B4XPageStack.bas (lines 53–180)
- **Web DaisyUI Mapping**: `.stack` → `B4XDaisyStack`

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
| `Width` | Width | `String` | `w-10` |  |
| `Height` | Height | `String` | `h-10` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `Direction` | Direction | `String` | `bottom` | bottom|top|start|end |
| `StepPrimary` | Primary Step | `Int` | `7` |  |
| `StepSecondary` | Secondary Step | `Int` | `3` |  |
| `AutoFillLayers` | Auto Fill Layers | `Boolean` | `True` |  |
| `LayoutAnimationMs` | Layout Animation | `Int` | `0` |  |
| `Rounded` | Rounded | `String` | `rounded-box` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `StrictDaisyParity` | Strict Daisy Parity | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

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
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveLayerAt(iIndex As Int) As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayers(lstViews As List)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoFillLayers As Boolean`
- `getDirection As String`
- `getHeight As Float`
- `getLayer(iIndex As Int) As B4XView`
- `getLayerCount As Int`
- `getLayerTag(iIndex As Int) As Object`
- `getLayoutAnimationMs As Int`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getStepPrimary As Float`
- `getStepSecondary As Float`
- `getStrictDaisyParity As Boolean`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `setAutoFillLayers(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setHeight(oValue As Object)`
- `setLayerTag(iIndex As Int, oTag As Object)`
- `setLayoutAnimationMs(iValue As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(iWidth As Int, iHeight As Int)`
- `setStepPrimary(oValue As Object)`
- `setStepSecondary(oValue As Object)`
- `setStrictDaisyParity(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

