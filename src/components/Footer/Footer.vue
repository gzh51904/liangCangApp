<template>
  <div>
    <!-- <router-view></router-view> -->
    <div class="hello">
      <ul>
        <router-link to="/mine" tag="li" :class="this.$route.fullPath==='/mine'?'active':''">
          <img src="../../assets/img/Cart.png" alt />
        </router-link>
        <router-link
          to="/discover"
          tag="li"
          :class="this.$route.fullPath==='/discover'?'active':''"
        >
          <img src="../../assets/img/Cart.png" alt />
        </router-link>
        <router-link
          to="/magazine"
          tag="li"
          :class="this.$route.fullPath==='/magazine'?'active':''"
        >
          <img src="../../assets/img/Cart.png" alt />
        </router-link>
        <router-link to="/shop" tag="li" :class="this.$route.fullPath==='/shop'?'active':''">
          <img src="../../assets/img/Cart.png" alt />
        </router-link>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  created() {
    console.log(this.$route.fullPath);
  },
  methods: {
    ccc() {
      console.log(this);
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.hello {
  ul {
    margin: 0;
    padding: 0;
    width: 100%;
    position: fixed;
    bottom: 0;
    left: 0;
    display: flex;
    justify-content: space-around;
    li {
      list-style: none;
      img {
        width: 45px;
        height: 45px;
      }
    }
  }
  .active {
    background: black;
  }
}
</style>
