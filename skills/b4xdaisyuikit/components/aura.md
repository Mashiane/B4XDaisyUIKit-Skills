# aura (`B4XDaisyAura`)

Animated glow / shimmer border effect that wraps a child view. Styles include glow, rainbow, dual-color, holographic, gold, and silver.

## 1. Overview
- **Class**: `B4XDaisyAura`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAura.bas`
- **Web DaisyUI Mapping**: `.aura` → `B4XDaisyAura`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim aur As B4XDaisyAura
aur.Initialize(Me, "aur")
aur.AddToParent(pnlHost, pad, y, maxW, 160dip)
aur.Style = "rainbow"
aur.Size = "lg"
aur.AutoStart = True

' Place a card or image inside the aura
aur.Wrap(myCard.getView)
y = y + aur.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Aura must wrap exactly **one direct child view** via `aur.Wrap(myView)` or `AddViewToContent`.
- Use Aura sparingly — **maximum 1 per screen** for the VIP/hero highlight to prevent visual noise.
- Use `AutoStart = True` to start the glow animation immediately upon rendering.
- Use `StopRotation` to pause animations when the page is hidden, `StartRotation` to resume.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Style | Style | String | default | default|glow|dual|rainbow|holo|gold|silver |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Color | Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color (Light Beam) | Color | 0x00FFFFFF |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Duration | Duration (ms) | Int | 3000 |  |
| Visible | Visible | Boolean | True |  |
| AutoStart | AutoStart | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoStart As Boolean`
- `getBackgroundColor As Int`
- `getColor As Int`
- `GetComputedHeight As Int`
- `getContainer As B4XView`
- `getContentContainer As B4XView`
- `getDuration As Int`
- `getLeft As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoStart(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setColor(iValue As Int)`
- `setDuration(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `StartRotation`
- `StopRotation`
- `SyncRotation`
- `View As B4XView`
- `Wrap(vChild As B4XView) As B4XView`


## 7. Public Fields
- `mBase As B4XView`
