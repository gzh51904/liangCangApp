import Vue from 'vue'
import App from './App.vue'
import router from './routers'

import MintUI from 'mint-ui'
import '../node_modules/mint-ui/lib/style.css'
import './assets/iconfont/iconfont.css';
Vue.use(MintUI);
 

new Vue({
    render: h => h(App),

    // 4.把router实例注入到vue实例中
    router,
    // MintUI
}).$mount('#app')

// 5.使用VueRouter：在任意组件中通过 this.$router






