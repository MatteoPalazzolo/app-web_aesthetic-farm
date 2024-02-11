/* eslint-disable */
import { createRouter, createWebHistory } from "vue-router";

import IntroPage from "../components/IntroPage.vue";
import HomePage from "../components/HomePage.vue";
import GeneralPage from "../components/GeneralPage.vue";
import ExploitsPage from "../components/ExploitsPage.vue";
import TeamsPage from "../components/TeamsPage.vue";
import HistoryPage from "../components/HistoryPage.vue";
import InfoPage from "../components/InfoPage.vue";


const routes = [
    { path: "/", name: "Intro", component: IntroPage },
    { path: "/home", name: "Home", component: HomePage },
    { path: "/general", name: "General", component: GeneralPage },
    { path: "/exploits", name: "Exploits", component: ExploitsPage },
    { path: "/teams", name: "Teams", component: TeamsPage },
    { path: "/history", name: "History", component: HistoryPage },
    { path: "/info", name: "Info", component: InfoPage },
];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default router;
