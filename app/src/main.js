import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import "./assets/css/style.css"
import "./retrowave-scene-master/demo.js";
//import $ from "jquery/dist/jquery.js";

createApp(App).use(router).mount("#app");


