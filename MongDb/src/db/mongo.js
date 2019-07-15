const mongodb = require('mongodb');

const MongoClient = mongodb.MongoClient;

//引入配置文件
let {
  mongoUrl: url,
  dbName
} = require('../config.json');

const connect = () => {
  return new Promise((resolve, reject) => {
    MongoClient.connect(url,{useNewUrlParser: true},(err, client) => {
      //ps：MongoClient.connect:mongo委托.链接（）
      if (err) {
        return reject(err);
      };//throw err 抛出错误

      //链接数据库，无则自动链接
      let db = client.db(dbName);     //ps：dbName是后台数据库名
      // let col = db.collection('user');//ps：使用集合中的表user
      // //之后进行命令行操作
      // col.find();                     //ps：相当于：db.user.find(),查询这个user的所有数据
      // //将数据写入集合
      // let res = col.insertOne(data);

      resolve({db,client})
    })
  })
}

//封装增:加入数据库
exports.insert = (colName,data)=>{  //colName:集合得名字，data:数据
  return new Promise(async function(resolve,reject){
    //用法新知识await：等待promise对象的返回结果(不反回会一直等)
    //await使用条件：  必须放在async函数中 
    let {db,client} = await connect();  //ps:这一步，就获取上面的东西
    //获取集合
    let col = db.collection(colName);    
    //将数据(发送给后台的数据)写入集合         
    let res = col.insertOne(data);
    resolve(res);
    //将数据库关了，上面用client代理代开
    client.close();
  })
} 

//封装删:删除数据库
exports.delete = (colName,query)=>{  //colName:集合得名字，data:数据
  return new Promise(async function(resolve,reject){
    //用法新知识await：等待promise对象的返回结果(不反回会一直等)
    //await使用条件：  必须放在async函数中 
    let {db,client} = await connect();  //ps:这一步，就获取上面的东西
    //获取集合
    let col = db.collection(colName);    
    //将数据(发送给后台的数据)写入集合         
    let res = col.deleteMany(query);
    resolve(res);
    //将数据库关了，上面用client代理代开
    client.close();
  })
} 

// @改 : 修改一条数据
exports.update = (colName,query,data)=>{
  return new Promise(async (resolve,reject)=>{

      let {db,client} = await connect();

      // 获取集合
      let col = db.collection(colName);

      // 把数据写入集合
      let res = col.updateOne(query,{$set:data});

      resolve(res);

      client.close();
  })
}


// @查 : 查询一条或多条数据
exports.find = (colName,query,{limit,skip,sort}={})=>{//skip跳到第几条
  return new Promise(async (resolve,reject)=>{

    let {db,client} = await connect();

    // 获取集合
    let col = db.collection(colName);console.log('query',query);

    // 把数据写入集合
    let res = col.find(query);console.log('res',await res.toArray());
    

    //跳过的数量
    if(skip){
      res.res.skip(skip)
    }

    // 限制数量
    if(limit){
      res = res.limit(limit)
    }

    // 排序
    if(sort){
      res.res.skip(sort)
    }

    // res = res.toArray((err,result)=>{
    //   resolve(result);
    // })
    res = await res.toArray();

    resolve(res);

    client.close();
})
}