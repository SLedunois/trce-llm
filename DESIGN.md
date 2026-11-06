# Design System - Cohere Enterprise AI Visual Identity

**Version**: 1.0  
**Status**: Active (single source of truth)  
**Based on**: Cohere's enterprise AI brand guidelines (publicly available)

---

## Overview

This document defines the complete visual design system for the TrCE-LLM product suite. All UI implementations, design tokens, and visual assets must follow these guidelines to maintain Cohere's recognizable brand identity.

**Core Philosophy**:

- White canvases with clean, spacious layouts as the default state
- Dark bands (#17171c or #003c33) for product section differentiation
- Monolithic typography creating sense of scale and certainty
- Generous whitespace signaling trust and authority

---

## Typography

### Font Families

| Name                     | Usage                                          | Weight Support       |
| ------------------------ | ---------------------------------------------- | -------------------- |
| `CohereText` (Inter)     | Body text, headings up to H2                   | All standard weights |
| `Unica77`                | Primary headings (H1), hero sections           | 500, 600, 700        |
| `CohereMono` (Fira Code) | Monospace elements, code blocks, data displays | 400, 500             |

### Type Scale

| Level      | Name           | Size      | Weight | Line Height | Letter Spacing | Min-Size |
| ---------- | -------------- | --------- | ------ | ----------- | -------------- | -------- |
| H1         | Hero Title     | 64px/72px | 600    | 1.1         | -1px           | —        |
| H2         | Section Header | 40px/48px | 700    | 1.25        | 0              | —        |
| H3         | Subheader      | 32px/36px | 600    | 1.2         | 0              | —        |
| H4         | Feature Title  | 24px/28px | 600    | 1.35        | -0.5px         | —        |
| Body-Large | Body Large     | 19px/22px | 400    | 1.5         | 0              | 16px     |
| Body       | Body Normal    | 16px/20px | 400    | 1.6         | 0              | —        |
| Body-Small | Body Small     | 14px/18px | 400    | 1.5         | 0              | 12px     |
| Caption    | Captions       | 12px/16px | 400    | 1.4         | 0              | 10px     |

### Font Weight Guide

```css
/* Primary headings - Unica77 */
.font-semibold          /* H1, H2 */
.font-bold              /* H3, hero subtitles */

/* Body text - CohereText (Inter) */
.font-medium            /* Body-Large (19px/22px) */
.font-normal            /* Body (16px/20px), Caption */
```

### Letter Spacing by Size

| Size    | Letter Spacing | Use Case                      |
| ------- | -------------- | ----------------------------- |
| 14-16px | 0 (normal)     | Body text                     |
| 24+px   | -0.5px         | Larger headings for tightness |
| 32+px   | 0              | Hero headlines                |

---

## Colors

### Brand Palette

#### Primary Colors

```css
--cohere-black: #000000   /* Main text, high-contrast UI elements */
--cohere-navy:     #003c33   /* Secondary brand accent, dark backgrounds */
--cohere-dark-gray:#17171c; /* Section bands, footers, heavy overlays */
```

#### Semantic Colors

| Color   | Hex Code | Usage                                                    |
| ------- | -------- | -------------------------------------------------------- |
| Success | #10b981  | Confirmations, success states, CTAs on light backgrounds |
| Warning | #f59e0b  | Attention items, progress indicators                     |
| Error   | #ef4444  | Errors, destructive actions                              |
| Info    | #3b82f6  | Informational messages, hover states                     |

#### Gradient Rules

**Brand Gradients** (for hero sections and feature highlights):

```css
/* Primary brand gradient */
background: linear-gradient(135deg, #000000 0%, #003c33 100%);

/* Secondary accent gradient */
background: linear-gradient(115deg, #17171c 0%, #000000 100%);
```

**Usage Guidelines**:

- Use `#000000` for primary text on white/light backgrounds
- Use `#17171c` or `#003c33` for section differentiation and dark overlays
- Use semantic colors sparingly; prioritize brand palette for identity

#### Surface Backgrounds

```css
--surface-default: #ffffff   /* Main content canvas */
--surface-elevated: #f8fafc  /* Cards, modals with subtle lift */
--surface-dark: #17171c      /* Dark mode surfaces */
--surface-lightest: #f9fafb; /* Light backgrounds for contrast zones */
```

---

## Spacing System

**Base Unit**: 8px grid

### Standard Values

| Value               | Pixels                                     | Usage                       |
| ------------------- | ------------------------------------------ | --------------------------- |
| —                   | 2px                                        | Tight borders, icon padding |
| 4px                 | XS radius baseline                         | Icon spacing, tight groups  |
| 6px                 | Small gaps, subtle shadows                 |
| 8px /* Base grid */ | Element margins, small gaps                |
| 12px                | Component internal spacing                 |
| 16px                | Primary container padding, section gutters |
| 22px                | Section vertical spacing (large)           |
| 32px                | Pill buttons, large gaps, hero spacing     |
| 48px                | Full-screen sections, large containers     |

### Spacing Scales by Context

**Inline Components**: `0 → 8 → 16 → 24`  
**Cards/Containers**: `16 → 24 → 32`  
**Section Spacing**: `32 → 48 → 64`  
**Hero Sections**: `64px` minimum top/bottom

---

## Radius Scale

| Token  | Radius | Usage                                                             |
| ------ | ------ | ----------------------------------------------------------------- |
| `xs`   | 4px    | Buttons (outline variants), icon backgrounds, small touch targets |
| `sm`   | 8px    | Cards on hover, subtle focus rings                                |
| `md`   | 12px   | Default card/radio button boundaries                              |
| `lg`   | 16px   | Large cards, toast containers                                     |
| `xl`   | 24px   | Modal overlays, dialog backgrounds                                |
| `pill` | 32px   | Primary buttons, pill-shaped actions                              |
| `full` | 9999px | Hero images (soft-edge effect), backdrop blurs                    |

**CSS Helper Pattern**:

```css
@layer components {
	.radius-xs {
		@apply border-radius-[4px];
	}
	.radius-sm {
		@apply border-radius-[8px];
	}
	.radius-md {
		@apply border-radius-[12px];
	}
	.radius-lg {
		@apply border-radius-[16px];
	}
	.radius-pill {
		@apply border-radius-[32px];
	}
}
```

---

## Components & Pre-built Patterns

### Button Components

```css
/* Primary */
button-primary {
	background: #000000;
	color: #ffffff;
	padding: 12px 24px; /* uses 8px + 16px scale */
	border-radius: [32px]; /* pill shape */
	font-family: CohereText, system-ui;
	font-size: 16px;
	font-weight: 600;
	letter-spacing: 0.5px;
	transition: all 0.2s ease;
}

/* Primary (hover state) */
button-primary:hover {
	background: #003c33;
}

/* Secondary */
button-secondary {
	background: transparent;
	color: #000000;
	padding: 12px 24px;
	border-radius: [32px];
	border: 1px solid rgba(0, 0, 0, 0.2);
}

/* Outline */
button-outline {
	background: transparent;
	color: #000000;
	padding: 10px 20px;
	border-radius: [4px]; /* xs radius */
	border: 1px solid rgba(0, 0, 0, 0.3);
}
```

### Card Components

#### Hero Photo Card (featured profiles)

```css
.hero-photo-card {
	background: #ffffff;
	border-radius: [24px]; /* xl */
	overflow: hidden;
	padding: 24px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);

	.photo {
		aspect-ratio: 1/1;
		border-radius: [16px]; /* lg */
		object-fit: cover;
	}

	.content {
		padding-top: 16px;
	}
}
```

#### Agent Console Card (active sessions)

```css
.agent-console-card {
	background: #f8fafc; /* surface-elevated */
	border-radius: [24px]; /* xl */
	padding: 20px;
	border: 1px solid rgba(0, 0, 0, 0.06);

	.header {
		padding-bottom: 16px;
		margin-bottom: 8px;
		border-bottom: 1px solid rgba(0, 0, 0, 0.08);
		padding-top: [24px]; /* uses 16 + 8 */
	}

	.status {
		color: #10b981; /* success green */
		font-size: 14px;
		display: inline-flex;
		align-items: center;
		gap: [6px];
	}
}
```

### Logo Strip Component

```css
.trust-logo-strip {
	background: #ffffff;
	padding: [22px]; /* custom spacing value */
	border-radius: [32px]; /* pill shape */
	display: flex;
	justify-content: space-between;
	align-items: center;
}

/* Logo placeholder pattern */
.logo-item {
	width: 48px;
	height: 24px;
	background: rgba(0, 0, 0, 0.08); /* brand navy at low opacity */
	border-radius: [16px]; /* lg */
}
```

---

## Layout Philosophy

### Canvas Strategy

**Default State**: White canvas (`#ffffff`) dominates all non-section content. This creates a clean, distraction-free reading experience and signals confidence.

**Section Differentiation**: Dark bands (`#17171c` or `#003c33`) break up pages into logical sections and create visual hierarchy. Use `#17171c` for consistent footer bands; use `#003c33` for feature highlights.

### Whitespace = Trust Signal

**Rule**: Increase whitespace around:

- Key CTAs to make them pop
- Important content blocks (pricing, features)
- Product sections in hero areas

**Minimums**:

- Container padding: 24px minimum internally
- Section gutters: 32px minimum vertical space
- Line spacing: Always use the specified line-height values

### Layout Patterns

**Grid System**: Default to CSS grid with `minmax(320px, 1fr)` for responsive columns. Use flexbox only for simple horizontal alignment.

**Hero Layout**: 568px or 728px maximum container width with centered content and generous vertical whitespace (≥64px).

---

## Responsive Behavior

### Breakpoints

| Name | Width    | Usage               |
| ---- | -------- | ------------------- |
| `xs` | < 640px  | Mobile-first layout |
| `sm` | ≥ 640px  | Tablet landscape    |
| `md` | ≥ 768px  | Desktop default     |
| `lg` | ≥ 1024px | Large desktop       |
| `xl` | ≥ 1280px | Extra-large display |

### Collapsing Strategy

**Mobile (xs)**: Single column, remove secondary navigation, stack cards vertically.

**Tablet (sm)**: Enable 2-column grids where appropriate, show horizontal scrolling for hero sections if needed.

---

## Implementation Guidelines

### When to Use This Document

1. Building any new UI component or page
2. Creating design tokens for CSS variables
3. Refactoring existing components for brand alignment
4. Setting up new feature pages or products

### Do NOT Create Design Documentation in Your Own Format

All visual guidelines and design tokens must live **only** in `DESIGN.md`. Do not duplicate color values, font specifications, or spacing scales in:

- CSS files (use this document's references)
- UI component libraries (extract to DESIGN.md)
- Feature branches (design specs belong here)
- Design tools (export tokens to JSON from DESIGN.md if needed)

### Component Specification Reference

When building components:

1. Check typography size in the **Type Scale** table
2. Verify font family selection rules
3. Confirm spacing values from the **Spacing Scales**
4. Use radius tokens (xs, sm, md, lg, xl, pill, full)
5. Apply layout philosophy (white canvas + dark bands)
6. Test responsiveness at mobile and tablet breakpoints

### Testing Checklist

Before considering a UI element "brand-compliant":

- [ ] Font family matches table specification
- [ ] Size falls within type scale (no custom sizes)
- [ ] Color is from palette or semantic system
- [ ] Spacing follows the 8px grid with approved custom values
- [ ] Radius uses defined tokens
- [ ] Layout follows white canvas + dark bands pattern
- [ ] Responsive behavior tested at sm and md breakpoints

---

## Maintenance

This document must be updated when:

- Cohere releases new design guidelines
- Product visual direction changes significantly
- Design token values need adjustment

**Version Control**: Major changes require `DESIGN.md` updates in PRs alongside code changes. Refer to the version number when implementing.
