# B4XDaisyUIKit Design Tokens

This file is the definitive reference for all design tokens, spacing values, typography sizes, border radii, and color semantics in B4XDaisyUIKit. Always use these values when composing UI code. Never hardcode arbitrary pixel values or hex colors in component property setters.

---

## 1. Semantic Color Variants

These string tokens are the valid values for `.setVariant(Value)`, `.Variant`, `.ActiveColor`, and similar color properties on all B4XDaisy components.

| Token | Meaning | Default hex (light theme) | Content text hex |
|---|---|---|---|
| `"primary"` | Brand primary | `0xFF794DFF` | `0xFFF3F2FF` |
| `"secondary"` | Secondary brand | `0xFF76717F` | `0xFFFBFBFC` |
| `"accent"` | Highlights | `0xFF37CDBE` | `0xFF163835` |
| `"neutral"` | Muted dark | `0xFF2A323C` | `0xFFF8F8F9` |
| `"info"` | Informational | `0xFF3ABFF8` | `0xFF002B3D` |
| `"success"` | Positive / OK | `0xFF36D399` | `0xFF003320` |
| `"warning"` | Caution | `0xFFFBBD23` | `0xFF381E00` |
| `"error"` | Destructive | `0xFFF87272` | `0xFF470000` |
| `"ghost"` | Transparent | Background-only | Inherits |
| `"outline"` | Border-only | Transparent fill | Matches border |

### Base surface tokens (for background / container colors)
| Token | Default hex (light) | Use |
|---|---|---|
| `"base-100"` | `0xFFFFFFFF` | Page background |
| `"base-200"` | `0xFFF2F2F2` | Input background, list rows |
| `"base-300"` | `0xFFE5E6E6` | Divider lines, disabled borders |
| `"base-content"` | `0xFF1F2937` | Body text |

### Resolve colors programmatically
```vb
' Resolve background hex for a variant name
Dim bgColor As Int = B4XDaisyVariants.ResolveBackgroundColorVariant("primary", 0xFF794DFF)

' Resolve text content color for a variant
Dim txtColor As Int = B4XDaisyVariants.ResolveTextColorVariant("primary", 0xFFF3F2FF)

' Get any CSS variable token
Dim c As Int = B4XDaisyVariants.GetTokenColor("--color-primary", 0xFF794DFF)

```

---

## 2. Spacing Scale

All layout values follow Tailwind's 4-based scale: **`dip_value = step * 4dip`**

| Step | Tailwind token | B4X dip | Common use |
|---|---|---|---|
| 1 | `p-1` / `gap-1` | `4dip` | Tight inner padding |
| 2 | `p-2` / `gap-2` | `8dip` | Component gap (`YGap`), badge margin |
| 3 | `p-3` / `gap-3` | `12dip` | Medium spacing |
| 4 | `p-4` / `gap-4` | `16dip` | Page padding (`PagePadding`), fieldset inner |
| 5 | `p-5` | `20dip` | Button inner |
| 6 | `p-6` / `h-6` | `24dip` | Status dot diameter |
| 8 | `p-8` / `h-8` | `32dip` | Button height XS, title padding |
| 10 | `h-10` | `40dip` | Button height MD, avatar small |
| 12 | `h-12` | `48dip` | Button height LG, avatar medium |
| 14 | `h-14` | `56dip` | Navbar / toolbar height |
| 16 | `h-16` | `64dip` | Dock bar height, large list row |

**`pageScroll.PagePadding`** → typically `16dip` (p-4)
**`pageScroll.YGap`** → typically `8dip` (gap-2)
**`pageScroll.UsableWidth`** → `pageRoot.Width - (PagePadding * 2)`

---

## 3. Typography Scale

Pass these exact strings to `.setTextSize(Value)`, `.setHeading(Value)`, or `B4XDaisyText.TextSize`.

| Token | Font size (sp/pt) | Common use |
|---|---|---|
| `"text-xs"` | 12 | Hint text, small badge labels |
| `"text-sm"` | 14 | Form labels, paragraph text, button labels |
| `"text-base"` | 16 | Primary body text, accordion headers |
| `"text-lg"` | 18 | Fieldset legends, collapse headers |
| `"text-xl"` | 20 | Section headings |
| `"text-2xl"` | 24 | Sub-page headings, OTP digits |
| `"text-3xl"` | 30 | Stat values, hero titles |
| `"text-4xl"` | 36 | Dashboard main heading |
| `"text-5xl"` | 48 | Splash / landing page hero |
| `"text-6xl"` | 60 | Large display |
| `"text-7xl"` | 72 | Giant display |
| `"text-8xl"` | 96 | Super display |
| `"text-9xl"` | 128 | Max display |

**Heading shortcuts** (on `B4XDaisyText`):
```vb
myText.setHeading("h1")   ' largest heading
myText.setHeading("h2")
myText.setHeading("h3")
myText.setHeading("h4")   ' smallest heading

```

---

## 4. Border Radius Tokens

Pass these strings to `.setRounded(Value)` or `.Rounded` on components that support them.

| Token | dip equivalent | Use |
|---|---|---|
| `"rounded-none"` | `0dip` | Sharp corners |
| `"rounded-sm"` | `2dip` | Micro accents |
| `"rounded"` | `4dip` | Default inputs, checkboxes |
| `"rounded-md"` | `6dip` | Cards, fieldsets |
| `"rounded-lg"` | `8dip` | Standard cards, buttons |
| `"rounded-xl"` | `12dip` | Modals, hints |
| `"rounded-2xl"` | `16dip` | Sheet modals, FAB |
| `"rounded-3xl"` | `24dip` | Decorative, avatars |
| `"rounded-full"` | `9999dip` | Circles (toggle, avatar, status) |
| `"rounded-box"` | `--radius-box` | Outer panels, cards (theme-driven) |
| `"rounded-field"` | `--radius-field` | Inputs, dropdowns (theme-driven) |
| `"rounded-selector"` | `--radius-selector` | Badges, tabs (theme-driven) |

---

## 5. Shadow Tokens

Pass these strings to `.setShadow(Value)` or `.Shadow` on components that support them.

| Token | Elevation level |
|---|---|
| `"none"` | No shadow |
| `"xs"` | Hairline shadow |
| `"sm"` | Subtle (cards) |
| `"md"` | Medium (modals) |
| `"lg"` | Strong (dropdowns) |
| `"xl"` | Heavy (overlays) |
| `"2xl"` | Maximum |

---

## 6. Size Tokens

Pass these strings to `.setSize(Value)` on components that accept size tokens.

| Token | Meaning |
|---|---|
| `"xs"` | Extra small |
| `"sm"` | Small |
| `"md"` | Medium (default) |
| `"lg"` | Large |
| `"xl"` | Extra large |

Common component heights implied by size tokens:

| Size | Button / Dock | Navbar | Avatar |
|---|---|---|---|
| `"xs"` | `32dip` | — | `24dip` |
| `"sm"` | `36dip` | — | `32dip` |
| `"md"` | `40dip` | `56dip` | `40dip` |
| `"lg"` | `48dip` | — | `48dip` |
| `"xl"` | `56dip` | — | `64dip` |

---

## 7. Border Width Tokens

| Token | dip |
|---|---|
| `"border"` / `"border-px"` | `1dip` |
| `"border-2"` | `2dip` |
| `"border-4"` | `4dip` |
| `"border-8"` | `8dip` |
| `"border-[Npx]"` | `N * 1dip` |

---

## 8. Size Spec Strings (Width / Height setters)

When calling `.setWidth(SpecString)` or `.setHeight(SpecString)`:

| Spec format | Resolution |
|---|---|
| `"w-40"` | `40 * 4dip = 160dip` |
| `"h-12"` | `12 * 4dip = 48dip` |
| `"80%"` or `"w-[80%]"` | `parentWidth * 0.80` |
| `"300px"` or `"h-[300px]"` | `300 * 1dip` |
| `"full"` or `"screen"` | `100%` of parent |
| `"w-content"` | Shrink-wrap to natural content width |

---

## 9. Orientation Tokens

| Token | Meaning |
|---|---|
| `"horizontal"` | Left-to-right |
| `"vertical"` | Top-to-bottom |

---

## 10. Alignment Tokens

| Token | Meaning | Used in |
|---|---|---|
| `"start"` | Left / Top | Badge, Divider, Navbar slots, ChatBubble |
| `"center"` | Middle | Divider, PlaceContent |
| `"end"` | Right / Bottom | Badge, Divider, Navbar slots |
| `"top"` | Top | Tooltip, Toast |
| `"middle"` | Vertical center | Toast |
| `"bottom"` | Bottom | Tooltip, Toast |
| `"left"` | Left (text align) | B4XDaisyText HAlign |
| `"right"` | Right (text align) | B4XDaisyText HAlign |
| `"LEFT"` | Left (caps) | B4XDaisyText HAlign setter |
| `"RIGHT"` | Right (caps) | B4XDaisyText HAlign setter |
| `"CENTER"` | Center (caps) | B4XDaisyText HAlign setter |

---

## 11. Avatar Mask Tokens

| Token | Shape |
|---|---|
| `"circle"` | Round |
| `"squircle"` | Rounded square |
| `"heart"` | Heart |
| `"hexagon"` | Hexagon |
| `"triangle"` | Triangle |
| `"star"` | Star |
| `"diamond"` | Diamond |
| `"pentagon"` | Pentagon |

---

## 12. Style Tokens (Component-specific)

### Button / Badge / Alert styles
| Token | Style |
|---|---|
| `"solid"` | Filled background |
| `"soft"` | Tinted background |
| `"outline"` | Border only, transparent fill |
| `"dash"` | Dashed border |
| `"ghost"` | No background, no border |

### Tab styles
| Token | Style |
|---|---|
| `"default"` | Underline indicator |
| `"box"` | Boxed tabs |
| `"lift"` | Lifted / raised tabs |
| `"border"` | Border tabs |

### Loading animation styles
| Token | Animation |
|---|---|
| `"spinner"` | Spinning ring |
| `"dots"` | Bouncing dots |
| `"ring"` | Ring pulse |
| `"ball"` | Bouncing ball |
| `"bars"` | Equalizer bars |
| `"infinity"` | Infinity loop |

### Status animation styles
| Token | Animation |
|---|---|
| `"none"` | Solid dot |
| `"ping"` | Breathing expand |
| `"pulse"` | Glowing |
| `"bounce"` | Bouncing |

### Accordion icon options
| Token | Icon |
|---|---|
| `"none"` | No icon |
| `"arrow"` | Chevron arrow |
| `"plus"` | Plus/minus toggle |
