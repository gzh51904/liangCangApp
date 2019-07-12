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
        <img src="../img/goodscart.png" style="width:214px;height:161px;margin-top:200px;"/>
      </div>
    </main>
    <div class="c_cart">
    <el-row>
      <el-col :span="8">
        <div class="grid-content bg-purple"  style="font-size:16px;">
         <input type="checkbox" class="checkall" id="checkall" /><label for="checkall"></label>全选 
        </div> 
      </el-col>
      <el-col :span="8">
        <div class="grid-content bg-purple">
          <span style="font-size:14px;">总计:</span><span class="span">0</span>
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
export default {
   
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
      text-align:center;
      background: rgb(244, 245, 237);
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

// .c_cart{
//   .checkall{
//     border-radius:5px;
//   }
// }
//  .el-radio__label .c_radio{
//    font-size:20px;
//  }

</style>
