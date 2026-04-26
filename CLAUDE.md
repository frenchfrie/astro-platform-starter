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

- **Design tokens** are CSS custom properties defined in `src/styles/global.css`: `--cream`, `--stone`, `--warm`, `--dark`, `--mid`, `--light`, `--font-display` (Cormorant Garamond), `--font-body` (Jost), `--section-pad`, `--side-pad`, `--max-width`.
- Page-level styles are scoped `<style>` blocks inside each `.astro` file.
- Shared component styles live in `src/styles/gite-components.css`.
- Tailwind utility classes are used in the React `BookingWidget.tsx` only.
- All images are processed through `astro:assets` (`<Image>` component) with explicit `width`, `height`, and `format="webp"`.
  /model
### Adding a new gîte

1. Create `src/content/gites/<slug>.json` following the schema in `src/content/config.ts`.
2. Add photo assets under `src/assets/gites/<slug>/`.
3. The dynamic route `src/pages/gites/[slug].astro` picks it up automatically via `getCollection('gites')`.