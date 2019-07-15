<template>
  <div class="pinpaiye">
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

    <!-- 图展 -->
    <div class="brand_info">
      <div id="brand_info">
        <div id="brand_log">
          <img :src="$route.query.imgurl" />
        </div>
        <div class="title">
          <span>{{$route.query.title}}</span>
        </div>
        <div class="nav-box">
          <span id="brand_tro">品牌简介</span>
          <span id="brand_goods_list">品牌产品</span>
        </div>
      </div>

      <div id="jieshao">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{$route.query.title}} 品牌成立于 2016年。由&nbsp;&nbsp; Stephanie-Lawson这位经验丰富的英国女装设计师在北京创立。&nbsp;&nbsp;她发觉在不同环境下，人们对着装开始有了更多的需求。&nbsp;&nbsp;从办公室到瑜伽室&nbsp;&nbsp;，机场到滑雪场，&nbsp;&nbsp;从运动场到一个顿优雅的
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;早餐她期待将牛仔自由、激情的精神融入每一个与众不同的生活场景，为对于生活更苛求的人群创造了这个专注而精致的服装系列。
      </div>

      <div class="main_content" id="goodslist"></div>
    </div>
    <p>{{$route.query.title}}</p>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.pinpaiye {
  position: relative;
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
  .brand_info {
    position: absolute;
    padding-bottom: 90px;
    #brand_info {
      height: 380px;
      padding-top: 69px;
      background-image: url(https://imgs-qn.iliangcang.com/images/brand_backgroud_image.png);
      #brand_log {
        margin-top: 20px;
        text-align: center;
        border-radius: 15px;
        img {
          width: 130px;
          height: 130px;
          border-radius: 80px;
        }
      }
      .title {
        text-align: center;
        margin-top: 20px;
        span {
          width: 108px;
          height: 36px;
          font-size: 30px;
          color: #ffffff;
        }
      }
      .nav-box {
        text-align: center;
        margin-top: 40px;
        margin-bottom: 16px;
        height: 60px;
        #brand_tro {
          width: 45%;
          text-align: center;
          line-height: 40px;
          font-size: 20px;
          display: inline-block;
          border: thin solid #ffffff;
          color: #ffffff;
        }
        #brand_goods_list {
          width: 45%;
          text-align: center;
          line-height: 40px;
          font-size: 20px;
          display: inline-block;
          border: thin solid #ffffff;
          background: #ffffff;
        }
      }
    }
    #jieshao {
      line-height: 44px;
    }
    #goodslist {
      display: none;
    }
  }
}
</style>
