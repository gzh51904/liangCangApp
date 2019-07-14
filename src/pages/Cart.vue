<template>
  <div id="content">
    <header>
      <div class="c_title">
        <span>购物车</span>
      </div>
      <div class="c_edit">编辑</div>
    </header>
    <main class="c_main">
      <div class="c_context">
        <!-- <img src="../img/goodscart.png" style="width:214px;height:161px;margin-top:200px;"/> -->
         <ul>
           <!-- 遍历循环 -->
         <li v-for="(item,index) in goodslist" :key="index">
          <el-col :span="2">
            <div class="grid-content bg-purple bg-purple2"  style="line-height:80px">
              <span class="tui-checkbox" :class="{'tui-checked':item.checked}" @click="check(item)" />
            </div>
          </el-col>
           <el-col :span="6">
            <div class="grid-content bg-purple bg-purple2">
             <img :src="item.imgurl"/>
            </div>
          </el-col>
          <!-- 加减 -->
           <el-col :span="12">
            <div class="grid-content bg-purple bg-purple2">
            <p class="selectnum">
              <span class="ico_sub" @click="changeNum(item,-1)">-</span>
    					<input type="number" :value="item.number" >
    					<span class="ico_plus" @click="changeNum(item,1)">+</span>
            </p>
            <p style="margin-top:2px;">{{item.title}}</p>
            <p class="price">{{(item.price).toFixed(2)}}</p>
            </div>
          </el-col>
          <!-- 删除 -->
           <el-col :span="4">
            <div class="grid-content bg-purple bg-purple2 del" @click="remove(item.id,index)">
             删除
            </div>
          </el-col>
        </li>
      </ul>
      </div>
    </main>
    <!-- 购物车底部 -->
    <div class="c_cart">
    <el-row>
      <el-col :span="8">
        <div class="grid-content bg-purple bg-purple2 checkall_button"  style="font-size:16px;">
         <span class="tui-checkbox" :class="{'tui-checked':checkAllFlag}" @click="checkAll()" /><span>全选</span> 
        </div> 
      </el-col>
      <el-col :span="8">
        <div class="grid-content bg-purple bg-purple2">
          <!-- 总价 -->
          <span style="font-size:14px;">总计<strong>:</strong></span><span class="span">{{totalAll}}</span>
        </div>
      </el-col>
      <el-col :span="8">
        <div class="grid-content bg-purple-light">结算</div>
      </el-col>
    </el-row>
    </div>
  </div>
</template>

<script>

import {MessageBox} from 'mint-ui'

export default {
   data(){
     return {
       total: 0,
       totalAll: 0,
       checkAllFlag: false,
       seen: false,
       delFlag: true,
       goodslist:[{
         id:1,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:2,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:3,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:4,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:5,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:6,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       },{
         id:7,
         imgurl:"img/test.jpg",
         title:"毛毛球",
         price:66.00,
         number:2
       }]
   
     }
   },
   created(){
     console.log(this)
         this.goodslist.map(item=>{
           item.imgurl=require('../'+item.imgurl);
           return item;
         })
    },
    methods:{
      del(id){
        this.goodslist=this.goodslist.filter(item=>item.id!=id);
      },
      //改变商品数量
      changeNum:function (item,flag) {
        if (flag>0) {
        item.number++;
        }else{
        item.number--;
        if(item.number<1){
        item.number = 1;
        }
      }
      this.totalMoney();
      },
      //是否选中
      check:function (item) {
        if(typeof item.checked == 'undefined'){
        this.$set(item,"checked",true);
        //局部为item添加“checked”，值为true
        }else{
        item.checked = !item.checked;
        }
        this.totalMoney();
      },
      //是否全选
      checkAll () {
        var self = this;
        // console.log(self)
        if(self.checkAllFlag){
          this.goodslist.forEach(function(value,index){
          value.checked = false
          });
        self.totalAll=0;
        self.checkAllFlag=false;
        }else{
        // value.checked = self.checkAllFlag;
        this.goodslist.forEach(function(value,index){
        self.$set(value,"checked",true)  
        });
        self.checkAllFlag=true;
        this.totalMoney();
        }
      },
    //结算选中商品的价格
      totalMoney:function () {
        //初始化总价
        this.totalAll = 0;
        var self =this;
          //通过foreach循环判断是否被选中
        this.goodslist.forEach(function(value,index){
        if(value.checked){
          self.totalAll += value.price * value.number;
        }
        });
      },
      // 删除商品
		  remove(id,index){
        MessageBox.confirm('',{
          title:'',
          message:'确定删除该商品吗？',
          confirmButtonText:'确定',
          cancelButtonText:'取消'
        }).then(action => {
          if (action == 'confirm') {
            // 刷新类表
            this.getList(id);
            // 取消全选
            this.checkAll(false);
          }
        }).catch(error =>{});
      },
      getList(id){
        this.goodslist=this.goodslist.filter(item=>item.id!=id);
        this.totalMoney();
      }
    },
    mounted(){
      this.getList()
    }
};
</script>

<style lang="scss">
html,body{
  height:100%; 
}
*{
  padding:0;
  margin:0;
}
#content{
  display: flex;
  flex-direction: column;
}

#content{
  header{
    display: flex;
    position:fixed;
    top:0;
    height:40px;
    line-height:40px;
    width:100%;
    background:rgb(255, 255, 255);
    .c_edit{
      flex:2;
      font-size:14px;
      color:rgb(102, 141, 224);
      width:60px;
      position: absolute;
      right:0;
      text-align:center;
    }
    .c_title{
      flex:8;
      text-align:center;
    }
  }
}

#content{
  .c_main{
    flex:1;
    overflow-x:hidden;
    overflow-y:auto;
    .c_context{
      height:600px;
      width:100%;
      overflow-x:hidden;
      overflow-y:auto;
      text-align:center;
      background: rgb(244, 245, 237);
      margin-top:30px;
      padding-top:10px;
      ul{
        margin-bottom:64px;
      }
      ul li{
      height:80px;
      background:#fff;
      margin-top:10px;
      .selectnum input{
        background:#fff;
        text-align: center;
        font-size:14px;
        border:none;
        border:1px solid #cccc;
        height:20px;
        width:60px;
        vertical-align: middle;
      }
      .selectnum span{
        display:inline-block;
        height:22px;
        width:22px;
        background:#000;
        color:#fff;
        vertical-align: middle;
        line-height: 22px;
      }
      img{
        height:76px;
        width:80px;
      }
      .price{
        color:rgb(102, 141, 224);
      }
      .price:before{
        content: '￥';
      }
      .del{
        height:80px;
        background:rgb(102, 141, 224);
        line-height: 80px;
        color:#fff;
      }
      }
    }
  }
}

#content{
  .c_cart{
    height:50px;
    position:fixed;
    bottom:41px;
    width:100%;
    z-index: 2;
    line-height: 50px;
    background:#fff;
    .el-row {
      margin-bottom: 20px;
      &:last-child {
        margin-bottom: 0;
      }
    }
     .bg-purple-dark {
    background:#fff;
    }
    .bg-purple {
      background: #fff;
      .el-radio{
        font-size:16px !important;
      }
      .span{
        font-size:20px;
        color:rgb(102, 141, 224);
      }
      .span::before{
        content: '￥';
        padding-left:4px;
        font-size:20px;
        color:rgb(102, 141, 224);
      }
    }
    .bg-purple2{
      height:50px;
      line-height: 50px;
    }
    .bg-purple-light {
      background: #000;
      color:#fff;
      text-align: center;
    }
    .grid-content {
      // border-radius: 4px;
      min-height: 50px;
    }
    .row-bg {
      height:50px;
      background-color: #f9fafc;
    }
  }
}

.checkall_button{
  text-align:center;
  span{
    font-size:16px;
    display:inline-block;
    vertical-align: middle;
    margin-left:6px;
  }

}

  .tui-checkbox {
    width:20px;
    height:20px;
    background-color:#ffffff;
    border:solid 1px #dddddd;
    -webkit-border-radius:50%;
    border-radius:50%;
    font-size:0.8rem;
    margin:0;
    padding:0;
    position:relative;
    display:inline-block;
    vertical-align:middle;
    cursor:default;
    -webkit-appearance:none;
    -webkit-user-select:none;
    user-select:none;
    -webkit-transition:background-color ease 0.1s;
    transition:background-color ease 0.1s;
  }
  .tui-checked {
	background:#1673ff
  }
  .tui-checked::after {
    content:'';
    top:5px;
    left:5px;
    position:absolute;
    background:transparent;
    border:#fff solid 2px;
    border-top:none;
    border-right:none;
    height:6px;
    width:10px;
    -moz-transform:rotate(-45deg);
    -ms-transform:rotate(-45deg);
    -webkit-transform:rotate(-45deg);
    transform:rotate(-45deg);
  }

// .c_cart{
//   .checkall{
//     border-radius:5px;
//   }
// }
//  .el-radio__label .c_radio{
//    font-size:20px;
//  }

</style>
