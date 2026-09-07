# carousel-item (`B4XDaisyCarouselItem`)

DaisyUI `CarouselItem` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCarouselItem`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCarouselItem.bas`
- **Verified Demo Source**: B4XPageCarousel.bas
- **Web DaisyUI Mapping**: `.carousel-item` → `B4XDaisyCarouselItem`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim idx1 As Int = 0                                         
    For Each img As String In images1
        Dim itm As B4XDaisyCarouselItem
        itm.Initialize(Me, "item")
        itm.Tag = "Start #" & (idx1 + 1) & ": " & img
        itm.ItemType = "image"
        itm.Source = img
        itm.Snap = "start"
        itm.Width = "w-full"
        itm.Height = "h-full"
        carousel1.AddItem(itm)
        idx1 = idx1 + 1
    Next
    carousel1.Refresh
    currentY = currentY + carousel1.GetComputedHeight + 24dip
    Sleep(0)
    ' #endregion
    
    ' #region Example 2: Snap to center
    ' DaisyUI: <div class="carousel carousel-center rounded-box w-full"> with full width items.
    currentY = AddSectionTitle("Snap to center", currentY, maxW)
    Dim carousel2 As B4XDaisyCarousel
    carousel2.Initialize(Me, "carousel2")
    carousel2.Snap = "center"
    carousel2.Rounded = "rounded-box"
    carousel2.Width = "w-full"
    carousel2.Height = "h-[300px]"
    carousel2.AddToParent(pnlHost, PAGE_PAD, currentY, maxW, 300dip)
    
    Dim idx2 As Int = 0
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCarouselItem` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, getItemType, setItemType` (+ 19 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `ItemType` | Item Type | `String` | image | image|svg|custom |
| `Source` | Source | `String` |  |  |
| `Snap` | Snap Position | `String` | start | start|center|end |
| `Rounded` | Rounded | `String` | rounded-none | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-full |  |
| `ImageWidth` | Image Width | `String` | w-full |  |
| `ImageHeight` | Image Height | `String` | h-full |  |
| `ImageResizeMode` | Image Resize Mode | `String` | FILL_NO_DISTORTIONS | FIT|FILL|FILL_NO_DISTORTIONS|FILL_WIDTH|FILL_HEIGHT|NONE, DefaultValue: FILL_NO_DISTORTIONS |
| `Visible` | Visible | `Boolean` | True |  |
| `Enabled` | Enabled | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getItemType As String`
- `setItemType(Value As String)`
- `getSource As String`
- `setSource(Value As String)`
- `getSnap As String`
- `setSnap(Value As String)`
- `getRounded As String`
- `setRounded(Value As String)`
- `getTag As Object`
- `setTag(Value As Object)`
- `getContainer As B4XView`
- `getWidth As String`
- `setWidth(Value As String)`
- `getHeight As String`
- `setHeight(Value As String)`
- `getImageWidth As String`
- `setImageWidth(Value As String)`
- `getImageHeight As String`
- `setImageHeight(Value As String)`
- `getVisible As Boolean`
- `setVisible(Value As Boolean)`
- `getEnabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getImageResizeMode As String`
- `setImageResizeMode(Value As String)`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`
- `mImage As B4XView`

