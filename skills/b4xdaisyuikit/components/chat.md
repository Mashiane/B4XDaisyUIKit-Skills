# chat (`B4XDaisyChat`)

Chat message bubble container with avatar, sender name, time, bubble message, footer, and alignment (start/end).

## 1. Overview & Verification Status
- **Class**: `B4XDaisyChat`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyChat.bas`
- **Verified Demos**: `B4XPageChat.bas`
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
- `AddMessage(Message As Map, ScrollTo As Boolean) As String`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AppendMessage(Message As Map) As String`
- `AppendMessageAndScroll(Message As Map, Smooth As Boolean) As String`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `ClearConversations`
- `CreateVariant(BackColor As Int, TextColor As Int) As Map`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DeleteMessageById(BubbleId As String) As Boolean`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `LoadAvatarFilesFromAssets(Files As List)`
- `RandomAvatarFileOrBlank(BlankPct As Int) As String`
- `RandomAvatarStatus As String`
- `RegisterTheme(Name As String, PaletteMap As Map)`
- `RemoveViewFromParent`
- `ReplaceMessageById(BubbleId As String, Message As Map) As Boolean`
- `Resize(Width As Double, Height As Double)`
- `ScrollToBottom`
- `ScrollToMessage(BubbleId As String)`
- `ScrollToTop`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowOnline(Enabled As Boolean)`
- `SmoothScrollToBottom(DurationMs As Int) As ResumableSub`
- `SmoothScrollToMessage(BubbleId As String, DurationMs As Int) As ResumableSub`
- `SmoothScrollToPosition(Target As Int, DurationMs As Int) As ResumableSub`
- `SmoothScrollToTop(DurationMs As Int) As ResumableSub`
- `UpdateAvatarById(BubbleId As String, AvatarBitmap As B4XBitmap) As Boolean`
- `UpdateFooterById(BubbleId As String, FooterText As String) As Boolean`
- `UpdateHeaderById(BubbleId As String, HeaderName As String, HeaderTime As String) As Boolean`
- `UpdateMessage(Message As Map) As Boolean`
- `UpdateMessageById(BubbleId As String, Fields As Map) As Boolean`
- `UpdateOnlineStatusById(BubbleId As String, Status As String, OnlineColor As Int) As Boolean`
- `View As B4XView`
- `getAvatarFiles As List`
- `getAvatarMask As String`
- `getAvatarSize As Int`
- `getBubbleIds As List`
- `getDateTimeFormat As String`
- `getFromBackgroundColor As Int`
- `getFromTextColor As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMargin As String`
- `getMessage(BubbleId As String) As Map`
- `getMessageById(BubbleId As String) As Map`
- `getOfflineStatusColor As Int`
- `getOnlineStatusColor As Int`
- `getPadding As String`
- `getPalette As Map`
- `getShowTimeAgoForToday As Boolean`
- `getTag As Object`
- `getTheme As String`
- `getToBackgroundColor As Int`
- `getToTextColor As Int`
- `getTop As Int`
- `getUseFromToColors As Boolean`
- `getUseTimeAgo As Boolean`
- `getVerticalGap As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAvatarFiles(Files As List)`
- `setAvatarMask(Mask As String)`
- `setAvatarSize(Size As Int)`
- `setBubbleAvatarStatusById(BubbleId As String, Mode As String)`
- `setConversations(Messages As List)`
- `setDateTimeFormat(Value As String)`
- `setFromBackgroundColor(Color As Int)`
- `setFromTextColor(Color As Int)`
- `setFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setMask(Mask As String)`
- `setOnlineStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `setPadding(Value As String)`
- `setShowTimeAgoForToday(Enabled As Boolean)`
- `setSize(Width As Int, Height As Int)`
- `setTag(Value As Object)`
- `setTheme(Name As String)`
- `setToBackgroundColor(Color As Int)`
- `setToTextColor(Color As Int)`
- `setTop(Value As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `setUseTimeAgo(Enabled As Boolean)`
- `setVerticalGap(Gap As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyChatBubble`**: Individual message bubble container managed internally by `B4XDaisyChat.AddMessage` / `AddMessage2`. Supports variant colors (`primary`, `secondary`, `accent`), placement (`start`/`end`), header time, and footer delivery status.
