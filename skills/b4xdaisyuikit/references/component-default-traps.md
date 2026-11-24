---
name: component-default-traps
description: Inventory of silent component defaults in B4XDaisyUIKit that emit placeholder text, omit visual structure, or fix layout sizes. Audited from 107 native custom view modules; use before composing and verify the rendered result.
---

# Component Default Traps & Blindspots — Native Edition

An audited inventory of silent defaults across B4XDaisyUIKit native custom views.

**Audited from `#DesignerProperty` directives in all 107 native modules**: **1,591 properties**, including **58 content placeholder defaults**, **177 structural flags defaulting to False**, and **206 sizing/dimension defaults**.

None of these defaults throw compilation errors or trip static linters. However, leaving them unset silently changes the rendered appearance on physical devices and emulators. Always verify the rendered UI, not just source code.

---

## 1. Placeholder Content Defaults (Silent Dummy Text Traps)

Every property in the table below renders literal placeholder text when left unset. Always override these properties explicitly in your B4X code; pass `""` if the component should display no text.

| Component & Property | Default Value | Blindspot / Risk if Unset | Verified Override |
| :--- | :--- | :--- | :--- |
| `B4XDaisyAlert.Text` | `"12 unread messages. Tap to see."` | Emits a confusing mock chat notification message in alert banners. | `.setText("Your notification text")` |
| `B4XDaisyButton.Text` | `"Button"` | Displays generic `"Button"` text. | `.setText("Submit")` |
| `B4XDaisyBadge.Text` | `"Badge"` | Displays generic `"Badge"` label. | `.setText("NEW")` |
| `B4XDaisyCard.Title` | `"Card Title"` | Renders header with dummy title `"Card Title"`. | `.setTitle("Account Overview")` |
| `B4XDaisyCardTitle.Text` | `"Card Title"` | Direct sub-view renders dummy title. | `.setText("Profile Details")` |
| `B4XDaisyCollapse.TitleText` | `"Click to expand"` | Emits generic instruction prompt. | `.setTitleText("Frequently Asked Questions")` |
| `B4XDaisyCollapseTitle.Text`| `"Collapse Title"` | Emits dummy collapse heading. | `.setText("Section Details")` |
| `B4XDaisyDiff.Text1` / `.Text2` | `"DAISY"` / `"DAISY"` | Emits literal test strings `"DAISY"` on both sides of comparison. | `.setText1("Before")`, `.setText2("After")` |
| `B4XDaisyFab.TriggerText` | `"F"` | Renders a literal letter `"F"` in the FAB button circle. | Set an SVG icon via `.setIcon("plus-solid.svg")` |
| `B4XDaisyFab.MainActionText`| `"M"` | Renders letter `"M"` in primary sub-action. | Provide action icon or clear label. |
| `B4XDaisyFab.CloseActionText`| `"X"` | Renders letter `"X"` in close trigger. | Provide close icon or explicit label. |
| `B4XDaisyFileInput.ButtonText`| `"Choose file"` | May clash with localization / non-English apps. | `.setButtonText("Select Document")` |
| `B4XDaisyFileInput.Placeholder`| `"No file chosen"` | May clash with localization. | `.setPlaceholder("No receipt attached")` |
| `B4XDaisyFilter.ResetText` | `"x"` | Emits lowercase `"x"` on filter reset button. | Set icon or localized text. |
| `B4XDaisyInfoCard.Title` | `"Employees"` | Emits dummy corporate title `"Employees"`. | `.setTitle("Total Revenue")` |
| `B4XDaisyInput.Placeholder` | `"Type here"` | Generic placeholder text in form text fields. | `.setPlaceholder("Enter your work email")` |
| `B4XDaisyKbd.Text` | `"K"` | Renders single key `"K"` badge. | `.setText("Ctrl")` or `.setText("Enter")` |
| `B4XDaisyModal.Title` | `"Modal Title"` | Generic header on popups and confirmation dialogs. | `.setTitle("Confirm Transaction")` |
| `B4XDaisyModal.YesCaption` | `"Yes"` | Fixed English button label. | `.setYesCaption("Confirm")` |
| `B4XDaisyModal.NoCaption` | `"No"` | Fixed English button label. | `.setNoCaption("Dismiss")` |
| `B4XDaisyModal.CancelCaption`| `"Cancel"` | Fixed English button label. | `.setCancelCaption("Abort")` |
| `B4XDaisyScaffold.Title` | `"Title"` | Emits dummy title `"Title"` in top bar. | `.setTitle("Dashboard")` |
| `B4XDaisySelect.Placeholder` | `"Pick an option"` | English selection placeholder. | `.setPlaceholder("Select country...")` |
| `B4XDaisySignature.ClearButtonText`| `"Clear"` | English button label. | `.setClearButtonText("Erase")` |
| `B4XDaisySignature.SaveButtonText` | `"Save"` | English button label. | `.setSaveButtonText("Accept")` |
| `B4XDaisySwap.OnText` / `.OffText` | `"ON"` / `"OFF"` | Fixed text states in flip toggles. | Set custom state labels or icons. |
| `B4XDaisySweetAlert.Title` | `"Are you sure?"` | Default prompt in confirmation popups. | Always pass explicit title in `ShowAsync`. |
| `B4XDaisySweetAlert.ConfirmButtonText`| `"OK"` | Fixed button label. | `.setConfirmButtonText("Proceed")` |
| `B4XDaisySweetAlert.DenyButtonText`| `"No"` | Fixed button label. | `.setDenyButtonText("Reject")` |
| `B4XDaisySweetAlert.CancelButtonText`| `"Cancel"` | Fixed button label. | `.setCancelButtonText("Close")` |
| `B4XDaisySweetAlert.InputErrorMessage`| `"This field is required."` | English validation error message. | Set localized error message. |
| `B4XDaisyTooltip.Message` | `"Tooltip message"` | Emits dummy tooltip text. | `.setMessage("Helpful context...")` |

---

## 2. Structural Flags Defaulting to False (Hidden Feature Blindspots)

These properties control structural and behavioral features that default to `False`. If your design calls for one of these capabilities, you must explicitly enable it.

| Component & Property | Default | Blindspot / Symptom if Left at Default | Verified Override |
| :--- | :---: | :--- | :--- |
| `B4XDaisyAvatar.ShowOnline` | `False` | Online/offline indicator dot does NOT render. | `av.setShowOnline(True)` |
| `B4XDaisyAvatar.Glass` | `False` | Translucent glass shine and highlight borders disabled. | `av.setGlass(True)` |
| `B4XDaisyBadge.AvatarVisible` | `False` | Embedded avatar icon inside badge chip is hidden. | `badge.setAvatarVisible(True)` |
| `B4XDaisyBadge.Toggle` | `False` | Badge cannot be tapped as a selectable toggle chip. | `badge.setToggle(True)` |
| `B4XDaisyBadge.Closable` | `False` | Dismissible "X" close icon on the right is hidden. | `badge.setClosable(True)` |
| `B4XDaisyButton.Wide` | `False` | Button does not stretch (`btn-wide`, min-width 16rem). | `btn.setWide(True)` |
| `B4XDaisyButton.Block` | `False` | Button does not expand to full container width (`btn-block`). | `btn.setBlock(True)` |
| `B4XDaisyButton.Square` | `False` | Button keeps pill/rectangle aspect ratio; not 1:1 square. | `btn.setSquare(True)` |
| `B4XDaisyButton.Circle` | `False` | Button does not render as a circular icon button. | `btn.setCircle(True)` |
| `B4XDaisyButton.Glass` | `False` | Glassmorphic background blur effect is disabled. | `btn.setGlass(True)` |
| `B4XDaisyCarousel.NavigationButtons`| `False` | Left/Right navigation arrow buttons are omitted. | `carousel.setNavigationButtons(True)` |
| `B4XDaisyCarousel.IndicatorButtons` | `False` | Slide pagination dot buttons at the bottom are omitted. | `carousel.setIndicatorButtons(True)` |
| `B4XDaisyCarousel.AutoPlay` | `False` | Carousel remains static; does not advance slides automatically. | `carousel.setAutoPlay(True)` |
| `B4XDaisyCheckbox.Multiline` | `False` | Long checkbox labels are truncated instead of wrapping. | `chk.setMultiline(True)` |
| `B4XDaisyCheckbox.Required` | `False` | Form validation ignores this field unless set. | `chk.setRequired(True)` |
| `B4XDaisyCollapse.Opened` | `False` | Section renders collapsed by default. | `collapse.setOpened(True)` |
| `B4XDaisyInput.Password` | `False` | Text input shows clear text; no password masking or eye toggle. | `input.setPassword(True)` |
| `B4XDaisyInput.Required` | `False` | `.Validate` will not flag an empty field. | `input.setRequired(True)` |
| `B4XDaisyNavbar.HasBackButton` | `False` | Back arrow button on the left is hidden. | `nav.setHasBackButton(True)` |

---

## 3. Sizing, Spacing & Layout Blindspots

| Component & Property | Default | Blindspot / Impact | Rule |
| :--- | :--- | :--- | :--- |
| `B4XDaisyButton.ButtonSizeDip` | `0` | When 0, the extent is auto-derived from the `Size` token (`md` = 48dip). | Pass explicit `ButtonSizeDip` only when a custom fixed size is needed. |
| `B4XDaisyBoomMenu.TriggerSizeDip` | `56` | Default FAB trigger size is 56dip. | Ensure enclosing view has at least 56dip margin. |
| `B4XDaisyBoomMenu.HamButtonWidthDip` | `300` | Rectangular ham buttons default to 300dip width; may clip on screens $< 320\text{dip}$. | Adjust to `Root.Width - 32dip` on compact phones. |
| `B4XDaisyAlert.AutoResize` | `True` | Height dynamically adjusts to wrapped text. | Keep `True` to prevent text truncation on long alerts. |
| `B4XDaisyBadgeGroupSelect.Padding` | `16` | Fixed 16dip inner padding. | Account for 16dip in available width math. |
| `B4XDaisyPageScroll.Panel` height | `0` (initial) | **Critical Blindspot**: Until `AutoFit` is called, scroll height is 0. | **Mandatory**: Always call `pageScroll.AutoFit` at the end of rendering (`RULE-LAYOUT-003`). |

---

## 4. Semantic Variant & Styling Defaults

| Property | Default Value | Blindspot / Reality | Verified Pattern |
| :--- | :--- | :--- | :--- |
| `Variant` / `Color` | `"default"` | Does NOT default to `"primary"`. It adopts neutral theme background (`base-100` / `base-200`). | If you want a highlighted CTA, you must explicitly set `.setColor("primary")`. |
| `Style` | `"solid"` | Solid opaque background. | For subtle/ghost actions, set `.setStyle("soft")` or `.setStyle("ghost")`. |
| `Size` | `"md"` | Standard mobile touch target (~48dip). | For tight navigation bars, use `"sm"`. |
| `Rounded` | `"theme"` | Follows active theme radius token. | For circular controls, set `"rounded-full"`. |

---

## 5. Composition Pre-Flight Checklist

Before finalizing any B4XDaisy screen:
1. **Search for dummy text**: Did you leave `.Text = "Button"` or `.Title = "Card Title"`?
2. **Confirm required controls**: Did you set `.Required = True` on mandatory form inputs?
3. **Verify scroll sizing**: Did you invoke `pageScroll.AutoFit` as the very last line?
4. **Check feature flags**: If using a carousel, did you enable `NavigationButtons` or `IndicatorButtons`?
