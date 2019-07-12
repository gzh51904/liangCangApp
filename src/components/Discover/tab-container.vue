<template>
  <div class="tab-container">
    <div class="nav">
      <mt-button size="small" @click.native.prevent="active = 'tab-container1'">商店</mt-button>
      <mt-button size="small" @click.native.prevent="active = 'tab-container2'">品牌</mt-button>
    </div>
    <div class="page-tab-container main">
      <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="tab-container1">
          <ul class="list">
            <li
              class="tablsit"
              :index="item.path"
              v-for="item in list"
              :key="item.title"
            >{{item.title}}</li>
            <div class="view">{{list.title}}</div>

            <!-- <mt-cell v-for="item in list" :key="item.title">{{item.title}}</mt-cell> -->
          </ul>
        </mt-tab-container-item>
        <mt-tab-container-item id="tab-container2">
          <ul class="pinPai">
            <li class="tablsit" v-for="item in pinPai" :key="item.title">{{item.title}}</li>
            <!-- <mt-cell v-for="n in 5" title="tab-container 2" :key="n"></mt-cell> -->
          </ul>
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
      list: [
        {
          title: "家居",
          name: "jiaJu"
        },
        {
          title: "文具",
          name: "wenJu"
        },
        {
          title: "数码",
          name: "shuMa"
        },
        {
          title: "玩乐",
          name: "wanLe"
        },
        {
          title: "餐厨",
          name: "canChu"
        },
        {
          title: "美食",
          name: "meiShi"
        },
        {
          title: "服装",
          name: "fuZhuang"
        },
        {
          title: "鞋包",
          name: "xieBao"
        },
        {
          title: "配饰",
          name: "peiShi"
        },
        {
          title: "美护",
          name: "meiHu"
        },
        {
          title: "出行",
          name: "chuXin"
        },
        {
          title: "图书",
          name: "tuShu"
        },
        {
          title: "艺术",
          name: "yiShu"
        },
        {
          title: "水具",
          name: "shuiJu"
        },
        {
          title: "运动",
          name: "yunDong"
        }
      ],
      pinPai: [
        {
          title: "猫壹Necoichi1"
        },
        {
          title: "猫壹Necoichi2"
        },
        {
          title: "猫壹Necoichi3"
        },
        {
          title: "猫壹Necoichi4"
        },
        {
          title: "猫壹Necoichi5"
        },
        {
          title: "猫壹Necoichi6"
        },
        {
          title: "猫壹Necoichi7"
        },
        {
          title: "猫壹Necoichi8"
        },
        {
          title: "猫壹Necoichi9"
        },
        {
          title: "猫壹Necoichi10"
        },
        {
          title: "猫壹Necoichi11"
        },
        {
          title: "猫壹Necoichi12"
        }
      ],
      active: "tab-container1"
    };
  },
  methods: {}
};
</script>

<style lang="scss" scoped>
.tab-container {
  width: 100%;
  overflow: hidden;
  .item {
    display: inline-block;
  }
  li {
    list-style: none;
  }

  .nav {
    // display: flex;
    position: flex;
    width: 100%;
    padding: 10px;
    text-align: center;
  }
  button {
    display: inline-block;
    margin: 0 5px;
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

  .mint-tab-container-item {
    width: 100%;
  }
  .list {
    li {
      width: 30%;
      height: 50px;
      text-align: center;
      line-height: 40px;
      background: #f5f5f5;
    }
    .view {
      float: right;
      width: 70%;
      background: red;
    }
  }
  .pinPai {
    width: 100%;
    li {
      width: 100%;
      height: 80px;
      background: pink;
      text-align: center;
      line-height: 80px;
    }
  }
}
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
  margin: 0 5px;
  border: 0px;
  color: black;
  background: #fff;
  box-shadow: none;
  &:active {
    color: black;
    border-bottom: 2px solid #000;
  }
}

.link {
  color: inherit;
  padding: 20px;
  display: block;
}

.mint-button::after {
  background: #fff;
}
</style>
