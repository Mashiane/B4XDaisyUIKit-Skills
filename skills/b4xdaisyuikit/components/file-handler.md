# file-handler (`B4XDaisyFileHandler`)

Cross-platform helper service for device file loading, MIME-filtered file picking, file saving, audio recording, and temporary storage management.

## 1. Overview
- **Class**: `B4XDaisyFileHandler`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFileHandler.bas`
- **Web DaisyUI Mapping**: `.file-handler` → `B4XDaisyFileHandler`
- **Companion View**: For visual file input buttons, see [file-input.md](file:///c:/b4a/workspace/0SithasoDaisyUIKit/b4xdaisyuikit-skills/skills/b4xdaisyuikit/components/file-input.md) (`B4XDaisyFileInput`).

## 2. Verified B4X Syntax & Recipe

### Load Any File via ResumableSub
```b4x
Dim fh As B4XDaisyFileHandler
fh.Initialize

Wait For (fh.Load) Complete (Result As LoadResult)
If Result.Success Then
    Log("Loaded file: " & Result.RealFileName)
    Dim inStr As InputStream = File.OpenInput(Result.Dir, Result.FileName)
    ' Process file content...
End If
```

### Load Image / Document with MIME Filter
```b4x
Dim fh As B4XDaisyFileHandler
fh.Initialize

' Pick image only
Wait For (fh.LoadWithFilter("image/*", "Select Image")) Complete (Result As LoadResult)
If Result.Success Then
    Dim bmp As B4XBitmap = xui.LoadBitmap(Result.Dir, Result.FileName)
    imgProfile.SetBitmap(bmp)
End If
```

### Save Stream to Local Device
```b4x
Dim fh As B4XDaisyFileHandler
fh.Initialize

Dim inStream As InputStream = File.OpenInput(File.DirAssets, "report.pdf")
Wait For (fh.SaveAs(inStream, "application/pdf", "Save Export")) Complete (Success As Boolean)
If Success Then
    Log("PDF successfully saved")
End If
```

## 3. Native Composition Rules & Gotchas
- `B4XDaisyFileHandler` methods are asynchronous and return `ResumableSub` types; always invoke using `Wait For (...) Complete (...)`.
- `LoadResult` contains `.Success`, `.Dir`, `.FileName`, `.RealFileName`, `.MimeType`.
- Call `fh.DeleteTemporaryFiles` during cleanup to purge cached temporary file copies.

## 4. Public Methods & APIs
| Method | Returns | Description |
|---|---|---|
| `Initialize` | | Initializes the file handler instance |
| `Load` | `ResumableSub (LoadResult)` | Opens default system file picker |
| `LoadWithFilter(sMimeType, sTitle)` | `ResumableSub (LoadResult)` | Opens file picker filtered by MIME type (e.g. `"image/*"`, `"application/pdf"`) |
| `SaveAs(Source As InputStream, sMimeType, sTitle)` | `ResumableSub (Boolean)` | Prompts user to save input stream to device storage |
| `RecordAudio` | `ResumableSub (LoadResult)` | Prompts native audio recorder |
| `CheckForReceivedFiles` | `LoadResult` | Checks for files shared from other apps |
| `DeleteTemporaryFiles` | | Deletes cached temporary files created during picker operations |
