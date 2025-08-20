<template>
    <v-card class="pa-4 rounded-0" color="darkBackground" elevation="0">
        <v-card-title class="text-h2">How our prosthetics work:</v-card-title>
        <v-card-text class="text-body-1">
            Our advanced prosthetics are lined with sensors that detect touch, pressure, and vibration.
            This information is instantly translated into patterns of vibration on a vibrotactile vest, allowing you feel through the prosthetic.
            As you move and interact with the world, the system provides real-time feedback—restoring sensation and making motion feel natural and intuitive.
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
                    <v-icon class="mt-5 ml-5">mdi-hand-back-right</v-icon>
                    <v-card-title>Touch is Detected</v-card-title>
                    <v-card-text>Smart sensors inside the prosthetic detect touch, pressure, and vibration.</v-card-text>
                </v-card>
            </v-timeline-item>

            <v-timeline-item size="small">
                <v-card
                    class="w-75"
                    @mouseover="isHovered2 = true"
                    @mouseleave="isHovered2 = false"
                    :color="isHovered2 ? 'darkgray' : 'white'">
                    <v-icon class="mt-5 ml-5">mdi-wifi</v-icon>
                    <v-card-title>Signal is Processed</v-card-title>
                    <v-card-text>The system instantly processes sensor data and prepares feedback signals.</v-card-text>
                </v-card>
            </v-timeline-item>

            <v-timeline-item size="small">
                <v-card
                    class="w-75"
                    @mouseover="isHovered3 = true"
                    @mouseleave="isHovered3 = false"
                    :color="isHovered3 ? 'darkgray' : 'white'">
                    <v-icon class="mt-5 ml-5">mdi-vibrate</v-icon>
                    <v-card-title>Feedback is Delivered</v-card-title>
                    <v-card-text>The vest translates sensor data into vibration patterns you can feel.</v-card-text>
                </v-card>
            </v-timeline-item>
        </v-timeline>
    </v-card>
</template>

<script>
    export default {
        name: 'ExplanationTimeline',
        data() {
            return {
                isHovered1: false,
                isHovered2: false,
                isHovered3: false,
            };
        },
    }
</script>