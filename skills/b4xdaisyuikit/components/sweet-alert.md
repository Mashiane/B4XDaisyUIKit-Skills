# sweet-alert (`B4XDaisySweetAlert`)

Rich dialog box with icon, text, input fields, confirm/cancel/deny buttons, and timer auto-close.

## 1. Overview
- **Class**: `B4XDaisySweetAlert`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySweetAlert.bas`
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
- `btnCancel_Click(oTag As Object)`
- `btnClose_Click(oTag As Object)`
- `btnConfirm_Click(oTag As Object)`
- `btnDeny_Click(oTag As Object)`
- `Close`
- `CloseWithReason(sReason As String)`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActiveInputValue As Object`
- `getAllowOutsideClick As Boolean`
- `getBackgroundColor As Int`
- `getCancelButtonText As String`
- `getConfirmButtonText As String`
- `getDenyButtonText As String`
- `GetDismissReason As Map`
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
- `Initialize(oCallback As Object, vParent As B4XView, sEventName As String)`
- `Refresh`
- `SendToBack`
- `setAllowOutsideClick(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setCancelButtonText(sValue As String)`
- `setConfirmButtonText(sValue As String)`
- `setDenyButtonText(sValue As String)`
- `setFooter(sValue As String)`
- `setHeight(iValue As Int)`
- `setIcon(sValue As String)`
- `setIconColor(iValue As Int)`
- `setIconSize(iValue As Int)`
- `setInputErrorMessage(sValue As String)`
- `setInputLabel(sValue As String)`
- `setInputMax(iValue As Int)`
- `setInputMin(iValue As Int)`
- `setInputMultiple(bValue As Boolean)`
- `setInputOptions(mOptions As Map)`
- `setInputPlaceholder(sValue As String)`
- `setInputRequired(bValue As Boolean)`
- `setInputStep(iValue As Int)`
- `setInputType(sValue As String)`
- `setInputValidator(oCallback As Object, sSubName As String)`
- `setInputValue(oValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setParent(vParent As B4XView)`
- `setReverseButtons(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShowCancelButton(bValue As Boolean)`
- `setShowCloseButton(bValue As Boolean)`
- `setShowConfirmButton(bValue As Boolean)`
- `setShowDenyButton(bValue As Boolean)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTimerMs(iValue As Int)`
- `setTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Show`
- `ShowAsync As ResumableSub`
- `showLoading`
- `Update(mConfig As Map)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisySweetAlertIcon`**: Vector animated status icon renderer (`success` checkmark draw, `error` X cross, `warning` pulse, `info` mark) embedded inside the alert dialog.
