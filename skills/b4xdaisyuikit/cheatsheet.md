# B4XDaisyUIKit Design Token Cheatsheet (v2)
## Quick-Reference Token Translations, Sizing Scales, and Layout Metrics

This cheatsheet provides the definitive translation mapping between Tailwind CSS / daisyUI design tokens and native B4X parameters as resolved by the static code module `B4XDaisyVariants`. It serves as a rapid lookup map for design-token compilers and AI developer agents.

---

## I. Semantic Variants & Color Resolutions

When a B4XDaisy component resolves a variant token (via `.setVariant(VariantName)`), `B4XDaisyVariants` queries the currently active theme's tokens. 

### 1. The Core Semantic Palette
Below is the default theme palette mapping. Background and text content colors are blended or pulled directly from active CSS variable tokens at runtime:

| daisyUI Token | B4X Color Token Key | Default Hex (Light Theme) | Active Content Text Key | Default Content Text Hex |
| :--- | :--- | :--- | :--- | :--- |
| **`neutral`** | `--color-neutral` | `0xFF2A323C` | `--color-neutral-content` | `0xFFF8F8F9` |
| **`primary`** | `--color-primary` | `0xFF794DFF` | `--color-primary-content` | `0xFFF3F2FF` |
| **`secondary`** | `--color-secondary` | `0xFF76717F` | `--color-secondary-content` | `0xFFFBFBFC` |
| **`accent`** | `--color-accent` | `0xFF37CDBE` | `--color-accent-content` | `0xFF163835` |
| **`info`** | `--color-info` | `0xFF3ABFF8` | `--color-info-content` | `0xFF002B3D` |
| **`success`** | `--color-success` | `0xFF36D399` | `--color-success-content` | `0xFF003320` |
| **`warning`** | `--color-warning` | `0xFFFBBD23` | `--color-warning-content` | `0xFF381E00` |
| **`error`** | `--color-error` | `0xFFF87272` | `--color-error-content` | `0xFF470000` |

### 2. Base Theme Surfaces
Used for nesting layout containers and drawing backgrounds.

*   **`base-100`** (`--color-base-100`): Primary page and window background. Default: `0xFFFFFFFF` (Light Theme) / `0xFF1D232A` (Dark Theme).
*   **`base-200`** (`--color-base-200`): Secondary layout sections, inputs, and list rows. Default: `0xFFF2F2F2` (Light Theme).
*   **`base-300`** (`--color-base-300`): Divider rules, disabled inputs, and border lines. Default: `0xFFE5E6E6` (Light Theme).
*   **`base-content`** (`--color-base-content`): Standard body typography text color. Default: `0xFF1F2937` (Light Theme).

### 3. Programmatic Variant Helper Methods
*   **Resolve Background**: `B4XDaisyVariants.ResolveBackgroundColorVariant(VariantName, DefaultColor)`
*   **Resolve Text**: `B4XDaisyVariants.ResolveTextColorVariant(VariantName, DefaultColor)`
*   **Get Token Color**: `B4XDaisyVariants.GetTokenColor(TokenName, DefaultColor)` (e.g., `B4XDaisyVariants.GetTokenColor("--color-primary", 0xFF0000FF)`)

---

## II. Border Radii & Shape Conversions

Tailwind `.rounded-*` utility classes are translated to absolute pixel bounds using B4X density-independent pixels (`dip`).

### 1. Rounded Corner Scaling Table

| Tailwind Utility | B4X Equivalent | Evaluated Corner Radius (at scale) |
| :--- | :--- | :--- |
| **`rounded-none`** | `0dip` | Sharp corners. |
| **`rounded-sm`** | `2dip` | Small accents, badge chips. |
| **`rounded`** | `4dip` | Default input boxes, checkbox groups. |
| **`rounded-md`** | `6dip` | Fieldset cards, signature pads. |
| **`rounded-lg`** | `8dip` | Standard cards, action buttons. |
| **`rounded-xl`** | `12dip` | Modal content frames, enjoy hints. |
| **`rounded-2xl`** | `16dip` | Slide-up sheets, floating action containers. |
| **`rounded-3xl`** | `24dip` | Custom decorative frames, avatars. |
| **`rounded-full`** | `9999dip` / `9999` | Perfect circles (Toggle knobs, avatar masks, statuses). |

### 2. Theme-Driven Border Radii
These lookups ensure component frames remain visually synchronized across custom themes:

*   **`rounded-box`** (`--radius-box`): Applied to outer panels, windows, and cards. Fallback: `8dip`.
*   **`rounded-field`** (`--radius-field`): Applied to inputs, dropdowns, and button shapes. Fallback: `6dip`.
*   **`rounded-selector`** (`--radius-selector`): Applied to badges, tabs, and step icons. Fallback: `9999dip` (Full circle).

---

## III. Border Widths & Styling

B4XDaisyUIKit utilizes standard poppler drawables on Android to render customized border strokes. The styles are defined programmatically using `B4XDaisyVariants.ApplyDashedBorder`.

### 1. Border Thickness Sizing
Standard Tailwind numeric tokens are converted using:
`resolvedWidth = B4XDaisyVariants.TailwindBorderWidthToDip(Value, DefaultDip)`

*   **`border`** / **`border-px`**: Evaluated as `1dip`.
*   **`border-2`**: Evaluated as `2dip`.
*   **`border-4`**: Evaluated as `4dip`.
*   **`border-8`**: Evaluated as `8dip`.
*   **`border-[Npx]`** (Arbitrary spec): Evaluated directly as `Ndip`.

### 2. Border Styles
Passed as text descriptors to `ApplyDashedBorder(Target, FillColor, BorderWidth, BorderColor, Radius, Style)`:

*   **`solid`**: Constant solid line border.
*   **`dashed`**: Renders a standard dashed outline (Native B4A canvas dash-interval drawable).
*   **`dotted`**: Renders a dotted outline (B4A dot-interval drawable).
*   **`none`**: Bypasses outline borders completely.

---

## IV. Layout Sizing & Spacing Scale

To preserve design alignment, layout spacing follows a strict Tailwind multiple-of-4 scaling metric. Spacing tokens (`w-*`, `h-*`, `p-*`, `m-*`) are translated directly into absolute `dip` values.

### 1. Spacing Lookup Table
Formula: `dip = TokenValue * 4dip` (e.g. Spacing Step multiplier of 4).

| Token Step | Tailwind Utility | B4X dip Equivalent | Component Sizing Usage |
| :--- | :--- | :--- | :--- |
| **`1`** | `p-1` / `m-1` | `4dip` | Ultra-tight gaps, inner element padding. |
| **`2`** | `p-2` / `gap-2` | `8dip` | Standard sibling gap, inline badge separation. |
| **`3`** | `py-3` / `h-3` | `12dip` | Medium form spacing, alert vertical margins. |
| **`4`** | `p-4` / `h-4` | `16dip` | Page padding boundary, fieldset inner boundary padding. |
| **`6`** | `px-6` / `h-6` | `24dip` | Standard vertical status dot diameter. |
| **`8`** | `p-8` / `h-8` | `32dip` | Large button heights (`xs`), minor title vertical padding. |
| **`10`** | `h-10` | `40dip` | Default action button height (`md`), Avatar small diameter. |
| **`12`** | `h-12` | `48dip` | Large button height (`lg`), Avatar medium diameter. |
| **`14`** | `h-14` | `56dip` | Standard Toolbar/Navbar height. |
| **`16`** | `h-16` | `64dip` | Dock menu vertical height, large list rows. |

---

## V. Typography Scale

Text sizes in B4XDaisyUIKit map Tailwind typography tokens to B4X SP/Points font-sizes dynamically through `B4XDaisyVariants.ResolveTextSizeDip(Token)`.

| Typography Token | Point / SP Size (B4X) | Layout Usage |
| :--- | :--- | :--- |
| **`text-xs`** | `12` | Descriptions, input hint text, small badges. |
| **`text-sm`** | `14` | Form labels, standard paragraph text, button labels. |
| **`text-base`** | `16` | Primary titles, accordion headers, standard buttons. |
| **`text-lg`** | `18` | Fieldset legends, collapse headers. |
| **`text-xl`** | `20` | Section titles, window headers. |
| **`text-2xl`** | `24` | Minor landing page headings, OTP indicators. |
| **`text-3xl`** | `30` | Stat values, OTP numbers, onboarding banners. |
| **`text-4xl`** | `36` | Heavy dashboard headings, splash titles. |

---

## VI. Sizing Specs & Dynamic Bracket Resolution

When setting heights/widths using `.setWidth(String)` or `.setHeight(String)` custom view wrapper methods, B4XDaisyUIKit delegates calculations to `B4XDaisyVariants.ResolveSizeSpec(SpecString, ParentSize, Fallback)`:

1.  **Tailwind scale tokens**: Values like `"w-40"` are resolved directly through Tailwind spacing metrics (`40 * 4dip = 160dip`).
2.  **Parent Percentages**: Suffixes ending with `%` (such as `"w-[80%]"`, `"h-[100%]"`, or `"80%"`) strip the brackets and compute as a percentage factor of the parent layout's width or height bounds (`ParentSize * PercentValue / 100`).
3.  **Explicit Pixel/Sizing Specs**: Suffixes with bracket units (e.g., `"h-[300px]"` or `"300px"`) extract the raw pixel dimension (`300`) and convert it to density-independent pixel equivalents (`300 * 1dip`).
4.  **Auto Fill**: String specs like `"full"` or `"screen"` are normalized immediately to `"100%"`.

---

## VII. Auxiliary & Sub-element Component APIs

### 1. B4XDaisyApp (Global SVG Core)
*   **Initialization Sub**:
    ```b4x
    Public Sub Initialize
    
```
*   **Public Methods**:
    *   `ClearSvgTextCache`: Purges memory-mapped rasterizations.
    *   `GetCachedSvgText(Path As String, DefaultText As String) As String`: Resolves caching layers.

### 2. Card Layout Sub-elements
Used inside `B4XDaisyCard` containers to compile clean semantic partitions.

*   **B4XDaisyCardActions** (Actions footer):
    *   `setGapDip(Value As Int)`: Item gap offset in dips (default 8).
    *   `setWrap(Value As Boolean)`: Toggles inline wrapping on row fill.
    *   `setJustify(Value As String)`: Alignment (`"start"`, `"center"`, `"end"`).
*   **B4XDaisyCardBody** (Card body pane):
    *   `setSize(Value As String)`: Body dimensions (`"sm"`, `"md"`, `"lg"`).
    *   `setHeight(Value As String)`: Container heights (`"auto"`, `"h-32"`).
*   **B4XDaisyCardTitle** (Card header):
    *   `setText(Value As String)`: Title caption.
    *   `setSize(Value As String)`: Text scale.
    *   `setCentered(Value As Boolean)`: Alignment toggle.
    *   `setAutoResize(Value As Boolean)`: Dynamic height grow.

### 3. B4XDaisyDiff (Image & Content Compare slider)
*   **Properties**:
    *   `setDiffType(Value As String)`: Comparison mode (`"image"`, `"text"`, `"auto"`).
    *   `setPosition(Value As Float)`: Split position multiplier between 0.0 and 1.0 (default 0.5).
    *   `setImage1(Value As String)` / `setImage2(Value As String)`: Local file asset names.
    *   `setText1(Value As String)` / `setText2(Value As String)`: String comparisons when in text mode.
    *   `setTextSize(Value As String)`: Tailwind size token.

### 4. B4XDaisyFilter (Horizontal filter bar)
*   **Events**:
    *   `ResetClick`
    *   `Changed(Keys As List)`: Returns checked ID keys.
    *   `ItemChanged(Id As String, Text As String, Checked As Boolean)`
*   **Properties**:
    *   `setOptions(Value As String)`: Pipe-separated key-values (e.g. `"svelte:Svelte|vue:Vue"`).
    *   `setMultiSelect(Value As Boolean)`: Toggles multiple-checks checkbox mode.
    *   `isItemChecked(Key As String) As Boolean`
