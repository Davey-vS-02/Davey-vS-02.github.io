<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-parallax
                src="/images/donationsLandingPage.jpg"
                height="100vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content ml-14" fluid>
                    <v-card class="mt-8" color="transparent" elevation="0">
                        <v-card-title class="text-h6 text-white" color="white">
                            Become a Donor
                        </v-card-title>
                        <v-card-text class="text-h2 text-white">
                            Support the Future of Restorative Prosthetics
                        </v-card-text>
                    </v-card>

                    <v-btn
                        prepend-icon="mdi-hand-heart"
                        color="white"
                        size="large"
                        variant="outlined"
                        class="rounded-lg mt-8 ml-7"
                        @click="openDonorSignup"
                    >
                        Join as a Donor
                    </v-btn>
                </v-container>
            </v-parallax>

            <v-card class="ma-15 pa-4" color="transparent" elevation="0">
                <v-card-title class="text-h6">Why Donate?</v-card-title>
                <v-card-text class="text-h4">
                    Your generous support accelerates research and development
                    of advanced prosthetics that restore sensation and improve lives.
                    Join our community of donors committed to empowering amputees worldwide.
                </v-card-text>
            </v-card>

            <v-card class="ma-15 pa-4 rounded-lg" elevation="16">
                <v-card-title class="text-h2">How Your Donation Helps</v-card-title>
                <v-card-text class="text-h6">
                    Donations fund cutting-edge sensor technology, user experience
                    research, and manufacturing to deliver affordable, life-changing
                    prosthetics. Every contribution brings us closer to a future
                    where everyone can move, feel, and connect naturally.
                </v-card-text>
                <v-container class="mb-5">
                    <v-row justify="center">
                        <v-col cols="auto">
                            <v-btn
                                prepend-icon="mdi-heart"
                                color="darkBackground"
                                size="large"
                                variant="tonal"
                                class="rounded-lg mt-8 ml-7"
                                @click="openDonorSignup"
                            >
                                Become a Donor Today
                            </v-btn>
                        </v-col>
                    </v-row>
                </v-container>
            </v-card>

            <v-card class="pa-4 rounded-0" color="darkBackground" elevation="0">
                <v-card-title class="text-h2">Our Commitment to Transparency</v-card-title>
                <v-card-text class="text-body-1">
                    We value your trust and provide regular updates on how your donations
                    impact research, development, and outreach. Transparency is key to
                    building a lasting partnership with our donors.
                </v-card-text>
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import { router } from "@inertiajs/vue3";

export default {
    name: "DonorInfo",
    components: {
        AppNav,
    },
    methods: {
        openDonorSignup() {
            router.visit(this.$route("donor.signup"));
        },
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
    background: linear-gradient(to right, rgba(0, 0, 0, 0.99), rgba(0, 0, 0, 0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
