<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-parallax
                src="/images/CarsLandingPageWallpaper2.jpeg"
                height="70vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content ml-2 ml-md-14 pa-4 pa-md-0" fluid>
                    <v-card class="mt-4 mt-md-8" color="transparent" elevation="0">
                        <v-card-title class="text-h5 text-md-h4 text-white" color="white">
                            Contact Us
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            Get in touch with us:
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <!-- About Us Details -->
            <v-card class="ma-4 ma-md-15 pa-4 pa-md-8 rounded-lg" elevation="16">
                <v-card-title class="text-h4 text-md-h2">Contact Us</v-card-title>
                <v-card-text class="text-body-1 text-md-h6">
                    <strong>Head Office:</strong> 123 Main Street, Johannesburg, 2000<br>
                    <strong>Phone:</strong> +27 11 123 4567<br>
                    <strong>Email:</strong> info@ttautomechanic.co.za<br>
                    <strong>Business Hours:</strong> Mon – Fri: 08:00 – 17:00, Sat: 08:00 – 13:00
                </v-card-text>
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import { router } from "@inertiajs/vue3";

export default {
    name: 'Contact',
    components: { AppNav },
    methods: {
        openContactPage() {
            router.visit(this.$route('contact'));
        }
    }
}
</script>

<style scoped>
.parallax-overlay {
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    z-index: 1;
    pointer-events: none;
}
.parallax-overlay::after {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0; bottom: 0;
    background: linear-gradient(to right, rgba(0,0,0,0.9), rgba(0,0,0,0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
