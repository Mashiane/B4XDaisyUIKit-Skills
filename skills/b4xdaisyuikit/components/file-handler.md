# file-handler (`B4XDaisyFileHandler`)

Helper utility class for handling device file selection, media picking, file reading, MIME types, and Base64 conversion.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFileHandler`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFileHandler.bas`
- **Verified Demos**: `B4XPageMediaPicker.bas`
- **Web DaisyUI Mapping**: `.file-handler` → `B4XDaisyFileHandler`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim fh As B4XDaisyFileHandler
fh.Initialize(Me, "fh")

' Pick an image or file
fh.PickImage

```

## 3. Native Composition Rules & Gotchas
- Helper utility service for picking device photos, documents, and Base64 conversion.
- Call `PickImage` for photo gallery or `PickFile(MimeType)` for document picking.
- Handle results in the `FileSelected (Dir As String, FileName As String, MimeType As String)` event.
- Use `FileToBase64` and `Base64ToFile` for cloud uploads and caching.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `CheckForReceivedFiles As LoadResult`
- `DeleteTemporaryFiles`
- `Initialize`
- `Load (ParentPage As Object, AnchorView As Object) As ResumableSub`
- `Load As ResumableSub`
- `LoadWithFilter (MimeType As String, Title As String) As ResumableSub`
- `RecordAudio As ResumableSub`
- `SaveAs (Source As InputStream, MimeType As String, Title As String) As ResumableSub`
- `SaveAs(ParentPage As Object, AnchorView As Object, Text As String) As ResumableSub`
- `UrlToLoadResult(url As String) As LoadResult`

## 7. Public Fields
None declared.
