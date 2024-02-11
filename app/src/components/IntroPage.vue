<template>
    <div id="logo" :class="{ 
        fadeOut: div.fadeOut, 
        nodisplay: div.nodisplay, }">
        <img src="../assets/image/logo.png" alt="logo.png">
        <h1 ref="start" @click="pressStart"
            class="noselect"
            :class="{ 
                fadeInAndOut: text.fadeInAndOut, 
                fadeOut: text.fadeOut,
                nodisplay: text.nodisplay }">
            PRESS TO<br>FARM!
        </h1>
    </div>
</template>

<script>
import start_mp3 from '/src/assets/audio/start.mp3';
import router from '../router'

export default {
    name: "HomePage",
    data() {
        return {
            text: {
                fadeInAndOut: true,
                fadeOut: false,
                nodisplay: false,
            },
            div: {
                fadeOut: false,
                nodisplay: false,
            }
            
        };
    },
    methods: {
        pressStart() {
            /* fade out */
            this.text.fadeInAndOut = false;
            this.text.fadeOut = true;
            /* play audio */
            var audio = new Audio(start_mp3);
            audio.volume = 0.2;
            audio.play();
            /* remove button */
            setTimeout(() => this.text.nodisplay = true, 500);
            /* remove div */ 
            setTimeout(() => this.div.fadeOut = true, 1000);
            setTimeout(() => this.div.nodisplay = true, 1500);
            setTimeout(() => router.push('/home'), 2000);
        }
    },
    mounted() {
        /* hide navbar */
        this.$emit('setNavDisplay', false);
    }
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');

div#logo {
  position: absolute;
  top: 25%;
  left: 50%;
  transform: translate(-50%, 0);
  padding: 50px;
}

#logo > h1 {
    margin: 0;
    margin-top: 120px;
    width: 100%;
    font-size: 5em;
    cursor: pointer;
    text-align: center;
    font-family: 'VT323', monospace;
    word-spacing: -.2em;
    line-height: .82em;
}


</style>