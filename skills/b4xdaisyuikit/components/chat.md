# chat (`B4XDaisyChat`)

DaisyUI `Chat` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyChat`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyChat.bas`
- **Verified Demo Source**: B4XPageChat.bas
- **Web DaisyUI Mapping**: `.chat` → `B4XDaisyChat`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``chat`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``chat-image`, `chat-header`, `chat-footer`, `chat-bubble`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `placement` | ``chat-start`, `chat-end`` | Member | `.SetPlacement(...)` | Native configuration |
| `color` | ``chat-bubble-neutral`, `chat-bubble-primary`, `chat-bubble-secondary`, `chat-bubble-accent`, `chat-bubble-info`, `chat-bubble-success`, `chat-bubble-warning`, `chat-bubble-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |

### Web DaisyUI HTML Syntax
```html
<div class="chat {PLACEMENT}">
  <div class="chat-image"></div>
  <div class="chat-header"></div>
  <div class="chat-bubble {COLOR}">Message text</div>
  <div class="chat-footer"></div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created(Root1 As B4XView)
	Root = Root1
	Root.Color = xui.Color_RGB(245,245,245)
	
	'Create the chat control once and attach it to the page root.
	DaisyChat.Initialize(Me, "daisy")
	DaisyChat.AddToParent(Root)
	
	'Load/copy avatar image candidates from assets for demo use.
	LocalAvatarPaths = GetLocalAvatarPaths
	
	'Populate initial conversations when the view is ready.
	EnsureSamples
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyChat` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
6. **Asynchronous Handling:** Await user response with `Wait For (<var>_EventName(...))`.

### Deviation Mechanism
- Requires asynchronous `Wait For` resumption to complete modal/dialog/action flow or receive return values.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, AddViewToContent, getTag` (+ 51 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `AvatarMask` | Avatar Mask | `String` | squircle | circle|square|squircle|decagon|diamond|heart|hexagon|hexagon-2|pentagon|star|star-2|triangle|triangle-2|triangle-3|triangle-4|half-1|half-2 |
| `AvatarSize` | Avatar Size | `Int` | 40 |  |
| `FromBackgroundColor` | From Background | `Color` | 0xFF4338CA |  |
| `FromTextColor` | From Text | `Color` | 0xFFFFFFFF |  |
| `ToBackgroundColor` | To Background | `Color` | 0xFF0EA5E9 |  |
| `ToTextColor` | To Text | `Color` | 0xFF082F49 |  |
| `UseFromToColors` | Use From/To Colors | `Boolean` | True |  |
| `Theme` | Theme | `String` | light | light|default |
| `DateTimeFormat` | Date Time Format | `String` | D, j M Y H:i |  |
| `UseTimeAgo` | Use Time Ago | `Boolean` | False |  |
| `ShowTimeAgoForToday` | Time Ago For Today | `Boolean` | True |  |
| `VerticalGap` | Vertical Gap | `Int` | 8 |  |
| `Width` | Width | `Int` | 0 |  |
| `Height` | Height | `Int` | 0 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |

## 5. Declared Events
- `AvatarClick (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Resize(Width As Double, Height As Double)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView)`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setTag(Value As Object)`
- `getTag As Object`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `Clear`
- `setConversations(lstMessages As List)`
- `ClearConversations`
- `AppendMessage(Message As Map) As String`
- `AppendMessageAndScroll(Message As Map, Smooth As Boolean) As String`
- `ScrollToMessage(BubbleId As String)`
- `ScrollToTop`
- `ScrollToBottom`
- `SmoothScrollToTop(DurationMs As Int) As ResumableSub`
- `SmoothScrollToBottom(DurationMs As Int) As ResumableSub`
- `SmoothScrollToMessage(BubbleId As String, DurationMs As Int) As ResumableSub`
- `SmoothScrollToPosition(Target As Int, DurationMs As Int) As ResumableSub`
- `getMessageById(BubbleId As String) As Map`
- `getMessage(BubbleId As String) As Map`
- `UpdateMessageById(BubbleId As String, Fields As Map) As Boolean`
- `UpdateMessage(Message As Map) As Boolean`
- `UpdateHeaderById(BubbleId As String, HeaderName As String, HeaderTime As String) As Boolean`
- `UpdateFooterById(BubbleId As String, FooterText As String) As Boolean`
- `UpdateAvatarById(BubbleId As String, bmpAvatarBitmap As B4XBitmap) As Boolean`
- `UpdateOnlineStatusById(BubbleId As String, Status As String, OnlineColor As Int) As Boolean`
- `ReplaceMessageById(BubbleId As String, Message As Map) As Boolean`
- `DeleteMessageById(BubbleId As String) As Boolean`
- `AddMessage(Message As Map, ScrollTo As Boolean) As String`
- `LoadAvatarFilesFromAssets(lstFiles As List)`
- `setAvatarFiles(lstFiles As List)`
- `getAvatarFiles As List`
- `RandomAvatarFileOrBlank(BlankPct As Int) As String`
- `RandomAvatarStatus As String`
- `setBubbleAvatarStatusById(BubbleId As String, Mode As String)`
- `getBubbleIds As List`
- `setAvatarMask(Mask As String)`
- `getAvatarMask As String`
- `setMask(Mask As String)`
- `setAvatarSize(Size As Int)`
- `getAvatarSize As Int`
- `setFromBackgroundColor(Color As Int)`
- `getFromBackgroundColor As Int`
- `setFromTextColor(Color As Int)`
- `getFromTextColor As Int`
- `setToBackgroundColor(Color As Int)`
- `getToBackgroundColor As Int`
- `setToTextColor(Color As Int)`
- `getToTextColor As Int`
- `setFromToColors(FromBack As Int, FromText As Int, ToBack As Int, ToText As Int)`
- `setUseFromToColors(Enabled As Boolean)`
- `getUseFromToColors As Boolean`
- `setTheme(Name As String)`
- `getTheme As String`
- `setDateTimeFormat(Value As String)`
- `getDateTimeFormat As String`
- `setUseTimeAgo(Enabled As Boolean)`
- `getUseTimeAgo As Boolean`
- `setShowTimeAgoForToday(Enabled As Boolean)`
- `getShowTimeAgoForToday As Boolean`
- `RegisterTheme(Name As String, PaletteMap As Map)`
- `getPalette As Map`
- `CreateVariant(BackColor As Int, TextColor As Int) As Map`
- `ShowOnline(Enabled As Boolean)`
- `setOnlineStatusColors(OnlineColor As Int, OfflineColor As Int)`
- `getOnlineStatusColor As Int`
- `getOfflineStatusColor As Int`
- `setVerticalGap(Gap As Int)`
- `getVerticalGap As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `setSize(Width As Int, Height As Int)`
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

## Canonical Creation Pattern & Recipe

`B4XDaisyChat` is a self-contained conversational messaging UI.

```vb
Dim chat As B4XDaisyChat
chat.Initialize(Me, "chat")
chat.AddToParent(Root)                         ' Fills entire root or parent container
chat.SetDateTimeFormat("D, j M Y H:i")
chat.SetUseTimeAgo(True)

' Feed messages:
chat.AddMessage("1", "Auditor", "Scanned Bin A-12", "09:30", "face_3.jpg", "start", "DELIVERED")
chat.AddMessage("2", "Supervisor", "Count confirmed", "09:32", "face_13.jpg", "end", "SEEN")

' User Send Event:
Private Sub chat_Send(Message As String)
    chat.AddMessage(DateTime.Now, "Me", Message, "Just now", "avatar.png", "end", "SENT")
End Sub
```
