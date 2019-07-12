<template>
  <div>
    <div class="nav">
      <mt-button size="small" @click.native.prevent="active = 'tab-container1'">商店</mt-button>
      <mt-button size="small" @click.native.prevent="active = 'tab-container2'">品牌</mt-button>
    </div>
    <div class="page-tab-container">
      <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="tab-container1">
          <mt-cell v-for="n in 3" title="tab-container 1" :key="n"></mt-cell>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab-container2">
          <mt-cell v-for="n in 5" title="tab-container 2" :key="n"></mt-cell>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
  </div>
</template>

<script>
export default {
  name: "page-tab-container",
  data() {
    return {
      active: "tab-container1"
    };
  }
};
</script>

<style lang="scss" scoped>
.item {
  display: inline-block;
}

.nav {
  width: 100%;
  padding: 10px;
  text-align: center;
}
button {
  display: inline-block;
  margin: 0 10px;
  border: 0px;
  color: #ababab;
  background: #fff;
  box-shadow: none;
  &:active {
    color: black;
  }
}

.link {
  color: inherit;
  padding: 20px;
  display: block;
}
.page-tab-container {
  flex: 1;
  overflow: hidden;
//   background: pink;
}
</style>
