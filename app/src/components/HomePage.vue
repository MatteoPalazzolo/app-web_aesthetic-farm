<script setup>
import NavBar from './NavBar.vue';
import FancyCard from './FancyCard.vue';

import window1_jpg from '/src/assets/image/window1.jpg';
import window2_jpg from '/src/assets/image/window2.jpg';
import window3_jpg from '/src/assets/image/window3.jpg';
import window4_gif from '/src/assets/image/window4.gif';

import audio2_mp3 from '/src/assets/audio/select2.wav';
import audio3_mp3 from '/src/assets/audio/select3.wav';

</script>

<template>
    <!-- <NavBar currentTab="Home"/> -->
    <div class="fancy-container" style="margin-top: 9em;">
        <FancyCard :prop-image="window1_jpg" :prop-audio="audio3_mp3" prop-volume=".5" prop-title="History" prop-to="/teams" prop-width="300" :prop-fade="{ fadeIn1: true }"/>
        <FancyCard :prop-image="window2_jpg" :prop-audio="audio2_mp3" prop-volume=".3" prop-title="Teams" prop-to="/teams" prop-width="400" :prop-fade="{ fadeIn2: true }"/>
        <FancyCard :prop-image="window3_jpg" :prop-audio="audio2_mp3" prop-volume=".3" prop-title="Exploits" prop-to="/exploits" prop-width="300" :prop-fade="{ fadeIn3: true }"/>
        <FancyCard :prop-image="window4_gif" :prop-audio="audio3_mp3" prop-volume=".5" prop-title="Info" prop-to="/info" prop-width="300" :prop-fade="{ fadeIn4: true }"/>
    </div>
</template>

<style lang="scss">
.fadeIn1 { opacity: 0; animation: fadeIn 1.2s ease-in forwards; animation-delay: 1.0s; }
.fadeIn2 { opacity: 0; animation: fadeIn 1.0s ease-in forwards; animation-delay: .7s; }
.fadeIn3 { opacity: 0; animation: fadeIn 1.8s ease-in forwards; animation-delay: 1.2s; }
.fadeIn4 { opacity: 0; animation: fadeIn 0.6s ease-in forwards; animation-delay: .5s; }
.fancy-container {
	display: flex;
	justify-content: space-around;
	align-items: center;
}
</style>