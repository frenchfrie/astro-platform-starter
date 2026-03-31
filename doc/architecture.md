# Architecture Documentation

## Overview

This project is an Astro-based platform starter designed for deployment on Netlify, utilizing modern web technologies and Netlify's core primitives (Edge Functions, Image CDN, Blobs).

## Core Technologies

- **Astro.js** (v5.16.10) - The static site generator
- **Tailwind CSS** (v4.1.16) - Utility-first CSS framework
- **React** (v19.2.0) - For interactive components
- **Netlify Core Primitives** - Edge Functions, Image CDN, Blobs storage

## Project Structure

```
astro-platform-starter/
├── src/                    # Source code
│   ├── pages/              # Page components
│   ├── assets/             # Static assets
│   ├── styles/             # Global styles
│   │   └── globals.css     # Main CSS with Tailwind and theme variables
│   ├── layouts/            # Layout components
│   └── components/         # Reusable components
├── .astro/                 # Astro configuration
│   ├── types.d.ts          # TypeScript type definitions
│   ├── collections/        # Content collections
│   ├── settings.json       # Astro settings
│   └── data-store.json     # Data store configuration
├── public/                 # Static files served at root
│   └── images/             # Image assets
├── .netlify/               # Netlify configuration
│   ├── v1/                 # Netlify v1 configuration
│   │   ├── functions/      # Serverless functions
│   │   │   └── ssr/        # SSR functions
│   │   └── edge-functions/ # Edge functions
│   │       └── middleware/ # Middleware functions
│   └── state.json          # Netlify state
└── .vscode/                # VS Code configuration
├── launch.json         # Debug configurations
├── settings.json       # Editor settings
└── extensions.json     # Recommended extensions
```

## Key Features

### 1. Styling System

The project uses a comprehensive Tailwind CSS setup with custom theme variables defined in `globals.css`:

```css
@theme {
    --font-sans: 'Inter Variable', ui-sans-serif, system-ui, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
    --font-serif: Georgia, 'Times New Roman', serif;
    --color-primary: #8b6f4e;
    --color-primary-light: #c4a97d;
    --color-primary-dark: #5c4a33;
    --color-accent: #6b7f3a;
    --color-accent-light: #a3b86c;
    --color-warm: #f5f0e8;
    --color-warm-dark: #e8dfd2;
    --color-text: #3a3226;
    --color-text-light: #6b5e4f;
    --color-complementary: #f5f0e8;
    --color-primary-content: #ffffff;
}
```

### 2. Component Architecture

The project follows a component-based architecture with:

- **Layouts**: Base templates for pages
- **Components**: Reusable UI elements with Tailwind classes
- **Pages**: Individual page components

### 3. Netlify Integration

The project is configured for Netlify deployment with:

- **Edge Functions**: For middleware and serverless logic
- **Image CDN**: For optimized image delivery
- **Blobs Storage**: For session management and data storage

## Development Workflow

### Setup

1. Install dependencies:
   ```bash
   npm install
   ```

2. Link to Netlify (optional but recommended):
   ```bash
   netlify link
   ```

### Commands

| Command | Description |
|---------|-------------|
| `npm run dev` | Start development server |
| `npm run build` | Build production site |
| `npm run preview` | Preview build locally |
| `npm run astro` | Run Astro CLI commands |

## Configuration Files

### Astro Configuration

The project uses Astro's default configuration with:
- Static site generation
- Tailwind CSS integration
- React support
- Netlify adapter

### VS Code Configuration

The project includes recommended VS Code settings:
- Tab size: 4 for most files, 2 for YAML/TOML/Markdown
- Auto-formatting on save
- Tailwind CSS language support

## Deployment

The project is configured for deployment to Netlify with:
- Automatic builds from GitHub
- Edge Functions for serverless logic
- Image optimization via Netlify's Image CDN
- Session management via Netlify Blobs

## Dependencies

### Production Dependencies

- `@astrojs/netlify`: Netlify adapter for Astro
- `@astrojs/react`: React integration for Astro
- `@fontsource-variable/inter`: Variable font for typography
- `@netlify/blobs`: Blobs storage for sessions
- `@netlify/functions`: Serverless functions
- `@tailwindcss/vite`: Tailwind CSS integration
- `astro`: The main framework
- `blobshape`: For blob operations
- `marked`: Markdown parsing
- `marked-shiki`: Syntax highlighting for markdown
- `react`: UI library
- `react-dom`: React DOM
- `tailwindcss`: Utility-first CSS
- `unique-names-generator`: For generating unique names

### Development Dependencies

- TypeScript definitions for all major dependencies
- `@types/node`: Node.js type definitions
- `@types/react`: React type definitions
- `@types/react-dom`: React DOM type definitions

## Architecture Decisions

1. **Astro as the Framework**: Chosen for its content-focused approach and support for multiple UI frameworks
2. **Tailwind CSS**: Selected for its utility-first approach and rapid development capabilities
3. **Netlify Integration**: Provides seamless deployment and serverless capabilities
4. **React for Interactivity**: Used only where needed for dynamic components
5. **TypeScript**: For better type safety and developer experience

## Future Considerations

1. **Content Collections**: The project is set up to use Astro's content collections feature
2. **Edge Functions**: Can be extended for more serverless logic
3. **Image Optimization**: Netlify's Image CDN provides automatic optimization
4. **Session Management**: Configured with Netlify Blobs for session storage

## References

- [Astro Documentation](https://docs.astro.build/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Netlify Core Primitives](https://docs.netlify.com/core/overview/)
