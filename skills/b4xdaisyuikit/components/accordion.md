# accordion (`B4XDaisyAccordion`)

DaisyUI `Accordion` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAccordion`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyAccordion.bas`
- **Verified Demo Source**: B4XPageAccordion.bas
- **Web DaisyUI Mapping**: `.accordion` → `B4XDaisyAccordion`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``collapse`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``collapse-title`, `collapse-content`` | Sub-Panel | `GetTitlePanel`, `GetContentPanel`, `GetActionsPanel` | Mount child views inside target sub-panel |
| `modifier` | ``collapse-arrow`, `collapse-plus`, `collapse-open`, `collapse-close`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |

### Web DaisyUI HTML Syntax
```html
<div class="collapse {MODIFIER}">{CONTENT}</div>
```
where content is:
```html
<input type="radio" name="{name}" checked="{checked}" />
<div class="collapse-title">{title}</div>
<div class="collapse-content">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' #region Example 1: Standard Accordion (Single Open)
    y = AddSectionTitle("Standard Accordion (Single Open)", y, maxW)
    Dim acc1 As B4XDaisyAccordion
    acc1.Initialize(Me, "acc1")
    acc1.GroupName = "standard-accordion"
    acc1.OpenOnlyOne = True
    acc1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 10dip)
    
    Dim c1a As B4XDaisyCollapse = acc1.AddItemBasic("item1", "arrow", "Click to open item 1")
    AddContent(c1a, "This is the content for the first item. Opening it will close others.")
    
    Dim c1b As B4XDaisyCollapse = acc1.AddItemBasic("item2", "arrow", "Click to open item 2")
    AddContent(c1b, "This is the second item's content. It also belongs to the same accordion group.")
    
    y = y + acc1.GetComputedHeight + PAGE_PAD
    ' #endregion

    ' #region Example 2: Multiple Open Allowed
    y = AddSectionTitle("Accordion (Multiple Open Allowed)", y, maxW)
    Dim acc2 As B4XDaisyAccordion
    acc2.Initialize(Me, "acc2")
    acc2.GroupName = "multi-open-accordion"
    acc2.OpenOnlyOne = False
    acc2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 10dip)
    
    Dim c2a As B4XDaisyCollapse = acc2.AddItemBasic("itemA", "plus", "Item A (Independent)")
    acc2.SetItemVariant("itemA", "primary")
    AddContent(c2a, "You can open multiple items here because OpenOnlyOne is False.")
    
    Dim c2b As B4XDaisyCollapse = acc2.AddItemBasic("itemB", "plus", "Item B (Independent)")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAccordion` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, HandleChildRequestOpen, setOpenOnlyOne` (+ 17 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `OpenOnlyOne` | Open Only One | `Boolean` | True |  |
| `IconPosition` | Icon Position | `String` | right | left|right |
| `Icon` | Icon | `String` | arrow | none|arrow|plus |
| `Visible` | Visible | `Boolean` | True |  |
| `SpaceY` | Space Y | `Int` | 2, MinRange: 0, MaxRange: 32 |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `GroupName` | Group Name | `String` |  |  |

## 5. Declared Events
- `Change (ActiveTag As Object, Status As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyCollapse)`
- `HandleChildRequestOpen(RequestedChild As B4XDaisyCollapse)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setOpenOnlyOne(Value As Boolean)`
- `getOpenOnlyOne As Boolean`
- `setIconPosition(Value As String)`
- `getIconPosition As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setSpaceY(Value As Int)`
- `getSpaceY As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`
- `SetItemActive(ItemTag As Object, Value As Boolean)`
- `SetItemTitle(ItemTag As Object, Title As String)`
- `SetItemVariant(ItemTag As Object, Variant As String)`
- `SetItemTitleIcon(ItemTag As Object, IconName As String)`
- `SetItemVisible(ItemTag As Object, Value As Boolean)`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyAccordion` manages a group of expandable items where expanding one automatically collapses others (or allows multi-open).

```vb
Dim acc As B4XDaisyAccordion
acc.Initialize(Me, "acc")
acc.GroupName = "faq-group"
acc.OpenOnlyOne = True                         ' True = single active item, False = multi-open
acc.AddToParent(pnlHost, x, y, maxW, 10dip)

' Add items (returns B4XDaisyCollapse wrapper):
Dim c1 As B4XDaisyCollapse = acc.AddItemBasic("q1", "arrow", "What is StockTake?")
Dim pnlC1 As B4XView = c1.getContentView
Dim txtA1 As B4XDaisyText
txtA1.Initialize(Me, "")
txtA1.AddToParent(pnlC1, 16dip, 8dip, pnlC1.Width - 32dip, 40dip)
txtA1.Text = "StockTake is a physical count audit application."

Dim c2 As B4XDaisyCollapse = acc.AddItemBasic("q2", "arrow", "How to sync barcodes?")
Dim pnlC2 As B4XView = c2.getContentView
Dim txtA2 As B4XDaisyText
txtA2.Initialize(Me, "")
txtA2.AddToParent(pnlC2, 16dip, 8dip, pnlC2.Width - 32dip, 40dip)
txtA2.Text = "Use the Scan Barcode screen or upload CSV files."

y = y + acc.GetComputedHeight + gap
```
