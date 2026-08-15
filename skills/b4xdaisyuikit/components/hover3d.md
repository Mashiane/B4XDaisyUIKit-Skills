# hover3d (`B4XDaisyHover3d`)

Tilt-responsive card wrapper that creates a 3D perspective effect when touched/hovered. Supports shine overlay, scaling, and custom content.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyHover3d`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyHover3d.bas`
- **Verified Demos**: `B4XPageHover3d.bas`
- **Web DaisyUI Mapping**: `.hover3d` → `B4XDaisyHover3d`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim h3d As B4XDaisyHover3d
h3d.Initialize(Me, "h3d")
h3d.AddToParent(pnlHost, pad, y, maxW, 200dip)
h3d.ContentType = "custom"
h3d.MaxTilt = 12
h3d.ScaleOnHover = 1.04
h3d.ShineEffect = True
h3d.Shadow = "lg"
h3d.Rounded = "rounded-2xl"

' Add content
Dim txt As B4XDaisyText
txt.Initialize(Me, "txt")
txt.Text = "Interactive card"
h3d.AddView(txt.getView, 16dip, 16dip, maxW - 32dip, 40dip)
y = y + h3d.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Interactive 3D perspective tilt effect responding to touch drag gestures.
- Wrap a target card or image view using `h3d.Wrap(myCard.getView)`.
- Configure `MaxTilt` angle and `Perspective` depth for subtle or dramatic 3D realism.
- Maintain `DisallowParentIntercept(Action)` during touch movement.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| MaxTilt | Max Tilt | Float | 10 |  |
| ScaleOnHover | Scale On Hover | Float | 1.05 |  |
| ShineEffect | Shine Effect | Boolean | True |  |
| Perspective | Perspective | Float | 1200 |  |
| ResetDuration | Reset Duration | Int | 500 |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Rounded | Rounded | String | rounded-2xl | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Padding | Padding | String | p-0 |  |
| Margin | Margin | String |  |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-content |  |
| ContentType | Content Type | String | custom | custom|image |
| Image | Image | String |  |  |
| ContentBackgroundColor | Content Background Color | Color | 0x00000000 |  |
| ContentRounded | Content Rounded | String | none | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| ContentPadding | Content Padding | String |  |  |
| ContentShadow | Content Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| BackgroundColor | Background Color | Color | 0x00000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveAllViews`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `UpdateTheme`
- `getBackgroundColor As Int`
- `getContentBackgroundColor As Int`
- `getContentPadding As String`
- `getContentPanel As B4XView`
- `getContentRounded As String`
- `getContentShadow As String`
- `getContentType As String`
- `getEnabled As Boolean`
- `getHeight As String`
- `getImage As String`
- `getLeft As Int`
- `getMargin As String`
- `getMaxTilt As Float`
- `getPadding As String`
- `getPerspective As Float`
- `getResetDuration As Int`
- `getRounded As String`
- `getScaleOnHover As Float`
- `getShadow As String`
- `getShineEffect As Boolean`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setContentBackgroundColor(Value As Int)`
- `setContentPadding(Value As String)`
- `setContentRounded(Value As String)`
- `setContentShadow(Value As String)`
- `setContentType(Value As String)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As String)`
- `setImage(Value As String)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setMaxTilt(Value As Float)`
- `setPadding(Value As String)`
- `setPerspective(Value As Float)`
- `setResetDuration(Value As Int)`
- `setRounded(Value As String)`
- `setScaleOnHover(Value As Float)`
- `setShadow(Value As String)`
- `setShineEffect(Value As Boolean)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
