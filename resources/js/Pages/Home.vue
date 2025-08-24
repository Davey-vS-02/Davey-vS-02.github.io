<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-parallax
            src="/images/CarsLandingPageWallpaper2.jpeg"
            height="100vh"
            >
                <div class="parallax-overlay"></div>
                <v-container class="parallax-content pa-4 pa-md-14" fluid>
                    <v-card class="mt-8" color="transparent" elevation="0">
                        <v-card-title class="text-h6 text-white" color="white">
                            TT Auto Mechanic Service & Repair
                        </v-card-title>
                        <v-card-text class="text-h4 text-md-h2 text-white">
                            Driven by Trust. Powered by Skill.
                        </v-card-text>
                    </v-card>

                    <v-btn
                        prepend-icon="mdi-flag"
                        color="white"
                        size="large"
                        variant="outlined"
                        class="rounded-lg mt-8 ml-2 ml-md-7"
                        @click="openProductsPage"
                    >
                        Get started
                    </v-btn>
                </v-container>
            </v-parallax>

            <v-card class="ma-4 ma-md-15 pa-4" color="transparent" elevation="0">
                <v-card-title class="text-h6">Our Mission</v-card-title>
                <v-card-text class="text-h5 text-md-h4">
                    At TT Auto Mechanic Service & Repair, our mission is to keep drivers safe and confident on the road by providing reliable, affordable, and high-quality automotive care. We are committed to honest service, expert craftsmanship, and building lasting trust with every customer, ensuring every vehicle leaves our workshop road-ready and performing at its best.
                </v-card-text>
            </v-card>

            <v-card class="ma-4 ma-md-15 pa-4 rounded-lg" elevation="16">
                <v-card-title class="text-h4 text-md-h2">About us</v-card-title>
                <v-card-text class="text-body-1 text-md-h6">
                    TT Auto Mechanic Service & Repair is a proudly South African, Level 1 BEE-registered company dedicated to providing expert automotive service and repair. Our team combines experience, skill, and passion for cars to ensure every vehicle is cared for with precision and professionalism.
                    <br><br>
                    We are driven by values of trust, reliability, and integrity. Every customer can expect honest advice, fair pricing, and workmanship that prioritizes safety and performance. Our BEE Level 1 status reflects our commitment to inclusivity and empowerment, contributing to growth and opportunity within our community.
                    <br><br>
                    From routine maintenance to complex mechanical repairs, we ensure that every vehicle leaves our workshop road-ready, safe, and efficient. At TT Auto Mechanic Service & Repair, we don’t just fix cars — we build lasting relationships with our customers through quality service and care.
                </v-card-text>

                <v-container class="mb-5">
                    <v-row justify="center">
                        <v-col cols="auto">
                            <v-btn
                                prepend-icon="mdi-book"
                                color="darkBackground"
                                size="large"
                                variant="tonal"
                                class="rounded-lg mt-6 mt-md-8 ml-0 ml-md-7"
                                @click="openAboutPage"
                            >
                                Read More
                            </v-btn>
                        </v-col>
                    </v-row>
                </v-container>

                <!-- <video-player :options="videoOptions" class="ml-4 ml-md-12 mr-4 mr-md-12 mb-4 mb-md-12 pa-4 pa-md-16"/> -->
            </v-card>

            <v-card class="pa-4 rounded-0" color="darkBackground" elevation="0">
                <v-card-title class="text-h4 text-md-h2">Why choose us:</v-card-title>
                <v-card-text class="text-body-1">
                    Reliable service, honest advice, and expertise you can count on.
                </v-card-text>

                <v-timeline
                    side="end"
                    align="start"
                    class="mt-5 mb-5"
                    line-color="white"
                >
                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered1 = true"
                            @mouseleave="isHovered1 = false"
                            :color="isHovered1 ? 'darkgray' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-tools</v-icon>
                            <v-card-title>Trusted Expertise</v-card-title>
                            <v-card-text>
                                Our team combines years of automotive experience with skilled craftsmanship to ensure your vehicle is safe, reliable, and performing at its best.
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>

                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered2 = true"
                            @mouseleave="isHovered2 = false"
                            :color="isHovered2 ? 'darkgray' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-certificate</v-icon>
                            <v-card-title>Level 1 BEE Certified</v-card-title>
                            <v-card-text>
                                As a Level 1 BEE-registered company, we are committed to inclusivity and empowerment while delivering top-quality service.
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>

                    <v-timeline-item size="small">
                        <v-card
                            class="w-75"
                            @mouseover="isHovered3 = true"
                            @mouseleave="isHovered3 = false"
                            :color="isHovered3 ? 'darkgray' : 'white'">
                            <v-icon class="mt-5 ml-5">mdi-handshake</v-icon>
                            <v-card-title>Customer-Focused</v-card-title>
                            <v-card-text>
                                We prioritize honesty, transparency, and personalized care, building lasting relationships with every client by exceeding expectations at every visit.
                            </v-card-text>
                        </v-card>
                    </v-timeline-item>
                </v-timeline>
                <v-row justify="center" class="mt-8 mb-8">
                    <v-col cols="auto">
                        <v-btn 
                        prepend-icon="mdi-flag" 
                        color="white" 
                        size="large" 
                        variant="outlined" 
                        class="rounded-lg" 
                        @click="openContactPage()"
                        >
                        Contact Us
                        </v-btn>
                    </v-col>
                </v-row>
            </v-card>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";
import VideoPlayer from "../Components/VideoPlayer.vue";
import {router} from "@inertiajs/vue3";

export default {
    name: 'Home',
    components: {
        AppNav,
        VideoPlayer,
    },
    data() {
        return {
            videoOptions: {
                autoplay: false,
                controls: true,
                sources: [
                    {
                        src:
                            '/videos/test_with_sound_video_fixed.mp4',
                        type: 'video/mp4'
                    }
                ]
            },
            isHovered1: false,
            isHovered2: false,
            isHovered3: false,
        };
    },
    methods: {
        openAboutPage() {
            router.visit(this.$route('about'));
        },
        openProductsPage() {
            router.visit(this.$route('products'));
        },
        openContactPage() {
            router.visit(this.$route('contact'));
        }
    }
}
</script>

<style>
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
    background: linear-gradient(to right, rgba(0,0,0,0.99), rgba(0,0,0,0));
    pointer-events: none;
    z-index: 1;
}
.parallax-content {
    position: relative;
    pointer-events: auto;
    z-index: 5;
}
</style>
