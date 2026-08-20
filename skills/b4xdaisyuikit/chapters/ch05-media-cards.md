# Chapter 5: Media, Visual Containers & Cards (ch05-media-cards.md)
## B4XDaisyUIKit Application Layout Reference

This reference blueprint details the canonical, evidence-backed implementation of rich visual components: Cards, Image presentation, Hero banners, Avatars and Avatar Groups, Interactive 3D tilt cards, and Status overlays.

---

## 🖼️ 1. HERO BANNERS & PROMOTIONAL SECTIONS

Hero sections establish brand presence with optional overlay tinting and layered content.

```b4x
Dim heroBanner As B4XDaisyHero
heroBanner.Initialize(Me, "heroBanner")
heroBanner.AddToParent(pnlHost, pad, y, maxW, 280dip)
heroBanner.BackgroundImage = "mountains.jpg"
heroBanner.OverlayVisible = True
heroBanner.OverlayColor = 0x88000000
heroBanner.ContentAlignment = "center"
heroBanner.Direction = "vertical"

' Add hero title
Dim heroTitle As B4XDaisyText
heroTitle.Initialize(Me, "heroTitle")
heroTitle.Text = "Discover the Unseen"
heroTitle.Heading = "h1"
heroTitle.Variant = "primary"
heroTitle.FontBold = True
heroBanner.GetContentPanel.AddView(heroTitle.getView, 16dip, 40dip, maxW - 32dip, 48dip)

' Add call to action button
Dim btnCta As B4XDaisyButton
btnCta.Initialize(Me, "btnCta")
btnCta.Text = "Explore Now"
btnCta.Variant = "primary"
btnCta.Style = "solid"
heroBanner.GetContentPanel.AddView(btnCta.getView, (maxW - 140dip) / 2, 100dip, 140dip, 44dip)

y = y + heroBanner.GetComputedHeight + gap

```

---

## 🗂️ 2. RICH CONTENT CARDS

Cards structure visual assets, metadata, body text, and action rows.

```b4x
Dim productCard As B4XDaisyCard
productCard.Initialize(Me, "productCard")
productCard.AddToParent(pnlHost, pad, y, maxW, 320dip)
productCard.Style = "border"
productCard.LayoutMode = "top"
productCard.Title = "Wireless Noise-Canceling Headphones"
productCard.setImagePath("headphones.jpg")

' Add body description
Dim cardDesc As B4XDaisyText
cardDesc.Initialize(Me, "cardDesc")
cardDesc.Text = "Premium acoustics with active noise cancellation and 40-hour battery life."
cardDesc.TextSize = "text-sm"
productCard.getBodyContainer.AddView(cardDesc.getView, 0, 0, productCard.getBodyContainer.Width, 50dip)

' Add action buttons
Dim btnBuy As B4XDaisyButton
btnBuy.Initialize(Me, "btnBuy")
btnBuy.Text = "Add to Cart"
btnBuy.Variant = "primary"
productCard.AddAction(btnBuy)

Dim btnWish As B4XDaisyButton
btnWish.Initialize(Me, "btnWish")
btnWish.Text = "Wishlist"
btnWish.Style = "ghost"
productCard.AddAction(btnWish)

y = y + productCard.GetComputedHeight + gap

```

---

## 👥 3. AVATARS & AVATAR GROUPS

Represent single users, team stacks, and presence status indicators.

```b4x
' Single Avatar with status dot
Dim userAvatar As B4XDaisyAvatar
userAvatar.Initialize(Me, "userAvatar")
userAvatar.AddToParent(pnlHost, pad, y, 64dip, 64dip)
userAvatar.Image = "profile.jpg"
userAvatar.Mask = "circle"
userAvatar.Status = "online"
userAvatar.Width = "w-16"
userAvatar.RingWidth = 2dip
userAvatar.RingColor = xui.Color_RGB(59, 130, 246)

' Avatar Group (team stack)
Dim teamGroup As B4XDaisyAvatarGroup
teamGroup.Initialize(Me, "teamGroup")
teamGroup.AddToParent(pnlHost, pad + 80dip, y, maxW - 80dip, 48dip)
' AvatarGroup automatically handles overlap spacing
' Set max visible avatars on container

teamGroup.AddAvatar("user1.jpg", "")
teamGroup.AddAvatar("user2.jpg", "")
teamGroup.AddAvatar("user3.jpg", "")
' Overflow counter is automatically rendered by AvatarGroup

y = y + 72dip + gap

```

---

## 🎴 4. 3D HOVER & INTERACTIVE TILT CARDS

Interactive tilt surfaces that respond dynamically to touch gestures with perspective scaling and glass shine sweeps.

```b4x
Dim tiltCard As B4XDaisyHover3d
tiltCard.Initialize(Me, "tiltCard")
tiltCard.AddToParent(pnlHost, pad, y, maxW, 180dip)
tiltCard.MaxTilt = 15
tiltCard.ScaleOnHover = 1.04
tiltCard.ShineEffect = True
tiltCard.Rounded = "rounded-2xl"
tiltCard.Shadow = "lg"

' Internal card content
Dim badgePro As B4XDaisyBadge
badgePro.Initialize(Me, "badgePro")
badgePro.Text = "PRO PLAN"
badgePro.Variant = "secondary"
tiltCard.AddView(badgePro.getView, 16dip, 16dip, 80dip, 24dip)

Dim cardTitle As B4XDaisyText
cardTitle.Initialize(Me, "cardTitle")
cardTitle.Text = "Unlimited Cloud Storage"
cardTitle.Heading = "h3"
tiltCard.AddView(cardTitle.getView, 16dip, 50dip, maxW - 32dip, 36dip)

y = y + tiltCard.GetComputedHeight + gap

```
