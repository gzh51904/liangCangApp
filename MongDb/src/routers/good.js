// 引入express
const express = require('express');
// 引入路由
const Router = express.Router();

/**
 * 数据库的操作
 * 1.链接数据库
 * 2.增删改查
 */
const mysql = require('mysql');
 //创建连接对象，并配置参数
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'myitem'
});

//或许所有商品
Router.get('/', (req, res) => {
    // 读取数据并返回数据
     // 连接数据库
    connection.connect();

    // 查询数据库
    connection.query('select * from ershouwupinxinxi', function (error, results, fields) {
        if (error) throw error;
        // 关闭连接,释放资源
        connection.end();
        console.log(1);
        
        console.log(results);
        
        res.send(results);
    });

    
})
// 获取某个文件
Router.get('/:id', (req, res) => {
    let {id} = req.params;
    console.log("id",req.params);

    // 读取数据并返回数据
     // 连接数据库
     connection.connect();

     // 查询数据库
     connection.query(`select * from ershouwupinxinxi id=4`, function (error, results, fields) {
         if (error) throw error;
         // 关闭连接,释放资源
         connection.end();
         console.log(2);
         
         console.log(results);
         
         res.send(results);
     });
})
//添加某个商品
Router.post('/:id', (req, res) => {
    let {id} = req.params;
    console.log(req.params);
    res.send({
        code: 1000,
        data: [],
        msg: `添加第id=${id}个商品`
    })
})
// 删除某个商品的请求用delete
Router.delete('/:id', (req, res) => {
    let {id} = req.params;
    console.log(req.params);
    res.send({
        code: 1000,
        data: [],
        msg: `删除第id=${id}个商品`
    })
})
// 更新某个文件
Router.put('/:id', (req, res) => {
    let {id} = req.params;
    console.log(req.params);

    // console.log(req.body);
    
    res.send({
        code: 1000,
        data: [],
        msg: `修改第id=${id}个商品`
    })
})

module.exports = Router;