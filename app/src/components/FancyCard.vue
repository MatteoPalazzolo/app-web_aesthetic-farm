<template>
    <div class="fancy-card" :class="propFade">
        <div class="fancy-card-item" :class="{ active }">
            <div class="window" :style="{ width: propWidth + 'px' }">
                <div class="title-bar">
                    <div style="margin-left: 5px;" class="title-bar-text">{{ propTitle }}</div>
                    <div class="title-bar-controls">
                    <button @click="showAlert('Non hai di meglio da fare? :)')" aria-label="Minimize"></button>
                    <button @click="showAlert('MAXIMIZZA!!!')" aria-label="Maximize"></button>
                    <button @click="showAlert('A Surgeon\'s Work')" aria-label="Close"></button>
                    </div>
                </div>
                <div class="window-body">
                    <a class="nav-item nav-link" @click.prevent="onAnchorClick(propTo, propAudio, propVolume)">
                        <img draggable="false" style="width: 100%; margin: 0" :src="propImage" alt="image not found :(">
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped lang="css" src="../../node_modules/98.css/dist/98.css"></style>
<style scoped>

*, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
}

.fancy-card {
    /* border: 1px black solid; */
	perspective: 1000px;
    transform-style: flat;
}

.fancy-card-item {
	transition: transform .2s;
}

.fancy-card-item > img {
	height: 100%;
	width: 100%;
	max-width: 100%;
}

.fancy-card-item:active, .fancy-card-item.active {
    box-shadow: rgba(240, 46, 170, 0.4) 0px 22px 70px 4px;
    filter: blur(2px) brightness(140%);
}
</style>

<script>
import router from '../router';

const FORCE = 5;

function playAudio(audio, volume) {
    var audio = new Audio(audio);
    audio.volume = volume;
    audio.play();
}

export default {
    name: "FancyCard",
    data() {
        return { 
            fadeTime: .5,
            active: false,
        };
    },
    props: {
        propImage: String,
        propAudio: String,
        propVolume: Number,
        propTitle: String,
        propTo: String,
        propWidth: Number,
        propFade: Object,
    },
    methods: {
        showAlert(msg) {
            alert(msg);
        },
        onAnchorClick(to, audio, volume) {
            this.active = true;
            playAudio(audio, volume);
            setTimeout(() => router.push(to), 1600);
        }
    },
    mounted() {
        const cards = document.querySelectorAll(".fancy-card");
        for(let i=0; i<cards.length; i++){
            cards[i].addEventListener('mousemove', rotate);
            cards[i].addEventListener('mouseleave', clearRotate);
        }

        function rotate(e){
            const cardItem = this.querySelector(".fancy-card-item");
            const offsetY = -(e.offsetY - cardItem.offsetHeight/2)/FORCE;
            const offsetX = (e.offsetX - cardItem.offsetWidth/2)/FORCE;
            cardItem.style.transform = 'rotateX(' + offsetY + 'deg) rotateY(' + offsetX + 'deg)';
        }

        function clearRotate(e){
            if(e.target.classList.contains("fancy-card")){
                const cardItem = this.querySelector(".fancy-card-item");
                cardItem.style.transform = 'rotateX(0) rotateY(0)';
            }
        }
    }
};

</script>