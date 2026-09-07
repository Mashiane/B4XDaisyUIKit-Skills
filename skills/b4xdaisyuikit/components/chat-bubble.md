# chat-bubble (`B4XDaisyChatBubble`)

DaisyUI `ChatBubble` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyChatBubble`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyChatBubble.bas`
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.chat-bubble` → `B4XDaisyChatBubble`

## 2. Verified B4X Syntax & Recipe
```b4x
' No demo found for B4XDaisyChatBubble
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyChatBubble` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyChatBubble` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `AvatarMask` | Avatar Mask | `String` | squircle | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| `AvatarSize` | Avatar Size | `Int` | 40 |  |
| `Id` | Id | `String` |  |  |
| `FromId` | From Id | `String` |  |  |
| `Variant` | Variant | `String` | neutral | neutral|primary|secondary|accent|info|success|warning|error |
| `Side` | Side | `String` | start | start|end |
| `BubbleStyle` | Bubble Style | `String` | rounded | rounded|block |
| `MaxWidthPercent` | Max Width % | `Int` | 90 |  |
| `UseFromToColors` | Use From/To Colors | `Boolean` | False |  |
| `FromBackgroundColor` | From Background | `Color` | 0xFFE5E7EB |  |
| `FromTextColor` | From Text | `Color` | 0xFF111827 |  |
| `ToBackgroundColor` | To Background | `Color` | 0xFFDBEAFE |  |
| `ToTextColor` | To Text | `Color` | 0xFF1E3A8A |  |
| `ShowOnline` | Show Online Indicator | `Boolean` | True |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |

## 5. Declared Events
- `AvatarClick (Payload As Object)`
- `BubbleClick (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `setId(Value As String)`
- `getId As String`
- `setFromId(Value As String)`
- `getFromId As String`
- `GetUsedHeight As Int`
- `setSide(Value As String)`
- `getSide As String`
- `setVariant(V As String)`
- `getVariant As String`
- `setBubbleStyle(StyleName As String)`
- `SetOutline(Enabled As Boolean, Color As Int, Width As Float)`
- `getBubbleStyle As String`
- `setMaxWidthPercent(P As Float)`
- `getMaxWidthPercent As Float`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `SetAvatarVisible(Value As Boolean)`
- `SetAvatarBitmap(bmpBmp As B4XBitmap, Tag As Object)`
- `SetAvatarStatus(Mode As String)`
- `SetAvatarStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `GetAvatarOnlineColor As Int`
- `GetAvatarOfflineColor As Int`
- `SetAvatarBorder(Color As Int, Width As Float)`
- `SetAvatarBorderInset(Inset As Float)`
- `setAvatarMask(MaskName As String)`
- `getAvatarMask As String`
- `SetGlobalMask(MaskName As String)`
- `setAvatarSize(Size As Float)`
- `SetAvatarWidth(Width As Float)`
- `SetAvatarHeight(Height As Float)`
- `GetAvatarWidth As Float`
- `GetAvatarHeight As Float`
- `getAvatarSize As Float`
- `setShowOnline(Show As Boolean)`
- `getShowOnline As Boolean`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColor As Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColor As Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColor As Int`
- `setToTextColor(Color As Int)`
- `getToTextColor As Int`
- `SetFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColors As Boolean`
- `SetVariantPalette(Palette As Map)`
- `GetVariantPalette As Map`
- `SetColors(BackOverride As Int, TextOverride As Int, MutedOverride As Int)`
- `SetHeader(Text As String)`
- `SetHeaderTime(Text As String)`
- `SetHeaderParts(NameText As String, TimeText As String)`
- `SetHeaderVisible(Value As Boolean)`
- `SetHeaderNameVisible(Value As Boolean)`
- `SetHeaderTimeVisible(Value As Boolean)`
- `SetFooter(Text As String)`
- `SetFooterVisible(Value As Boolean)`
- `SetMessage(Text As String)`
- `SetBubbleVisible(Value As Boolean)`
- `SetDebugBorders(Enabled As Boolean)`
- `GetDebugBorders As Boolean`
- `SetStatus(Mode As String, ExtraText As String)`
- `SetImage(bmpBmp As B4XBitmap, MaxHeight As Int)`
- `SetCustomContent(View As B4XView)`
- `SetContentAll(Header As String, Body As String, Footer As String, SideNow As String, VariantNow As String)`
- `MeasureHeight(AvailableWidth As Int) As Int`
- `RaiseBubbleClick(Tag As Object)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

