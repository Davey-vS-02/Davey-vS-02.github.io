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
                            About TT Auto Mechanics
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            Get to know us:
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <v-container class="my-12">
                <v-card class="pa-8 rounded-lg" elevation="8">
                    <v-card-title class="text-h3 mb-4">Who We Are</v-card-title>
                    <v-card-text class="text-body-1 mb-6">
                        TT Auto Mechanic Service & Repair is a proudly South African, Level 1 BEE-registered company dedicated to providing expert automotive service and repair. Our team combines experience, skill, and passion for cars to ensure every vehicle is cared for with precision and professionalism.
                    </v-card-text>

                    <v-card-title class="text-h4 mb-3">Our Vision</v-card-title>
                    <v-card-text class="text-body-1 mb-6">
                        We are driven by values of trust, reliability, and integrity. Every customer can expect honest advice, fair pricing, and workmanship that prioritizes safety and performance. Our BEE Level 1 status reflects our commitment to inclusivity and empowerment, contributing to growth and opportunity within our community.
                    </v-card-text>

                    <v-card-title class="text-h4 mb-3">Our Commitment</v-card-title>
                    <v-card-text class="text-body-1">
                        From routine maintenance to complex mechanical repairs, we ensure that every vehicle leaves our workshop road-ready, safe, and efficient. At TT Auto Mechanic Service & Repair, we don’t just fix cars — we build lasting relationships with our customers through quality service and care.
                    </v-card-text>
                </v-card>
            </v-container>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";

export default {
    name: "About",
    components: {
        AppNav,
    },
};
</script>

<style>
.parallax-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 1;
    pointer-events: none;
}
.parallax-overlay::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(to right, rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
