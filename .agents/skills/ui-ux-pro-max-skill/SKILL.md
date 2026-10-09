---
name: ui-ux-pro-max-skill
description: Professional UI/UX design heuristics, mobile ergonomics, typography, color harmony, and accessibility standards for Flutter hymn applications.
---

# UI/UX Pro Max Skill

## Core Principles for Hymn App Experience

### 1. Reader First Ergonomics
- The hymn reading interface (`cantique_detail.dart`) is the core sanctuary of the application.
- Content must remain legible, uncluttered, and serene.
- Unnecessary permanent navigation bars (e.g., permanent BottomNavigationBar during reading) are removed to give maximum vertical space to lyrics.
- Secondary actions (Home, Collections, Favorites, Settings, Personal Hymns, Error Reporting) are collapsed into a floating contextual menu anchored at the bottom right.

### 2. One-Handed Mobile Reachability
- Primary navigation controls (Previous/Next hymn buttons, secondary action trigger) are placed within the thumb reach zone (bottom 30% of screen).
- Horizontal swipe gestures (`PageView` or `GestureDetector`) complement explicit Previous/Next buttons.

### 3. Warm Amber Color System & Visual Aesthetics
- **Primary Color**: `Colors.amber[800]` / `Colors.amber[900]` (#D97706 / #B45309) for sacred warmth.
- **Surface & Backgrounds**: Soft warm cream (#FFFBEB) / crisp warm white (#FFFFFF) in light mode; deep slate/charcoal (#121826) with warm amber accents in dark mode.
- **Card & Surface Elevation**: Subtle border strokes (`Colors.amber.withOpacity(0.15)`) and ultra-soft shadows (`elevation: 1` to `2`) rather than aggressive heavy shadows.
- **Typography**: Clear hierarchy with flexible text scaling (`SettingsService.fontSize`) for lyric readability across all age groups.

### 4. Accessibility & Touch Standards
- Minimum touch target size: 48×48 dp for interactive icons and FAB buttons.
- High contrast ratio (WCAG AA) for lyric text vs background.
- Boundary feedback (visual indication when at hymn #1 or last hymn of collection).

### 5. Micro-Interactions & Seamless Navigation
- Smooth fade and scale transitions for floating action menus.
- Seamless inter-collection search: searching and selecting a hymn opens it directly without losing state or needing home return.
- Automatic image crossfade carousel for home banner (4-6 second interval with pagination dots).
