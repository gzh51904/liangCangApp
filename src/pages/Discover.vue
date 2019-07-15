<template>
  <div class="discover">
    <router-link class="header" head to="/subsearch">
      <mt-button class="button" size="large" @click.native="handleClick">
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
  background: #fff;
  flex-direction: column;
  .header,
  .footer {
    // position: fixed;
    display: flex;
    position: flex;
    justify-content: center;
    align-items: center;
  }
  .header {
    background: #fff;
    .button {
      width: 94%;
      position: fixed;
      top: -1px;
    }
  }
  a {
    text-decoration: none;
  }
  #main {
    flex: 1;
    margin-top: 53px;
    overflow-y: auto;
    overflow-x: hidden;
  }
  button {
    margin-top: 10px;
    background-color: #f3f3f3;
  }
  .mint-button i {
    display: inline-block;
    position: absolute;
    left: 35%;
    top: -15%;
  }
}
</style>
