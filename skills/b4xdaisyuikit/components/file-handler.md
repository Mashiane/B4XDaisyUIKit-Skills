# file-handler (`B4XDaisyFileHandler`)

DaisyUI `FileHandler` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFileHandler`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyFileHandler.bas`
- **Verified Demo Source**: B4XPageMediaPicker.bas (lines 17–17)
- **Web DaisyUI Mapping**: `.file-handler` → `B4XDaisyFileHandler`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created(Root1 As B4XView)
	Root = Root1

	pageScroll.Initialize(Me, "pageScroll")
	pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
	pnlHost = pageScroll.Panel

	xui.SetDataFolder("mediachooser-example")
	chooser.Initialize(Me, "chooser")

	Try
		FileHandler.Initialize
	Catch
		Log("B4XPageMediaPicker FileHandler.Initialize Error: " & LastException.Message)
	End Try
	RenderExamples(Root.Width, Root.Height)
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `CheckForReceivedFiles As LoadResult`
- `DeleteTemporaryFiles`
- `Initialize`
- `Load (oParentPage As Object, oAnchorView As Object) As ResumableSub`
- `Load As ResumableSub`
- `LoadWithFilter (sMimeType As String, sTitle As String) As ResumableSub`
- `RecordAudio As ResumableSub`
- `SaveAs (Source As InputStream, sMimeType As String, sTitle As String) As ResumableSub`
- `SaveAs(oParentPage As Object, oAnchorView As Object, sText As String) As ResumableSub`
- `UrlToLoadResult(sUrl As String) As LoadResult`

## 7. Public Fields
- `mBase As B4XView`

