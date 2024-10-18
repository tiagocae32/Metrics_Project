import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";

export default defineConfig({
    plugins: [
        laravel({
            input: ["public/css/pageSpeed.css", "public/js/pageSpeed.js"],
            refresh: true,
        }),
    ],
    server: {
        port: 3000,
    },
});
