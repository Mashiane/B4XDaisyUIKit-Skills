# accordion (`B4XDaisyAccordion`)

DaisyUI `Accordion` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAccordion`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyAccordion.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyAccordion.bas)
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
' Standard accordion with collapsible content panels:
Dim acc As B4XDaisyAccordion
acc.Initialize(Me, "acc")
acc.GroupName = "standard-accordion"
acc.OpenOnlyOne = True
acc.AddToParent(pnlHost, 16dip, y, maxW, 10dip)

' Add collapsible items:
Dim c1 As B4XDaisyCollapse = acc.AddItemBasic("item1", "arrow", "How do I create an account?")
Dim txtA As B4XDaisyText
txtA.Initialize(Me, "")
txtA.Text = "Click the 'Sign Up' button in the top right corner and follow the prompts."
txtA.TextSize = "text-sm"
txtA.AddToParent(c1.getContentView, 0dip, 8dip, c1.getContentView.Width, 60dip)
c1.RefreshContent

Dim c2 As B4XDaisyCollapse = acc.AddItemBasic("item2", "arrow", "Can I upgrade my plan later?")
Dim txtB As B4XDaisyText
txtB.Initialize(Me, "")
txtB.Text = "Yes, you can upgrade or downgrade your subscription at any time from Settings."
txtB.TextSize = "text-sm"
txtB.AddToParent(c2.getContentView, 0dip, 8dip, c2.getContentView.Width, 60dip)
c2.RefreshContent

y = y + acc.GetComputedHeight + 16dip
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

