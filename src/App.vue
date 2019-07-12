<template>
  <div class="app">
    <router-view />
    <Foot />
  </div>
</template>

<script>
import Vue from "vue";
import Foot from "./components/Footer/Footer";

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
body,html{
  width: 100%;
  height: 100%;
}
*{
  margin: 0;
  padding: 0;
}
.app {
  width: 100%;
  height: 100%;
}
</style>
