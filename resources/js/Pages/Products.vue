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
                            Services we offer
                        </v-card-title>
                        <v-card-text class="text-body-1 text-md-h6 text-white">
                            We take pride in our work:
                        </v-card-text>
                    </v-card>
                </v-container>
            </v-parallax>

            <v-container class="my-12">
                <v-card class="pa-8 rounded-lg" elevation="8">
                    <v-card-title class="text-h4 text-md-h2">Our services</v-card-title>
                    <v-card-text class="text-body-1 mb-6">
                        We specialize in servicing and repairing a wide range of car brands.
                    </v-card-text>

                    <v-row dense>
                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/BMWProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">BMW</v-card-title>
                                <v-card-text>
                                    Both petrol and diesel engines.    
                                </v-card-text>
                            </v-card>
                        </v-col>

                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/MercedesBenzProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">Mercedes-Benz</v-card-title>
                                <v-card-text>
                                    Both petrol and diesel engines.     
                                </v-card-text>
                            </v-card>
                        </v-col>

                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/AudiProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">Audi</v-card-title>
                                <v-card-text>
                                    Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                                </v-card-text>
                            </v-card>
                        </v-col>
                    </v-row>
                    <v-row dense>
                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/ToyotaProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">Toyota</v-card-title>
                                <v-card-text>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis corrupti aliquid cumque vitae.
                                </v-card-text>
                            </v-card>
                        </v-col>

                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/SuzukiProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">Suzuki</v-card-title>
                                <v-card-text>
                                    Lorem ipsum dolor sit amet consektetur adipisicing elit. Iusto corporis corrupti aliquid cumque vitae.
                                </v-card-text>
                            </v-card>
                        </v-col>

                        <v-col cols="12" md="4">
                            <v-card
                                elevation="6"
                                class="pa-4 d-flex flex-column flex-grow-1 hover-card"
                                style="min-height: 450px;">
                                <v-img
                                    src="/images/MahindraProductLogo.png"
                                    height="200px"
                                    class="mb-4"
                                ></v-img>
                                <v-card-title class="text-h5">Mahindra</v-card-title>
                                <v-card-text>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis corrupti aliquid cumque vitae.
                                </v-card-text>
                            </v-card>
                        </v-col>
                    </v-row>
                </v-card>
            </v-container>
        </v-main>
    </v-app>
</template>

<script>
import AppNav from "../AppNav/AppNav.vue";

export default {
    name: "Products",
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
.hover-card {
    transition: background-color 0.3s ease;
    background-color: white;
}

.hover-card:hover {
    background-color: darkgray;
    cursor: default;
}
</style>
