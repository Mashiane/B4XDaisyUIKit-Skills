# chat-bubble (`B4XDaisyChatBubble`)

DaisyUI `ChatBubble` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyChatBubble`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source**: `B4XDaisyChatBubble.bas`
- **Verified Demo Source**: None (no demo found in B4A demo pages)
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
| `AvatarMask` | Avatar Mask | `String` | `squircle` | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| `AvatarSize` | Avatar Size | `Int` | `40` |  |
| `Id` | Id | `String` | `` |  |
| `FromId` | From Id | `String` | `` |  |
| `Variant` | Variant | `String` | `neutral` | neutral|primary|secondary|accent|info|success|warning|error |
| `Side` | Side | `String` | `start` | start|end |
| `BubbleStyle` | Bubble Style | `String` | `rounded` | rounded|block |
| `MaxWidthPercent` | Max Width % | `Int` | `90` |  |
| `UseFromToColors` | Use From/To Colors | `Boolean` | `False` |  |
| `FromBackgroundColor` | From Background | `Color` | `0xFFE5E7EB` |  |
| `FromTextColor` | From Text | `Color` | `0xFF111827` |  |
| `ToBackgroundColor` | To Background | `Color` | `0xFFDBEAFE` |  |
| `ToTextColor` | To Text | `Color` | `0xFF1E3A8A` |  |
| `ShowOnline` | Show Online Indicator | `Boolean` | `True` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |

## 5. Declared Events
- `AvatarClick (Payload As Object)`
- `BubbleClick (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView)`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetAvatarHeight As Float`
- `GetAvatarOfflineColor As Int`
- `GetAvatarOnlineColor As Int`
- `GetAvatarWidth As Float`
- `GetComputedHeight As Int`
- `GetDebugBorders As Boolean`
- `GetUsedHeight As Int`
- `GetVariantPalette As Map`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `MeasureHeight(iAvailableWidth As Int) As Int`
- `RaiseBubbleClick(oTag As Object)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetAvatarBitmap(bmpBmp As B4XBitmap, oTag As Object)`
- `SetAvatarBorder(iColor As Int, fWidth As Float)`
- `SetAvatarBorderInset(fInset As Float)`
- `SetAvatarHeight(fHeight As Float)`
- `SetAvatarStatus(sMode As String)`
- `SetAvatarStatusColors(iOnlineColor As Int, iOfflineColor As Int)`
- `SetAvatarVisible(bValue As Boolean)`
- `SetAvatarWidth(fWidth As Float)`
- `SetBubbleVisible(bValue As Boolean)`
- `SetColors(iBackOverride As Int, iTextOverride As Int, iMutedOverride As Int)`
- `SetContentAll(sHeader As String, sBody As String, sFooter As String, sSideNow As String, sVariantNow As String)`
- `SetCustomContent(vView As B4XView)`
- `SetDebugBorders(bEnabled As Boolean)`
- `SetFooter(sText As String)`
- `SetFooterVisible(bValue As Boolean)`
- `SetFromToColors(iFromBack As Int, iFromText As Int, iToBack As Int, iToText As Int)`
- `SetGlobalMask(sMaskName As String)`
- `SetHeader(sText As String)`
- `SetHeaderNameVisible(bValue As Boolean)`
- `SetHeaderParts(sNameText As String, sTimeText As String)`
- `SetHeaderTime(sText As String)`
- `SetHeaderTimeVisible(bValue As Boolean)`
- `SetHeaderVisible(bValue As Boolean)`
- `SetImage(bmpBmp As B4XBitmap, iMaxHeight As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetMessage(sText As String)`
- `SetOutline(bEnabled As Boolean, iColor As Int, fWidth As Float)`
- `SetStatus(sMode As String, sExtraText As String)`
- `SetVariantPalette(mPalette As Map)`
- `View As B4XView`
- `getAvatarMask As String`
- `getAvatarSize As Float`
- `getBubbleStyle As String`
- `getFromBackgroundColor As Int`
- `getFromId As String`
- `getFromTextColor As Int`
- `getHeight As Int`
- `getId As String`
- `getLeft As Int`
- `getMargin As String`
- `getMaxWidthPercent As Float`
- `getPadding As String`
- `getShowOnline As Boolean`
- `getSide As String`
- `getToBackgroundColor As Int`
- `getToTextColor As Int`
- `getTop As Int`
- `getUseFromToColors As Boolean`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAvatarMask(sMaskName As String)`
- `setAvatarSize(fSize As Float)`
- `setBubbleStyle(sStyleName As String)`
- `setFromBackgroundColor(iColor As Int)`
- `setFromId(sValue As String)`
- `setFromTextColor(iColor As Int)`
- `setHeight(iValue As Int)`
- `setId(sValue As String)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setMaxWidthPercent(fP As Float)`
- `setPadding(sValue As String)`
- `setShowOnline(bShow As Boolean)`
- `setSide(sValue As String)`
- `setToBackgroundColor(iColor As Int)`
- `setToTextColor(iColor As Int)`
- `setTop(iValue As Int)`
- `setUseFromToColors(bEnabled As Boolean)`
- `setVariant(sV As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

