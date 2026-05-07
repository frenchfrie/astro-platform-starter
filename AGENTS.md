# Agents Guidelines

This document provides guidelines for AI agents operating within this Astro project. It covers build, lint, and test commands, along with code style and conventions, to ensure consistency and maintainability.

## 1. Build, Lint, and Test Commands

### Build Commands

- **Development Server:**
  `npm run dev` or `npm start`
  Starts a local development server for live preview.

- **Production Build:**
  `npm run build`
  Compiles the project for production deployment.

- **Preview Production Build:**
  `npm run preview`
  Serves the production build locally for testing.

- **Astro CLI:**
  `npm run astro`
  Accesses the Astro command-line interface for various tasks.

### Linting and Formatting

This project uses Prettier for code formatting. There are no explicit ESLint or style linting scripts configured in `package.json`.

- **Prettier Configuration:**
  - `printWidth`: 160
  - `singleQuote`: true
  - `trailingComma`: "none"
  - `tabWidth`: 4 (except for `.md`, `.mdx`, `.yaml` files, which use `tabWidth`: 2)

- **Running Prettier (manual):**
  To format all files according to the `.prettierrc` configuration:
  `npx prettier --write .`
  To check for formatting issues without fixing them:
  `npx prettier --check .`

### Testing

Currently, no dedicated testing framework (e.g., Vitest, Jest) or test scripts are explicitly configured in `package.json`, and no test files were found.

- **Recommendations for Testing:**
  - If tests are introduced, ensure they are placed in a `__tests__` directory or named `*.test.{ts,tsx}` alongside the component/module they test.
  - Commands for running tests would typically be added to `package.json` (e.g., `npm run test` or `npm test`).
  - To run a single test file, a command like `vitest path/to/your.test.ts` (if Vitest is installed) or a similar command for other frameworks would be used.

## 2. Code Style Guidelines

This project leverages TypeScript and React within an Astro framework. Adhering to consistent code style is crucial.

### Imports

- **Ordering:** Group imports into sections:
  1. Node.js built-in modules
  2. Third-party libraries (alphabetical)
  3. Project-specific components/modules (alphabetical, relative paths)
- **Absolute vs. Relative:** Prefer absolute paths for project-specific imports where possible (configured via `tsconfig.json` `paths`), otherwise use relative paths.
- **Destructuring:** Use destructuring for imports to clearly indicate what is being imported.

### Formatting

- **Automated Formatting:** Rely on Prettier for automated formatting. Ensure your editor is configured to format on save using Prettier.
- **Indentation:** Use 4 spaces for indentation (except where Prettier overrides for specific file types).
- **Line Length:** Adhere to the `printWidth: 160` set in `.prettierrc`.

### Types

- **TypeScript First:** Always use TypeScript for new files and components.
- **Explicit Types:** Be explicit with types for function parameters, return values, and complex object structures. Avoid `any` where possible.
- **Interfaces/Types:** Use interfaces for defining object shapes; use types for unions, intersections, or aliases.
- **Props:** Define `Props` interfaces for React components to ensure clear API contracts.

### Naming Conventions

- **Files:**
  - Components: `PascalCase.astro`, `PascalCase.tsx`
  - Modules: `kebab-case.ts`, `kebab-case.css`
  - API Routes/Endpoints: `kebab-case.ts`
- **Variables & Functions:** `camelCase`
- **Classes & Components:** `PascalCase`
- **Constants:** `UPPER_SNAKE_CASE` for global constants.
- **Booleans:** Prefix with `is`, `has`, `should`, etc. (e.g., `isOpen`, `hasError`).

### Error Handling

- **Explicit Error Handling:** Implement robust error handling for asynchronous operations and external API calls using `try...catch` blocks.
- **Meaningful Errors:** Throw or return meaningful error messages.
- **User Feedback:** Provide clear user feedback for errors in the UI.

### General Best Practices

- **Modularity:** Break down code into small, reusable modules and components.
- **Comments:** Use comments to explain _why_ certain decisions were made or for complex logic, rather than _what_ the code does (which should be self-evident).
- **Avoid Anti-patterns:** Be mindful of common anti-patterns for Astro, React, and TypeScript.
- **Accessibility:** Ensure all UI components are built with accessibility in mind.
- **Performance:** Optimize for performance where necessary, especially for client-side React components.

## 3. Cursor/Copilot Rules

No `.cursor/rules/`, `.cursorrules`, or `.github/copilot-instructions.md` files were found in this repository. If such files are introduced in the future, agents should adhere to their instructions.

---

**Note to Agents:** This `AGENTS.md` file is a living document. If you identify new conventions, build processes, or style guidelines not covered here, please propose updates.
