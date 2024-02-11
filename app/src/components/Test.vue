<script setup>
import NavBar from './NavBar.vue'
</script>

<template>
    <NavBar currentTab="Test"/>
    <div>
        <button type="button" class="btn btn-primary">{{ msg }}</button>
    </div>
</template>

<script>
export default {
  name: "TestComponent",
  data() {
    return { msg: "Hello, this is a test!" };
  },
  methods: {
    async getResponse() {
      let res = await fetch("http://127.0.0.1:5000/test", {
        method: "GET",
        mode: "cors",
      });
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
