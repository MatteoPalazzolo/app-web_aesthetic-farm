<script setup>
import NavBar from './NavBar.vue'
</script>

<template>
    <NavBar currentTab="Teams"/>
</template>

<script>
export default {
  name: "TeamsPage",
  data() {
    return { msg: "Hello, this is a test!" };
  },
  methods: {
    async getResponse() {
      let res = await fetch("https://6fe6-82-54-208-205.ngrok-free.app/teams/1", {
          method: "GET",
          mode: "no-cors",
        }
      );
      let resText = await res.text();
      console.log(resText);
      this.msg = resText;
    },
  },
  created() {
    this.getResponse();
  },
};
</script>
