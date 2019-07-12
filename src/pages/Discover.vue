<template>
  <div class="discover">
    <!-- <router-link to="/searcher" tag="input" type="text" class="searcher" placeholder="搜索商品、品牌"></router-link>
    <tab-container />-->

    <!-- 
    <router-link head to="/seacher">
      <mt-button size="large" @click.native="handleClick">
        <i class="mint-toast-icon mintui mintui-search"></i>
        清凉
      </mt-button>
    </router-link>
    <tab-container />-->

    <router-link class="header" head to="/seacher">
      <mt-button size="large" @click.native="handleClick">
        <i class="mint-toast-icon mintui mintui-search"></i>
        清凉
      </mt-button>
    </router-link>

    <div id="main">
      <tab-container />
    </div>
    <!-- <Foot /> -->
  </div>
</template>

<script>
import tabContainer from "../components/Discover/tab-container";
export default {
  data() {
    return {
      tabs: [
        {
          title: "商店",
          path: "/shangdian",
          name: "Shangdian"
        },
        {
          title: "发现",
          path: "/discover",
          name: "Discover"
        }
      ]
    };
  },
  methods: {
    handleClick() {}
  },
  components: {
    tabContainer
  }
};
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
}
html,
body {
  width: 100%;
  height: 100%;
}
.discover {
  display: flex;
  height: 100%;
  flex-direction: column;
  .header,
  .footer {
    display: flex;
    position: flex;
    justify-content: center;
    align-items: center;
  }
  a {
    text-decoration: none;
  }
  #main {
    flex: 1;
    display: flex;
  }
  .mint-button {
    width: 94%;
    margin-top: 10px;
    background-color: #f3f3f3;
    /* position: relative; */
  }
  .mint-button i {
    display: inline-block;
    position: absolute;
    left: 40%;
    top: 40%;
  }
}
</style>
