import astroPlugin from 'eslint-plugin-astro';
import tsParser from '@typescript-eslint/parser';
import tsPlugin from '@typescript-eslint/eslint-plugin';
import markdown from 'eslint-plugin-markdown';

export default [
    // 1. Global Ignore (Safety first)
    {
        ignores: ['dist/', '.astro/', 'node_modules/', 'public/']
    },

    // 2. TypeScript/JS Logic
    {
        files: ['**/*.{js,ts,jsx,tsx}'],
        plugins: {
            '@typescript-eslint': tsPlugin
        },
        languageOptions: {
            parser: tsParser
        },
        rules: {
            ...tsPlugin.configs.recommended.rules,
            'no-console': 'warn'
        }
    },

    // 3. Astro Components
    ...astroPlugin.configs.recommended,
    {
        files: ['**/*.astro'],
        languageOptions: {
            parser: astroPlugin.parser,
            parserOptions: {
                parser: tsParser,
                extraFileExtensions: ['.astro']
            }
        },
        rules: {
            'astro/no-unused-define-vars-in-style': 'error',
            'astro/jsx-a11y/anchor-is-valid': 'warn'
        }
    },

    // 4. Markdown Content
    {
        files: ['**/*.md'],
        plugins: { markdown },
        processor: 'markdown/markdown'
    },
    // This lints the code blocks inside Markdown
    {
        files: ['**/*.md/*.js', '**/*.md/*.ts'],
        rules: {
            'no-console': 'off',
            '@typescript-eslint/no-unused-vars': 'off'
        }
    }
];
