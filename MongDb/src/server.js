// 1、引入express
const express = require('express');

// 3.1引入文件，可以简化成直接引入
const {PORT} = require('./config');

// 2、利用express模块创建一个服务器
const app = express();

// 5.引入路由
let allRouter = require('./routers');
app.use(allRouter);



// 4、创建一个静态资源服务器
app.use(express.static('./'/*,可以写参数{maxAge,index:login.html}第一个参数是静态资源服务器存在时间，第二个是改主页*/));

// 3、为了方便将端口号写在文件外，config.json里
app.listen(PORT,()=>{
    console.log("localhost:1904 is running");
})

