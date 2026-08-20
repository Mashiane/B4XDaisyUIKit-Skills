# chat (`B4XDaisyChat`)

Chat message bubble container with avatar, sender name, time, bubble message, footer, and alignment (start/end).

## 1. Overview
- **Class**: `B4XDaisyChat`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyChat.bas`
- **Web DaisyUI Mapping**: `.chat` → `B4XDaisyChat`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim chatMsg As B4XDaisyChat
chatMsg.Initialize(Me, "chatMsg")
chatMsg.AddToParentAt(pnlHost, pad, y, maxW, 80dip)
chatMsg.Theme = "light"
y = y + 80dip + gap
```

## 3. Native Composition Rules & Gotchas
- Specify `Placement = "start"` (incoming / left) or `"end"` (outgoing / right) for each message.
- Add messages using `AddMessage(Text, Placement, Variant, Time, AvatarImage)`.
- Set `Variant` (`"primary"`, `"secondary"`, `"neutral"`) to distinguish message senders.
- Use `B4XDaisyChatBubble` sub-components for custom bubble layouts and delivery status footers.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| AvatarMask | Avatar Mask | String | squircle | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| AvatarSize | Avatar Size | Int | 40 |  |
| FromBackgroundColor | From Background | Color | 0xFF4338CA |  |
| FromTextColor | From Text | Color | 0xFFFFFFFF |  |
| ToBackgroundColor | To Background | Color | 0xFF0EA5E9 |  |
| ToTextColor | To Text | Color | 0xFF082F49 |  |
| UseFromToColors | Use From/To Colors | Boolean | True |  |
| Theme | Theme | String | light | light|default |
| DateTimeFormat | Date Time Format | String | D |  |
| UseTimeAgo | Use Time Ago | Boolean | False |  |
| ShowTimeAgoForToday | Time Ago For Today | Boolean | True |  |
| VerticalGap | Vertical Gap | Int | 8 |  |
| Width | Width | Int | 0 |  |
| Height | Height | Int | 0 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |

## 5. Declared Events
- `AvatarClick (Tag As Object)`

## 6. Public Methods & APIs
- `AddMessage(mMessage As Map, bScrollTo As Boolean) As String`
- `AddToParent(vParent As B4XView)`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AppendMessage(mMessage As Map) As String`
- `AppendMessageAndScroll(mMessage As Map, bSmooth As Boolean) As String`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `ClearConversations`
- `CreateVariant(iBackColor As Int, iTextColor As Int) As Map`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DeleteMessageById(sBubbleId As String) As Boolean`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAvatarFiles As List`
- `getAvatarMask As String`
- `getAvatarSize As Int`
- `getBubbleIds As List`
- `GetComputedHeight As Int`
- `getDateTimeFormat As String`
- `getFromBackgroundColor As Int`
- `getFromTextColor As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMargin As String`
- `getMessage(sBubbleId As String) As Map`
- `getMessageById(sBubbleId As String) As Map`
- `getOfflineStatusColor As Int`
- `getOnlineStatusColor As Int`
- `getPadding As String`
- `getPalette As Map`
- `getShowTimeAgoForToday As Boolean`
- `getTag As Object`
- `getTheme As String`
- `getToBackgroundColor As Int`
- `getTop As Int`
- `getToTextColor As Int`
- `getUseFromToColors As Boolean`
- `getUseTimeAgo As Boolean`
- `getVerticalGap As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `LoadAvatarFilesFromAssets(lstFiles As List)`
- `RandomAvatarFileOrBlank(iBlankPct As Int) As String`
- `RandomAvatarStatus As String`
- `RegisterTheme(sName As String, mPaletteMap As Map)`
- `RemoveViewFromParent`
- `ReplaceMessageById(sBubbleId As String, mMessage As Map) As Boolean`
- `Resize(dWidth As Double, dHeight As Double)`
- `ScrollToBottom`
- `ScrollToMessage(sBubbleId As String)`
- `ScrollToTop`
- `SendToBack`
- `setAvatarFiles(lstFiles As List)`
- `setAvatarMask(sMask As String)`
- `setAvatarSize(iSize As Int)`
- `setBubbleAvatarStatusById(sBubbleId As String, sMode As String)`
- `setConversations(lstMessages As List)`
- `setDateTimeFormat(sValue As String)`
- `setFromBackgroundColor(iColor As Int)`
- `setFromTextColor(iColor As Int)`
- `setFromToColors(iFromBack As Int, iFromText As Int, iToBack As Int, iToText As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setMask(sMask As String)`
- `setOnlineStatusColors(iOnlineColor As Int, iOfflineColor As Int)`
- `setPadding(sValue As String)`
- `setShowTimeAgoForToday(bEnabled As Boolean)`
- `setSize(iWidth As Int, iHeight As Int)`
- `setTag(oValue As Object)`
- `setTheme(sName As String)`
- `setToBackgroundColor(iColor As Int)`
- `setTop(iValue As Int)`
- `setToTextColor(iColor As Int)`
- `setUseFromToColors(bEnabled As Boolean)`
- `setUseTimeAgo(bEnabled As Boolean)`
- `setVerticalGap(iGap As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ShowOnline(bEnabled As Boolean)`
- `SmoothScrollToBottom(iDurationMs As Int) As ResumableSub`
- `SmoothScrollToMessage(sBubbleId As String, iDurationMs As Int) As ResumableSub`
- `SmoothScrollToPosition(iTarget As Int, iDurationMs As Int) As ResumableSub`
- `SmoothScrollToTop(iDurationMs As Int) As ResumableSub`
- `UpdateAvatarById(sBubbleId As String, bmpAvatarBitmap As B4XBitmap) As Boolean`
- `UpdateFooterById(sBubbleId As String, sFooterText As String) As Boolean`
- `UpdateHeaderById(sBubbleId As String, sHeaderName As String, sHeaderTime As String) As Boolean`
- `UpdateMessage(mMessage As Map) As Boolean`
- `UpdateMessageById(sBubbleId As String, mFields As Map) As Boolean`
- `UpdateOnlineStatusById(sBubbleId As String, sStatus As String, iOnlineColor As Int) As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyChatBubble`**: Individual message bubble container managed internally by `B4XDaisyChat.AddMessage` / `AddMessage2`. Supports variant colors (`primary`, `secondary`, `accent`), placement (`start`/`end`), header time, and footer delivery status.
