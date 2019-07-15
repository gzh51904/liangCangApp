
<template>
  <div id="m_content">
    <header class="m_head">
      <div class="m_left">JUL.09</div>
      <div class="m_title">
        <span>杂志</span>
        <i class="el-icon-caret-bottom"></i>
      </div>
    </header>
    <main class="m_main">
        <ul>
           <li v-for="item in list" :key="item.title">
          <p class="m_captions" >-&nbsp;{{item.date}}&nbsp;-</p>
          <div class="m_text" :style="{backgroundImage:`url(${item.imgurl})`}">
            <p class="m_p" style="margin-bottom:4px;">{{item.title}}</p>
            <p class="m_span"><span>-&nbsp;{{item.type}}&nbsp;-</span></p>
          </div>
          </li>
        </ul>
    </main>
  </div>
  
</template>

<script>
  export default {
    data(){
      return {
        list:[{
          title:"设计师翁昕煜眼中的好设计是什么样的？",
          imgurl:"https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3835_.jpg?_t=1562661767",
          type:"视频",
          date:'JUL.09'
        },{
          title: "瑞典的垃圾已经不够用了!",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3841_.jpg?_t=1562838738",
          type: "文化",
          date:'JUL.08'
        },{
          title:  "难怪YSL会爱上马拉喀什",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3825_.jpg?_t=1562061325",
          type: "文化",
          date:'JUN.30'
        },{
          title: "迈克尔·杰克逊被误解的一生。",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3824_.jpg?_t=1562059488",
          type: "文化",
          date:'JUN.26'
        },{
          title: "找个与世隔绝的角落发呆",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3822_.jpg?_t=1562056011",
          type: "文化",
          date:'JUN.23'
        },{
          title:  "MUJI，真的啥都敢卖！",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3808_.jpg?_t=1561002404",
          type: "文化",
          date:'JUN.20'
        },{
          title:  "21世纪最著名的42位建筑师，你认识几位？",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3799_.jpg?_t=1560833316",
          type: "建筑",
          date:'JUN.18'
        },{
          title:   "16岁的诺贝尔奖提名，向全世界喊话",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3800_.jpg?_t=1560842966",
          type: "文化",
          date:'JUN.13'
        },{
          title:   "地球人最独特的博物馆，在月球上",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3801_.jpg?_t=1560843828",
          type: "文化",
          date:'JUN.12'
        },{
          title:   "其实，我们应该好好做梦",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3802_.jpg?_t=1560844430",
          type: "文化",
          date:'JUN.09'
        },{
          title:    "东京和果子，尝一口四季的俳句",
          imgurl: "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3782_.jpg?_t=1559691141",
          type: "美食",
          date:'JUN.02'
        },{
          title:   "麦兜的故事，长成大人后才懂",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3783_.jpg?_t=1559691932",
          type: "文化",
          date:'JUN.01'
        },{
          title:    "宜家新出13款神器，帮助残障人士",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3770_.jpg?_t=1559204831",
          type: "文化",
          date:'MAY.30'
        },{
          title:    "2019戛纳电影节20部获奖影片，拯救片荒的你",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3769_.jpg?_t=1559203606",
          type: "文化",
          date:'MAY.29'
        },{
          title:    "我们所迷恋的王家卫",
          imgurl:  "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3768_.jpg?_t=1559202772",
          type: "文化",
          date:'MAY.24'
        },{
          title:    "\"老板，来瓶啤酒，能冲胶卷的那种\"...??what?!",
          imgurl:   "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3767_.jpg?_t=1559200537",
          type: "文化",
          date:'MAY.23'
        },{
          title:    "羊羹、刨冰、琥珀流し...京都甜品店巡礼",
          imgurl:   "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3766_.jpg?_t=1559198908",
          type: "文化",
          date:'MAY.22'
        },{
          title:     "春天不是读书天（今天也不是）",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3756_.jpg?_t=1558365835",
          type: "文化",
          date:'MAY.20'
        },{
          title:     "有些故事就像那时的天色，再也不会有了",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3748_.jpg?_t=1558357819",
          type: "文化",
          date:'MAY.19'
        },{
          title:     "R.I.P. 建筑师贝聿铭，享年102岁（ 附作品集）",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3749_.jpg?_t=1558358367",
          type: "文化",
          date:'MAY.18'
        },{
          title:     "韦斯·安德森的电影，你可能还不知道这些",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3750_.jpg?_t=1558359890",
          type: "文化",
          date:'MAY.16'
        },{
          title:       "她把“孤独”设计到房子里",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3751_.jpg?_t=1558360679",
          type: "空间",
          date:'MAY.12'
        },{
          title:      "喵！吸猫迷影史！",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3752_.jpg?_t=1558361293",
          type:  "文化",
          date:'MAY.09'
        },{
          title:      "文德斯终于要来中国了，你抢到票了吗？",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3753_.jpg?_t=1558362742",
          type: "文化",
          date:'MAY.08'
        },{
          title:     "濑户内海的惊喜，从一家海上酒店说起",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3726_.jpg?_t=1557131070",
          type: "文化",
          date:'MAY.06'
        },{
          title:     "102岁的建筑大师，长寿的秘诀只有五个字",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3754_.jpg?_t=1559690485",
          type: "文化",
          date:'APR.26'
        },{
          title:     "老板，来份报纸，成人不宜的那种",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3755_.jpg?_t=1558365253",
          type: "文化",
          date:'PAR.22'
        },{
          title:      "不再谈“值不值得去”时，才遇见真正的镰仓",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3698_.jpg?_t=1555572199",
          type: "文化",
          date:'PAR.18'
        },{
          title:     "800多岁的巴黎圣母院，什么没经历过？",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3697_.jpg?_t=1555571613",
          type: "文化",
          date:'PAR.17'
        },{
          title:     "蒋方舟：一个人生活，自由大一点",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3680_.jpg?_t=1554912951",
          type: "文化",
          date:'PAR.13'
        },{
          title:     "3年了，整个设计界都在等待这部纪录片！",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3664_.jpg?_t=1554101645",
          type: "文化",
          date:'MAR.27'
        },{
          title:     "在世界最Cool的机场，只期待飞机晚点",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3656_.jpg?_t=1553586918",
          type: "文化",
          date:'MAR.26'
        },{
          title:      "海边，他养了一群吃风的怪兽",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3645_.jpg?_t=1553134801",
          type: "文化",
          date:'MAR.21'
        },{
          title:     "2019 最野的音乐节都在这里了",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3644_.jpg?_t=1553044085",
          type: "文化",
          date:'MAR.20'
        },{
          title:      "陪儿子买球鞋，每晚检查作业，这是赫本的普通一天",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3638_.jpg?_t=1552893497",
          type: "文化",
          date:'MAR.18'
        },{
          title:     "京都好铺，慢慢逛、细细看",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3637_.jpg?_t=1552892879",
          type: "文化",
          date:'MAR.17'
        },{
          title:      "乐队都怎么起名字的？",
          imgurl:     "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3636_.jpg?_t=1552552224",
          type: "文化",
          date:'MAR.14'
        },{
          title:     "三月，给植物一点颜色看看",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3623_.jpg?_t=1552270520",
          type: "文化",
          date:'MAR.11'
        },{
          title:      "“日本建筑之王”，获2019普利兹克奖",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3617_.jpg?_t=1551922883",
          type: "文化",
          date:'MAR.07'
        },{
          title:     "请问，你是人吗？",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3616_.jpg?_t=1551843786",
          type: "文化",
          date:'MAR.06'
        },{
          title:      "不可错过，Christian Dior最大回顾展",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3610_.jpg?_t=1551671311",
          type: "文化",
          date:'MAR.04'
        },{
          title:      "再不请假，今年的樱花就追不上了",
          imgurl:    "https://imgs-qn.iliangcang.com/ware/appimg/topic/cover/3609_.jpg?_t=1551670091",
          type: "文化",
          date:'MAR.03'
        }]
      }
    }
  }
</script>

<style>
html,body{
  height:100%;
}
*{
  padding:0;
  margin:0;
}

ul li{
  list-style: none;
}
#m_content{
  height:100%;
  display: flex;
  flex-direction: column;
}
.m_head{
  height:40px;
  width:100%;
  background:#fff;
  display:flex;
  position:fixed;
  top:0;
  line-height: 40px;
}
.m_left{
  flex:2;
  padding:0px 10px;
  position: absolute;

  text-align: center;
}
.m_title{
  flex:8;
  text-align:center;
}
.m_main{
  /* position:relative; */
  flex: 1;  
  overflow-x: hidden;
  overflow-y: auto;
  margin-bottom: 40px;
}
.m_main ul{
  column-count: 1;
}
.m_main figure{
  break-inside: avoid;
}
.m_main .m_captions{
  color:#7299d4;
  height:24px;
  line-height: 24px;
  font-size:14px;
  text-align:center;
}
.m_main .m_text {
    color:#fff;
    height:160px;
    text-align:center;
    padding-top:60px;
    width:100%;
    background-size:cover;
}
.m_main .m_text .m_p{
  font-size:14px;
  color:#fff;
}
.m_main .m_text .m_span{
  font-size:12px;
}
footer{
  height:30px;
  width:100%;
  background: #fff;
  position: fixed;
  bottom:0;
}
</style>


