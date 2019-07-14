<template>
  <div class="morecontent">
    <div v-for="(item,idx) in morelists" :key="idx" class="more_list">
      <h4>{{item.tip}}</h4>
      <div v-for="(i,ids) in item.contents" :key="ids" class="ppt">
        <img :src="i.pic" alt />
        <p class="ti">{{i.title}}</p>
        <p class="to">{{i.topic}}</p>
        <p class="br">{{i.brief}}</p>
        <p class="pr">￥{{i.price}}</p>
      </div>
      <p class="mo">{{item.more}}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      morelists: [
        {
          id: 1,
          tip: "水具",
          contents: [
            {
              ids: 1,
              pic: require("../assets/img/shuiju1.jpg"),
              title: "啄木鸟保温壶1L",
              topic: "设计中的生活美学器具",
              brief: "来自丹麦，让你在家也能手工冲泡专业的咖啡",
              price: 515,
              Orig: ""
            },
            {
              ids: 2,
              pic: require("../assets/img/shuiju2.jpg"),
              title: "π杯玻璃快客杯",
              topic: "一键出好茶，旅行便携茶具",
              brief: "掐准时间按下硅胶圈上的出水按钮，清茶利落落杯",
              price: 198,
              Orig: ""
            },
            {
              ids: 3,
              pic: require("../assets/img/shuiju3.jpg"),
              title: "短嘴手冲咖啡具三件套",
              topic: "不会落盖的咖啡冲泡杯",
              brief: "保温存香，便于清洗，充分焖蒸，冲出厚重丰富风味",
              price: 499,
              Orig: ""
            },
            {
              ids: 4,
              pic: require("../assets/img/shuiju4.jpg"),
              title: "意大利原装进口滤水壶",
              topic: "国际认证安心用 第一系列",
              brief: "活性炭深层过滤，让每一杯水都可以放心喝",
              price: 215,
              Orig: ""
            },
            {
              ids: 5,
              pic: require("../assets/img/shuiju5.jpg"),
              title: "倒立泡茶保温杯",
              topic: "北欧设计 随时随地享好茶",
              brief: "独立茶叶槽，倒立泡茶可控制泡茶时间，长效保温",
              price: 188,
              Orig: ""
            },
            {
              ids: 6,
              pic: require("../assets/img/shuiju6.jpg"),
              title: "Poison黑金马克杯",
              topic: "把巴洛克的奢华带进生活",
              brief: "理性的、功能至上的德国DNA，散发着一种粗犷美感",
              price: 632,
              Orig: 790
            }
          ],
          more: "查看更多>"
        },
        {
          id: 2,
          tip: "家居",
          contents: [
            {
              ids: 1,
              pic: require("../assets/img/jiaju1.jpg"),
              title: "瞬间置身森林的车用净化器",
              topic: "净化除菌 提高车内空气质量 【两色可选】",
              brief: "释放大量负离子 如置身森林一般",
              price: 301,
              Orig: ""
            },
            {
              ids: 2,
              pic: require("../assets/img/jiaju2.jpg"),
              title: "“甜甜圈”净味除菌宝",
              topic: "高频电离 蜂窝触媒 智能杀菌【多色可选】",
              brief: "活性氧可产生养花作用，还能杀菌消毒，清新空气",
              price: 399,
              Orig: ""
            },
            {
              ids: 3,
              pic: require("../assets/img/jiaju3.jpg"),
              title: "亲爱的客栈同款火山加湿器",
              topic: "负离子净化空气 10小时加湿",
              brief: "采用超声波雾化处理，水雾很细，可直接作用于面部",
              price: 379,
              Orig: ""
            },
            {
              ids: 4,
              pic: require("../assets/img/jiaju4.jpg"),
              title: "撞色设计 时间沙漏计时器",
              topic: "通透质感 共享时间 点缀生活",
              brief: "北欧简约撞色设计，玻璃外壳搭配彩色细沙",
              price: 99,
              Orig: ""
            },
            {
              ids: 5,
              pic: require("../assets/img/jiaju5.jpg"),
              title: "北欧简约金属色托盘",
              topic: "椭圆凹面设计 表面闪耀 ",
              brief: "收纳首饰、钥匙、杂物，亦可做居家饰品摆件",
              price: 109,
              Orig: ""
            },
            {
              ids: 6,
              pic: require("../assets/img/jiaju6.jpg"),
              title: "GRASIL大理石烛台",
              topic: "弧线双头 U型设计 富有层次",
              brief: "北欧奢华家居品牌AYTM设计，简约大气，浪漫温馨",
              price: 1265,
              Orig: ""
            }
          ],
          more: "查看更多>"
        },
        {
          id: 2,
          tip: "家居",
          contents: [
            {
              ids: 1,
              pic: require("../assets/img/jiaju1.jpg"),
              title: "瞬间置身森林的车用净化器",
              topic: "净化除菌 提高车内空气质量 【两色可选】",
              brief: "释放大量负离子 如置身森林一般",
              price: 301,
              Orig: ""
            },
            {
              ids: 2,
              pic: require("../assets/img/jiaju2.jpg"),
              title: "“甜甜圈”净味除菌宝",
              topic: "高频电离 蜂窝触媒 智能杀菌【多色可选】",
              brief: "活性氧可产生养花作用，还能杀菌消毒，清新空气",
              price: 399,
              Orig: ""
            },
            {
              ids: 3,
              pic: require("../assets/img/jiaju3.jpg"),
              title: "亲爱的客栈同款火山加湿器",
              topic: "负离子净化空气 10小时加湿",
              brief: "采用超声波雾化处理，水雾很细，可直接作用于面部",
              price: 379,
              Orig: ""
            },
            {
              ids: 4,
              pic: require("../assets/img/jiaju4.jpg"),
              title: "撞色设计 时间沙漏计时器",
              topic: "通透质感 共享时间 点缀生活",
              brief: "北欧简约撞色设计，玻璃外壳搭配彩色细沙",
              price: 99,
              Orig: ""
            },
            {
              ids: 5,
              pic: require("../assets/img/jiaju5.jpg"),
              title: "北欧简约金属色托盘",
              topic: "椭圆凹面设计 表面闪耀 ",
              brief: "收纳首饰、钥匙、杂物，亦可做居家饰品摆件",
              price: 109,
              Orig: ""
            },
            {
              ids: 6,
              pic: require("../assets/img/jiaju6.jpg"),
              title: "GRASIL大理石烛台",
              topic: "弧线双头 U型设计 富有层次",
              brief: "北欧奢华家居品牌AYTM设计，简约大气，浪漫温馨",
              price: 1265,
              Orig: ""
            }
          ],
          more: "查看更多>"
        },
        {
          id: 3,
          tip: "美护",
          contents: [
            {
              ids: 1,
              pic: require("../assets/img/meifu1.jpg"),
              title: "畅销日本的鲨烷精华卸妆油",
              topic: "独有超微细鲨烷精华 ",
              brief: "深层清洁，温和去角质，保湿锁水",
              price: 295,
              Orig: ""
            },
            {
              ids: 2,
              pic: require("../assets/img/meifu2.jpg"),
              title: "氨基酸洁面泡泡",
              topic: "给你温和净润的洁面体验 低刺激清洁",
              brief: "绵密泡泡去除角质，不含皂碱，敏感肌也能用",
              price: 339,
              Orig: ""
            },
            {
              ids: 3,
              pic: require("../assets/img/meifu3.jpg"),
              title: "嫩白滋润手工洁面皂",
              topic: "燕窝酸重现肌肤透亮光泽",
              brief: "英国基础护肤专家，渗透净肤，舒缓滋润不干燥",
              price: 78,
              Orig: ""
            },
            {
              ids: 4,
              pic: require("../assets/img/meifu4.jpg"),
              title: "摩洛哥玫瑰精油沐浴皂",
              topic: "天然有机植物精华萃取",
              brief: "清洁舒缓，柔肤嫩肤，恢复肌肤弹性",
              price: 190,
              Orig: ""
            },
            {
              ids: 5,
              pic: require("../assets/img/meifu5.jpg"),
              title: "经典美白保湿手工皂",
              topic: "日本手工皂之父50年之作 ",
              brief: "深层清洁毛孔，抑制黑头，提亮肤色，保湿焕肤",
              price: 288,
              Orig: ""
            },
            {
              ids: 6,
              pic: require("../assets/img/meifu6.jpg"),
              title: "珍珠粉素颜手工皂",
              topic: "精选四大亮白因子 滋养亮白",
              brief: "最接近肌肤PH值，天然无防腐剂，深层清洁天然亮白",
              price: 98,
              Orig: ""
            }
          ],
          more: "查看更多>"
        },{
          id: 3,
          tip: "美食",
          contents: [
            {
              ids: 1,
              pic: require("../assets/img/meishi1.jpg"),
              title: "经典英式伯爵茶 ",
              topic: "维多利亚女王最爱  ",
              brief: "红底茶加上意大利香柑果皮榨出的精油",
              price: 26,
              Orig: ""
            },
            {
              ids: 2,
              pic: require("../assets/img/meishi2.jpg"),
              title: "南非国宝如意宝茶",
              topic: "不含咖啡因 不会影响睡眠",
              brief: "赛德堡产区，富含矿物质及抗氧化成分，被奉为不老茶",
              price: 49,
              Orig: ""
            },
            {
              ids: 3,
              pic: require("../assets/img/meishi3.jpg"),
              title: "欧乐集茶棒",
              topic: "15秒泡一杯正宗英式好茶",
              brief: "英国前首相卡梅伦也十分钟爱，茶包搅拌棒二合一  ",
              price: 39,
              Orig: ""
            },
            {
              ids: 4,
              pic: require("../assets/img/meishi4.jpg"),
              title: "桔中仁小青柑礼盒",
              topic: "柑皮普洱熟茶 一颗能喝一整天",
              brief: "在精确的微产区里来挑剔小青柑，以代表中国哲学的历",
              price: 139,
              Orig: ""
            },
            {
              ids: 5,
              pic: require("../assets/img/meishi5.jpg"),
              title: "正八月小青柑 柑普茶",
              topic: "精巧创意七颗装，好茶“掰”出来 ",
              brief: "云南布朗山乔木普洱春茶，只做八月果，错过等一年",
              price: 159,
              Orig: ""
            },
            {
              ids: 6,
              pic: require("../assets/img/meishi6.jpg"),
              title: "我的小岛咖啡礼盒",
              topic: "人气精品挂耳5包黑咖啡+专用手冲壶",
              brief: "一把好用的壶，一杯有着故事的咖啡。",
              price: 119,
              Orig: ""
            }
          ],
          more: "查看更多>"
        }
      ]
    };
  },
  methods: {
    // contents() {}
  }
};
</script>

<style lang="scss">
.morecontent {
  width: 100%;
  margin-top: 240px;

  .more_list {
    width: 100%;
    height: 940px;
    margin-top: 20px;
    h4 {
      margin-left: 10px;
      margin-bottom: 20px;
      font-size: 22px;
    }
    .ppt {
      width: 45%;
      float: left;
      margin: 5px 10px;
      background-color: white;
      img {
        width: 100%;
      }
      .ti {
        font-size: 14px;
        color: #484848;
      }
      .to {
        font-size: 12px;
        color: #484848;
      }
      .br {
        font-size: 12px;
        color: #9f9f9f;
        margin: 5px 0;
      }
      .pr {
        font-size: 12px;
        color: #6f98c3;
        margin: 10px 0;
      }
    }
    .mo {
      width: 100%;
      height: 30px;
      line-height: 30px;
      padding: 7px 0;
      text-align: center;
      font-size: 16px;
      color: #9f9f9f;
      margin-bottom: 30px;
      float: left;
      border-bottom: 1px solid #ccc;
    }
  }
}
</style>
