
<template>
  <div id="m_content">
    <header class="m_head">
      <div class="m_left">JUN.24</div>
      <div class="m_title">
        <span>杂志</span>
        <i class="el-icon-caret-bottom"></i>
      </div>
    </header>
    <main class="m_main">
        <ul>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
           <li>
          <p class="m_captions" >-&nbsp;JUN.30&nbsp;-</p>
          <div class="m_text" style="background:url() yellowgreen;">
            <p class="m_p">春天不是读书天</p>
            <p class="m_span"><span>-&nbsp;文华&nbsp;-</span></p>
          </div>
          </li>
        </ul>
    </main>
  </div>
  
</template>

<script>
  export default {
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
    height:100px;
    text-align:center;
    padding-top:60px;
    width:100%;
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


