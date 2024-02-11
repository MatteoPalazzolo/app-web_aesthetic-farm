<template>
    <!--
    <nav class="navbar navbar-expand-lg navbar-light bg-purple" :class="{ nodisplay }">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
            <router-link class="nav-item nav-link active" to="/home">Home</router-link>
            <router-link class="nav-item nav-link" to="/general">General</router-link>
            <router-link class="nav-item nav-link" to="/exploits">Exploits</router-link>
            <router-link class="nav-item nav-link" to="/teams">Teams</router-link>
            <router-link class="nav-item nav-link" to="/history">History</router-link>
            <router-link class="nav-item nav-link" to="/info">Info</router-link>
            </div>
        </div>
    </nav>
    -->
    <div class="navbar">
        <!-- <router-link class="nav-link" :class="{ active: currentTab == 'Home' }" to="/home">Home</router-link> -->
        <router-link class="nav-link" :class="{ active: currentTab == 'Exploits' }" to="/exploits">Exploits</router-link>
        <router-link class="nav-link" :class="{ active: currentTab == 'Teams' }" to="/teams">Teams</router-link>
        <router-link class="nav-link" :class="{ active: currentTab == 'General' }" to="/general">General</router-link>
        <router-link class="nav-link" :class="{ active: currentTab == 'History' }" to="/history">History</router-link>
        <!-- <router-link class="nav-link" :class="{ active: currentTab == 'Info' }" to="/info">Info</router-link> -->
    </div>
</template>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');
.navbar {
    background-color: var(--purple);
    min-height: 50px;

    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
}
.nav-link{
    display: block;
    max-width: 100px;
    font-size: 1.8em;
    font-family: 'VT323', monospace;
    text-align: center;
}
.nav-link.active {
    text-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px, rgba(0, 0, 0, 0.2) 0px -3px 0px;
}
.nav-link {
   border: none;
   outline:0px;
}
</style>

<script>
export default {
    name: "NavBar",
    data() {
        return {};
    },
    props: {
        currentTab: String,
    },
    methods: {
    },
};
</script>