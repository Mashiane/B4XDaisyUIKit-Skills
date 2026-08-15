# variants (`B4XDaisyVariants`)

Master theme, design token, color resolution, and shape mask styling engine for B4XDaisyUIKit.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyVariants`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyVariants.bas`
- **Verified Demos**: `B4XPageAura.bas, B4XPageAvatar.bas, B4XPageBadge.bas, B4XPageBadgeGroupSelect.bas, B4XPageBreadcrumbs.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageChat.bas, B4XPageColorWheel.bas, B4XPageDivider.bas, B4XPageDock.bas, B4XPageDropdown.bas, B4XPageEasing.bas, B4XPageFieldset.bas, B4XPageHover3d.bas, B4XPageIndicator.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageNavbar.bas, B4XPagePagination.bas, B4XPagePDFView.bas, B4XPageSelect.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageStack.bas, B4XPageStackPhotos.bas, B4XPageSteps.bas, B4XPageSvgIcon.bas, B4XPageSweetAlertInputs.bas, B4XPageTab.bas, B4XPageTagSphere.bas, B4XPageWindow.bas`
- **Web DaisyUI Mapping**: `.variants` → `B4XDaisyVariants`

## 2. Verified B4X Syntax & Recipe
```b4x
' Switch theme
B4XDaisyVariants.SetActiveTheme("dark")

' Get token color
Dim primaryColor As Int = B4XDaisyVariants.GetTokenColor("--color-primary", Colors.Blue)

' Reflow siblings when a panel expands by 120dip
B4XDaisyVariants.ShiftSiblingsBelow(myPanel, 120dip, 250)

```

## 3. Native Composition Rules & Gotchas
- Master theme engine, dynamic color token resolver, and reflow helper.
- Switch global theme via `B4XDaisyVariants.SetActiveTheme("dark")`.
- Resolve color tokens dynamically using `B4XDaisyVariants.GetTokenColor("--color-primary", fallback)`.
- Reflow sibling views after accordion/collapse height changes using `B4XDaisyVariants.ShiftSiblingsBelow(view, delta, animMs)`.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AlphaColor(ColorValue As Int, Alpha01 As Float) As Int`
- `ApplyBorderSpecToBoxModel(Model As Map, BorderSpec As Map)`
- `ApplyDashedBorder(Target As B4XView, FillColor As Int, BorderWidth As Float, BorderColor As Int, Radius As Float, Style As String)`
- `ApplyEditTextBorder(Target As B4XView, BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int)`
- `ApplyElevation(v As B4XView, ShadowLevel As String)`
- `ApplyFlexContainerTokens(fp As B4XDaisyFlexPanel, TokenString As String, DoRelayout As Boolean)`
- `ApplyFlexItemTokens(fp As B4XDaisyFlexPanel, v As B4XView, TokenString As String, DoRelayout As Boolean)`
- `ApplyGlassStyle(Target As B4XView, RadiusDip As Float, Size As String)`
- `ApplyGlassStylePerCorner(Target As B4XView, TL As Float, TR As Float, BR As Float, BL As Float, Size As String)`
- `ApplyGlassTextStyle(TextTarget As B4XView)`
- `ApplyJoinItemToChild(Item As B4XView, Spec As Map, Index As Int, Total As Int)`
- `ApplyJoinToAllChildren(Container As B4XView, Spec As Map)`
- `ApplyJoinToContainer(Container As B4XView, Spec As Map)`
- `ApplyParsedFlexContainerTokens(fp As B4XDaisyFlexPanel, Parsed As Map, DoRelayout As Boolean)`
- `ApplyParsedFlexItemTokens(fp As B4XDaisyFlexPanel, v As B4XView, Parsed As Map, DoRelayout As Boolean)`
- `ApplyThemeToPage(ThemeName As String, RootView As B4XView)`
- `AreSystemAnimationsEnabled As Boolean`
- `Blend(c1 As Int, c2 As Int, t As Double) As Int`
- `BorderStyleList As String`
- `BuildVariantMap(BackColor As Int, TextColor As Int) As Map`
- `BuildVariantPalette(ThemeName As String) As Map`
- `ClipCanvasToShape(cvs As B4XCanvas, TargetRect As B4XRect, MaskName As String) As Boolean`
- `CloneProps(Props As Map) As Map`
- `ContainsAny(Text As String, Needles() As String`
- `ConvertFlatpickrToDateFormat(FormatText As String) As String`
- `CreateB4XImageView As B4XImageView`
- `CreateEditTextBorder(BackgroundColor As Int, BorderWidthDip As Int, BorderColor As Int, CornerDip As Int) As ColorDrawable`
- `CreateLabel As B4XView`
- `CreateMaskPath(Size As Float, MaskName As String) As B4XPath`
- `CreateMaskPathInRect(TargetRect As B4XRect, MaskName As String) As B4XPath`
- `CreateMaskPathRect(Width As Float, Height As Float, MaskName As String) As B4XPath`
- `CreateRipple(Parent As B4XView, TouchX As Float, TouchY As Float, RippleColor As Int, DurationMs As Int, CornerRadius As Int)`
- `DefaultPalette As Map`
- `DisableClipping(v As B4XView)`
- `DisableClippingChain(StartView As B4XView, MaxLevels As Int)`
- `DisableClippingRecursive(v As B4XView)`
- `DisableShapedClipping(v As B4XView)`
- `DisableViewClipping(v As B4XView)`
- `EnableShapedClipping(v As B4XView, MaskName As String)`
- `ExtractSpacingValue(Value As String) As String`
- `ForceAnimatorDurationScale(Scale As Float) As Boolean`
- `FormatDateTime(FormatText As String, ValueMillis As Long) As String`
- `GetActiveTheme As String`
- `GetActiveTokens As Map`
- `GetBorderDip(DefaultDip As Float) As Float`
- `GetCheckedRadio(Parent As B4XView, GroupName As String) As B4XDaisyRadio`
- `GetCheckedValue(Parent As B4XView, GroupName As String) As String`
- `GetGlassSpec As Map`
- `GetGlassSpecForSize(Size As String) As Map`
- `GetJoinSpec(Orientation As String) As Map`
- `GetPropBool(Props As Map, Key As String, DefaultValue As Boolean) As Boolean`
- `GetPropColor(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropDip(Props As Map, Key As String, DefaultDip As Float) As Float`
- `GetPropFloat(Props As Map, Key As String, DefaultValue As Float) As Float`
- `GetPropInt(Props As Map, Key As String, DefaultValue As Int) As Int`
- `GetPropLong(Props As Map, Key As String, DefaultValue As Long) As Long`
- `GetPropObject(Props As Map, Key As String, DefaultValue As Object) As Object`
- `GetPropSizeDip(Props As Map, Key As String, DefaultDip As Object) As Float`
- `GetPropString(Props As Map, Key As String, DefaultValue As String) As String`
- `GetRadiusBoxDip(DefaultDip As Float) As Float`
- `GetRadiusFieldDip(DefaultDip As Float) As Float`
- `GetRadiusSelectorDip(DefaultDip As Float) As Float`
- `GetThemeColor(Token As String, DefaultColor As Int) As Int`
- `GetThemeTokens(ThemeName As String) As Map`
- `GetTokenColor(Token As String, DefaultColor As Int) As Int`
- `GetTokenDip(Token As String, DefaultDipValue As Float) As Float`
- `GetTokenNumber(Token As String, DefaultValue As Float) As Float`
- `GetTokenString(Token As String, DefaultValue As String) As String`
- `GetVariantPalette As Map`
- `HSLToInt(H As Int, S As Double, L As Double, A As Int) As Int`
- `HasTheme(ThemeName As String) As Boolean`
- `IsClass(Obj As Object, ClassName As String) As Boolean`
- `IsRtl As Boolean`
- `LooksLikeJavaDateFormat(FormatText As String) As Boolean`
- `MaskList As String`
- `MaskListSimple As String`
- `MeasureTextHeightSafe(Text As String, TextSize As Float, tf As Object, Width As Int, BufferDip As Float) As Int`
- `MeasureTextWidthSafe(Text As String, TextSize As Float, tf As Object, BufferDip As Float) As Int`
- `NormalizeAlertVariant(Value As String) As String`
- `NormalizeAnimation(Value As String) As String`
- `NormalizeAvatarPosition(Value As String) As String`
- `NormalizeBadgeStyle(Value As String) As String`
- `NormalizeDateTimeFormat(Value As String, DefaultFlatpickrFormat As String) As String`
- `NormalizeDirection(Value As String) As String`
- `NormalizeFieldsetBorderStyle(Value As String) As String`
- `NormalizeHorizontalPlacement(Value As String) As String`
- `NormalizeLegendSize(Value As String) As String`
- `NormalizeMask(MaskName As String) As String`
- `NormalizeOrientation(Value As String) As String`
- `NormalizeRounded(Value As String) As String`
- `NormalizeSelectionMode(Value As String) As String`
- `NormalizeShadow(Name As String) As String`
- `NormalizeSingleLineText(Value As String) As String`
- `NormalizeSize(Value As String) As String`
- `NormalizeSizeSpec(Value As Object, DefaultValue As String) As String`
- `NormalizeStyle(Value As String) As String`
- `NormalizeVariant(Name As String) As String`
- `NormalizeVerticalPlacement(Value As String) As String`
- `ParseBorderUtilities(Utilities As String, DefaultBorderDip As Float, DefaultBorderColor As Int, DefaultRadiusDip As Float, RtlEnabled As Boolean) As Map`
- `ParseFlexContainerTokens(TokenString As String) As Map`
- `ParseFlexItemTokens(TokenString As String) As Map`
- `ParseGapUtilities(Utilities As String, DefaultGapDip As Float) As Map`
- `RegisterTheme(ThemeName As String, Tokens As Map)`
- `RequestDisallowParentIntercept(View As B4XView, Action As Int)`
- `ResolveAssetImage(FileName As String, DefaultImage As String) As String`
- `ResolveAssetSVG(FileName As String, DefaultText As String) As String`
- `ResolveBackgroundColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBackgroundColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveBorderColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveColorVariantFromPalette(Palette As Map, VariantOrToken As String, PaletteKey As String, DefaultColor As Int) As Int`
- `ResolveHeightBase(Base As B4XView, DefaultValue As Float) As Float`
- `ResolveIconTypeface(icon As String) As Typeface`
- `ResolveLabelSizeDip(SizeToken As String) As Float`
- `ResolveOfflineColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveOnlineColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolvePxSizeSpec(SizeDip As Float) As String`
- `ResolveRoundedDip(Rounded As String, DefaultDip As Float) As Float`
- `ResolveRoundedRadiusDip(MaskName As String, Size As Float) As Float`
- `ResolveShadowElevation(Level As String) As Float`
- `ResolveShadowSpec(Level As String) As Map`
- `ResolveSizeSpec(Value As String, ParentSize As Int, Fallback As Int) As Int`
- `ResolveTextColor(VariantName As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariant(VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextColorVariantFromPalette(Palette As Map, VariantOrToken As String, DefaultColor As Int) As Int`
- `ResolveTextSizeDip(Token As String) As Float`
- `ResolveThemeColorTokenName(Name As String) As String`
- `ResolveVariantColor(Palette As Map, VariantName As String, Key As String, DefaultColor As Int) As Int`
- `ResolveVariantMap(Palette As Map, VariantName As String) As Map`
- `ResolveWidthBase(Base As B4XView, DefaultValue As Float) As Float`
- `RestoreCanvasClip(cvs As B4XCanvas)`
- `SetActiveTheme(ThemeName As String)`
- `SetAlpha(Color As Int, Alpha As Int) As Int`
- `SetBitmapAndFill (ImageView As B4XView, Bmp As B4XBitmap)`
- `SetCheckedByValue(Parent As B4XView, GroupName As String, Value As String) As Boolean`
- `SetColorPerCornerRadius(v As B4XView, BgColor As Int, TL As Float, TR As Float, BR As Float, BL As Float)`
- `SetLineSpacing(v As B4XView, Multiple As Float, Add As Float)`
- `SetOverflowHidden(v As B4XView)`
- `SetStyleVariable(v As B4XView, Name As String, Value As Object)`
- `SetTextOrCSBuilderToLabel(xlbl As B4XView, Text As Object)`
- `ShadowList As String`
- `ShiftColor(Color As Int, Factor As Float) As Int`
- `ShiftSiblingsBelow(View As B4XView, Delta As Int, AnimDuration As Int)`
- `SubArgCount(Target As Object, SubName As String) As Int`
- `TailwindBorderColorToColor(Value As String, DefaultColor As Int) As Int`
- `TailwindBorderRadiusToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindBorderWidthToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindGapToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSizeToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSizeToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindSpacingToDip(Value As Object, DefaultDip As Float) As Float`
- `TailwindSpacingToPx(Value As Object, DefaultPx As Float) As Float`
- `TailwindTextFontSize(Value As Object, DefaultFontSize As Float) As Float`
- `TailwindTextLineHeightDip(Value As Object, DefaultLineHeightDip As Float) As Float`
- `TailwindTextMetrics(Value As Object, DefaultFontSize As Float, DefaultLineHeightPx As Float) As Map`
- `ValidateControls(Controls As List) As Boolean`
- `ValidateRequiredControls(Parent As B4XView) As Boolean`
- `VariantList As String`

## 7. Public Fields
None declared.

## 8. Internal System Engines
- **`B4XDaisyApp`**: Global application configuration and top-level theme state helper.
- **`B4XDaisyBoxModel`**: Low-level padding, border, and margin coordinate calculation engine.
