// 引入express
const express = require('express');
// 引入路由
const Router = express.Router();
//console.log("登录");

const {mongo:{find}} = require('../db');

Router.get('/',async (req,res)=>{
    //console.log("req.query",req.query);
    
    let {phone,password} = req.query;//console.log(phone,password);
    

    let result = await find('user',{phone,password});
    // console.log("result",result);
    if(result.length > 0){
        res.send("yes");
    }
    
})

module.exports = Router;