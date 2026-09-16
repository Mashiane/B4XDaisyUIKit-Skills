# pdf-view (`B4XDaisyPDFView`)

DaisyUI `PDFView` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPDFView`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyPDFView.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyPDFView.bas)
- **Verified Demo Source**: B4XPagePDFView.bas
- **Web DaisyUI Mapping**: `.pdf-view` → `B4XDaisyPDFView`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.Color = B4XDaisyVariants.GetTokenColor("--color-base-200", xui.Color_RGB(245, 247, 250))

	Dim iNavHeight As Int = 56dip
	Dim iPagePad As Int = 12dip

	' Top Navbar
	Dim Navbar As B4XDaisyNavbar
	Navbar.Initialize(Me, "Navbar")
	Navbar.AddToParent(Root, 0, 0, Root.Width, iNavHeight)
	Navbar.Title = "PDF Viewer"
	Navbar.BackVisible = True

	' B4XDaisyPDFView Component below navbar with padding
	Dim iPdfTop As Int = iNavHeight + iPagePad
	Dim iPdfW As Int = Max(10dip, Root.Width - (iPagePad * 2))
	Dim iPdfH As Int = Max(10dip, Root.Height - iPdfTop - iPagePad)

	Dim pdfViewer As B4XDaisyPDFView
	pdfViewer.Initialize(Me, "pdfViewer")
	pdfViewer.AddToParent(Root, iPagePad, iPdfTop, iPdfW, iPdfH)

	' Load sample PDF asset
	pdfViewer.LoadAsset("sample.pdf")
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyPDFView` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `LoadFile, JumpToPage, FirstPage` (+ 10 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `AutoSpacing` | Auto Spacing | `Boolean` | True |  |
| `EnableSwipe` | Enable Swipe | `Boolean` | True |  |
| `PageSnap` | Page Snap | `Boolean` | True |  |
| `SwipeHorizontal` | Swipe Horizontal | `Boolean` | False |  |
| `ShowToolbar` | Show Toolbar | `Boolean` | True |  |
| `ToolbarHeight` | Toolbar Height | `Int` | 48 |  |

## 5. Declared Events
- `LoadComplete (Pages As Int)`
- `PageChanged (Page As Int, TotalPages As Int)`
- `OnTap (Target As Object)`
- `InitiallyRendered (Page As Int)`
- `PageNum (Page As Int)`
- `Show`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize(Width As Int, Height As Int)`
- `LoadFile(Dir As String, FileName As String)`
- `LoadAsset(FileName As String)`
- `Reload`
- `JumpToPage(Page As Int)`
- `FirstPage`
- `PrevPage`
- `NextPage`
- `LastPage`
- `getCurrentPage As Int`
- `getTotalPages As Int`
- `setAutoSpacing(Value As Boolean)`
- `setEnableSwipe(Value As Boolean)`
- `setPageSnap(Value As Boolean)`
- `setSwipeHorizontal(Value As Boolean)`
- `setShowToolbar(Value As Boolean)`
- `View As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

