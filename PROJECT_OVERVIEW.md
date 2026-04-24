# Astro Platform Starter

## Overview

A well-structured Astro-based platform starter for a gite booking website "La Garenne" and "Le Logis de Feydoux". Built with modern Astro practices, TypeScript, and React components, featuring static site generation and clean separation of content from presentation.

## Tech Stack

- **Framework**: Astro (Content Collections)
- **Languages**: TypeScript, JS, HTML, Markdown/YAML
- **Styling**: Custom CSS (no external CSS framework initially)
- **Component Type**: Astro + JSX/TSX with React components in `.astro` files
- **Validation**: Zod (for content schema validation)
- **Build**: Static Site Generation (SSG)

## Project Structure

```
astro-platform-starter/
├── public/
│   ├── images/
│   └── favicon.ico
├── src/
│   ├── content/
│   │   ├── config.ts           # Content collections configuration
│   │   ├── gites/              # Gite content
│   │   └── blog/               # Blog content
│   ├── env.d.ts                # Environment type definitions
│   ├── layouts/
│   │   └── BaseLayout.astro    # Main layout wrapper
│   └── pages/
│       ├── index.astro         # Homepage
│       ├── la-garenne.astro    # La Garenne page (gite page)
│       └── le-logis-de-feydoux.astro  # Le Logis de Feydoux page
├── .prettierrc                 # Prettier configuration
├── astro.config.mjs            # Astro configuration
├── package.json                # Dependencies and scripts
├── tsconfig.json               # TypeScript configuration
└── AGENTS.md                   # This file
```

## Key Configuration Files

### .prettierrc
- Print width: 160 characters
- Single quotes for text
- Trailing commas: none
- Tab width: 4 spaces (except for .md, .mdx, .yaml files which use 2)

### astro.config.mjs
- Content collections configured for `gites` and `blog` collections
- Zod schemas for runtime validation

### tsconfig.json
- Path aliases configured for absolute imports
- Types for Astro framework

### package.json Scripts
- `dev`/`start`: Development server
- `build`: Production build
- `preview`: Preview production build
- `astro`: Astro CLI access
- `format`: Run Prettier (manual)

## Directory Structure

### `src/content/config.ts`
- Defines content collections using Zod schemas
- `gites` collection: Gite data (id, name, description, location, images, amenities, pricePerNight, cleaningFee)
- `blog` collection: Blog posts (title, description, date, content)

### `src/layouts/BaseLayout.astro`
- Main application layout wrapper
- Handles header navigation with conditional rendering based on `activePage`
- Props: `activePage`, `title`, `description`, `canonicalPath`
- Internationalized with `lang="fr"`

### `src/pages/`
- **index.astro**: Homepage with HeroGallery and BookingWidget components
- **{slug}.astro** pages: Individual gite pages (la-garenne, le-logis-de-feydoux)
  - Use `getStaticPaths()` for content-driven routing
  - Display gite details, amenity icons, and booking widget

## Component Architecture

### HeroGallery
- Props: `images` (array), `selectedImage` (optional)
- Displays image carousel/gallery in Hero section
- Responsive design with max-width containment

### BookingWidget (`.astro` + script)
- Displays booking form for gite pages
- Props: `pricePerNight`, `abritelId`, `cleaningFee`
- **Note**: Currently has logic errors - missing DOM elements referenced in script
- Calculation for nights, base price, cleaning fee, and total

### gite-header
- Displays gite name and description
- Props: `name`, `description`, `location`
- Responsive max-width with flex layout

### Amenities
- Displays amenity icons grid
- Props: `amenities` (array of strings)
- Responsive grid layout

## Development Workflow

### Building the Project
1. **Development**: `npm run dev` - Start local dev server
2. **Production Build**: `npm run build` - Generate static files
3. **Preview**: `npm run preview` - Test production build locally

### Code Style
- Use Prettier for formatting (configured in `.prettierrc`)
- Run in editor on save or manually: `npx prettier --write .`
- Check without fixing: `npx prettier --check .`
- Indentation: 4 spaces (except specific file types)
- Line length: 160 characters

### Import Order
1. Node.js built-in modules
2. Third-party libraries (alphabetical)
3. Project-specific components/modules (alphabetical, relative paths)

## Content Collections

### Gites Collection Schema
```typescript
{
  id: string
  name: string
  description: string
  location: string
  images: string[]
  amenities: string[]
  pricePerNight: number
  cleaningFee: number
}
```

### Blog Collection Schema
```typescript
{
  title: string
  description: string
  date: string
  content: string
}
```

## Conventions

### File Naming
- Components: `PascalCase.astro`, `PascalCase.tsx`
- Modules: `kebab-case.ts`, `kebab-case.css`
- Pages: `kebab-case.astro`

### Component Props
- Always define explicit TypeScript interfaces for props
- Use `interface` for object shapes, `type` for unions/intersections
- Default props should be explicit

### Error Handling
- Implement `try...catch` for asynchronous operations
- Use explicit error types with meaningful messages
- Provide user feedback in UI for errors

### Accessibility
- Design with accessibility in mind
- Proper semantic HTML
- Responsive design

### Internationalization
- Currently set to French language (`lang="fr"`)
- Use consistent translation patterns

## Known Issues & Notes

1. **BookingWidget.astro**: Has unreferenced DOM elements and unused props - needs fixing
2. **No test framework**: No explicit test configuration or frameworks yet
3. **Hardcoded navigation logic**: Active page checks need to be made more flexible
4. **Missing error handling**: No try/catch in component logic or getStaticPaths

## Development Commands

```bash
npm run dev           # Start development server
npm run build         # Build for production
npm run preview       # Preview production build
npm run astro        # Run Astro CLI commands
npx prettier --write .  # Format all files
npx prettier --check .  # Check formatting
```

---

**Note**: This project was analyzed and documented by an exploration agent. All agents should reference this documentation when working with this codebase.