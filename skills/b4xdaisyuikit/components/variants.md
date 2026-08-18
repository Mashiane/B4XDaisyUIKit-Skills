# variants (`B4XDaisyVariants`)

Master theme, design token, color resolution, and shape mask styling engine for B4XDaisyUIKit.

## 1. Overview
- **Class**: `B4XDaisyVariants`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyVariants.bas`
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
- `AlphaColor(iColorValue As Int, fAlpha01 As Float) As Int`
- `ApplyBorderSpecToBoxModel(mModel As Map, mBorderSpec As Map)`
- `ApplyDashedBorder(vTarget As B4XView, iFillColor As Int, fBorderWidth As Float, iBorderColor As Int, fRadius As Float, sStyle As String)`
- `ApplyEditTextBorder(vTarget As B4XView, iBackgroundColor As Int, iBorderWidthDip As Int, iBorderColor As Int, iCornerDip As Int)`
- `ApplyElevation(vView As B4XView, sShadowLevel As String)`
- `ApplyFlexContainerTokens(fp As B4XDaisyFlexPanel, sTokenString As String, bDoRelayout As Boolean)`
- `ApplyFlexItemTokens(fp As B4XDaisyFlexPanel, vView As B4XView, sTokenString As String, bDoRelayout As Boolean)`
- `ApplyGlassStyle(vTarget As B4XView, fRadiusDip As Float, sSize As String)`
- `ApplyGlassStylePerCorner(vTarget As B4XView, fTL As Float, fTR As Float, fBR As Float, fBL As Float, sSize As String)`
- `ApplyGlassTextStyle(vTextTarget As B4XView)`
- `ApplyJoinItemToChild(vItem As B4XView, mSpec As Map, iIndex As Int, iTotal As Int)`
- `ApplyJoinToAllChildren(vContainer As B4XView, mSpec As Map)`
- `ApplyJoinToContainer(vContainer As B4XView, mSpec As Map)`
- `ApplyParsedFlexContainerTokens(fp As B4XDaisyFlexPanel, mParsed As Map, bDoRelayout As Boolean)`
- `ApplyParsedFlexItemTokens(fp As B4XDaisyFlexPanel, vView As B4XView, mParsed As Map, bDoRelayout As Boolean)`
- `ApplyThemeToPage(sThemeName As String, vRootView As B4XView)`
- `AreSystemAnimationsEnabled As Boolean`
- `Blend(iC1 As Int, iC2 As Int, dT As Double) As Int`
- `BorderStyleList As String`
- `BuildVariantMap(iBackColor As Int, iTextColor As Int) As Map`
- `BuildVariantPalette(sThemeName As String) As Map`
- `ClipCanvasToShape(cvsCvs As B4XCanvas, rcTargetRect As B4XRect, sMaskName As String) As Boolean`
- `CloneProps(mProps As Map) As Map`
- `ContainsAny(sText As String, oNeedles() As String`
- `ConvertFlatpickrToDateFormat(sFormatText As String) As String`
- `CreateB4XImageView As B4XImageView`
- `CreateEditTextBorder(iBackgroundColor As Int, iBorderWidthDip As Int, iBorderColor As Int, iCornerDip As Int) As ColorDrawable`
- `CreateLabel As B4XView`
- `CreateMaskPath(fSize As Float, sMaskName As String) As B4XPath`
- `CreateMaskPathInRect(rcTargetRect As B4XRect, sMaskName As String) As B4XPath`
- `CreateMaskPathRect(fWidth As Float, fHeight As Float, sMaskName As String) As B4XPath`
- `CreateRipple(vParent As B4XView, fTouchX As Float, fTouchY As Float, iRippleColor As Int, iDurationMs As Int, iCornerRadius As Int)`
- `DefaultPalette As Map`
- `DisableClipping(vView As B4XView)`
- `DisableClippingChain(vStartView As B4XView, iMaxLevels As Int)`
- `DisableClippingRecursive(vView As B4XView)`
- `DisableShapedClipping(vView As B4XView)`
- `DisableViewClipping(vView As B4XView)`
- `EnableShapedClipping(vView As B4XView, sMaskName As String)`
- `ExtractSpacingValue(sValue As String) As String`
- `ForceAnimatorDurationScale(fScale As Float) As Boolean`
- `FormatDateTime(sFormatText As String, lValueMillis As Long) As String`
- `GetActiveTheme As String`
- `GetActiveTokens As Map`
- `GetBorderDip(fDefaultDip As Float) As Float`
- `GetCheckedRadio(vParent As B4XView, sGroupName As String) As B4XDaisyRadio`
- `GetCheckedValue(vParent As B4XView, sGroupName As String) As String`
- `GetGlassSpec As Map`
- `GetGlassSpecForSize(sSize As String) As Map`
- `GetJoinSpec(sOrientation As String) As Map`
- `GetPropBool(mProps As Map, sKey As String, bDefaultValue As Boolean) As Boolean`
- `GetPropColor(mProps As Map, sKey As String, iDefaultValue As Int) As Int`
- `GetPropDip(mProps As Map, sKey As String, fDefaultDip As Float) As Float`
- `GetPropFloat(mProps As Map, sKey As String, fDefaultValue As Float) As Float`
- `GetPropInt(mProps As Map, sKey As String, iDefaultValue As Int) As Int`
- `GetPropLong(mProps As Map, sKey As String, lDefaultValue As Long) As Long`
- `GetPropObject(mProps As Map, sKey As String, oDefaultValue As Object) As Object`
- `GetPropSizeDip(mProps As Map, sKey As String, oDefaultDip As Object) As Float`
- `GetPropString(mProps As Map, sKey As String, sDefaultValue As String) As String`
- `GetRadiusBoxDip(fDefaultDip As Float) As Float`
- `GetRadiusFieldDip(fDefaultDip As Float) As Float`
- `GetRadiusSelectorDip(fDefaultDip As Float) As Float`
- `GetThemeColor(sToken As String, iDefaultColor As Int) As Int`
- `GetThemeTokens(sThemeName As String) As Map`
- `GetTokenColor(sToken As String, iDefaultColor As Int) As Int`
- `GetTokenDip(sToken As String, fDefaultDipValue As Float) As Float`
- `GetTokenNumber(sToken As String, fDefaultValue As Float) As Float`
- `GetTokenString(sToken As String, sDefaultValue As String) As String`
- `GetVariantPalette As Map`
- `HasTheme(sThemeName As String) As Boolean`
- `HSLToInt(iH As Int, dS As Double, dL As Double, iA As Int) As Int`
- `IsClass(oObj As Object, sClassName As String) As Boolean`
- `IsRtl As Boolean`
- `LooksLikeJavaDateFormat(sFormatText As String) As Boolean`
- `MaskList As String`
- `MaskListSimple As String`
- `MeasureTextHeightSafe(sText As String, fTextSize As Float, oTf As Object, iWidth As Int, fBufferDip As Float) As Int`
- `MeasureTextWidthSafe(sText As String, fTextSize As Float, oTf As Object, fBufferDip As Float) As Int`
- `NormalizeAlertVariant(sValue As String) As String`
- `NormalizeAnimation(sValue As String) As String`
- `NormalizeAvatarPosition(sValue As String) As String`
- `NormalizeBadgeStyle(sValue As String) As String`
- `NormalizeDateTimeFormat(sValue As String, sDefaultFlatpickrFormat As String) As String`
- `NormalizeDirection(sValue As String) As String`
- `NormalizeFieldsetBorderStyle(sValue As String) As String`
- `NormalizeHorizontalPlacement(sValue As String) As String`
- `NormalizeLegendSize(sValue As String) As String`
- `NormalizeMask(sMaskName As String) As String`
- `NormalizeOrientation(sValue As String) As String`
- `NormalizeRounded(sValue As String) As String`
- `NormalizeSelectionMode(sValue As String) As String`
- `NormalizeShadow(sName As String) As String`
- `NormalizeSingleLineText(sValue As String) As String`
- `NormalizeSize(sValue As String) As String`
- `NormalizeSizeSpec(oValue As Object, sDefaultValue As String) As String`
- `NormalizeStyle(sValue As String) As String`
- `NormalizeVariant(sName As String) As String`
- `NormalizeVerticalPlacement(sValue As String) As String`
- `ParseBorderUtilities(sUtilities As String, fDefaultBorderDip As Float, iDefaultBorderColor As Int, fDefaultRadiusDip As Float, bRtlEnabled As Boolean) As Map`
- `ParseFlexContainerTokens(sTokenString As String) As Map`
- `ParseFlexItemTokens(sTokenString As String) As Map`
- `ParseGapUtilities(sUtilities As String, fDefaultGapDip As Float) As Map`
- `RegisterTheme(sThemeName As String, mTokens As Map)`
- `RequestDisallowParentIntercept(vView As B4XView, iAction As Int)`
- `ResolveAssetImage(sFileName As String, sDefaultImage As String) As String`
- `ResolveAssetSVG(sFileName As String, sDefaultText As String) As String`
- `ResolveBackgroundColorVariant(sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBackgroundColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBorderColorVariant(sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBorderColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, sPaletteKey As String, iDefaultColor As Int) As Int`
- `ResolveHeightBase(vBase As B4XView, fDefaultValue As Float) As Float`
- `ResolveIconTypeface(sIcon As String) As Typeface`
- `ResolveLabelSizeDip(sSizeToken As String) As Float`
- `ResolveOfflineColor(sVariantName As String, iDefaultColor As Int) As Int`
- `ResolveOnlineColor(sVariantName As String, iDefaultColor As Int) As Int`
- `ResolvePxSizeSpec(fSizeDip As Float) As String`
- `ResolveRoundedDip(sRounded As String, fDefaultDip As Float) As Float`
- `ResolveRoundedRadiusDip(sMaskName As String, fSize As Float) As Float`
- `ResolveShadowElevation(sLevel As String) As Float`
- `ResolveShadowSpec(sLevel As String) As Map`
- `ResolveSizeSpec(sValue As String, iParentSize As Int, iFallback As Int) As Int`
- `ResolveTextColor(sVariantName As String, iDefaultColor As Int) As Int`
- `ResolveTextColorVariant(sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveTextColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveTextSizeDip(sToken As String) As Float`
- `ResolveThemeColorTokenName(sName As String) As String`
- `ResolveVariantColor(mPalette As Map, sVariantName As String, sKey As String, iDefaultColor As Int) As Int`
- `ResolveVariantMap(mPalette As Map, sVariantName As String) As Map`
- `ResolveWidthBase(vBase As B4XView, fDefaultValue As Float) As Float`
- `RestoreCanvasClip(cvsCvs As B4XCanvas)`
- `SetActiveTheme(sThemeName As String)`
- `SetAlpha(iColor As Int, iAlpha As Int) As Int`
- `SetBitmapAndFill(vImageView As B4XView, bmpBmp As B4XBitmap)`
- `SetCheckedByValue(vParent As B4XView, sGroupName As String, sValue As String) As Boolean`
- `SetColorPerCornerRadius(vView As B4XView, iBgColor As Int, fTL As Float, fTR As Float, fBR As Float, fBL As Float)`
- `SetLineSpacing(vView As B4XView, fMultiple As Float, fAdd As Float)`
- `SetOverflowHidden(vView As B4XView)`
- `SetStyleVariable(vView As B4XView, sName As String, oValue As Object)`
- `SetTextOrCSBuilderToLabel(vXlbl As B4XView, oText As Object)`
- `ShadowList As String`
- `ShiftColor(iColor As Int, fFactor As Float) As Int`
- `ShiftSiblingsBelow(vView As B4XView, iDelta As Int, iAnimDuration As Int)`
- `SubArgCount(oTarget As Object, sSubName As String) As Int`
- `TailwindBorderColorToColor(sValue As String, iDefaultColor As Int) As Int`
- `TailwindBorderRadiusToDip(oValue As Object, fDefaultDip As Float) As Float`
- `TailwindBorderWidthToDip(oValue As Object, fDefaultDip As Float) As Float`
- `TailwindGapToDip(oValue As Object, fDefaultDip As Float) As Float`
- `TailwindSizeToDip(oValue As Object, fDefaultDip As Float) As Float`
- `TailwindSizeToPx(oValue As Object, fDefaultPx As Float) As Float`
- `TailwindSpacingToDip(oValue As Object, fDefaultDip As Float) As Float`
- `TailwindSpacingToPx(oValue As Object, fDefaultPx As Float) As Float`
- `TailwindTextFontSize(oValue As Object, fDefaultFontSize As Float) As Float`
- `TailwindTextLineHeightDip(oValue As Object, fDefaultLineHeightDip As Float) As Float`
- `TailwindTextMetrics(oValue As Object, fDefaultFontSize As Float, fDefaultLineHeightPx As Float) As Map`
- `ValidateControls(lstControls As List) As Boolean`
- `ValidateRequiredControls(vParent As B4XView) As Boolean`
- `VariantList As String`


## 7. Public Fields
None declared.

## 8. Internal System Engines
- **`B4XDaisyApp`**: Global application configuration and top-level theme state helper.
- **`B4XDaisyBoxModel`**: Low-level padding, border, and margin coordinate calculation engine.
