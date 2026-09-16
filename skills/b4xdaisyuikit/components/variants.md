# variants (`B4XDaisyVariants`)

DaisyUI `Variants` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyVariants`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyVariants.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyVariants.bas)
- **Verified Demo Source**: B4XPageAura.bas, B4XPageAvatar.bas, B4XPageBadge.bas, B4XPageBreadcrumbs.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageChat.bas, B4XPageColorWheel.bas, B4XPageDivider.bas, B4XPageDock.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDropdown.bas, B4XPageEasing.bas, B4XPageFieldset.bas, B4XPageHover3d.bas, B4XPageIndicator.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageNavbar.bas, B4XPagePDFView.bas, B4XPagePagination.bas, B4XPageSelect.bas, B4XPageSignaturePad.bas, B4XPageStack.bas, B4XPageSteps.bas, B4XPageSvgIcon.bas, B4XPageSweetAlertInputs.bas, B4XPageTab.bas, B4XPageTagSphere.bas, B4XPageWindow.bas
- **Web DaisyUI Mapping**: `.variants` → `B4XDaisyVariants`

## 2. Verified B4X Syntax & Recipe
```b4x
' 1. Resolve semantic DaisyUI theme colors dynamically
Dim cPrimary As Int = B4XDaisyVariants.GetTokenColor("--color-primary", xui.Color_Blue)
Dim cBase200 As Int = B4XDaisyVariants.GetTokenColor("--color-base-200", xui.Color_RGB(245, 247, 250))
Dim cMutedText As Int = B4XDaisyVariants.GetTokenColor("--color-base-content", xui.Color_Black)

' 2. Resolve border colors and alpha transparency
Dim cBorder As Int = B4XDaisyVariants.ResolveBorderColorVariant("base-content/10", xui.Color_LightGray)
Dim cFaint As Int = B4XDaisyVariants.SetAlpha(cPrimary, 30)

' 3. Resolve standardized box corner radiuses
Dim iRadius As Int = B4XDaisyVariants.GetRadiusBoxDip(8dip)

' 4. Switch application theme dynamically at runtime
B4XDaisyVariants.SetTheme("dark")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyVariants` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Deviation Mechanism
- Utility/Helper/Animation class with specialized non-visual or animation lifecycle (not a standard CustomView).

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `Process_Globals, isBase64, ConvertStringToBase64` (+ 137 more).

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `HSLToInt(H As Int, S As Double, L As Double, A As Int) As Int`
- `SetTextOrCSBuilderToLabel(Xlbl As B4XView, Text As Object)`
- `SetBitmapAndFill(ImageView As B4XView, bmpBmp As B4XBitmap)`
- `CreateLabel As B4XView`
- `CreateB4XImageView As B4XImageView`
- `GetCheckedRadio(Parent As B4XView, GroupName As String) As B4XDaisyRadio`
- `CreateRipple(Parent As B4XView, TouchX As Float, TouchY As Float, RippleColor As Int, DurationMs As Int, CornerRadius As Int)`
- `GetCheckedValue(Parent As B4XView, GroupName As String) As String`
- `SetCheckedByValue(Parent As B4XView, GroupName As String, Value As String) As Boolean`
- `SetActiveTheme(ThemeName As String)`
- `GetActiveTheme As String`
- `HasTheme(ThemeName As String) As Boolean`
- `RegisterTheme(ThemeName As String, Tokens As Map)`
- `ResolveAssetImage(FileName As String, DefaultImage As String) As String`
- `ResolveAssetSVG(FileName As String, DefaultText As String) As String`
- `GetThemeTokens(ThemeName As String) As Map`
- `GetActiveTokens As Map`
- `SetOverflowHidden(View As B4XView)`
- `SetStyleVariable(View As B4XView, Name As String, Value As Object)`
- `IsClass(Obj As Object, ClassName As String) As Boolean`
- `GetTokenColor(Token As String, DefaultColor As Int) As Int`
- `ResolveThemeColorTokenName(Name As String) As String`
- `NormalizeOrientation(Value As String) As String`
- `NormalizeHorizontalPlacement(Value As String) As String`
- `NormalizeVerticalPlacement(Value As String) As String`
- `NormalizeAlertVariant(Value As String) As String`
- `NormalizeSize(Value As String) As String`
- `NormalizeBadgeStyle(Value As String) As String`
- `NormalizeStyle(Value As String) As String`
- `NormalizeSelectionMode(Value As String) As String`
- `NormalizeFieldsetBorderStyle(Value As String) As String`
- `NormalizeLegendSize(Value As String) As String`
- `NormalizeSizeSpec(Value As Object, DefaultValue As String) As String`
- `GetPropObject(Props As Map, Key As String, DefaultValue As Object) As Object`
- `ResolveSizeSpec(Value As String, ParentSize As Int, Fallback As Int) As Int`
- `NormalizeAvatarPosition(Value As String) As String`
- `NormalizeDirection(Value As String) As String`
- `NormalizeAnimation(Value As String) As String`
- `NormalizeSingleLineText(Value As String) As String`
- `GetTokenString(Token As String, DefaultValue As String) As String`
- `GetTokenNumber(Token As String, DefaultValue As Float) As Float`
- `GetThemeColor(Token As String, DefaultColor As Int) As Int`
- `GetTokenDip(Token As String, DefaultDipValue As Float) As Float`
- `GetBorderDip(DefaultDip As Float) As Float`
- `GetRadiusBoxDip(DefaultDip As Float) As Float`
- `GetRadiusFieldDip(DefaultDip As Float) As Float`
- `GetRadiusSelectorDip(DefaultDip As Float) As Float`
- `GetVariantPalette As Map`
- `BuildVariantPalette(ThemeName As String) As Map`
- `VariantList As String`
- `NormalizeVariant(Name As String) As String`
- `BuildVariantMap(BackColor As Int, TextColor As Int) As Map`
- `DefaultPalette As Map`
- `ResolveVariantMap(Palette As Map, VariantName As String) As Map`
- `ResolveVariantColor(Palette As Map, VariantName As String, Key As String, DefaultColor As Int) As Int`
- `ResolveBackgroundColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBackgroundColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveColorVariantFromPalette(Palette As Map, VariantOrToken As String, PaletteKey As String, DefaultColor As Int) As Int`
- `ResolveOnlineColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveOfflineColor(VariantName As String, DefaultColor As Int) As Int`
- `Blend(C1 As Int, C2 As Int, T As Double) As Int`
- `ShadowList As String`
- `NormalizeShadow(Name As String) As String`
- `ResolveShadowElevation(Level As String) As Float`
- `ResolveShadowSpec(Level As String) As Map`
- `MaskList As String`
- `MaskListSimple As String`
- `NormalizeMask(MaskName As String) As String`
- `CreateMaskPath(Size As Float, MaskName As String) As B4XPath`
- `CreateMaskPathRect(Width As Float, Height As Float, MaskName As String) As B4XPath`
- `CreateMaskPathInRect(rcTargetRect As B4XRect, MaskName As String) As B4XPath`
- `ResolveRoundedRadiusDip(MaskName As String, Size As Float) As Float`
- `ClipCanvasToShape(cvsCvs As B4XCanvas, rcTargetRect As B4XRect, MaskName As String) As Boolean`
- `RestoreCanvasClip(cvsCvs As B4XCanvas)`
- `DisableViewClipping(View As B4XView)`
- `EnableShapedClipping(View As B4XView, MaskName As String)`
- `DisableShapedClipping(View As B4XView)`
- `SetLineSpacing(View As B4XView, Multiple As Float, Add As Float)`
- `NormalizeDateTimeFormat(Value As String, DefaultFlatpickrFormat As String) As String`
- `FormatDateTime(FormatText As String, ValueMillis As Long) As String`
- `LooksLikeJavaDateFormat(FormatText As String) As Boolean`
- `ConvertFlatpickrToDateFormat(FormatText As String) As String`
- `GetPropString(Props As Map, Key As String, DefaultValue As String) As String`
- `GetPropFloat(Props As Map, Key As String, DefaultValue As Float) As Float`
- `GetPropInt(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropLong(Props As Map, Key As String, DefaultValue As Long) As Long`
- `GetPropBool(Props As Map, Key As String, DefaultValue As Boolean) As Boolean`
- `GetPropColor(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropDip(Props As Map, Key As String, DefaultDip As Float) As Float`
- `GetPropSizeDip(Props As Map, Key As String, DefaultDip As Object) As Float`
- `TailwindSizeToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSizeToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSpacingToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindGapToDip(Value As Object, DefaultDip As Float) As Float`
- `ParseGapUtilities(Utilities As String, DefaultGapDip As Float) As Map`
- `BorderStyleList As String`
- `TailwindBorderWidthToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindBorderRadiusToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindBorderColorToColor(Value As String, DefaultColor As Int) As Int`
- `ParseBorderUtilities(Utilities As String, DefaultBorderDip As Float, DefaultBorderColor As Int, DefaultRadiusDip As Float, RtlEnabled As Boolean) As Map`
- `ApplyBorderSpecToBoxModel(Model As Map, BorderSpec As Map)`
- `TailwindTextMetrics(Value As Object, DefaultFontSize As Float, DefaultLineHeightPx As Float) As Map`
- `ResolvePxSizeSpec(SizeDip As Float) As String`
- `ResolveWidthBase(Base As B4XView, DefaultValue As Float) As Float`
- `ResolveHeightBase(Base As B4XView, DefaultValue As Float) As Float`
- `ResolveTextSizeDip(Token As String) As Float`
- `ResolveLabelSizeDip(SizeToken As String) As Float`
- `MeasureTextWidthSafe(Text As String, TextSize As Float, Tf As Object, BufferDip As Float) As Int`
- `MeasureTextHeightSafe(Text As String, TextSize As Float, Tf As Object, Width As Int, BufferDip As Float) As Int`
- `GetGlassSpec As Map`
- `GetGlassSpecForSize(Size As String) As Map`
- `ApplyGlassStyle(Target As B4XView, RadiusDip As Float, Size As String)`
- `ApplyGlassStylePerCorner(Target As B4XView, TL As Float, TR As Float, BR As Float, BL As Float, Size As String)`
- `SetColorPerCornerRadius(View As B4XView, BgColor As Int, TL As Float, TR As Float, BR As Float, BL As Float)`
- `ApplyGlassTextStyle(TextTarget As B4XView)`
- `AlphaColor(ColorValue As Int, Alpha01 As Float) As Int`
- `GetJoinSpec(Orientation As String) As Map`
- `ApplyJoinToContainer(Container As B4XView, Spec As Map)`
- `ApplyJoinItemToChild(Item As B4XView, Spec As Map, Index As Int, Total As Int)`
- `ApplyJoinToAllChildren(Container As B4XView, Spec As Map)`
- `TailwindTextFontSize(Value As Object, DefaultFontSize As Float) As Float`
- `TailwindTextLineHeightDip(Value As Object, DefaultLineHeightDip As Float) As Float`
- `ExtractSpacingValue(Value As String) As String`
- `ResolveIconTypeface(Icon As String) As Typeface`
- `IsRtl As Boolean`
- `NormalizeRounded(Value As String) As String`
- `ResolveRoundedDip(Rounded As String, DefaultDip As Float) As Float`
- `SetAlpha(Color As Int, Alpha As Int) As Int`
- `ShiftColor(Color As Int, Factor As Float) As Int`
- `CloneProps(Props As Map) As Map`
- `DisableClipping(View As B4XView)`
- `DisableClippingChain(StartView As B4XView, MaxLevels As Int)`
- `DisableClippingRecursive(View As B4XView)`
- `ApplyElevation(View As B4XView, ShadowLevel As String)`
- `ParseFlexContainerTokens(TokenString As String) As Map`
- `ApplyFlexContainerTokens(fp As B4XDaisyFlexPanel, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexContainerTokens(fp As B4XDaisyFlexPanel, Parsed As Map, DoRelayout As Boolean)`
- `ParseFlexItemTokens(TokenString As String) As Map`
- `ApplyFlexItemTokens(fp As B4XDaisyFlexPanel, View As B4XView, TokenString As String, DoRelayout As Boolean)`
- `ApplyParsedFlexItemTokens(fp As B4XDaisyFlexPanel, View As B4XView, Parsed As Map, DoRelayout As Boolean)`
- `ApplyThemeToPage(ThemeName As String, RootView As B4XView)`
- `ApplyDashedBorder(Target As B4XView, FillColor As Int, BorderWidth As Float, BorderColor As Int, Radius As Float, Style As String)`
- `ShiftSiblingsBelow(View As B4XView, Delta As Int, AnimDuration As Int)`
- `CreateEditTextBorder(BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int) As ColorDrawable`
- `ApplyEditTextBorder(Target As B4XView, BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int)`
- `ValidateRequiredControls(Parent As B4XView) As Boolean`
- `ValidateControls(lstControls As List) As Boolean`
- `SubArgCount(Target As Object, SubName As String) As Int`
- `RequestDisallowParentIntercept(View As B4XView, Action As Int)`

## 7. Public Fields
(none declared in packaged source)

