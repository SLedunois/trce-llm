## Design System Usage

Use `DESIGN.md` as the single source of truth for Cohere's visual identity, UI components, and design tokens. This document defines:

- **Typography**: Font families (CohereText, Unica77, CohereMono), sizes, weights, line heights, letter spacing
- **Colors**: Brand palette (#000000, #17171c, #003c33, etc.), surface backgrounds, semantic colors, gradient rules
- **Spacing**: 8px base system with custom values (2px, 6px, 8px, 12px, 16px, 22px, 32px)
- **Radius Scale**: xs (4px) to pill (32px), full (9999px)
- **Components**: Pre-built patterns (`button-primary`, `hero-photo-card`, `agent-console-card`, `trust-logo-strip`)
- **Layout Philosophy**: White canvas dominant, dark bands for product sections, whitespace as trust signal
- **Responsive Behavior**: Breakpoints and collapsing strategies

**Do not create design documentation in your own format**. All visual guidelines live in `DESIGN.md`. When building UI systems or creating design tokens, reference this document's typography table, color palette, and component specifications.
