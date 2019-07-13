<template>
  <div class="page-navbar">
    <div class="myOrderTop">
        <mt-header class="settingsH" title="设置">
            <router-link to="/" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
            <router-link to="/" slot="right">
                <mt-button>客服</mt-button>
            </router-link>
        </mt-header>
    </div>
    <div class="myOrderfooter">
        <mt-navbar class="page-part" v-model="selected">
            <mt-tab-item id="1">全部</mt-tab-item>
            <mt-tab-item id="2">待付款</mt-tab-item>
            <mt-tab-item id="3">代发货</mt-tab-item>
            <mt-tab-item id="4">已发货</mt-tab-item>
            <mt-tab-item id="5">待评论</mt-tab-item>
            <mt-tab-item id="6">售后</mt-tab-item>
        </mt-navbar>

        <div class="myOrderfooterimg">
            <div class="orderOne">
                <img src="../img/dingdan.png" alt="">
                <p v-for="item in selected" :key="item.name">{{item.name}}</p>
            </div>
            
        </div>
    </div>
    
</div>
</template>

<script>
export default {
  name: 'page-navbar',

  data() {
    return {
      selected:[
          {
              name:'目前没有需要的全部订单哦',
          },
          {
              name:'目前没有需要的待付款订单哦',
          },
          {
              name:'目前没有需要的代发货订单哦',
          },
          {
              name:'目前没有需要的已发货订单哦',
          },
          {
              name:'目前没有需要的待评论订单哦',
          },
          {
              name:'目前没有需要的售后订单哦',
          }
      ]
    };
  }
};
</script>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    ul li{
        list-style: none;
    }
    body,html{
        width: 100%;
        height: 100%;
    }
    .myOrder{
        width: 100%;
        height: 100%;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
    }
    /* 头部 */
    .myOrderTop{
        height: 6%;
    }
    .settingsH{
        width: 100%;
        height: 100%;
    }
    .myOrderfooter{
        flex: 1;
    }
    /*  */
    .myOrderfooterimg{

    }
</style>
