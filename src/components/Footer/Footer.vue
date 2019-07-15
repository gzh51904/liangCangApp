<template>
  <div>
    <!-- <router-view></router-view> -->
    <div class="hello">
      <ul>
        <router-link to="/shop" tag="li" :class="this.$route.fullPath==='/shop'?'active':''">
          <i class="iconfont icon-shangdian" style="font-size:22px"></i>
          <span>商店</span>
        </router-link>
        <router-link
          to="/discover"
          tag="li"
          :class="this.$route.fullPath==='/discover'?'active':''"
        >
          <i class="iconfont icon-faxian1"></i>
          <span>发现</span>
        </router-link>
        <router-link
          to="/magazine"
          tag="li"
          :class="this.$route.fullPath==='/magazine'?'active':''"
        >
          <i class="iconfont icon-zazhi"></i>
          <span>杂志</span>
        </router-link>
        <router-link to="/cart" tag="li" :class="this.$route.fullPath==='/cart'?'active':''">
          <el-badge :value="1" class="item" type="primary">
            <i class="iconfont icon-gouwuche"></i>
          </el-badge>
          <span>购物车</span>
        </router-link>
        <router-link to="/mine" tag="li" :class="this.$route.fullPath==='/mine'?'active':''">
          <i class="iconfont icon-user"></i>
          <span>个人</span>
        </router-link>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  created() {},
  methods: {
    ccc() {}
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.hello {
  position: fixed;
  //   background: #fff;
  //   z-index: 300;
  ul {
    background: white;
    margin: 0;
    padding: 10px 0;
    width: 100%;
    position: fixed;
    bottom: 0;
    left: 0;
    display: flex;
    justify-content: space-around;
    li {
      list-style: none;
      i {
        display: block;
        width: 45px;
        height: 20px;
        text-align: center;
        font-size: 20px;
        color: #ababab;
      }
      span {
        display: block;
        width: 100%;
        text-align: center;
        color: #ababab;
      }
    }
  }
  .active {
    // background: #ababab;
    i {
      color: black;
    }
    span {
      color: black;
    }
  }
}
</style>
