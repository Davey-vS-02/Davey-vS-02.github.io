// Vuetify
import "vuetify/styles";
import { createVuetify } from "vuetify";
import * as components from "vuetify/components";
import * as directives from "vuetify/directives";
import { aliases, mdi } from 'vuetify/iconsets/mdi'

const customTheme = {
    dark: false,
    colors: {
        primary: "#1A2238",
        secondary: "#C0C0C0",
        accent: "#00BFCF",
        background: "#ffffff",
        darkBackground: "#232323",
        callToAction: "#FFC857",
        error: "#bd0f00",
        info: "#2196F3",
        success: "#00a627",
        warning: "#FFC107",
        lightblue: "#14c6FF",
        yellow: "#FFCF00",
        pink: "#FF1976",
        orange: "#FF8657",
        magenta: "#C33AFC",
        darkblue: "#1E2D56",
        gray: "#e1e1e1",
        darkgray: "#4a4a4a",
        neutralgray: "#9BA6C1",
        green: "#00a627",
        red: "#bd0f00",
        darkblueshade: "#00035a",
        lightgray: "#BDBDBD",
        lightpink: "#FFCFE3",
        white: "#FFFFFF",
        muted: "#6c757d",
    },
};

const vuetify = createVuetify({
    components,
    directives,
    theme: {
        defaultTheme: "customTheme",
        themes: {
            customTheme,
        },
    },
    icons: {
        defaultSet: 'mdi',
        aliases,
        sets: {
            mdi,
        },
    },
});

export default vuetify;
