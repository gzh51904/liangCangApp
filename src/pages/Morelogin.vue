<template>
    <div class="login">
        <div class="loginTop">
            <mt-header class="loginH icon" title="登录">
                <router-link to="/login" slot="left">
                    <mt-button class="icon moreBack" icon="back"></mt-button>
                </router-link>
            </mt-header>
        </div>
        <div class="loginMain">
            <div class="lmTop">
                <p>
                    <img src="../img/111_r2_c2.png" alt="">
                </p>
            </div>
            <div class="loginForm">
                <form class="formOne formCon" action="">
                    <label for=""><i class="iconfont icon-shouji"></i></label>
                    <input placeholder="手机号" type="text">
                </form>
                <form class="formTwo formCon" action="">
                    <label for=""><i class="iconfont icon-yanzhengma"></i></label>
                    <input placeholder="密码" type="text">
                </form>
                <div class="loginL">
                    <span class="loginFont">登录</span>
                </div>
            </div>
            <!-- <div class="loginL">
                登录
            </div> -->
        </div>
        <div class="loginFooter">
            <div class="sigma-content">
                <div class="sigma-middle-line">
                    <span class="sigma-line-text">更多登录方式</span>
                </div>
            </div>
            <div class="loginbottom">
                <ul class="more-login-ul">
                    <li>哈</li>
                    <li>哈</li>
                    <li>哈</li>
                    <li>哈</li>
                </ul>
            </div>
        </div>
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
    ul li{
        list-style: none;
    }
    body,html{
        width: 100%;
        height: 100%;
    }
    .login{
        width: 100%;
        height: 100%;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
    }
    .loginTop{
        height: 6%;
        background: black;
    }
    .loginH{
        background: white;
        width: 100%;
        height: 100%;
    }
    .icon{
        color: black;
        font-weight: 500;
    }

    /* 中部 */
    .loginMain{
        display: flex;
        flex-direction: column;
        height: 35%;
    }
    .mlabel{
        font-size: 12px;
        color: red;
    }
    /* 头像 */
    .lmTop{
        height: 30%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .lmTop p{
        width: 50px;
        height: 50px;
        margin-top: 20px;
    }
    .lmTop img{
        width: 100%;
        height: 100%;
    }
    .loginForm{
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
    }
    .formCon{
        border-bottom: 1px solid black;
        width: 94%;
        height: 30px;
        line-height: 30px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    table{
        font-size: 16px;
        width: 16px;
        height: 30px;
    }
    .loginForm input{
        flex: 1;
        width: 80%;
        height: 16px;
        border:0 none;
        padding:0;
        margin:0;
        outline-style:none;
        margin-left:6px;
    }
    .formTwo{
        margin-top: 20px;
    }
    .formTwo input{
        margin-right: 6px;
    }
    .formTwo p{
        font-size: 12px;
        line-height: 20px;
        text-align: center;
        width: 80px;
        height: 20px;
        border: 1px solid black;
        border-radius: 2px;
    }
    .loginForm  input::-webkit-input-placeholder{
        font-size: 10px;
    }
    .loginL{
        margin-top: 20px;
        width: 94%;
        height: 30px;
        background: black;
        text-align: center;
        line-height: 30px;
    }
    .loginFont{
        color: white;
    }
    .one{
        text-align: center;
    }
    /* 尾部 */
    .loginFooter{
        flex: 1;
        font-size: 10px;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        padding-bottom: 70px;
    }
    .sigma-content{
        width: 94%;
        text-align: center;
        background-color: #fff;
    }
    .sigma-middle-line:before{
        content: '';
        display: block;
        height: 0.5px;
        width: 100%;
        background-color: #999;/*颜色需与主题大背景色一致*/ 
        position: relative;
        top: 10px;/*调节线高*/
        left: 0;
    }
    .sigma-line-text{
        display: inline-block;
        background: #fff;
        padding: 0 18px 0 18px;
        position: relative;
        font-size: 12px;
        font-weight: 500;
        margin-bottom: 10px;
    }
    .loginbottom{
        width: 94%;
        height: 100px;
        /* background: #999; */
    }
    .moreBack{
        font-size: 12px;
    }
    .more-login-ul{
        display: flex;
        justify-content: space-around;
    }
    .more-login-ul li{
        width: 60px;
        height: 60px;
        background: #999;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .loginTop .mint-header-button{
        height: 100%;
    }
</style>
