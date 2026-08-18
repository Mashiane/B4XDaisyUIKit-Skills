# sweet-alert (`B4XDaisySweetAlert`)

Rich dialog box with icon, text, input fields, confirm/cancel/deny buttons, and timer auto-close.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySweetAlert`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySweetAlert.bas`
- **Verified Demos**: `B4XPageSweetAlert.bas, B4XPageSweetAlertInputs.bas`
- **Web DaisyUI Mapping**: `.sweet-alert` → `B4XDaisySweetAlert`

## 2. Verified B4X Syntax & Recipe

### Standard Confirmation Dialog:
```b4x
Dim swal As B4XDaisySweetAlert
swal.Initialize(Me, Root, "swal")
swal.setTitle("Delete Item?")
swal.setText("This action cannot be undone.")
swal.setIcon("warning")
swal.setShowCancelButton(True)
swal.setConfirmButtonText("Yes, delete")
swal.setCancelButtonText("Cancel")
swal.setAllowOutsideClick(True)

Wait For (swal.ShowAsync) Complete (res As B4XDaisySweetAlertResult)
If res.IsConfirmed Then
    toast.Success("Item deleted successfully.")
End If
```

### Async Text / Password / Number Input Prompts:
```b4x
Dim swalInput As B4XDaisySweetAlert
swalInput.Initialize(Me, Root, "swalInput")
swalInput.setTitle("Enter Password")
swalInput.setIcon("warning")
swalInput.setInputType("password")
swalInput.setInputPlaceholder("Enter secure password...")
swalInput.setInputRequired(True)
swalInput.setInputErrorMessage("Password cannot be empty!")
swalInput.setShowCancelButton(True)

Wait For (swalInput.ShowAsync) Complete (res As B4XDaisySweetAlertResult)
If res.IsConfirmed Then
    toast.Success("Password confirmed: " & res.Value)
End If
```

### Async Select / RadioGroup / Checkbox Selection Dialog:
```b4x
Dim swalSelect As B4XDaisySweetAlert
swalSelect.Initialize(Me, Root, "swalSelect")
swalSelect.setTitle("Select Shipping Method")
swalSelect.setIcon("question")
swalSelect.setInputType("radiogroup") ' or "select", "checkboxgroup", "togglegroup", "range", "rating"

Dim options As Map = CreateMap("std": "Standard (3-5 days)", "exp": "Express (1-2 days)", "same": "Same Day")
swalSelect.setInputOptions(options)
swalSelect.setShowCancelButton(True)

Wait For (swalSelect.ShowAsync) Complete (res As B4XDaisySweetAlertResult)
If res.IsConfirmed Then
    Log("User picked: " & res.Value)
End If
```

## 3. Native Composition Rules & Gotchas
- Pre-styled alert dialogs with animated vector icons and async completion.
- Call `Wait For (sa.ShowSuccess("Success!", "Data saved")) sa_Closed` for success dialogs.
- Call `Wait For (sa.ShowConfirm("Delete?", "Cannot undo")) sa_Confirm (Result As Boolean)` for confirmations.
- Call `Wait For (sa.ShowInput("Rename", "Enter new name")) sa_Input (Value As String)` for text prompts.
- Do NOT call `AddToParent` — SweetAlert manages its own modal lifecycle.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Title | Title | String | Are you sure? |  |
| Text | Text | String |  |  |
| Icon | Icon | String | none | none|warning|error|success|info|question|loading |
| IconColor | Icon Color | Color | 0xFF545454 |  |
| IconSize | Icon Size | Int | 80 |  |
| ShowConfirmButton | Show Confirm | Boolean | True |  |
| ConfirmButtonText | Confirm Text | String | OK |  |
| ShowDenyButton | Show Deny | Boolean | False |  |
| DenyButtonText | Deny Text | String | No |  |
| ShowCancelButton | Show Cancel | Boolean | False |  |
| CancelButtonText | Cancel Text | String | Cancel |  |
| ShowCloseButton | Show Close Button | Boolean | False |  |
| AllowOutsideClick | Allow Outside Click | Boolean | True |  |
| ReverseButtons | Reverse Buttons | Boolean | False |  |
| Footer | Footer Text | String |  |  |
| BackgroundColor | Background Color | Color | 0xFFFFFFFF |  |
| TextColor | Text Color | Color | 0xFF545454 |  |
| Width | Width | Int | 360 |  |
| TimerMs | Auto Close Timer (ms) | Int | 0 |  |
| Rounded | Rounded | String | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| InputType | Input Type | String | none | none|text|password|email|number|tel|textarea|select|checkbox|checkboxgroup|radio|radiogroup|toggle|togglegroup|range|rating |
| InputPlaceholder | Input Placeholder | String |  |  |
| InputLabel | Input Label | String |  |  |
| InputRequired | Input Required | Boolean | False |  |
| InputErrorMessage | Input Error Message | String | This field is required. |  |
| InputVariant | Input Variant | String | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| InputMultiple | Input Multiple | Boolean | False |  |

## 5. Declared Events
- `Result (Result As B4XDaisySweetAlertResult)`

## 6. Public Methods & APIs
- `BringToFront`
- `Close`
- `CloseWithReason(Reason As String)`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActiveInputValue As Object`
- `GetDismissReason As Map`
- `Initialize(Callback As Object, Parent As B4XView, EventName As String)`
- `Refresh`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Show`
- `ShowAsync As ResumableSub`
- `Update(Config As Map)`
- `btnCancel_Click(Tag As Object)`
- `btnClose_Click(Tag As Object)`
- `btnConfirm_Click(Tag As Object)`
- `btnDeny_Click(Tag As Object)`
- `getAllowOutsideClick As Boolean`
- `getBackgroundColor As Int`
- `getCancelButtonText As String`
- `getConfirmButtonText As String`
- `getDenyButtonText As String`
- `getFooter As String`
- `getHeight As Int`
- `getIcon As String`
- `getIconColor As Int`
- `getIconSize As Int`
- `getInputErrorMessage As String`
- `getInputLabel As String`
- `getInputMax As Int`
- `getInputMin As Int`
- `getInputMultiple As Boolean`
- `getInputPlaceholder As String`
- `getInputRequired As Boolean`
- `getInputStep As Int`
- `getInputType As String`
- `getInputValue As Object`
- `getLeft As Int`
- `getParent As B4XView`
- `getReverseButtons As Boolean`
- `getRounded As String`
- `getShowCancelButton As Boolean`
- `getShowCloseButton As Boolean`
- `getShowConfirmButton As Boolean`
- `getShowDenyButton As Boolean`
- `getText As String`
- `getTextColor As Int`
- `getTimerMs As Int`
- `getTitle As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `hideLoading`
- `setAllowOutsideClick(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setCancelButtonText(Value As String)`
- `setConfirmButtonText(Value As String)`
- `setDenyButtonText(Value As String)`
- `setFooter(Value As String)`
- `setHeight(Value As Int)`
- `setIcon(Value As String)`
- `setIconColor(Value As Int)`
- `setIconSize(Value As Int)`
- `setInputErrorMessage(Value As String)`
- `setInputLabel(Value As String)`
- `setInputMax(Value As Int)`
- `setInputMin(Value As Int)`
- `setInputMultiple(Value As Boolean)`
- `setInputOptions(Options As Map)`
- `setInputPlaceholder(Value As String)`
- `setInputRequired(Value As Boolean)`
- `setInputStep(Value As Int)`
- `setInputType(Value As String)`
- `setInputValidator(Callback As Object, SubName As String)`
- `setInputValue(Value As Object)`
- `setLeft(Value As Int)`
- `setParent(Parent As B4XView)`
- `setReverseButtons(Value As Boolean)`
- `setRounded(Value As String)`
- `setShowCancelButton(Value As Boolean)`
- `setShowCloseButton(Value As Boolean)`
- `setShowConfirmButton(Value As Boolean)`
- `setShowDenyButton(Value As Boolean)`
- `setText(Value As String)`
- `setTextColor(Value As Int)`
- `setTimerMs(Value As Int)`
- `setTitle(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`
- `showLoading`

## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisySweetAlertIcon`**: Vector animated status icon renderer (`success` checkmark draw, `error` X cross, `warning` pulse, `info` mark) embedded inside the alert dialog.
