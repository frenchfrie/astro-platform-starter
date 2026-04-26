# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
npm run dev        # Start dev server (uses Netlify adapter with env vars)
npm run build      # Production build
npm run preview    # Preview production build
npm run lint       # ESLint
npm run format     # Prettier
npm run sanitize   # Strip metadata from images in src/assets (./sanitize-assets.sh)
```

No test suite is configured.

## Architecture

This is an **Astro 5** site for "Les Gîtes de Feydoux" — a French vacation rental property with two gîtes. It uses the **Netlify adapter** for deployment, **React** for interactive components, and **Tailwind CSS v4** (via Vite plugin).

### Content model (`src/content/`)

Two Astro content collections defined in `src/content/config.ts`:

- **`gites`** — data collection (JSON). Each entry (`la-garenne.json`, `le-logis-de-feydoux.json`) defines a rental: id, title, pricing, `abritelId` (for the Abritel booking redirect URL), photo array (Astro image references), amenities, and features.
- **`blog`** — content collection (Markdown). Posts have a `category` enum: `vie-du-domaine | activites | gastronomie | patrimoine`.

### Pages & routing

- `/` — home page (`src/pages/index.astro`)
- `/gites/[slug]` — dynamic gîte page, slug = content entry id
- `/blog/[slug]` — dynamic blog post page
- `/region`, `/contact`, `/a-propos`, `/mentions-legales` — static pages

### Layout

`BaseLayout.astro` is the single shared layout. It accepts `title`, `description`, and `activePage` props. The `activePage` prop drives nav link highlighting and controls the booking CTA: on gîte pages it renders a direct anchor link; on other pages it renders a dropdown.

Home page (`activePage="home"`) has no top padding (the hero fills the viewport); all other pages get `padding-top: var(--nav-height)`.

### Key components

- **`HeroGallery.astro`** — image grid (1 main + 4 thumbnails) with a client-side lightbox. Takes an array of `{ src: ImageMetadata, alt }` from the gîte data.
- **`BookingWidget.astro`** — the booking sidebar on gîte pages. Builds an Abritel URL from `abritelId` with check-in/check-out/adults query params. Contains inline `<script>` for price calculation and URL construction.
- **`BookingWidget.tsx`** — a React version of the widget (not currently used in the gîte page route; the `.astro` version is used instead).

### Styling

The CSS is organized in three layers. Always respect this structure — do not bypass it.

#### Layer 1 — Design tokens (`src/styles/global.css` `:root`)

All visual values live here as CSS custom properties. **Never hardcode a color, shadow, radius, or transition value outside of `:root`.** Always use the matching token.

| Group | Tokens |
|---|---|
| Palette | `--cream`, `--stone`, `--warm`, `--dark`, `--mid`, `--light` |
| RGB variants (for `rgba()`) | `--dark-rgb`, `--warm-rgb` |
| Typography | `--font-display`, `--font-body` |
| Layout | `--max-width` (1300px), `--section-pad`, `--side-pad`, `--nav-height` |
| UI | `--radius-sm` (2px), `--radius-md` (4px), `--radius-lg` (16px), `--shadow-soft`, `--shadow-card`, `--transition` |

#### Layer 2 — Global utilities (`src/styles/global.css` below `:root`)

Reusable classes that any page or component may use without redefinition:

- `.page-container` — standard max-width content wrapper (use this instead of per-page container classes)
- `.label` — uppercase accent label in `--warm` (replaces `.section-label`, `.subtitle` variants)
- `.lead` — large intro paragraph
- `.line-clamp-1` → `.line-clamp-4` — text truncation
- `.link` — accessible inline anchor with underline + focus ring
- `.btn-primary`, `.btn-ghost` — shared button styles
- `:focus-visible` — global keyboard focus ring

**Rules:**
- Do not redefine these utilities in scoped `<style>` blocks. Use the global class directly in HTML.
- Do not add a new scoped `.section-label`, `.subtitle`, or page container class — use `.label` and `.page-container`.

#### Layer 3 — Component/page scoped styles

Scoped `<style>` blocks inside `.astro` files contain only layout and structure specific to that component or page. They must not duplicate Layer 2 utilities and must not contain hardcoded color/shadow/radius values — use tokens.

- `src/components/*.astro` — component-scoped styles
- `src/pages/**/*.astro` — page-scoped styles

#### What does NOT exist

- `src/styles/gite-components.css` — deleted, do not recreate it.
- Tailwind utility classes are used in `BookingWidget.tsx` only.
- All images are processed through `astro:assets` (`<Image>` component) with explicit `width`, `height`, and `format="webp"`.

### Adding a new gîte

1. Create `src/content/gites/<slug>.json` following the schema in `src/content/config.ts`.
2. Add photo assets under `src/assets/gites/<slug>/`.
3. The dynamic route `src/pages/gites/[slug].astro` picks it up automatically via `getCollection('gites')`.