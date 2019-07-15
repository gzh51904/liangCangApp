<template>
  <div class="content">
    <Header />
    <Nav />
    <Banner />

    <div class="cheap">
      <h3>今日特惠</h3>
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(item,idx) in cheaps" :key="idx">
            <img :src="item.url" alt />
            <p class="tip">{{item.title}}</p>
            <p class="price">
              ￥{{item.price}}
              <del>￥{{(item.price*1.2).toFixed(0)}}</del>
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="anther">
      <p class="pic_1">
        <img src="../assets/img/book.jpg" alt />
        <img class="name_1" src="../assets/img/shampoo.jpg" alt />
      </p>
      <p class="pic_2">
        <img class="name_1" src="../assets/img/T-sh.jpg" alt />
        <img src="../assets/img/bag.jpg" alt />
      </p>
    </div>
    <div class="list_cheap">
      <div class="topic" v-for="(item,ids) of cheap_lists" :key="ids">
        <h3>{{item.tips}}</h3>
        <p class="blurb">{{item.blurbs}}</p>
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide" v-for="(i,idx) of item.imgurl" :key="idx">
              <img :src="i.url" alt />
              <p class="tip">{{i.title}}</p>
              <p class="price">
                ￥{{i.price}}
                <del>￥{{(i.price*1.2).toFixed(0)}}</del>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="anther">
      <p class="pic_1">
        <img src="../assets/img/guo.jpg" alt />
        <img class="name_1" src="../assets/img/shui.jpg" alt />
      </p>
      <p class="pic_2">
        <img class="name_1" src="../assets/img/qingmeijiu.jpg" alt />
        <img src="../assets/img/shubao.jpg" alt />
      </p>
    </div>
    <div class="cancer">
      <h3>心思细腻又浪漫的巨蟹座</h3>
      <p class="blurb">这些礼物很贴心</p>
      <img src="../assets/img/cancer.jpg" alt />
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(j,idx) in cancers" :key="idx">
            <img :src="j.imgurls" alt />
            <p class="outline">{{j.title}}</p>
            <p class="price">￥{{j.payfor}}</p>
          </div>
        </div>
      </div>
      <p class="seemore">查看更多></p>
    </div>
    <Morelist />
  </div>
</template>

<script>
import Nav from "../components/Nav";
import Banner from "../components/Banner";
import Header from "../components/Header";
import Swiper from "swiper";
import "swiper/dist/css/swiper.min.css";
import Morelist from "../components/Morelist";
export default {
  data() {
    return {
      cheaps: [
        {
          id: 1,
          url: require("../assets/img/qingweijiu.jpg"),
          title: "窖藏青梅 十年陈酿",
          price: "288"
        },
        {
          id: 2,
          url: require("../assets/img/yanzhao.jpg"),
          title: "灵芝蒸汽眼罩",
          price: "138"
        },
        {
          id: 3,
          url: require("../assets/img/beizi.jpg"),
          title: "芬兰极简印花搪瓷杯",
          price: "158"
        },
        {
          id: 4,
          url: require("../assets/img/Chinabeer.jpg"),
          title: "中国风精酿啤酒组合",
          price: "168"
        },
        {
          id: 5,
          url: require("../assets/img/bingjiu.jpg"),
          title: "冰酒石典藏套装",
          price: "139"
        },
        {
          id: 6,
          url: require("../assets/img/milk.jpg"),
          title: "日本进口啤酒玻璃杯",
          price: "66"
        },
        {
          id: 7,
          url: "",
          title: "查看更多 >"
        }
      ],
      cheap_lists: [
        {
          good_id: 1,
          tips: "Summer Sale 6折起",
          blurbs: "入手全球好设计的最佳时机",
          imgurl: [
            {
              id: 1,
              url: require("../assets/img/xiuxianbao.jpg"),
              title: "可调节背带休闲包",
              price: "2876"
            },
            {
              id: 2,
              url: require("../assets/img/jiweijiubei.jpg"),
              title: "镀红铜鸡尾酒杯",
              price: "1041"
            },
            {
              id: 3,
              url: require("../assets/img/lazhu.jpg"),
              title: "香氛蜡烛 橙花香型",
              price: "632"
            },
            {
              id: 4,
              url: require("../assets/img/zhutai.jpg"),
              title: "穗带系列 骨瓷烛台",
              price: "1003"
            },
            {
              id: 5,
              url: require("../assets/img/haidao.jpg"),
              title: "海盗 被套+枕套",
              price: "306"
            },
            {
              id: 6,
              url: require("../assets/img/chabei.jpg"),
              title: "弯曲效果茶杯套组",
              price: "784"
            },
            {
              id: 7,
              url: "",
              title: "查看更多 >"
            }
          ]
        },
        {
          good_id: 2,
          tips: "好物热卖",
          blurbs: "每周TOP榜",
          imgurl: [
            {
              ids: 1,
              url: require("../assets/img/zazhiji.jpg"),
              title: "便携式无线充电果汁机",
              price: "399"
            },
            {
              ids: 2,
              url: require("../assets/img/bingxiang.jpg"),
              title: "蓝牙音箱迷你车载冰箱",
              price: "299"
            },
            {
              id: 3,
              url: require("../assets/img/night.jpg"),
              title: "夜间修复焕肤油 重现嫩肌",
              price: "408"
            },
            {
              id: 4,
              url: require("../assets/img/kongtiaobei.jpg"),
              title: "日式冷感空调被 ",
              price: "199"
            },
            {
              id: 5,
              url: require("../assets/img/dianfanbao.jpg"),
              title: "云智能降糖饭煲",
              price: "2480"
            },
            {
              id: 6,
              url: require("../assets/img/kafeiji.jpg"),
              title: "德国迷你全自动磨豆咖啡机",
              price: "1299"
            },
            {
              id: 7,
              url: "",
              title: "查看更多 >"
            }
          ]
        },
        {
          good_id: 3,
          tips: "夏日宅家慢生活",
          blurbs: "风扇、WiFi、冰西瓜，一个都不能少",
          imgurl: [
            {
              ids: 1,
              url: require("../assets/img/bingxiang.jpg"),
              title: "蓝牙音箱迷你车载冰箱",
              price: "299"
            },
            {
              ids: 2,
              url: require("../assets/img/heji.jpg"),
              title: "6款大合集",
              price: "168"
            },
            {
              id: 3,
              url: require("../assets/img/bingshitaozhuang.jpg"),
              title: " 冰酒石典藏套装",
              price: "199"
            },
            {
              id: 4,
              url: require("../assets/img/touyingyi.jpg"),
              title: "可乐罐大小的投影仪黑色款 ",
              price: "2099"
            },
            {
              id: 5,
              url: require("../assets/img/binggao.jpg"),
              title: "四款人气口味国潮绿豆冰糕",
              price: "58"
            },
            {
              id: 6,
              url: require("../assets/img/fengshan.jpg"),
              title: "立式静音风扇",
              price: "880"
            },
            {
              id: 7,
              url: "",
              title: "查看更多 >"
            }
          ]
        }
      ],
      cancers: [
        {
          id: 1,
          imgurls: require("../assets/img/xianglian.jpg"),
          title: "日本Akoya珍珠18k金项链",
          payfor: 2480
        },
        {
          id: 2,
          imgurls: require("../assets/img/xiangxun.jpg"),
          title: "海滩出具裸蜡、无火香薰",
          payfor: 598
        },
        {
          id: 3,
          imgurls: require("../assets/img/canju.jpg"),
          title: "蜜蜂系列餐具酒具",
          payfor: 75
        },
        {
          id: 4,
          imgurls: require("../assets/img/nanya.jpg"),
          title: "无线蓝牙便携音箱A1",
          payfor: 2480
        },
        {
          id: 5,
          imgurls: require("../assets/img/pengrenji.jpg"),
          title: "姆明联名限量款轻食烹饪机",
          payfor: 699
        },
        {
          id: 6,
          imgurls: require("../assets/img/guahudao.jpg"),
          title: "男士经典手动剃须刀",
          payfor: 449
        }
      ]
    };
  },
  mounted() {
    let mySwiper = new Swiper(".swiper-container", {
      // slidesPerView: 3,
      // centeredSlides: true,
      slidesPerView: "auto"
    });
  },
  components: {
    Header,
    Morelist,
    Banner,
    Nav
  }
};
</script>


<style lang="scss">
.content {
  background: white h3 {
    margin: 10px 0 10px 10px;
  }
  .swiper-slide {
    width: 100%;
    width: auto;
  }
  .swiper-container {
    width: 100%;
    height: 200px;
    .swiper-slide {
      width: 35%;
      img {
        width: 125px;
        height: 130px;
      }
      .tip {
        font-size: 12px;
        height: 20px;
        color: #3d3d3d;
      }
      .price {
        font-size: 12px;
        color: #6f98c3;
      }
    }
    .tip {
      font-size: 20px;
      font-weight: 700;
      color: #3e3e3e;
    }
    .swiper-slide:last-child {
      height: 130px;
      background: #eaeaea;
      text-align: center;
      line-height: 45px;
      overflow: hidden;
    }
    .swiper-slide:last-child .price {
      margin-top: 200px;
    }
  }
  .anther {
    width: 100%;
    height: 475px;
    img {
      width: 100%;
      height: 100%;
      border-radius: 5px;
    }
    .pic_1 {
      width: 47%;
      height: 250px;
      border-radius: 5px;
      float: left;
      margin-left: 7px;
    }
    .pic_2 {
      width: 47%;
      height: 250px;
      border-radius: 5px;
      float: right;
      margin-right: 7px;
    }
    .name_1 {
      height: 200px;
    }
  }
  .sale {
    margin: 0px 0 0px 10px;
  }
  .blurb {
    font-size: 12px;
    color: #a1a1a1;
    margin: 10px 0 10px 10px;
  }
  .cancer {
    width: 100%;
    height: 300px;
    img {
      width: 100%;
      height: 240px;
    }
    .outline {
      text-align: center;
      width: 100px;
      font-size: 12px;
      color: #3e3e3e;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .seemore {
      width: 100%;
      text-align: center;
      font-size: 14px;
      color: #9b9b9b;
      margin-top: -10px;
      padding-bottom: 10px;
      border-bottom: 1px solid #ccc;
    }
  }
}
.hello {
  background: #ffff;
  z-index: 300;
}
</style>
