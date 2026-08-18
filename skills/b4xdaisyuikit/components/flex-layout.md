# flex-layout (`B4XDaisyFlexLayout`, `B4XDaisyFlexItem`, `B4XDaisyFlexPanel`)

Native Flexbox layout container and item models.

> **Important architectural note:** Sequential coordinate accumulation inside **`B4XDaisyPageScroll`** is the primary, verified layout engine for B4XDaisyUIKit. `B4XDaisyFlexPanel` is documented for completeness but should not replace standard sequential `AddToParent` accumulation.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFlexLayout`, `B4XDaisyFlexItem`, `B4XDaisyFlexPanel`
- **Status**: `Documented-only`
- **Library Source**: `B4XDaisyFlexLayout.bas, B4XDaisyFlexItem.bas, B4XDaisyFlexPanel.bas`
- **Verified Demos**: `B4XPageInput.bas`
- **Web DaisyUI Mapping**: `.flex`, `.flex-row`, `.flex-col`, `.flex-wrap` → `B4XDaisyFlexPanel`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pnl As B4XDaisyFlexPanel
pnl.Initialize(Me, "pnl")
pnl.AddToParent(pnlHost, pad, y, maxW, 120dip)
pnl.Direction = "row"
pnl.WrapMode = "wrap"
pnl.GapX = 8dip
pnl.GapY = 8dip
```

## 3. Designer Properties (`B4XDaisyFlexPanel`)
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Direction | Direction | String | row | row\|row-reverse\|column\|column-reverse |
| WrapMode | Wrap | String | wrap | nowrap\|wrap\|wrap-reverse |
| GapX | Gap X | Int | 8 |  |
| GapY | Gap Y | Int | 8 |  |
| PaddingLeft | Padding Left | Int | 0 |  |
| PaddingTop | Padding Top | Int | 0 |  |
| PaddingRight | Padding Right | Int | 0 |  |
| PaddingBottom | Padding Bottom | Int | 0 |  |
