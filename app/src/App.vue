<template>
    <div id="retrowaveSceneContainer"></div>
    <router-view />
</template>

<style scoped>
div#retrowaveSceneContainer {
    overflow: hidden;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: -1;
}

</style>

<script>
import fashion_ambient_mp3 from '/src/assets/audio/fashion-ambient.mp3';
import space_chillout_mp3 from '/src/assets/audio/space-chillout.mp3';

export default {
    name: "App",
    data() {
        return {};
    },
    methods: {
        playMusicOnClick() {
            const songs = [
                fashion_ambient_mp3,
                space_chillout_mp3,
            ];
            $('body').click(() => {
                var randomNumber = parseInt(Math.random() * 2);
                const audio = new Audio(songs[randomNumber]);
                audio.volume = 0.2;
                audio.play();
                return $('body').off('click');
            });
        }
    },
    created() {
        this.playMusicOnClick();
    }
};
</script>
