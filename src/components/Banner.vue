<template>
  <div>
    <div class="banner">
      <mt-swipe :auto="2000">
        <mt-swipe-item v-for="(item,idx) in banners" :key="idx">
          <img :src="item.url" alt />
        </mt-swipe-item>
      </mt-swipe>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      banners: [
        {
          url: require("../assets/img/33703.jpg"),
          name: 1
        },
        {
          url: require("../assets/img/33728.jpg"),
          name: 2
        },
        {
          url: require("../assets/img/33744.jpg"),
          name: 3
        }
      ]
    };
  }
};
</script>

<style lang="scss">
.banner {
  width: 95%;
  height: 230px;
  margin-top: 10px;
  margin-left: 10px;
  border-radius: 15px;
}
.mint-swipe {
  width: 100%;
  border-radius: 5px;
  img {
    width: 100%;
    height: 100%;
    border-radius: 5px;
  }
}
</style>
