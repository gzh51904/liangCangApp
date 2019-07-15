//引入express
const express = require('express');

//引入路由
const Router = express.Router();

//以路由为路径
const goodRouter = require('./good');
const regRouter = require('./reg');
const loginRouter = require('./login');

Router.use(express.urlencoded(), express.json());
// CORS的跨域

const allowOrigin = ['http://127.0.0.1:1904', 'http://localhost:8080','http://localhost:1904'];
Router.use((req, res, next) => {
    //req.headers 包含前端发回来的请求信息，包含host；origin等等
    // console.log(req.headers);
    //判断访问的域名是否在allowOrigin中
    let idx;
    let has = allowOrigin.some((item, i) => { //遍历判断过滤
        // console.log("item,i:", item, i);
        idx = i;
        return item.includes(req.headers.origin); //有就返回true
    })
    if (has) { //只写变量代表true
        // 1设置跨域响应头 Access-Control-Allow-Origin： 访问控制允许路由 *允许全部的意思
        res.header("Access-Control-Allow-Origin", "*");
        //2请求头里必须包含以下的信息才能跨域 Access-Control-Allow-Headers：访问控制允许请求头
        res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
        //3只允许以下 PUT,POST,GET,DELETE,OPTIONS等 ajax 请求 Access-Control-Allow-Methods：访问控制允许方法
        res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    }
    // CORS跨域请求中的OPTIONS预请求
    if(req.method === "OPTIONS"){
        res.sendStatus(200);
    }else{
        next();
    }
})

//引入各个的信息
Router.use('/good', goodRouter);
Router.use('/reg', regRouter);//多了个点啊'./spider'；；；正确写法: '/spider'
Router.use('/login', loginRouter);

// commonJs模块化
/*module.exports 对象是由模块系统创建的。
在我们自己写模块的时候，需要在模块最后写好模块接口，
声明这个模块对外暴露什么内容，
module.exports 提供了暴露接口的方法。*/
module.exports = Router;