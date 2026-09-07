# Chapter 1: On-Demand Dashboard & Statistics Blueprints (ch01_dashboards.md)
## B4XDaisyUIKit Application Layout Reference

This reference blueprint details the canonical, evidence-backed implementation of dashboard screens and statistic widgets inside native B4X Pages. Following codebase utilization audits, all layouts are hosted within `B4XDaisyPageScroll` and arranged programmatically using sequential accumulator stacking coordinates instead of custom grids or flexible panels.

> **Scope:** Stat (`B4XDaisyStat`/`StatItem` + `Timeline`) dashboards. For media-heavy dashboards (Carousel + KPI Grid + Aura + Diff) see `ch08-dashboards-media-sliders.md` — complementary, not duplicate.

---

## 📊 THE DASHBOARD LIFECYCLE TEMPLATE (svHost-Hosting Parity)

Every dashboard screen must follow this standard re-rendering routine [126]. The page scroll content panel `pnlHost` is completely cleared and compiled sequentially on creation and resize [134, 135]:

```b4x
#IgnoreWarnings:12,9
Sub Class_Globals
    ' Page Root provided by B4XPages Manager
    Private Root As B4XView
    Private xui As XUI
    
    ' Layout Infrastructure (Canonical scrolling host)
    Private pageScroll As B4XDaisyPageScroll
    Private pnlHost As B4XView
    Private pad As Int
    Private gap As Int
    Private maxW As Int
    Private y As Int
    
    ' Dashboard Components
    Private navbar As B4XDaisyNavbar
    Private mainStats As B4XDaisyStat
    Private detailTimeline As B4XDaisyTimeline
End Sub

Public Sub Initialize As Object
    ' Return this instance for page registration
    Return Me
End Sub

' Triggered by B4XPages manager upon page instantiation
Private Sub B4XPage_Created(Root1 As B4XView)
    Root = Root1
    Root.Color = xui.Color_White
    Root.RemoveAllViews
    
    ' 1. Establish page scrolling host
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    pnlHost = pageScroll.Panel
    
    ' 2. Compile Layout
    RenderPage(Root.Width, Root.Height)
End Sub

' Triggers on screen rotation or resize transitions
Private Sub B4XPage_Resize(Width As Int, Height As Int)
    If pageScroll.IsInitialized Then pageScroll.Base_Resize(Width, Height)
    RenderPage(Width, Height)
End Sub

Private Sub B4XPage_Appear
    CallSubDelayed(B4XPages.MainPage, "Page_Ready")
End Sub

```

---

## 💎 STATISTICAL PROGRESS CARD BLOCK (`PT_STAT_CARD`)

To assemble statistical metric rows, use a horizontal scroll-wrapped `B4XDaisyStat` container containing individual `B4XDaisyStatItem` segments [601, 603, 605, 609]. Items are aligned dynamically based on content height [603, 604]:

### 1. Programmatic Layout and Stacking Code

```b4x
Private Sub RenderPage(W As Int, H As Int)
    If pnlHost.IsInitialized = False Then Return
    
    ' 1. Wipe previous render views to prevent duplicate elements on Resize
    pageScroll.Clear
    
    pad = pageScroll.PagePadding
    gap = pageScroll.YGap
    maxW = pageScroll.UsableWidth
    y = pad
    
    ' 2. Sequential Absolute Stacking Loop
    
    ' Title Caption
    y = pageScroll.AddSectionTitle("Performance Overview", y, False) + gap
    
    ' Setup main statistics row
    mainStats.Initialize(Me, "mainStats")
    ' Initial height of 100dip is updated programmatically by child size fits
    mainStats.AddToParent(pnlHost, pad, y, maxW, 100dip)
    mainStats.Orientation = "horizontal"
    mainStats.Rounded = "rounded-box"
    mainStats.Shadow = "md"
    mainStats.BorderColor = "neutral"
    
    ' Add individual stat metrics programmatically
    Dim s1 As B4XDaisyStatItem
    s1.Initialize(Me, "s1")
    s1.Title = "Net Revenue"
    s1.Value = "12,450"
    s1.Description = "+14% from last month"
    s1.FigureType = "icon"
    s1.FigureSource = "bolt-solid.svg"
    s1.FigureColor = "success"
    mainStats.AddItem(s1)
    
    Dim s2 As B4XDaisyStatItem
    s2.Initialize(Me, "s2")
    s2.Title = "Active Users"
    s2.Value = "1,894"
    s2.Description = "89 online now"
    s2.FigureType = "radial"
    s2.FigureSource = "85" ' Percentage value
    s2.FigureColor = "primary"
    mainStats.AddItem(s2)
    
    ' Finalize mainStats layout metrics
    mainStats.Refresh
    y = y + mainStats.GetComputedHeight + gap
    
    ' Add timeline feed below stats
    y = pageScroll.AddSectionTitle("Recent Audit Activity", y, False) + gap
    
    detailTimeline.Initialize(Me, "timeline")
    detailTimeline.AddToParent(pnlHost, pad, y, maxW, 200dip)
    detailTimeline.Orientation = "vertical"
    detailTimeline.MarkerColor = "primary"
    detailTimeline.BoxShadow = "sm"
    
    detailTimeline.AddItem("t1", "09:30 AM", "Payment processed successfully")
    detailTimeline.AddItem("t2", "11:15 AM", "Profile avatar updated")
    detailTimeline.Refresh
    y = y + detailTimeline.GetComputedHeight + pad
    
    ' 3. Automatic viewport height calculations
    pageScroll.AutoFit
End Sub

```

---

## 🔍 METRIC COMPONENT CONFIGURATION REFERENCES

### `B4XDaisyStat` [601]
*   **Properties**:
    *   `Orientation` As String ("horizontal" / "vertical")
    *   `Rounded` As String ("none" | "theme" | "rounded-box" | "rounded-md" | "rounded-lg" | "rounded-xl" | "rounded-2xl" | "rounded-3xl" | "rounded-full") [601]
    *   `Shadow` As String ("none" | "xs" | "sm" | "md" | "lg" | "xl" | "2xl") [601]
    *   `BorderColor` As String ("none" | variant name) [602]
*   **Methods**:
    *   `AddItem(Item As B4XDaisyStatItem)` [605]
    *   `Refresh()` [602]
    *   `StartAnimation()` (Triggers count-up animations recursively) [606]

### `B4XDaisyStatItem` [609]
*   **Properties**:
    *   `Title` As String
    *   `Value` As String
    *   `Description` As String
    *   `FigureType` As String ("none" | "icon" | "avatar" | "radial") [610]
    *   `FigureSource` As String (SVG filename, image file, or percentage) [617]
    *   `FigureColor` As String (DaisyUI Variant e.g., "primary", "success") [617]
    *   `Animated` As Boolean (Enables value count-up transitions) [611, 617]
    *   `Duration` As Int (Count-up speed in seconds) [611, 617]

---

## 📈 DATA VISUALIZATION RECIPES (No Native Chart Component)

**Important:** B4XDaisyUIKit ships **no chart component** (no donut, pie, bar, line, or wave chart — confirmed against `component-manifest.md`). Never invent a `B4XDaisyChart` class. When a prompt or design calls for charts, express the data with these verified patterns, or state the gap to the user:

| Chart need | Verified recipe | Evidence |
|---|---|---|
| Single KPI vs goal (ring gauge) | `B4XDaisyRadialProgress` (`Value` 0–100, `Size`, `StrokeWidth`) — optionally inside a `B4XDaisyStatItem` with `FigureType = "radial"` and `FigureSource` = percentage | `B4XPageRadialProgress.bas`, `B4XPageStat.bas` |
| Comparison across categories (bar chart) | One `B4XDaisyProgress` row per category (`Value`, `MaxValue`, `Color` variant) stacked in `pageScroll` with `YGap = 8dip`, label via `B4XDaisyText` | `B4XPageProgress.bas` |
| Trend over time (line/wave chart) | No verified recipe. Options: state the gap and propose a custom Canvas panel (user approval required), or a `B4XDaisyTimeline` of dated entries as a qualitative fallback | `B4XPageTimeline.bas` |
| Composition / share of total (donut/pie) | No verified recipe. Closest: `B4XDaisyRadialProgress` for the dominant share + `B4XDaisyList` breakdown rows with `Badge` percentages, or `Progress` rows per segment | `B4XPageRadialProgress.bas`, `B4XPageList.bas` |
| Numeric comparison at a glance | `B4XDaisyStat` + `B4XDaisyStatItem` tiles (`Value`, `Description`, `Animated` count-up) | `B4XPageStat.bas` |
| Multi-metric dashboard | `B4XDaisyDashboard` (`AddKpi`) or composed `Stat` + `Progress` blocks | `B4XPageDashboard.bas` |

Recipe rule: these patterns visualize *summary* data. If the user needs axis-labeled, interactive, or precise analytical charts, say plainly that the kit does not include one and propose (a) the recipe above, (b) a custom-drawn Canvas view outside the kit, or (c) an external chart library — the user decides. Do not silently ship an approximation as if it were a chart.
