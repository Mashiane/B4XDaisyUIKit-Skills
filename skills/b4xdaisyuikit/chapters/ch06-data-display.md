# Chapter 6: Data Display, Metrics & Timelines (ch06-data-display.md)
## B4XDaisyUIKit Application Layout Reference

This reference blueprint details the canonical, evidence-backed implementation of data visualization and content display components: Statistics widgets, Radial Progress meters, Step progression, Chronological Timelines, Accordions, and Data Comparison Diff viewers.

---

## 📈 1. STATS METRICS & KPI GRIDS

Combine numeric indicators, icons, trend descriptions, and count-up animations into structured KPI cards.

```b4x
Dim statContainer As B4XDaisyStat
statContainer.Initialize(Me, "statContainer")
statContainer.AddToParent(pnlHost, pad, y, maxW, 0)
statContainer.Orientation = "horizontal"
statContainer.Shadow = "sm"
statContainer.BorderColor = "base-300"

' Metric 1: Revenue
Dim itemRevenue As B4XDaisyStatItem
itemRevenue.Initialize(Me, "itemRevenue")
itemRevenue.Title = "Monthly Recurring Revenue"
itemRevenue.Value = "48250"
itemRevenue.Prefix = "$"
itemRevenue.ValueColor = "primary"
itemRevenue.Description = "+14.2% from last month"
itemRevenue.DescriptionColor = "success"
itemRevenue.FigureType = "svg"
itemRevenue.FigureSource = "chart-bar-solid.svg"
itemRevenue.Animated = True
statContainer.AddItem(itemRevenue)

' Metric 2: Server Uptime
Dim itemUptime As B4XDaisyStatItem
itemUptime.Initialize(Me, "itemUptime")
itemUptime.Title = "Server Health"
itemUptime.Value = "99"
itemUptime.Suffix = "%"
itemUptime.ValueColor = "success"
itemUptime.Description = "0 incidents past 30 days"
itemUptime.FigureType = "radial"
itemUptime.FigureSource = "99"
statContainer.AddItem(itemUptime)

y = y + statContainer.GetComputedHeight + gap

```

---

## 🔄 2. PROGRESS METERS (Linear & Radial)

Visualize completion, quotas, and utilization metrics.

```b4x
' Linear Progress with Tooltip & Label
Dim linProgress As B4XDaisyProgress
linProgress.Initialize(Me, "linProgress")
linProgress.AddToParent(pnlHost, pad, y, maxW, 36dip)
linProgress.Variant = "primary"
linProgress.MinValue = 0
linProgress.MaxValue = 100
linProgress.setValue(78)
linProgress.Animated = True
linProgress.LabelAbove = "Storage Quota (78GB / 100GB)"
linProgress.LabelVisible = True
linProgress.ShowTooltip = True
y = y + linProgress.GetComputedHeight + gap

' Circular Radial Progress
Dim radProgress As B4XDaisyRadialProgress
radProgress.Initialize(Me, "radProgress")
radProgress.AddToParent(pnlHost, pad, y, 96dip, 96dip)
radProgress.Variant = "accent"
radProgress.setValue(84)
radProgress.Suffix = "%"
radProgress.DisplayType = "text"
radProgress.TextCountUp = True
y = y + 96dip + gap

```

---

## ⏳ 3. CHRONOLOGICAL TIMELINE

Track sequential historical events, order delivery statuses, or project milestones.

```b4x
Dim orderTimeline As B4XDaisyTimeline
orderTimeline.Initialize(Me, "orderTimeline")
orderTimeline.AddToParent(pnlHost, pad, y, maxW, 300dip)
orderTimeline.Orientation = "vertical"
orderTimeline.LineColor = "primary"
orderTimeline.MarkerColor = "primary"
orderTimeline.Compact = True

orderTimeline.AddItem("placed", "10:30 AM", "Order Placed")
orderTimeline.AddItem("packed", "11:15 AM", "Packed & Ready")
orderTimeline.AddItem("shipped", "02:00 PM", "Out for Delivery")
orderTimeline.AddItem("delivered", "04:30 PM", "Delivered to Doorstep")

' Mark completed stages
orderTimeline.SetItemDone("placed", True)
orderTimeline.SetItemDone("packed", True)
orderTimeline.SetItemDone("shipped", True)

y = y + orderTimeline.GetComputedHeight + gap

```

---

## 📋 4. ACCORDION & FAQ DISCLOSURES

Group expandable disclosures where only one item stays active.

```b4x
Dim faqAccordion As B4XDaisyAccordion
faqAccordion.Initialize(Me, "faqAccordion")
faqAccordion.AddToParent(pnlHost, pad, y, maxW, 300dip)
' Accordion wraps child Collapse components
faqAccordion.Rounded = "rounded-box"

Dim col1 As B4XDaisyCollapse = faqAccordion.AddItemBasic("q1", "", "What payment methods are supported?")
Dim a1 As B4XDaisyText
a1.Initialize(Me, "a1")
a1.Text = "We accept credit cards, PayPal, and Apple Pay."
col1.getContentView.AddView(a1.getView, 16dip, 8dip, maxW - 32dip, 36dip)

Dim col2 As B4XDaisyCollapse = faqAccordion.AddItemBasic("q2", "", "How do I cancel my subscription?")
Dim a2 As B4XDaisyText
a2.Initialize(Me, "a2")
a2.Text = "You can cancel anytime from your Account Settings page."
col2.getContentView.AddView(a2.getView, 16dip, 8dip, maxW - 32dip, 36dip)

y = y + faqAccordion.GetComputedHeight + gap

```
