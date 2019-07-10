<template>
  <div>
    <router-view />
    <Foot />
  </div>
</template>

<script>
// import Vue from "vue";
// import { Tabbar, TabItem, TabContainer, TabContainerItem } from "mint-ui";
import Foot from "./components/Footer/Footer";
// Vue.component(TabContainer.name, TabContainer);
// Vue.component(TabContainerItem.name, TabContainerItem);
// Vue.component(Tabbar.name, Tabbar);
// Vue.component(TabItem.name, TabItem);

// Vue.use(Tabbar);
// Vue.use(TabItem);

export default {
  name: "app",
  //   data() {
  //     return {
  //       pages: [
  //         {
  //           title: "商店",
  //           name: "Shop",
  //           path: "/shop"
  //         },
  //         {
  //           title: "发现",
  //           name: "Discover",
  //           path: "/discover"
  //         },
  //         {
  //           title: "购物车",
  //           path: "/cart",
  //           name: "Cart"
  //         },
  //         {
  //           title: "杂志",
  //           name: "Magazine",
  //           path: "/magazine"
  //         },
  //         {
  //           title: "我的",
  //           path: "/mine",
  //           name: "Mine"
  //         }
  //       ],
  //       active: "/shop",
  //       selected: "11"
  //     };
  //   },

  components: {
    Foot
  }

  //   props: ["selected"]
};
</script>
  
<style lang="scss">
.app {
  margin: 0;
  padding: 0;
}
</style>
