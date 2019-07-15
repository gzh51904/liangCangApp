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
                    <input ref="phone" placeholder="手机号" type="text">
                </form>
                <form class="formTwo formCon" action="">
                    <label for=""><i class="iconfont icon-yanzhengma"></i></label>
                    <input ref="password" placeholder="密码" type="text">
                </form>
                <div class="loginL" @click="submitForm()">
                    <span class="loginFont">登录</span>
                </div>
            </div>
        </div>
        <div class="loginFooter">
            <div class="sigma-content">
                <div class="sigma-middle-line">
                    <span class="sigma-line-text">更多登录方式</span>
                </div>
            </div>
            <div class="loginbottom">
                <ul class="more-login-ul">
                    <li>
                        <i class="iconfont more-login-icon icon-weibo"></i>
                    </li>
                    <li>
                        <i class="iconfont more-login-icon icon-dengluweixin53a657
"></i>
                    </li>
                    <li>
                        <i class="iconfont more-login-icon icon-qq"></i>
                    </li>
                    <li>
                        <i class="iconfont more-login-icon icon-douban"></i>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    methods:{
        submitForm(){
            let phone = this.$refs.phone.value;
            console.log(phone);
            let password = this.$refs.password.value;
            if(phone) {
                //不为空：正则  1开头 + 3-9第二位+  9个数字
                var reg = /^1[3-9]\d{9}$/;
                var res = reg.test(phone);
                if(res) {
                    //正则匹配成功
                    this.$axios.get("http://localhost:1904/login",{
                        params:{
                            phone,
                            password
                        }
                    }).then(({data}) =>{
                        console.log("data",data); 
                        if(data.length > 0){
                            localStorage.setItem('Authorization',data);
                            this.$router.replace({name:'Mine'});//通过name跳转路由
                        }
                    })
                    
                }else{
                    console.log(333);
                    
                }
            }else{
                alert('请输入手机号');
                console.log(555);
            }
        }
    }
}
</script>

<style>
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
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .loginTop .mint-header-button{
        height: 100%;
    }
    .loginbottom .more-login-icon{
        font-size: 38px;
    }
    .icon-douban{
        margin-top: -6px;
    }
</style>
