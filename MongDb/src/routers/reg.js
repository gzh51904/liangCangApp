// 引入express
const express = require('express');
// 引入路由
const Router = express.Router();
console.log("注册");

const {formData} = require('../utils');
// 引入mongo
const {insert,find} = require('../db/mongo');
// 添加用户
Router.post('/',async (req,res)=>{
    // insert('user',{})
    //async & await 实现：用同步的代码实现异步的操作
    //async & await 是：  ES7的知识
    let data = await insert('user',req.body);
    res.send(formData({data}));
})

module.exports = Router;