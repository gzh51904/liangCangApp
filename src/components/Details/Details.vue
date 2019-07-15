<template>
  <div class="details">
    <!-- 头部 -->
    <div class="head_div" id="head" style="margin-top: 0px;">
      <div class="welcome_logo">
        <router-link to="/shop" tag="a">
          <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/23/23348.png" />
        </router-link>
      </div>
      <div class="welcome_div">
        <router-link to="/shop" tag="a">首页</router-link>
      </div>
      <div class="title_div">良仓</div>

      <div class="login_div">
        <router-link to="/login" tag="a">登录</router-link>
      </div>
    </div>

    <div class="details-mamin">
      <!-- 轮播展示图 -->
      <div class="lunbo">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide" v-for="(item,index) in imgs" :key="index">
              <img :src="item.imgurl" alt />
              <!-- <img :src="$route.query.imgurl" /> -->
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>

    <!-- 商品信息 -->
    <div class="infoCon" style="overflow:hidden;margin-top:104px;width:100%;padding:0 10px">
      <!--add-start-->
      <div class id="cartPop" style>
        <div id="goods_name_one" class="goodsName" style="display:none;">waterman保温杯</div>
        <div id="goods_name_two" style="display:flex;">
          <div
            style="height: 60px;font-size: 30px;line-height: 1.7;vertical-align: middle;margin-top: 18px;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;margin-left: 15px;width: 75%;"
          >waterman保温杯</div>
          <div
            style="margin-left: 80px;margin-top: 32px;text-align: center;display: flex; flex-direction: column; justify-content: space-between;"
          >
            <!-- 收藏 -->
            <img
              class="liked_img_block"
              onclick="liked_goods(257737,1)"
              style="margin:0 auto;width:20px;height:20px;"
              src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/33/33001.png"
            />

            <img
              class="liked_img_none"
              onclick="liked_goods(257737,2)"
              style="margin:0 auto;width:30px;height:26px;display:none"
              src="http://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30372.png"
            />
            <!-- 收藏量 -->
            <div id="liked_num" style="font-size: 14px;">1959</div>
          </div>
        </div>

        <div
          style="overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;width:352px;"
        >
          <p
            style="margin-left: 15px;font-size: 20px;display: -webkit-box;color:#666666;line-height:1.3;overflow : hidden;text-overflow: ellipsis;-webkit-line-clamp: 1;-webkit-box-orient: vertical;width:97%"
          >荣获红点奖 全天保温保冷</p>
          <div
            style="display:flex;margin-left: 15px;margin-top: 20px;font-size: 31px;color:#666666;line-height:1.3;overflow : hidden;text-overflow: ellipsis;-webkit-line-clamp: 1;-webkit-box-orient: vertical;width:97%"
          ></div>
        </div>
        <p class="price" style="color:#0c79cc;font-size: 32px;">
          <span class="cur" style="font-size:36px;font-weight: normal">
            ¥
            <span id="curPriceTxt">218</span>
          </span>
        </p>
        <div class="line" style="float:left;"></div>
        <p class="shipNote tags_size" style="line-height: 35px;font-size: 11px;height:18px;">
          <span
            style="background:url(https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29895.png) no-repeat left center;background-size:13px 13px;margin-left: 0px"
          >免运费</span>
          <span
            style="background: url(https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29893.png) no-repeat left center;background-size:11px 13px;"
          >正品授权</span>
        </p>

        <p class="shipNote secondShipNote" style="line-height: 50px;font-size: 22px;height:50px;">
          <span
            style="background:url(https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29894.png)no-repeat left center;background-size:13px 13px;font-size:12px;margin-left: 0px"
          >现货商品3个工作日内发货</span>
        </p>

        <div id="add_style" class="skuInfo" style>
          <!--<div class="line" style="float:left;"></div>-->

          <div class="title">颜色</div>
          <ul class="colorSku">
            <li
              class="goodsAttr1 chk"
              id="goodAttr_1_1"
              type_id="1"
              type_name="颜色"
              attr_id="1"
              attr_name="哑光黑"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/383/383435.jpg?86997.24908687145"
              />
              <div class="name">哑光黑</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_5"
              type_id="1"
              type_name="颜色"
              attr_id="5"
              attr_name="水晶蓝"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/383/383434.jpg?43375.96837803359"
              />
              <div class="name">水晶蓝</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_6"
              type_id="1"
              type_name="颜色"
              attr_id="6"
              attr_name="橄榄绿"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/383/383436.jpg?32157.6702920628"
              />
              <div class="name">橄榄绿</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_9"
              type_id="1"
              type_name="颜色"
              attr_id="9"
              attr_name="珊瑚红"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/383/383437.jpg?24276.832920368375"
              />
              <div class="name">珊瑚红</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_1077"
              type_id="1"
              type_name="颜色"
              attr_id="1077"
              attr_name="亚麻灰"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/399/399675.jpg?98190.31718444209"
              />
              <div class="name">亚麻灰</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_1078"
              type_id="1"
              type_name="颜色"
              attr_id="1078"
              attr_name="松石蓝"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/399/399676.jpg?61325.01220749738"
              />
              <div class="name">松石蓝</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_1079"
              type_id="1"
              type_name="颜色"
              attr_id="1079"
              attr_name="丝缎白"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/399/399677.jpg?29775.389980431897"
              />
              <div class="name">丝缎白</div>
            </li>
            <li
              class="goodsAttr1"
              id="goodAttr_1_1080"
              type_id="1"
              type_name="颜色"
              attr_id="1080"
              attr_name="巴黎绿"
            >
              <img
                src="https://imgs-qn.iliangcang.com/ware/upload/big/2/399/399678.jpg?4594.9624466527175"
              />
              <div class="name">巴黎绿</div>
            </li>
          </ul>
          <div class="line lineone" style="float:left;margin-top:10px;"></div>
          <input type="hidden" class="sku_type_names" id="sku_type_name_1" value="颜色" />
          <input type="hidden" class="sku_type_ids" id="sku_type_id_1" value="1" />
          <input type="hidden" class="sku_attr_names" id="sku_attr_name_1" value="哑光黑" />
          <input type="hidden" class="sku_attr_ids" id="sku_attr_id_1" value="1" />
          <div class="title">容量</div>
          <ul class="textSku">
            <li
              class="txt goodsAttr6 chkT"
              id="goodAttr_6_29"
              type_id="6"
              type_name="容量"
              attr_id="29"
              attr_name="260ml"
            >260ml</li>
            <li
              class="txt goodsAttr6"
              id="goodAttr_6_30"
              type_id="6"
              type_name="容量"
              attr_id="30"
              attr_name="450ml"
            >450ml</li>
          </ul>
          <div class="line lineone" style="float:left;margin-top:10px;"></div>
          <input type="hidden" class="sku_type_names" id="sku_type_name_6" value="容量" />
          <input type="hidden" class="sku_type_ids" id="sku_type_id_6" value="6" />
          <input type="hidden" class="sku_attr_names" id="sku_attr_name_6" value="260ml" />
          <input type="hidden" class="sku_attr_ids" id="sku_attr_id_6" value="29" />

          <div class="title">数量</div>
          <ul>
            <li class="minus"></li>
            <li class="nums" id="goodsAmount">1</li>
            <li class="plus"></li>
          </ul>
          <!--            <div class="line" style="float:left;margin-top:10px;"></div>-->
          <div id="white_height" class></div>
        </div>
      </div>

      <div
        id="click_chose_sku"
        data-add_id="1"
        style="width: 100%;height: 77px;line-height: 77px;background-color: white;display: flex;margin-top: 12px"
      >
        <div style="width:75px;height:75px;margin-left: 22px">
          <img
            style="width: 31px;height: 32px;margin-top: 23px;"
            src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29867.png"
          />
        </div>
        <div style="height: 77px;width: 400px;margin-left: 5px">
          <div style="font-size: 24px;color: #333333;height: 77px;line-height: 77px">选择颜色、尺码、数量</div>
        </div>
        <div style="margin-left:66px;width:14px;height:26px;">
          <img
            src="/images/default/brand_jiantou.png"
            style="width:14px;height:26px;margin-top: 25px;"
          />
        </div>
      </div>
    </div>

    <!-- 底部 -->
    <div class="footer">
      <div id="kefu">
        <a href="http://kefu.easemob.com/webim/im.html?tenantId=11579">
          <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29861.png" />
        </a>
      </div>
      <div class="btnH98" id="canBuy" @click.native.prevent="goto()">立即购买</div>
      <div class="btnH98" id="addCart" @click.native.prevent="addNum()">&nbsp;&nbsp;加入购物车</div>
    </div>
  </div>
</template>

<script>
import Swiper from "swiper";
import "swiper/dist/css/swiper.min.css";
import { MessageBox } from "mint-ui";

export default {
  data() {
    return {
      imgs: [
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/384/384448.jpg"
        },
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/399/399680.jpg"
        },
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/399/399681.jpg"
        },
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/399/399682.jpg"
        },
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/399/399683.jpg"
        },
        {
          imgurl:
            "https://imgs-qn.iliangcang.com/ware/upload/orig/2/399/399684.jpg"
        }
      ]
    };
  },
  methods: {
    goto() {
      this.$router.push("/cart");
    },
    addNum() {
      console.log(11);
      //   MessageBox("提示", "加入购物车成功");
      //   this.num++;
      //   MessageBox.confirm("确定执行此操作?").then(action => {
      //     alert("aaa");
      //   });
    }
  },
  mounted() {
    var mySwiper = new Swiper(".swiper-container", {
      pagination: {
        el: ".swiper-pagination"
      }
    });
  }
};
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.details {
  position: relative;
  width: 100%;
  height: 100%;
  .head_div {
    width: 100%;
    height: 50px;
    background: #000000;
    position: fixed;
    z-index: 200;
    a {
      color: #ffffff;
      text-decoration: none;
    }
    .welcome_logo {
      float: left;
      width: 10%;
      text-align: center;
      line-height: 50px;
      a {
        color: #ffffff;
        font-size: 26px;
        text-decoration: none;
        font-weight: bold;
      }
      img {
        background: black;
        width: 20px;
        height: 20px;
      }
    }
    .welcome_div {
      position: absolute;
      left: 10%;
      width: 8%;
      line-height: 50px;
      color: #ffffff;
      font-size: 16px;
      text-decoration: none;
      font-weight: bold;
    }
    .title_div {
      position: absolute;
      left: 18%;
      width: 70%;
      color: #ffffff;
      line-height: 50px;
      text-align: center;
    }
    .login_div {
      position: absolute;
      right: 0;
      width: 12%;
      font-size: 16px;
      line-height: 50px;
      text-align: center;
      float: right;
    }
  }
  .lunbo {
    width: 100%;
    padding-top: 50px;
    height: 360px;
    img {
      width: 100%;
      height: 100%;
    }
  }
  .footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    height: 60px;
    background: #fff;
    #kefu {
      bottom: 0px;
      position: fixed;
      z-index: 1002;
      width: 96px;
      height: 60px;
      background-color: white;
      img {
        width: 53px;
        height: 50px;
        margin-left: 23px;
        margin-top: 10px;
      }
    }
    #canBuy {
      float: left;
      //   background-color: white;
      background: pink;
      border-color: white;
      color: #000;
      display: block;
      width: 170px;
      margin-left: 96px;
      line-height: 60px;
      text-align: center;
    }
    #addCart {
      float: right;
      background-color: black;
      border-color: black;
      color: white;
      display: block;
      width: 148px;
      height: 60px;
      line-height: 60px;
      text-align: center;
    }
  }
}
</style>

