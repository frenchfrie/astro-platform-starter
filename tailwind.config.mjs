/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}',
        './src/content/**/*.json', // Ajoutez cette ligne pour le JSON
    ],
    theme: {
        extend: {
            colors: {
                warm: '#c8a96e',
                dark: '#1a1612',
                cream: '#f5f0e8',
                mid: '#5a4a38',
            },
            fontFamily: {
                display: ['"Cormorant Garamond"', 'serif'],
                body: ['Jost', 'sans-serif'],
            },
        },
    },
    plugins: [
        require('@tailwindcss/typography'), // Pour la classe "prose"
    ],
};
