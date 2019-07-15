<template>
  <div>
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
      ]
    };
  },
  mounted() {
    var mySwiper = new Swiper(".swiper-container", {
      // centeredSlides: true,
      slidesPerView: "auto"
    });
  }
};
</script>

<style lang="scss">
.nav {
  width: 95%;
  height: 60px;
  margin-top: 10px;
  margin-left: 2%;
}
a {
  text-decoration: none;
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
  .swiper-slide-active {
    text-decoration: underline;
  }
  .swiper-slide:last-child {
    height: 60px !important;
  }
}
</style>
