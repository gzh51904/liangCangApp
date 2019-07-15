<template>
  <div id="searchpages">
    <div class="mint_ui">
      <router-link tag="p" to="/Shop">
        <i class="mint-toast-icon mintui mintui-back" @click.native.prevent="back(path)"></i>
      </router-link>
      <mt-search v-model="value" cancel-text="取消" placeholder="清凉">
        <i class="mint-toast-icon mintui mintui-search"></i>
      </mt-search>
    </div>
    <div class="choice">
      <p>大家都在搜</p>
      <span v-for="item in hotsearch" :key="item.id">{{item.title}}</span>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: "",
      hotsearch: [
        {
          id: 1,
          title: "包"
        },
        {
          id: 2,
          title: "杯"
        },
        {
          id: 3,
          title: "杯子"
        },
        {
          id: 4,
          title: "香薰"
        },
        {
          id: 5,
          title: "儿童"
        },
        {
          id: 6,
          title: "行李箱"
        },
        {
          id: 7,
          title: "耳机"
        },
        {
          id: 8,
          title: "茶"
        },
        {
          id: 9,
          title: "手表"
        }
      ]
    };
  },
  methods: {
    back(path){
      this.$router.push({path})
    },
    created(){
      let hash = window.location.hash.slice(1);
      this.active=hash;
    }
  }
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
body {
  width: 100%;
  height: 100%;
  background: #f5f5f5;
}
.mint_ui {
  background-color: white;
  border-bottom: 2px solid #ccc;
}
.mint-search {
  height: 60px;
}
.mintui {
  font-family: "mintui" !important;
  font-size: 24px;

  font-style: normal;
  float: left;
  -webkit-font-smoothing: antialiased;
  -webkit-text-stroke-width: 0.2px;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  line-height: 60px;
}
.mint-searchbar {
  background-color: white;
  width: 100%;
}
.mint-searchbar-inner {
  position: relative;
  height: 39px;
  border: 2px solid black;
}
.mint-searchbar-cancel {
  display: none;
}
.mint-searchbar-inner i {
  font-weight: 900;
  position: absolute;
  right: 10px;
  
}
.mint-searchbar-core {
  font-size: 14px;
  color: #999;
}
.mint-searchbar-inner .mintui-search {
  font-size: 24px;
  color: black;
}
.choice p {
  margin: 30px 0 10px 5px;
  font-size: 14px;
  color: #000;
}
.choice span {
  font-size: 12px;
  color: #999;
  display: inline-block;
  margin-left: 19px;
  margin-top: 5px;
  padding: 3px;
  background-color: white;
}
.choice span:nth-child(1){
    margin-left: 0px;
}
</style>

