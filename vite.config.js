import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';

export default defineConfig({
    base: process.env.VITE_ASSET_URL || '/',
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
