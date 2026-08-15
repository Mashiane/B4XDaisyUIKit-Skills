# Chapter 8: Media Carousels, KPI Dashboards & Shimmer Effects

This chapter demonstrates how to build rich interactive dashboards, auto-playing media carousels, summary KPI grids, before/after diff views, and glowing aura banners.

---

## 8.1 Scenario: Analytics & Promotion Dashboard

```b4x
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private pnl As B4XView
    Private pad As Int
    Private gap As Int
    Private maxW As Int
    Private y As Int

    Private bannerCarousel As B4XDaisyCarousel
    Private auraWrapper As B4XDaisyAura
    Private featuredCard As B4XDaisyCard
    Private statsDashboard As B4XDaisyDashboard
    Private imageDiff As B4XDaisyDiff
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    Root.RemoveAllViews
    
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    
    RenderPage(Root.Width, Root.Height)
End Sub

Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    RenderPage(Width, Height)
End Sub

Private Sub RenderPage(W As Int, H As Int)
    If pageScroll.IsInitialized = False Then Return
    pageScroll.Clear

    pad  = pageScroll.PagePadding
    gap  = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    pnl  = pageScroll.Panel
    y    = pad

    ' 1. Auto-playing Promotional Carousel
    bannerCarousel.Initialize(Me, "bannerCarousel")
    bannerCarousel.AddToParent(pnl, pad, y, maxW, 180dip)
    bannerCarousel.AutoPlay = True
    bannerCarousel.AutoPlayInterval = 3500
    bannerCarousel.IndicatorButtons = True
    Dim item1 As B4XDaisyCarouselItem = bannerCarousel.AddItem("slide1", "promo_banner_1.jpg")
    Dim item2 As B4XDaisyCarouselItem = bannerCarousel.AddItem("slide2", "promo_banner_2.jpg")
    y = y + bannerCarousel.GetComputedHeight + gap

    ' 2. KPI Summary Dashboard Grid
    statsDashboard.Initialize(Me, "statsDashboard")
    statsDashboard.AddToParent(pnl, pad, y, maxW, 260dip)
    statsDashboard.AddButtonWithSvgPath("rev", "Revenue", "dollar-sign-solid.svg")
    statsDashboard.AddButtonWithSvgPath("users", "Users", "users-solid.svg")
    statsDashboard.AddButtonWithSvgPath("uptime", "Uptime", "server-solid.svg")
    y = y + statsDashboard.GetComputedHeight + gap

    ' 3. Shimmer Aura Card Highlight
    auraWrapper.Initialize(Me, "auraWrapper")
    auraWrapper.AddToParent(pnl, pad, y, maxW, 140dip)
    auraWrapper.Style = "rainbow"
    auraWrapper.Size = "md"
    auraWrapper.AutoStart = True

    featuredCard.Initialize(Me, "featuredCard")
    featuredCard.AddToParent(auraWrapper.getContentContainer, 0, 0, auraWrapper.getContentContainer.Width, 140dip)
    featuredCard.Title = "VIP Pro Tier Active"
    featuredCard.Variant = "primary"
    y = y + auraWrapper.GetComputedHeight + gap

    ' 4. Visual Before / After Image Diff
    imageDiff.Initialize(Me, "imageDiff")
    imageDiff.AddToParent(pnl, pad, y, maxW, 200dip)
    imageDiff.Image1 = "architecture_before.jpg"
    imageDiff.Image2 = "architecture_after.jpg"
    imageDiff.Position = "0.5"
    y = y + imageDiff.GetComputedHeight + gap

    pageScroll.AutoFit
End Sub

```
