import Vue from 'vue'
import App from './App.vue'
import router from './routers'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI);

// import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
import './assets/iconfont/iconfont.css';
import Mint from 'mint-ui';
Vue.use(Mint);

import axios from 'axios';
Vue.prototype.$axios = axios;

new Vue({
    render: h => h(App),
    // 4.把router实例注入到vue实例中
    router,
}).$mount('#app')

// 5.使用VueRouter：在任意组件中通过 this.$router






