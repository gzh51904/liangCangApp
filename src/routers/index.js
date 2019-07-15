import Vue from 'vue'

// VueRouter的使用步骤
// 1. 引入
import VueRouter from 'vue-router'
// 2. 使用VueRouter插件
Vue.use(VueRouter);

// 引入页面组件
import Shop from "../pages/Shop";
import Discover from "../pages/Discover";
import Magazine from "../pages/Magazine";
import Cart from "../pages/Cart";
import Mine from "../pages/Mine";
import Searcher from "../components/Searcher/Searcher";
import Settings from "../pages/Settings";
import Login from "../pages/Login";
import Pinpai from "../components/Discover/pinPai";
import Subsearch from '../components/Subpages/Subsearch';



// 3.实例化router并配置参数
let router = new VueRouter({
    // 路由页面信息配置
    routes: [
        {
            name: 'Shop',
            path: '/shop',//当浏览器地址为#/shop时，渲染Shop组件
            component: Shop
        },
        {
            name: 'Discover',
            path: '/discover',
            component: Discover
        },
        {
            name: 'Magazine',
            path: '/magazine',
            component: Magazine
        },
        {
            name: 'Cart',
            path: '/cart',
            component: Cart
        },
        {
            name: 'Mine',
            path: '/mine',
            component: Mine
        },
        {
            name: 'Searcher',
            path: '/searcher',
            component: Searcher
        },
        {
            name: 'Settings',
            path: '/settings',
            component: Settings
        },
        {
            name: 'Login',
            path: '/login',
            component: Login
        },
        {
            name: 'Pinpai',
            path: '/pinpai',
            component: Pinpai
        }, {
            name: 'Subsearch',
            path: '/subsearch',
            component: Subsearch
        }
    ]
})

export default router;