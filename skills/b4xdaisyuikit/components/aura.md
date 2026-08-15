# aura (`B4XDaisyAura`)

Animated glow / shimmer border effect that wraps a child view. Styles include glow, rainbow, dual-color, holographic, gold, and silver.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAura`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAura.bas`
- **Verified Demos**: `B4XPageAura.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartRotation`
- `StopRotation`
- `SyncRotation`
- `Wrap(Child As B4XView) As B4XView`
- `getAutoStart As Boolean`
- `getBackgroundColor As Int`
- `getColor As Int`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `setAutoStart(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setColor(Value As Int)`
- `setDuration(Value As Int)`
- `setLeft(Value As Int)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
