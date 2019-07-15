<template>
  <div class="cloth">
    <div class="head">
      <router-link tag="i" to="/discover" class="mint-toast-icon mintui mintui-back jt"></router-link>
      <h2>服装</h2>
    </div>
    <div class="biaoti">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(item,id) in tips" :key="id">{{item.title}}</div>
        </div>
      </div>
    </div>
    <ul class="bolting">
      <li
        v-for="(item,index) in ttps"
        :key="index"
        :class="{active:active==item.recommend}"
        @click="clicked(item.recommend)"
      >{{item.recommend}}</li>
    </ul>
    <div class="cont" v-for="(i,idx) in lists" :key="idx">
      <img :src="i.url" class="imgurl" />
      <p class="tel">{{i.name}}</p>
      <p class="tak">{{i.title}}</p>
      <p class="say">{{i.account}}</p>
      <p class="ice">￥{{i.price}}</p>
    </div>
  </div>
</template>

<script>
import Swiper from "swiper";
import "swiper/dist/css/swiper.min.css";
export default {
  data() {
    return {
      ttps: [
        {
          recommend: "推荐"
        },
        {
          recommend: "价格"
        },
        {
          recommend: "新品"
        }
      ],
      tips: [
        {
          id: 1,
          title: "女装"
        },
        {
          id: 2,
          title: "内衣"
        },
        {
          id: 3,
          title: "男装"
        },
        {
          id: 4,
          title: "家居服"
        },
        {
          id: 5,
          title: "运动服"
        },
        {
          id: 6,
          title: "童装"
        }
      ],
      lists: [
        {
          idx: 1,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264467.jpg?t=1558348123",
          name: "无尺码背心式文胸",
          title: "舒服到飞起 旅行必备",
          account: "0 束缚，穿起来十分温柔有弹性，适合A-C杯，多色可选",
          price: 129
        },
        {
          idx: 2,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264465.jpg?t=1557221606",
          name: "通勤宽肩带文胸",
          title: "加班必备 穿一天都不累",
          account: "无痕无钢圈0束缚，适合A-D杯，大胸显瘦，小胸不",
          price: 199
        },
        {
          idx: 3,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264466.jpg?t=1557132049",
          name: "深V款24小时美胸内衣",
          title: "零感零束缚 24小时文胸",
          account: "0 束缚，适合A-C杯，小胸也不会空杯，多色可选",
          price: 189
        },
        {
          idx: 4,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264664.jpg?t=1560509738",
          name: "蜜桃臀内裤",
          title: "立刻拥有翘臀，光速瘦腿",
          account: "细化腰线，收腹提臀，精准塑形，立体翘臀，光速瘦腿",
          price: 139
        },
        {
          idx: 5,
          url: "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264585.jpg",
          name: "敏感肌可用 轻薄网纱文胸",
          title: "舒服到飞起 旅行必备",
          account: "网纱质感，轻薄透气，敏感肌一样适用，穿脱轻盈自在",
          price: 169
        },
        {
          idx: 6,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/260/260096.jpg?t=1513071304",
          name: "“冰雪奇缘”系列 冰蓝网纱拼接雪花蕾丝半透三角杯内衣/花边丁字裤",
          title: "优雅性感 不妖娆",
          account: "结合亚洲身材特质，在性感中发掘含蓄优雅的姿态",
          price: 169
        },
        {
          idx: 7,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264463.jpg?t=1557228938",
          name: "舒适无痕深v内裤",
          title: "空气裸感 无痕隐形",
          account: "无勒痕，不夹臀，双层底档，更低存在感，更高舒适感",
          price: 69
        },
        {
          idx: 8,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/260/260127.jpg?t=1516260497",
          name: "Red Velvet 红丝绒系列弹力复古暗纹蕾丝三角杯背心式内衣",
          title: "弹力蕾丝 繁复的暗纹细节",
          account: "适合秋天，搭配衬衫、宽松的毛衣透露出细节小心机",
          price: 269
        },
        {
          idx: 9,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/258/258637.jpg?t=1500871581",
          name: "Cotton Smith微型窗干爽女士内裤",
          title: "进口美棉 快速排汗 ",
          account: "微型窗技术制作的内裤，全部使用天然优质美国棉花",
          price: 89
        },
        {
          idx: 10,
          url:
            "https://imgs-qn.iliangcang.com/ware/goods/big/2/260/260124.jpg?t=1513065904",
          name: "Red Velvet 红丝绒蕾丝拼接镂空丁字短裤",
          title: "样式简约 适合日常穿着",
          account: "简约拼接丁字裤，整体弱化了丁字裤的性感",
          price: 119
        }
      ],
      active: ""
    };
  },
  methods: {
    clicked(recommend) {
      this.active = recommend;
    }
  },
  mounted() {
    var mySwiper = new Swiper(".swiper-container", {
      slidesPerView: 7
    });
  }
};
</script>

<style lang="scss">
.cloth {
  width: 100%;
  .head {
    width: 100%;
    height: 60px;
    h2 {
      text-align: center;
      line-height: 60px;
      font-size: 18px;
      font-weight: normal;
    }
    .jt {
      font-size: 18px;
      margin-left: 10px;
      line-height: 60px;
      color: #333333;
    }
  }
  .biaoti {
    font-size: 14px;
    padding-bottom: 5px;
    border-bottom: 1px solid #ccc;
    color: #a0a0a0;
    .swiper-slide {
      text-align: center;
    }
  }
  .bolting {
    width: 100%;
    height: 25px;
    margin: 10px 0;
    padding-left: 30px;
    border-bottom: 1px solid #ccc;
    .active {
      color: #333;
      font-weight: 700
    }

    li {
      float: left;
      text-align: center;
      margin: 0 40px;
      font-size: 14px;
      color: #a0a0a0;
      line-height: 15px;
    }
  }
  .cont {
    width: 45%;
    float: left;
    margin: 6px 10px;

    img {
      width: 100%;
    }
    .tel {
      font-size: 12px;
      color: #484848;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .tak {
      font-size: 12px;
      color: #484848;
    }
    .say {
      font-size: 12px;
      color: #9f9f9f;
      margin: 5px 0;
    }
    .ice {
      font-size: 12px;
      color: #6f98c3;
      margin: 10px 0;
    }
  }
}
</style>
