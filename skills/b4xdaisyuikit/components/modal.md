# modal (`B4XDaisyModal`)

Centered dialog overlay with title, content panel, backdrop, and action buttons.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyModal`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyModal.bas`
- **Verified Demos**: `B4XPageColorWheel.bas, B4XPageModal.bas, B4XPagePicker.bas`
- **Web DaisyUI Mapping**: `.modal` → `B4XDaisyModal`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim mdl As B4XDaisyModal
mdl.Initialize(Me, "mdl")
mdl.AddToParent(Root, 0, 0, Root.Width, Root.Height)
mdl.Title = "Confirm Action"
mdl.Show
```

## 3. Native Composition Rules & Gotchas
- Centered popup dialog for confirmations, alerts, and custom content slots.
- Display modally using `Wait For (mdl.Show) mdl_Closed (Result As Boolean)` or `ShowAsync`.
- Set `BackdropDismiss = True` to allow tapping the outside dim overlay to close.
- Mount custom form views into `mdl.GetContentPanel`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| ClickOutsideToClose | Click Outside To Close | Boolean | True |  |
| FullScreen | Full Screen | Boolean | False |  |
| GlassSize | Glass Size | String | none | none|glass-xs|glass-sm|glass-md|glass-lg|glass-xl|glass-2xl |
| Placement | Placement | String | middle | top|middle|bottom |
| Width | Width | String | w-[91.6%] |  |
| Height | Height | String | h-auto |  |
| Rounded | Rounded | String | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| BackgroundColor | Background Color | String | base-100 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| BackdropColor | Backdrop Color | String | black | black|transparent |
| BackdropOpacity | Backdrop Opacity | Int | 40 |  |
| Title | Title | String | Modal Title |  |
| Padding | Padding | String | p-6 |  |
| ActionsJustify | Actions Justify | String | end | start|center|end |
| ActionsVariant | Actions Variant | String | primary | none|primary|secondary|accent|neutral|ghost|link|outline |
| ShowCloseButton | Show Close Button | Boolean | False |  |
| Sidebar | Sidebar | Boolean | False |  |
| SidebarSide | Sidebar Side | String | left | left|right |
| Shadow | Shadow | String | lg | none|xs|sm|md|lg|xl|2xl |
| Animated | Animated | Boolean | True |  |
| Duration | Animation Duration (ms) | Int | 300 |  |
| ActionType | Action Type | String | none | none|yes|no|cancel|yes-no|yes-no-cancel|ok-cancel|retry-cancel|abort-retry-ignore |
| YesCaption | Yes/Ok/Retry/Abort Caption | String | Yes |  |
| YesVariant | Yes Variant | String | success | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| YesVisible | Yes Visible | Boolean | True |  |
| NoCaption | No/Retry Caption | String | No |  |
| NoVariant | No Variant | String | error | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| NoVisible | No Visible | Boolean | True |  |
| CancelCaption | Cancel/Ignore Caption | String | Cancel |  |
| CancelVariant | Cancel Variant | String | ghost | none|primary|secondary|accent|neutral|ghost|link|outline|success|warning|error |
| CancelVisible | Cancel Visible | Boolean | True |  |
| ButtonsWidth | Buttons Width | String | auto |  |
| ButtonsSize | Buttons Size | String | md | xs|sm|md|lg |

## 5. Declared Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `YesClick (Tag As Object)`
- `NoClick (Tag As Object)`
- `CancelClick (Tag As Object)`
- `OkClick (Tag As Object)`
- `RetryClick (Tag As Object)`
- `AbortClick (Tag As Object)`
- `IgnoreClick (Tag As Object)`

## 6. Public Methods & APIs
- `AddAction(btn As B4XDaisyButton)`
- `AddActionButton(buttonID As String, buttonText As String, buttonColor As String) As B4XDaisyButton`
- `AddToContent(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BodyWidth As Int`
- `BringToFront`
- `ClearActions`
- `ClearBody`
- `Close`
- `CreateView(Parent As B4XView, Tag As Object)`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show`
- `ShowModal`
- `getActionType As String`
- `getActionsContainer As B4XView`
- `getActionsCount As Int`
- `getActionsJustify As String`
- `getActionsVariant As String`
- `getAnimated As Boolean`
- `getBackdropColor As String`
- `getBackdropOpacity As Int`
- `getBackgroundColor As String`
- `getBodyContainer As B4XView`
- `getBorderColor As String`
- `getBorderWidth As String`
- `getButtonsSize As String`
- `getButtonsWidth As String`
- `getCancelButton As B4XDaisyButton`
- `getCancelCaption As String`
- `getCancelVariant As String`
- `getCancelVisible As Boolean`
- `getClickOutsideToClose As Boolean`
- `getDuration As Int`
- `getEnabled As Boolean`
- `getFullScreen As Boolean`
- `getGlassSize As String`
- `getHeight As String`
- `getLeft As Int`
- `getNoButton As B4XDaisyButton`
- `getNoCaption As String`
- `getNoVariant As String`
- `getNoVisible As Boolean`
- `getPadding As String`
- `getPlacement As String`
- `getRounded As String`
- `getShadow As String`
- `getShowCloseButton As Boolean`
- `getSidebar As Boolean`
- `getSidebarSide As String`
- `getTag As Object`
- `getTitle As String`
- `getTitleColor As String`
- `getTitleTextColor As String`
- `getTop As Int`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As String`
- `getYesButton As B4XDaisyButton`
- `getYesCaption As String`
- `getYesVariant As String`
- `getYesVisible As Boolean`
- `setActionType(Value As String)`
- `setActionsJustify(Value As String)`
- `setActionsVariant(Value As String)`
- `setAnimated(Value As Boolean)`
- `setBackdropColor(Value As String)`
- `setBackdropOpacity(Value As Int)`
- `setBackgroundColor(Value As String)`
- `setBorderColor(Value As String)`
- `setBorderWidth(Value As String)`
- `setButtonsSize(Value As String)`
- `setButtonsWidth(Value As String)`
- `setCancelCaption(Value As String)`
- `setCancelVariant(Value As String)`
- `setCancelVisible(Value As Boolean)`
- `setClickOutsideToClose(Value As Boolean)`
- `setDuration(Value As Int)`
- `setEnabled(Value As Boolean)`
- `setFullScreen(Value As Boolean)`
- `setGlassSize(Value As String)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setNoCaption(Value As String)`
- `setNoVariant(Value As String)`
- `setNoVisible(Value As Boolean)`
- `setPadding(Value As String)`
- `setPlacement(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setShowCloseButton(Value As Boolean)`
- `setSidebar(Value As Boolean)`
- `setSidebarSide(Value As String)`
- `setTag(Value As Object)`
- `setTitle(Value As String)`
- `setTitleColor(Value As String)`
- `setTitleTextColor(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`
- `setYesCaption(Value As String)`
- `setYesVariant(Value As String)`
- `setYesVisible(Value As Boolean)`

## 7. Public Fields
None declared.
