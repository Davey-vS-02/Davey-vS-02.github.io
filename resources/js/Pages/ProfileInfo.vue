<template>
    <v-app>
        <app-nav></app-nav>
        <v-main>
            <v-row class="ma-6">
                <v-col cols="12" md="7">
                    <v-card elevation="16">
                        <v-card-title>Edit Profile</v-card-title>
                        <v-card-text>This is the first card.</v-card-text>
                    </v-card>
                </v-col>

                <v-col cols="12" md="5">
                    <v-card class="d-flex flex-column align-center py-6" elevation="16">
                        <v-img
                            style="height: 120px; width: 120px; border-radius: 50%"
                            :src="user.profile_photo_path"
                            cover>
                        </v-img>
                        <v-card-title class="mt-2">{{ user.name }}</v-card-title>
                        <v-card-text class="">{{ user.email }}</v-card-text>
                    </v-card>
                </v-col>
            </v-row>
        </v-main>
    </v-app>
</template>

   <script>
import AppNav from "@/AppNav/AppNav.vue";

export default {
    name: "ProfileInfo",
    components: {
        AppNav,
    },
    computed: {
        user() {
            return this.$page.props.auth.user;
        }
    }
}
</script>
