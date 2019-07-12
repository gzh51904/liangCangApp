<template>
    <div class="M-app">
        <div class="M-top">
            <h1>我的账号</h1>
            <p>
                <i class="iconfont icon-fangdajing"></i>
            </p>
        </div>
        <div class="M-header"></div>
        <div class="M-forter"></div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body,html{
        width: 100%;
        height: 100%;
    }
    .M-app{
        width: 100%;
        height: 100%;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
    }
    
/* 顶部 */
    .M-top{
        background: black;
        height: 40px;
        text-align: center;
        position: relative;
    }
    .M-top h1{
        font-size: 12px;
        color:white;
        line-height: 40px;
		align-self: flex-end;
    }
    .M-top p{
        text-align: right;
        line-height: 40px;
        position: absolute;
        right: 10px;
        top: 0px;
    }
    .icon-fangdajing{
        color: white;
    }

   .M-header{
        width: 100%;
        height: 35%;
        background: skyblue;
        position: relative;
    }
    .M-img{
        width: 80px;
        height: 80px;
        border-radius: 50%;
        background: pink;
        position: absolute;
        top: 10%;
        left: 50%;
        margin-left: -40px;
        overflow: hidden;
    }
    .M-img img{
        width: 100%;
        height: 100%;
    }
    /* 订单和红包 */
    .M-mine{
        width: 100%;
        height: 40px;
        padding-top: 200px;
        z-index: 1000;
    }
    .M-mine ul{
        /* line-height: 40px; */
        display: flex;
        justify-content: space-around;
    }
    .M-mine ul li span{
        margin-left: 6px;
        font-size: 14px;
        color: white;
    }
    .M-mine ul li{
        width: 40%;
        height: 20px;
        text-align: center;
        line-height: 20px;
    }
    .icon-gouwuche{
        color: white;
        font-size: 14px;
    }

    .M-forter{
        width: 100%;
        flex: 1;
        background: #ccc;
    }
</style>


