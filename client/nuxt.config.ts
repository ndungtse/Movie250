import { defineNuxtConfig } from 'nuxt'

// https://v3.nuxtjs.org/api/configuration/nuxt.config
export default defineNuxtConfig({
    modules: [
        '@pinia/nuxt',
    ],
    server: {
        port: 3131,
        host: '0.0.0.0'
    },
    build: {
        postcss: {
            postcssOptions: {
                plugins: {
                    tailwindcss: {},
                    autoprefixer: {},
                },
            }
        },
        transpile: ['vuetify'],
    },
    css: [
        '@/assets/css/main.css',
        '@fortawesome/fontawesome-svg-core/styles.css',
        'vuetify/lib/styles/main.sass',
    ],
})
