# diff (`B4XDaisyDiff`)

Visual comparison viewer with a draggable split slider to compare two images or text views side by side.

## 1. Overview
- **Class**: `B4XDaisyDiff`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDiff.bas`
- **Web DaisyUI Mapping**: `.diff` → `B4XDaisyDiff`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim df As B4XDaisyDiff
df.Initialize(Me, "df")
df.AddToParent(pnlHost, pad, y, maxW, 220dip)
df.Image1 = "before.jpg"
df.Image2 = "after.jpg"
df.Position = "0.5"
df.Rounded = "rounded-xl"
df.Shadow = "md"
y = y + 220dip + gap
```

## 3. Native Composition Rules & Gotchas
- Visual before/after comparison slider comparing two images or content views.
- Supply two images of identical pixel dimensions to ensure clean alignment.
- Set `SplitPosition` (0–100) to control the initial separator position.
- Supports touch dragging; maintain `DisallowParentIntercept(Action)` during handle movement.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-full |  |
| Height | Height | String | h-[300px] |  |
| Rounded | Rounded | String | rounded-xl | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| DiffType | Diff Type | String | auto | auto|image|text |
| Position | Position | String | 0.5 |  |
| Image1 | Image 1 | String | photo-1560717789-0ac7c58ac90a.webp |  |
| Image2 | Image 2 | String | photo-1560717789-0ac7c58ac90a-blur.webp |  |
| Text1 | Text 1 | String | DAISY |  |
| Text2 | Text 2 | String | DAISY |  |
| TextSize | Text Size | String | text-4xl |  |
| Text1Color | Text 1 Color | String | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| Text2Color | Text 2 Color | String | success | none|neutral|primary|secondary|accent|info|success|warning|error |
| Visible | Visible | Boolean | True |  |
| Enabled | Enabled | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setDiffType(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setImage1(sValue As String)`
- `setImage2(sValue As String)`
- `setItem1(vAView As B4XView)`
- `setItem2(vAView As B4XView)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
