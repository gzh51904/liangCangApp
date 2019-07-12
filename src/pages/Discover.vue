<template>
  <div class="discover">
    <router-link to="/searcher" tag="input" type="text" class="searcher" placeholder="搜索商品、品牌"></router-link>
    <tab-container />
    <!-- <ul class="tab"> -->
    <!-- <li v-for="item in tabs" :key="item.title" :class="item.path==='/shangdian'?'active':''">
        <a href="###">{{item.title}}</a>
    </li>-->
    <!-- <li>
        <a href="###">商店</a>
      </li>
      <li>
        <a href="###">品牌</a>
      </li>
    </ul>-->
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
      //   list: [
      //     {
      //       title: "家居",
      //       name: "Jiaju"
      //     },
      //     {
      //       title: "文具",
      //       name: "Wenju"
      //     },
      //     {
      //       title: "家居",
      //       name: "Jiaju"
      //     },
      //     {
      //       title: "文具",
      //       name: "Wenju"
      //     }
      //   ],
    };
  },
  methods: {
    active() {},
    selected() {}
  },
  components: {
    tabContainer
  }
};
</script>

<style lang="scss">
.searcher {
  width: 100%;
  height: 30px;
  text-align: center;
  line-height: 30px;
  border: 0px;
  background: #ebe8e8;
}
.tab {
  width: 100%;
  height: 34px;
  margin: 0;
  padding: 0;
  position: fixed;
  left: 0;
  display: flex;
  justify-content: center;
  text-align: center;
  li {
    list-style: none;
    float: left;
    margin: 10px;
    a {
      color: #ababab;
      text-decoration: none;
      &:active {
        border-bottom: 2px solid #000;
      }
    }
  }
}
</style>
