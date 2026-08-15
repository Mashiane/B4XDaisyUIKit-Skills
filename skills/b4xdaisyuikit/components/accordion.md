# accordion (`B4XDaisyAccordion`)

Accordion groups multiple collapse panels — only one can be open at a time

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAccordion`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAccordion.bas`
- **Verified Demos**: `B4XPageAccordion.bas`
- **Web DaisyUI Mapping**: `.accordion` → `B4XDaisyAccordion`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim acc As B4XDaisyAccordion
acc.Initialize(Me, "acc")
acc.AddToParent(pnlHost, pad, y, maxW, 200dip)
acc.Icon = "arrow"
acc.OpenOnlyOne = True

' Add items after AddToParent
Dim c1 As B4XDaisyCollapse = acc.AddItemBasic("item1", "", "Section 1")
c1.getContentView.Tag = "put content here"
Dim c2 As B4XDaisyCollapse = acc.AddItemBasic("item2", "", "Section 2")
acc.Refresh
y = y + acc.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Call `AddItemBasic` or `AddItem` strictly **after** `AddToParent`.
- When using multiple accordions on the same page, assign distinct `GroupName` values to keep open states independent.
- Call `Refresh` after adding all items to calculate and reflow the accordion content height.
- Use `GetComputedHeight` after `Refresh` for accurate Y-coordinate advancement.
- Access `c1.getContentView` to mount custom child views into each collapse panel.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| OpenOnlyOne | Open Only One | Boolean | True |  |
| IconPosition | Icon Position | String | right | left|right |
| Icon | Icon | String | arrow | none|arrow|plus |
| Visible | Visible | Boolean | True |  |
| SpaceY | Space Y | Int | 2 |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| GroupName | Group Name | String |  |  |

## 5. Declared Events
- `Change (ActiveTag As Object, Status As Boolean)`

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyCollapse)`
- `AddItemBasic(ItemTag As Object, Icon As String, Title As String) As B4XDaisyCollapse`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `HandleChildRequestOpen(RequestedChild As B4XDaisyCollapse)`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItemActive(ItemTag As Object, Value As Boolean)`
- `SetItemTitle(ItemTag As Object, Title As String)`
- `SetItemTitleIcon(ItemTag As Object, IconName As String)`
- `SetItemVariant(ItemTag As Object, Variant As String)`
- `SetItemVisible(ItemTag As Object, Value As Boolean)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `UpdateTheme`
- `getGroupName As String`
- `getHeight As Int`
- `getIcon As String`
- `getIconPosition As String`
- `getLeft As Int`
- `getOpenOnlyOne As Boolean`
- `getRounded As String`
- `getShadow As String`
- `getSpaceY As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setGroupName(Value As String)`
- `setHeight(Value As Int)`
- `setIcon(Value As String)`
- `setIconPosition(Value As String)`
- `setLeft(Value As Int)`
- `setOpenOnlyOne(Value As Boolean)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setSpaceY(Value As Int)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
