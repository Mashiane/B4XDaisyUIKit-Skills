# file-handler (`B4XDaisyFileHandler`)

DaisyUI `FileHandler` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFileHandler`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyFileHandler.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyFileHandler.bas)
- **Verified Demo Source**: B4XPageMediaPicker.bas
- **Web DaisyUI Mapping**: `.file-handler` → `B4XDaisyFileHandler`

## 2. Verified B4X Syntax & Recipe

> **See demo**: [`B4XPageMediaPicker.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4A/B4XPageMediaPicker.bas)

### Setup — Class_Globals & B4XPage_Created
```b4x
' --- Class_Globals ---
Private chooser As MediaChooser
Private FileHandler As B4XDaisyFileHandler
Private imgPreview As B4XDaisyImage    ' display captured photo
Private lblMediaInfo As B4XDaisyText   ' display metadata

' --- B4XPage_Created ---
xui.SetDataFolder("mediachooser-example")
chooser.Initialize(Me, "chooser")
Try
    FileHandler.Initialize
Catch
    If B4XDaisyApp.DebugLogs Then Log("FileHandler.Initialize Error: " & LastException.Message)
End Try
```

### 1. Capture Photo (Camera)
Requires `PERMISSION_CAMERA`. Uses `MediaChooser.CaptureImage`.
```b4x
Private Sub btnCamera_Click(Tag As Object)
    Dim rp As RuntimePermissions
    rp.CheckAndRequest(rp.PERMISSION_CAMERA)
    Wait For B4XPage_PermissionResult (Permission As String, Done As Boolean)
    If Done Then
        Wait For (chooser.CaptureImage) Complete (Result As MediaChooserResult)
        If Result.Success Then
            If File.Exists(Result.MediaDir, Result.MediaFile) Then
                Dim bmp As B4XBitmap = LoadBitmapSample(Result.MediaDir, Result.MediaFile, 1920, 1920)
                imgPreview.SetBitmap(bmp)
            End If
            Log("Photo captured successfully")
        Else
            Log("Photo capture cancelled or failed")
        End If
    Else
        Log("Camera permission denied")
    End If
End Sub
```

### 2. Record Video (Camera)
Requires `PERMISSION_CAMERA`. Uses `MediaChooser.CaptureVideo`.
```b4x
Private Sub btnVideo_Click(Tag As Object)
    Dim rp As RuntimePermissions
    rp.CheckAndRequest(rp.PERMISSION_CAMERA)
    Wait For B4XPage_PermissionResult (Permission As String, Done As Boolean)
    If Done Then
        Wait For (chooser.CaptureVideo) Complete (Result As MediaChooserResult)
        If Result.Success Then
            lblMediaInfo.Text = "🎥 Video Recorded:" & CRLF & _
                "Dir: " & Result.MediaDir & CRLF & _
                "File: " & Result.MediaFile & CRLF & _
                "Type: " & Result.Mime
            B4XPages.MainPage.ShowToastSuccess("Video recorded!", False)
        Else
            B4XPages.MainPage.ShowToastError("Video recording cancelled or failed", False)
        End If
    Else
        B4XPages.MainPage.ShowToastError("Camera permission denied", False)
    End If
End Sub
```

### 3. Record Audio
Uses `FileHandler.RecordAudio`. No explicit permission request needed (system dialog handles it).
```b4x
Private Sub btnAudio_Click(Tag As Object)
    Wait For (FileHandler.RecordAudio) Complete (Result As LoadResult)
    If Result <> Null And Result.Success Then
        lblMediaInfo.Text = "🎙 Voice Recorded:" & CRLF & _
            "URI: " & Result.FileName & CRLF & _
            "Name: " & Result.RealName & CRLF & _
            "Size: " & Result.Size & " bytes"
        B4XPages.MainPage.ShowToastSuccess("Audio recorded!", False)
    Else
        B4XPages.MainPage.ShowToastError("Audio recording cancelled", False)
    End If
End Sub
```

### 4. Browse & Pick Any File
Uses `FileHandler.LoadWithFilter(MimeType, Title)`. Pass `"*/*"` for any file type.
```b4x
Private Sub btnBrowse_Click(Tag As Object)
    Wait For (FileHandler.LoadWithFilter("*/*", "Choose File")) Complete (Result As LoadResult)
    If Result <> Null And Result.Success Then
        If Result.Image <> Null And Result.Image.IsInitialized Then
            imgPreview.setBitmap(Result.Image)
        End If
        lblMediaInfo.Text = "📁 File Selected:" & CRLF & _
            "Name: " & Result.RealName & CRLF & _
            "Type: " & Result.MimeType & CRLF & _
            "Size: " & Result.Size & " bytes"
        B4XPages.MainPage.ShowToastSuccess("File loaded!", False)
    Else
        B4XPages.MainPage.ShowToastError("File selection cancelled", False)
    End If
End Sub
```

### MediaChooser Events (error / progress)
```b4x
Private Sub Chooser_Progress (Value As Int)
    ' progress handled via PageAppear / PageDisappear lifecycle
End Sub

Private Sub Chooser_Error (Key As String, Message As String)
    B4XPages.MainPage.ShowToastError(Message, False)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyFileHandler` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
6. **Asynchronous Handling:** Await user response with `Wait For (<var>_EventName(...))`.

### Deviation Mechanism
- Utility/Helper/Animation class with specialized non-visual or animation lifecycle (not a standard CustomView).; Requires asynchronous `Wait For` resumption to complete modal/dialog/action flow or receive return values.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `DeleteTemporaryFiles, SaveAs, CheckForReceivedFiles` (+ 2 more).

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize`
- `DeleteTemporaryFiles`
- `SaveAs(Source As InputStream, MimeType As String, Title As String) As ResumableSub`
- `Load As ResumableSub`
- `LoadWithFilter(MimeType As String, Title As String) As ResumableSub`
- `RecordAudio As ResumableSub`
- `CheckForReceivedFiles As LoadResult`
- `SaveAs(ParentPage As Object, AnchorView As Object, Text As String) As ResumableSub`
- `Load(ParentPage As Object, AnchorView As Object) As ResumableSub`
- `UrlToLoadResult(Url As String) As LoadResult`

## 7. Public Fields
(none declared in packaged source)

