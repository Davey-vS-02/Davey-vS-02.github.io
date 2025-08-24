import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';

export default defineConfig({
    // Base URL for built assets
    base: (process.env.VITE_ASSET_URL || '/') + 'build/',

    plugins: [
        laravel({
            input: 'resources/js/app.js',
            refresh: true,
        }),
        vue({
            template: {
                transformAssetUrls: {
                    base: process.env.VITE_ASSET_URL || null,
                    includeAbsolute: false,
                },
            },
        }),
    ],
});
