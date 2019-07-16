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
import Order from "../pages/Order";
import Login from "../pages/Login";
import Morelogin from "../pages/Morelogin";
import Details from "../components/Details/Details"




let Computer = {
    template: `<div>电脑</div>`
}
let Tablet = {
    template: `<div>平板</div>`
}
let Acc = {
    template: `<div>配件</div>`
}
import Pinpai from "../components/Discover/pinPai";
import Subsearch from '../components/Subpages/Subsearch';
import Cloth from "../components/List/cloth";
import Furniture from "../components/List/furniture";

// order
let All = {
    template: `<div class="orderOne">
                    <img src="../img/dingdan.png" alt="">
                    <p v-for="item in selected" :key="item.name">{{item.name}}</p>
                </div>`
}

// 3.实例化router并配置参数
let router = new VueRouter({
    // 路由页面信息配置
    routes: [
        {
            name: 'Shop',
            path: '/shop',//当浏览器地址为#/shop时，渲染Shop组件
            component: Shop,
            meta: {
                keepAlive: true//导航栏在该页面显示
            }
        },
        // 重定向
        {
            path: '/',
            redirect: { name: 'Shop' }
        },
        {
            name: 'Discover',
            path: '/discover',
            component: Discover,
            meta: {
                keepAlive: true//导航栏在该页面显示
            }
        },
        {
            name: 'Magazine',
            path: '/magazine',
            component: Magazine,
            meta: {
                keepAlive: true//导航栏在该页面显示
            }
        },
        {
            name: 'Cart',
            path: '/cart',
            component: Cart,
            meta: {
                keepAlive: true//导航栏在该页面显示
            }
        },
        {
            name: 'Mine',
            path: '/mine',
            component: Mine,
            meta: {
                keepAlive: true//导航栏在该页面显示
            }
        },
        {
            name: 'Searcher',
            path: '/searcher',
            component: Searcher,
            meta: {
                keepAlive: false//导航栏在该页面显示
            }
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
            name: 'Morelogin',
            path: '/morelogin',
            component: Morelogin
        },
        {
            name: 'Order',
            path: '/order',
            component: Order,

            children: [
                {
                    name: 'All',
                    path: 'all',
                    component: All
                }, {
                    name: 'Computer',
                    path: 'computer',
                    component: Computer
                }, {
                    name: 'Tablet',
                    path: 'tablet',
                    component: Tablet
                }, {
                    name: 'Acc',
                    path: 'acc',
                    component: Acc
                }
            ]

        },
        {
            name: 'Pinpai',
            path: '/pinpai',
            component: Pinpai,
            meta: {
                keepAlive: false//导航栏在该页面不予显示
            }
        },
        {
            name: 'Subsearch',
            path: '/subsearch',
            component: Subsearch
        },
        {
            name: 'Furniture',
            path: '/furniture',
            component: Furniture,
            meta: {
                keepAlive: false
            }
        }, {
            name: 'Cloth',
            path: '/cloth',
            component: Cloth,
            meta: {
                keepAlive: false//导航栏在该页面不予显示
            }
        },
        {
            name: 'Details',
            path: '/details',
            component: Details,
            meta: {
                keepAlive: false//导航栏在该页面不予显示
            }
        }
    ]
})

export default router;