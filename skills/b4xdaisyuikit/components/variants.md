# variants (`B4XDaisyVariants`)

DaisyUI `Variants` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyVariants`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyVariants.bas`
- **Verified Demo Source**: B4XPageAura.bas (lines 28–28), B4XPageAvatar.bas (lines 1182–1195), B4XPageBadge.bas (lines 128–608), B4XPageBreadcrumbs.bas (lines 32–178), B4XPageButton.bas (lines 613–613), B4XPageCanvasSpinner.bas (lines 48–353), B4XPageCard.bas (lines 223–225), B4XPageChat.bas (lines 233–233), B4XPageColorWheel.bas (lines 43–222), B4XPageDivider.bas (lines 246–254), B4XPageDock.bas (lines 39–514), B4XPageDrawer.bas (lines 40–40), B4XPageDrawerRail.bas (lines 46–526), B4XPageDrawerTree.bas (lines 43–145), B4XPageDropdown.bas (lines 25–269), B4XPageEasing.bas (lines 51–281), B4XPageFieldset.bas (lines 336–371), B4XPageHover3d.bas (lines 32–223), B4XPageIndicator.bas (lines 67–395), B4XPageMenu.bas (lines 24–380), B4XPageMenuRuntime.bas (lines 40–239), B4XPageMenuRuntime2.bas (lines 38–83), B4XPageNavbar.bas (lines 33–33), B4XPagePDFView.bas (lines 25–25), B4XPagePagination.bas (lines 33–307), B4XPageSelect.bas (lines 42–42), B4XPageSignaturePad.bas (lines 61–61), B4XPageStack.bas (lines 41–151), B4XPageSteps.bas (lines 32–32), B4XPageSvgIcon.bas (lines 250–250), B4XPageSweetAlertInputs.bas (lines 54–54), B4XPageTab.bas (lines 27–27), B4XPageTagSphere.bas (lines 41–422), B4XPageWindow.bas (lines 24–205), B4XMainPage.bas (lines 161–165)
- **Web DaisyUI Mapping**: `.variants` → `B4XDaisyVariants`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    Root.Color = B4XDaisyVariants.GetTokenColor("--color-base-200", xui.Color_RGB(245, 247, 250))

    ' Initialize PageScroll Host
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnlHost = pageScroll.Panel

    ' Pre-initialize the overlay loader
    overlaySpinner.Initialize(Me, "overlaySpinner")
    overlaySpinner.setOverlayColor(xui.Color_Black)
    overlaySpinner.setOverlayOpacity(0.5)
    overlaySpinner.setColor1(xui.Color_Yellow)
    overlaySpinner.setColor2(xui.Color_Red)
    overlaySpinner.setColor3(xui.Color_Cyan)

    RenderExamples(Root.Width, Root.Height)
End Sub
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
*(No `#DesignerProperty` attributes defined in source — configured purely in code)*

## 5. Declared Events
- *(No custom events declared)*

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
- `Blend(iC1 As Int, iC2 As Int, dT As Double) As Int`
- `BorderStyleList As String`
- `BuildVariantMap(iBackColor As Int, iTextColor As Int) As Map`
- `BuildVariantPalette(sThemeName As String) As Map`
- `ClipCanvasToShape(cvsCvs As B4XCanvas, rcTargetRect As B4XRect, sMaskName As String) As Boolean`
- `CloneProps(mProps As Map) As Map`
- `ContainsAny(sText As String, oNeedles() As String`
- `ConvertBase64ToString(sText As String) As String`
- `ConvertFlatpickrToDateFormat(sFormatText As String) As String`
- `ConvertStringToBase64(sText As String) As String`
- `CreateB4XImageView As B4XImageView`
- `CreateEditTextBorder(iBackgroundColor As Int, iBorderWidthDip As Int, iBorderColor As Int, iCornerDip As Int) As ColorDrawable`
- `CreateHaloEffect (vParent As B4XView, iX As Int, iY As Int, iClr As Int)`
- `CreateHaloEffectHelper (vParent As B4XView, bmpBmp As B4XBitmap, iX As Int, iY As Int, iClr As Int, iRadius As Int)`
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
- `HSLToInt(iH As Int, dS As Double, dL As Double, iA As Int) As Int`
- `HasTheme(sThemeName As String) As Boolean`
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
- `RaiseEventIfSubExists(oCallback As Object, sFullSubName As String, lstParams As List) As Boolean`
- `RegisterTheme(sThemeName As String, mTokens As Map)`
- `RequestDisallowParentIntercept(vView As B4XView, iAction As Int)`
- `ResolveAssetImage(sFileName As String, sDefaultImage As String) As String`
- `ResolveAssetSVG(sFileName As String, sDefaultText As String) As String`
- `ResolveBackgroundColorVariant(sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBackgroundColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBorderColorVariant(sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveBorderColorVariantFromPalette(mPalette As Map, sVariantOrToken As String, iDefaultColor As Int) As Int`
- `ResolveColorValue(oValue As Object, iDefaultColor As Int) As Int`
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
- `SetBitmapAndFill (vImageView As B4XView, bmpBmp As B4XBitmap)`
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
- `isBase64(sText As String) As Boolean`

## 7. Public Fields
- `xui As XUI`

