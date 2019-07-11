<template>
    <div class="M-app">
        <div class="M-top">
            <h1>我的账号</h1>
            <p>
                <i class="iconfont icon-qianbao"></i>
            </p>
        </div>
        <div class="M-main"></div>
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
        height: 6%;
        display: flex;
        align-items: center;
        justify-content: center;
        
    }
    .M-top h1{
        font-size: 12px;
        color:white;
        /* line-height: 40px; */
    }
    .M-top p{
        text-align: right;
        line-height: 40px;
        align-items: flex-end;
    }
    .icon-qianbao{
        color: white;
    }

    .M-main{
        width: 100%;
        height: 35%;
        background: pink;
    }

    .M-forter{
        width: 100%;
        flex: 1;
        background: #ccc;
    }
</style>


