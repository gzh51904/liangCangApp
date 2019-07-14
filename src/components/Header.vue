<template>
  <div class="subshop">
    <router-link tag="a" to="./Subsearch">
      <mt-button size="large" @click.native="handleClick">
        <i class="mint-toast-icon mintui mintui-search"></i>
        清凉
      </mt-button>
    </router-link>
    <div class="top">
      <p class="firstpages">首页</p>
      <div class="swiper-container nav-navs">
        <div class="swiper-wrapper nav">
          <div class="swiper-slide" v-for="(item,idx) in navs" :key="idx">
            <span>{{item.title}}</span>
          </div>
        </div>
      </div>
    </div>

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
import Swiper from "swiper";
import "swiper/dist/css/swiper.min.css";
export default {
  data() {
    return {
      navs: [
        {
          id: 1,
          title: "大赏"
        },
        {
          id: 2,
          title: "水具"
        },
        {
          id: 3,
          title: "家居"
        },
        {
          id: 4,
          title: "美护"
        },
        {
          id: 5,
          title: "美食"
        },
        {
          id: 6,
          title: "出行"
        },
        {
          id: 7,
          title: "玩乐"
        },
        {
          id: 8,
          title: "餐厨"
        },
        {
          id: 9,
          title: "文具"
        },
        {
          id: 10,
          title: "服装"
        },
        {
          id: 11,
          title: "配饰"
        },
        {
          id: 12,
          title: "艺术"
        },
        {
          id: 13,
          title: "运动"
        },
        {
          id: 14,
          title: "图书"
        },
        {
          id: 15,
          title: "数码"
        },
        {
          id: 16,
          title: "鞋包"
        },
        {
          id: 17,
          title: "全部"
        }
      ],
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
  },
  mounted() {
    var mySwiper = new Swiper(".swiper-container", {
      // centeredSlides: true,
      slidesPerView: "auto"
    });
  },
  methods: {
    handleClick() {

    },
    gotoed() {

    }
  }
};
</script>

<style lang="scss">
a {
  text-decoration: none;
}
.top {
  .swiper-slide {
    width: 20% !important;
    width: auto;
  }
  .nav-navs {
    height: 60px !important;
    width: 69% !important;
    text-align: center;
    line-height: 60px;
    font-size: 14px;
    font-weight: 700;
  }
  .swiper-slide-active{
  text-decoration: underline;
  // color:#fff;
}
  .swiper-slide:last-child {
    height: 60px !important;
  }
}
.mint-button {
  background-color: #dedede;
  width: 94%;
  margin-top: 10px;
  margin-left: 3%;
}
.mint-button-text {
  font-size: 16px;
}
.mint-button i {
  display: inline-block;
  position: absolute;
  left: 36%;
  top: -16%;
}
.firstpages {
  float: left;
  display: block;
  margin-top: 20px;
  margin-left: 10px;
  font-size: 24px;
  font-weight: 700;
  border-bottom: 2px solid #000;
}
.nav {
  width: 95%;
  height: 60px;
  margin-top: 10px;
  margin-left: 2%;
}
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
