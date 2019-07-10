<template>
  <div class="app">
    <mt-tabbar :selected.sync="selected">
      <mt-tab-item id="外卖">
        <img slot="icon" src="./assets/img/Shop.png" />
      </mt-tab-item>
      <mt-tab-item id="订单">
        <img slot="icon" src="./assets/img/Discover.png" />
      </mt-tab-item>
      <mt-tab-item id="杂志">
        <img slot="icon" src="./assets/img/Discover.png" />
      </mt-tab-item>
      <mt-tab-item id="发现">
        <img slot="icon" src="./assets/img/Cart.png" />
      </mt-tab-item>
      <mt-tab-item id="我的">
        <img slot="icon" src="./assets/img/Mine.png" />
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
import Vue from "vue";
import { Tabbar, TabItem, TabContainer, TabContainerItem } from "mint-ui";

Vue.component(TabContainer.name, TabContainer);
Vue.component(TabContainerItem.name, TabContainerItem);
Vue.component(Tabbar.name, Tabbar);
Vue.component(TabItem.name, TabItem);

// Vue.use(Tabbar);
// Vue.use(TabItem);

export default {
  name: "app",
  data() {
    return {
      pages: [
        {
          title: "商店",
          name: "Shop",
          path: "/shop"
        },
        {
          title: "发现",
          name: "Discover",
          path: "/discover"
        },
        {
          title: "购物车",
          path: "/cart",
          name: "Cart"
        },
        {
          title: "杂志",
          name: "Magazine",
          path: "/magazine"
        },
        {
          title: "我的",
          path: "/mine",
          name: "Mine"
        }
      ],
      active: "/shop"
    };
  }
};
</script>
  
<style lang="scss">
.app {
  a {
    height: 55px;
    img {
      text-align: center;
      line-height: 55px;
    }
  }
}
</style>
