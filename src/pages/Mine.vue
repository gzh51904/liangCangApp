<template>
  <div class="M-app">
    <div class="M-top">
      <h1>我的账号</h1>
      <!-- <p @click="goto()">
                <i class="iconfont icon-fangdajing"></i>
            </p> -->
            <router-link to="/settings" tag="p" :class="this.$route.fullPath==='/settings'?'active':''">
                <i class="iconfont icon-fangdajing"></i>
            </router-link>
    </div>
    <div class="M-header">
        <div class="M-img">
            <img src="../img/default180.png" alt="">
            <p>
                <router-link to="/login" tag="span" :class="this.$route.fullPath==='/login'?'active':''">
                    <span>登录</span>/
                </router-link>
                <router-link to="/settings" tag="span" :class="this.$route.fullPath==='/settings'?'active':''">
                    <span>注册</span>
                </router-link>
                
            </p>
        </div>
        <div class="M-mine">
            <ul>
                <router-link to="/order" tag="li" :class="this.$route.fullPath==='/order'?'active':''">
                    <i class="iconfont M-hicon icon-gouwuche"></i>
                    <span>我的订单</span>
                </router-link>
                <router-link to="/order" tag="li" :class="this.$route.fullPath==='/order'?'active':''">
                    <i class="iconfont M-hicon icon-gouwuche"></i>
                    <span>我的红包</span>
                </router-link>
            </ul>
        </div>
    </div>
    <div class="M-forter">
        <ul>
            <li>
                <i class="iconfont M-icon icon-shoucang-copy"></i>
                <span>我的心愿单</span>
            </li>
            <li>
                <i class="iconfont M-icon icon-xiaoxi"></i>
                <span>我的消息</span>
            </li>
            <li>
                <i class="iconfont M-icon icon-dizhi"></i>
                <span>地址管理</span>
            </li>
            <li>
                <i class="iconfont M-icon icon-kefu"></i>
                <span>良仓客服</span>
            </li>
        </ul>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    goto() {
      this.$router.replace({ name: "Settings" });
    }
  }
};
</script>
<style>
* {
  margin: 0;
  padding: 0;
}
ul li {
  list-style: none;
}
body,
html {
  width: 100%;
  height: 100%;
}
.M-app {
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
}

/* 顶部 */
.M-top {
  background: black;
  height: 40px;
  text-align: center;
  position: relative;
}
.M-top h1 {
  font-size: 12px;
  color: white;
  line-height: 40px;
  align-self: flex-end;
}
.M-top p {
  text-align: right;
  line-height: 40px;
  position: absolute;
  right: 10px;
  top: 0px;
}
.icon-fangdajing {
  color: white;
}

.M-header {
  width: 100%;
  height: 35%;
  background: #666 url("../img/tmp_bg1.jpg") no-repeat 50% 50%;
  opacity: 0.4;
  background-size: cover;
  position: relative;
}
.M-img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background: pink;
  position: absolute;
  top: 10%;
  left: 50%;
  margin-left: -40px;
}
.M-img img {
  border-radius: 50%;
  overflow: hidden;
  width: 100%;
  height: 100%;
}
.M-img p {
  font-size: 12px;
  color: white;
  text-align: center;
}
/* 订单和红包 */
.M-mine {
  width: 100%;
  height: 40px;
  padding-top: 200px;
  z-index: 1000;
}
.M-mine ul {
  /* line-height: 40px; */
  display: flex;
  justify-content: space-around;
}
.M-mine ul li span {
  margin-left: 6px;
  color: white;
  font-size: 12px;
}
.M-mine ul li {
  width: 45%;
  height: 20px;
  text-align: center;
  line-height: 20px;
  border: 1px solid white;
  border-radius: 4px;
}
.M-hicon {
  color: white;
  font-size: 14px;
}

.M-forter {
  width: 100%;
  flex: 1;
  background: #f0f0f0;
  /* display: flex;
        flex-direction: column-reverse; */
}
.M-forter ul {
  width: 100%;
  height: 100%;
  display: flex;
  /* flex-direction: column-reverse; */
  flex-wrap: wrap;
}
.M-forter ul li {
  width: 50%;
  height: 50%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 12px;
}
.M-forter .M-icon {
  font-size: 20px;
  color: #87ceeb;
}
.M-forter ul li span{
  padding-top: 10px;
}
</style>


