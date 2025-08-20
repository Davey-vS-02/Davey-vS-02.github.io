<template>
    <div style="color: transparent">
        <video
            ref="videoPlayer"
            class="video-js"
        ></video>
    </div>
</template>

<script>
import videojs from 'video.js';
import 'video.js/dist/video-js.css'

export default {
    name: 'VideoPlayer',
    props: {
        options: {
            type: Object,
            default() {
                return {};
            }
        }
    },
    data() {
        return {
            player: null
        }
    },
    mounted() {
        this.player = videojs(this.$refs.videoPlayer, this.options, () => {
            this.player.log('onPlayerReady', this);
        });
        console.log("Video player mounted!");
    },
    beforeDestroy() {
        if (this.player) {
            this.player.dispose();
        }
    }
}
</script>

<style>
.video-js {
    width: 100%;
    aspect-ratio: 16 / 9; /* or 4 / 3, or match your video! */
    height: auto;
    border-radius: 15px;
    overflow: hidden;
}
</style>
