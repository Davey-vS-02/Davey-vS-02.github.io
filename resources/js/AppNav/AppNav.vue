<template>
    <v-app-bar app color="primary" elevate-on-scroll>
        <v-icon 
            class="ml-5"
            @click="navigateToHomePage()"
            style="cursor: pointer;"
        >
            mdi-car
        </v-icon>
        <v-toolbar-title 
            @click="navigateToHomePage()"
            class="text-h6 text-xs-caption"
            style="cursor: pointer;"
        > 
            TT Auto
        </v-toolbar-title>

        <!-- Spacer pushes icons to the right -->
        <v-spacer></v-spacer>

        <!-- Optional: menu toggle for mobile -->
        <v-app-bar-nav-icon @click="toggleDrawer" class="mr-2"></v-app-bar-nav-icon>

        <v-navigation-drawer
            v-model="navDrawerOpen"
            style="height: 100vh; position: fixed;"
            color="primary"
        >
            <v-list dense>
                <v-list-item
                    v-for="(link, index) in publicNavLinks"
                    :key="index"
                    @click="navigate(link.routeName)"
                >
                    <v-list-item-title>{{ link.label }}</v-list-item-title>
                </v-list-item>
                <template v-if="$page.props.auth.user">
                    <v-list-item
                        v-for="(link, index) in userNavLinks"
                        :key="index"
                        @click="navigate(link.routeName)"
                    >
                        <v-list-item-title>{{ link.label }}</v-list-item-title>
                    </v-list-item>
                </template>
            </v-list>
        </v-navigation-drawer>
    </v-app-bar>
</template>

<script>
import { router } from '@inertiajs/vue3';

export default {
    name: 'AppNav',
    data() {
        return {
            navDrawerOpen: false,
            publicNavLinks: [
                { label: 'Home', routeName: 'home' },
                { label: 'About', routeName: 'about' },
                { label: 'Services', routeName: 'products' },
                { label: 'Contact Us', routeName: 'contact' },
            ],
            userNavLinks: [
                { label: 'My Account', routeName: 'account' },
                //Temporary button. Will implement logout as soon as users are set up
                { label: 'Logout', routeName: 'logout' },
            ],
        };
    },
    methods: {
        toggleDrawer() {
            this.navDrawerOpen = !this.navDrawerOpen;
        },
        openSignupPage() {
            window.location.href = this.$route('auth.google.redirect');
        },
        openProfilePage() {
            router.visit(this.$route('user.profile.info'));
        },
        navigate(routeName) {
            router.visit(this.$route(routeName));
            this.navDrawerOpen = false;
        },
        navigateToHomePage() {
            router.visit(this.$route('home'));
        }
    },
    computed: {
        user() {
            return this.$page.props.auth.user;
        }
    }
};
</script>
