<template>
  <div class="tab-container">
      <!-- nav导航 -->
    <div class="nav">
      <mt-button class="nav-btn" size="small" @click.native.prevent="active = 'tab-container1'">商店</mt-button>
      <mt-button class="nav-btn" size="small" @click.native.prevent="active = 'tab-container2'">品牌</mt-button>
    </div>
    <!-- 内容区 -->
    <div class="page-tab-container neiRong">
      <mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
        <mt-tab-container-item id="tab-container1" class="contents">
            <!-- 左边滚动导航栏 -->
          <ul class="list" style="overflow-y:scroll;overflow-x:hidden">
            <li
              :class="{'tablsit':true,'font_w': isActive == index}"
              :index="item.path"
              v-for="(item,index) in lists"
              :key="index"
              @click="hands(index)" 
            >{{item.title}}</li>
            <!-- <div class="view">{{list.title}}</div> -->
          </ul>
          <!-- 右边对应分类 -->
          <div class="right_list">
            <!-- <p v-for="(item,index) in list" :key="index">{{item.title}}</p> -->
            <div style="overflow-y:scroll;overflow-x:hidden;background-color:#eeeeee" class="view_height">

                <div id="45second" class="right_dev" v-show="ss == 0">
                    <a href="http://www.iliangcang.com/i/topicapp/201705251854">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('45','家居')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29359.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px " >• 家居分类 •</div>
                        <div style="margin-left: -8px">
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450248">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29422.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">家具</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450047">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29425.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">居家日用</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450046">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29429.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">装饰摆件</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div><a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450048"><div><img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29427.png" width="60px" height="60px"></div><div style="text-align: center;margin-top: 7px;font-size: 12px">香薰香氛</div></a></div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450049">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29426.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">空气净化</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450050">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30408.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">收纳整理</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450051">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29419.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">床品布艺</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450225">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29423.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">家庭清洁</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450052">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29421.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">儿童家居</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450053">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29420.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">灯具</div>
                                    </a> 
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450234">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29424.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">家用电器</div>
                                    </a>
                                </div>
                            </div>
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00450238">
                                        <div>
                                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29428.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">植物花器</div>
                                    </a>
                                </div>
                            </div>
                            <div style="height: 98px;width:472px;float: left"></div>
                        </div>
                </div>
            
                <div style="display: none" id="62second" class="right_dev" v-show="ss == 1">
                    <a href="http://www.iliangcang.com/i/topicapp/201708280009">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('62','文具')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29365.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px">• 文具分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620063">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29450.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">办公用品</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620064">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29455.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">纸本</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620065">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29451.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">笔具</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620066">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29453.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">书签</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620235">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29452.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">红包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00620068">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29454.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">台历挂历</div>
                                </a>
                            </div>
                        </div>
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="69second" class="right_dev" v-show="ss == 2">
                    <a href="http://www.iliangcang.com/i/topicapp/201708213327">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('69','数码')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29362.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 数码分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690070">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29468.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">耳机</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690071">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29473.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">音箱</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690243">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29469.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手机壳</div>
                                </a>
                                </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690074">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29470.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手机配件</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690075">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29472.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">移动电源</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690242">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29474.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">智能设备</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690244">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29467.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">电脑配件</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00690245">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29466.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">车载配件</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="77second" class="right_dev" v-show="ss == 3">
                    <a href="http://www.iliangcang.com/i/topicapp/201805244709">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('77','玩乐')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30330.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 玩乐分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00770078">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29457.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">玩具</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00770079">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29458.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">玩偶</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00770080">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29459.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">益智棋牌</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="82second" class="right_dev" v-show="ss == 4">
                    <a href="http://www.iliangcang.com/i/topicapp/201805213611">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('82','餐厨')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30331.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 餐厨分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00820089">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29513.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">厨房清洁</div>
                                </a>
                           </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00820253">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29515.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">厨用电器</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00820254">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29516.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">锅</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="92second" class="right_dev" v-show="ss == 5">
                    <a href="http://www.iliangcang.com/i/topicapp/201804053433">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('92','美食')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30329.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 美食分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920093">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29433.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">美酒</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920095">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29435.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">零食</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920096">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29436.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">巧克力</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920098">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29434.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">咖啡</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920222">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29430.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">茶</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920239">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29432.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">健康养生</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=00920237">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29431.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">地方特产</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="112second" class="right_dev" v-show="ss == 6">
                    <a href="http://www.iliangcang.com/i/topicapp/201712042710">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('112','服装')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29358.png" width="252px" height="150px">
                        </div>
                    </a>
                        <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 服装分类 •</div>
                        <div style="margin-left: -8px">
                            <div style="margin-left: 32px;float: left;margin-top: 34px;">
                                <div>
                                    <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120118">
                                        <div><img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29503.png" width="60px" height="60px">
                                        </div>
                                        <div style="text-align: center;margin-top: 7px;font-size: 12px">女装</div>
                                    </a>
                                </div>
                            </div>
                                    
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120122">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29502.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">内衣</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120257">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29501.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">男装</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120121">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29500.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">家居服</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120255">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29505.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">运动服</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01120256">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29504.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">童装</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="129second" class="right_dev" v-show="ss == 7">
                    <a href="http://www.iliangcang.com/i/topicapp/201709210922">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('129','鞋包')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29366.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 鞋包分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290130">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29444.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">男鞋</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290131">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29445.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">女鞋</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290132">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29449.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">双肩包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290133">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29442.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">单肩包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290134">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29446.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">钱包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290135">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29448.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手提包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290137">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29447.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手拿包</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01290139">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29443.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">帆布袋</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
                
                <div style="display: none" id="141second" class="right_dev" v-show="ss == 8">
                    <a href="http://www.iliangcang.com/i/topicapp/201708104904">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('141','配饰')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29361.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 配饰分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div><a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410142">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29483.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">项链</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410143">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29476.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">戒指</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410144">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29475.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">耳饰</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410145">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29480.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手链手镯</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410147">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29479.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手表</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410148">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29484.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">眼镜</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410149">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29482.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">丝巾围巾</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01410152">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29481.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">袜子</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="154second" class="right_dev" v-show="ss == 9">
                    <a href="http://www.iliangcang.com/i/topicapp/201709303824">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('154','美护')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29360.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 美护分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540156">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29496.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">洗发护发</div>
                                </a>  
                            </div>
                                
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540157">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29493.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">身体护理</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540158">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29497.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">香水精油</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540159">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29485.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">唇部护理</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540160">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29494.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手工皂</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540161">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29499.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">指甲油</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540163">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29492.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">男士护肤</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540224">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29486.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">防晒霜</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540164">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29498.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">母婴专用</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540165">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29490.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">美容工具</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540223">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29491.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">面部护理</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540232">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29495.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">手足护理</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540236">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29487.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">化妆品</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540246">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29489.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">口腔清洁</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01540247">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29488.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">洁面</div>
                                </a>
                            </div>
                        </div>
                    
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="166second" class="right_dev" v-show="ss == 10">
                    <a href="http://www.iliangcang.com/i/topicapp/201801084956">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('166','出行')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29357.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 出行分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div><a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01660168">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29508.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">户外装备</div>
                                </a>
                            </div>
                        </div>   
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01660250">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29510.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">旅行收纳</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01660252">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29507.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">行李箱</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01660169">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29511.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">雨具</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01660170">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29506.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">出行工具</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="182second" class="right_dev" v-show="ss == 11">
                    <a href="http://www.iliangcang.com/i/topicapp/201712254959">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('182','图书')">
                                <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29363.png" width="252px" height="150px" > 
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 图书分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01820209">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29464.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">文学社科</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01820210">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29462.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">建筑艺术</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01820211">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29463.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">生活方式</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01820183">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29465.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">杂志期刊</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=01820212">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29461.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">儿童读物</div>
                                </a>
                            </div>
                        </div>
                    
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="214second" class="right_dev" v-show="ss == 12">
                    <a href="http://www.iliangcang.com/i/topicapp/201704074130">
                            <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('214','艺术')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29367.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 艺术分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02140216">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29441.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">装饰画</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02140217">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29437.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">雕塑</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02140218">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29438.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">摄影</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02140219">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29439.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">文化创意</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="279second" class="right_dev" v-show="ss == 13">
                    <a href="">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('279','水具')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30294.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 水具分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790270">
                                    <div><img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30017.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">水杯</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790271">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30018.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">水壶</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790272">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30019.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">保温杯</div
                                ></a
                            ></div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790276">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30016.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">茶具</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790277">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30020.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">咖啡器具</div>
                                </a>
                           </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790274">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30015.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">马克杯</div
                                ></a
                            ></div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790273">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30013.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">随行杯</div
                                ></a
                            ></div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=02790275">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30014.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">酒具</div>
                                </a>
                            </div>
                        </div>
                        <div style="height: 98px;width:472px;float: left"></div>
                    </div>
                </div>
            
                <div style="display: none" id="358second" class="right_dev" v-show="ss == 14">
                    <a href="">
                        <div style="margin-left: 24px;margin-top: 24px;" onclick="categoryBannerClick('358','运动')">
                            <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30296.png" width="252px" height="150px">
                        </div>
                    </a>
                    <div style="font-size: 12px;color: #666666;margin-top: 46px; margin-left:120px ">• 运动分类 •</div>
                    <div style="margin-left: -8px">
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=03580359">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30032.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">运动装备</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=03580360">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30034.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">运动服饰</div>
                                </a>
                            </div>
                        </div>
                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=03580361">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/30/30033.png" width="60px" height="60px">
                                    </div><div style="text-align: center;margin-top: 7px;font-size: 12px">运动器材</div>
                                </a>
                            </div>
                        </div>

                        <div style="margin-left: 32px;float: left;margin-top: 34px;">
                            <div>
                                <a href="/i/mob_goodslist/?act=category_goodslist&amp;cat_id=03580362">
                                    <div>
                                        <img src="https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/29/29432.png" width="60px" height="60px">
                                    </div>
                                    <div style="text-align: center;margin-top: 7px;font-size: 12px">健康轻食</div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="height: 150px;width:472px;float: left"></div>
                    </div>
                </div>
            
                </div>
            </div>
        </mt-tab-container-item>
        <!-- 品牌nav -->
        <mt-tab-container-item id="tab-container2" class="content">
            <!--品牌分类list  -->
          <ul class="pinPai">
            <router-link :to="{path:'/pinPai',query: {imgurl:pinPais[index].imgurl,title:pinPais[index].title}}" tag="li" class="tablsit" v-for="(item,index) in pinPais" :key="index" >
                <img class="ppimg" :src="item.imgurl" alt="">
                <span>{{item.title}}</span>
                <input class="gt" type="button" value="&gt;">
            </router-link>
          </ul>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
  </div>
</template>

<script>
export default {
  name: "page-tab-container",
  data() {
    return {
      lists: [
        {
          title: "家居",
          name: "jiaJu"
        },
        {
          title: "文具",
          name: "wenJu"
        },
        {
          title: "数码",
          name: "shuMa"
        },
        {
          title: "玩乐",
          name: "wanLe"
        },
        {
          title: "餐厨",
          name: "canChu"
        },
        {
          title: "美食",
          name: "meiShi"
        },
        {
          title: "服装",
          name: "fuZhuang"
        },
        {
          title: "鞋包",
          name: "xieBao"
        },
        {
          title: "配饰",
          name: "peiShi"
        },
        {
          title: "美护",
          name: "meiHu"
        },
        {
          title: "出行",
          name: "chuXin"
        },
        {
          title: "图书",
          name: "tuShu"
        },
        {
          title: "艺术",
          name: "yiShu"
        },
        {
          title: "水具",
          name: "shuiJu"
        },
        {
          title: "运动",
          name: "yunDong"
        }
        ],
      pinPais: [
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1633.jpg",
            title: "oceanrich欧新力奇"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1632.jpg",
            title: "REFA"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1631.jpg",
            title: "猫壹Necoichi"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1630.jpg",
          title: "XESS埃克塞斯"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1629.jpg",
            title: "虫虫特供队"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1628.jpg",
            title: "muid"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1623.jpg",
            title: "JENNIFER LYRA"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1627.jpg",
            title: "得体deti"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1626.jpg",
            title: "soodo上朵"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1622.jpg",
            title: "康宝娜"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1625.jpg",
            title: "LivingProof"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1624.jpg",
            title: "Brickspower"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1621.jpg",
            title: "盐木丰果"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1620.jpg",
            title: "北鼎"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1619.jpg",
            title: "一默"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1618.jpg",
            title: "菓然匠子"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1617.jpg",
            title: "ASVEL"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1616.jpg",
            title: "Lemnos"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1615.jpg",
            title: "NULINE"
        },
        {
            imgurl:"https://imgs-qn.iliangcang.com/ware/brand/1614.jpg",
            title: "EVO"
        }
      ],
      active: "tab-container1",
      ss: 0,
      isActive: 0
    };
  },
  methods: {
    hands(i) {
      this.ss = i;
      this.isActive = i;
    },
  }
};
</script>

<style lang="scss" scoped>
.tab-container {
  width: 100%;
  overflow: hidden;
  .item {
    display: inline-block;
  }

.nav {
  position: fixed;
  top: 50px;
  width: 100%;
  height: 46px;
  padding:0 10px;
  text-align: center;
  line-height: 46px;
  background: red;
  z-index: 100;
}
.nav-btn {
  display: inline-block;
  margin: 0 5px;
  border: 0px;
  color: black;
  background: #fff;
  box-shadow: none;
  &:active {
    color: black;
    border-bottom: 2px solid #000;
  }
}

  li {
    list-style: none;
  }

  .mint-tab-container-item {
    width: 100%;
  }
  .list {
    width: 30%;
    height: 570px;
    float: left;
    overflow-y: auto;
    overflow-x: hidden;
    li {
      height: 50px;
      text-align: center;
      line-height: 40px;
      background: #f5f5f5;
    }
    .font_w{
        font-weight: bold;
        color: black;
    }
  }
  .pinPai {
    width: 100%;
    li {
      width: 100%;
      height: 80px;
      background: #FFF;
      text-align: center;
      line-height: 80px;
    }
  }
}
.item {
  display: inline-block;
}


.neiRong {
  flex: 1;
  margin-top: 53px;
  overflow: hidden;
  .contents {
    flex: 1;
    margin-top: 0px;
    margin-bottom: 40px;
    background: #eeeeee;
    overflow-y: auto;
    overflow-x: hidden;
  }
}

.mint-button::after {
  background: #fff;
}
.right_list {
    width: 70%;
    height: 570px;
    float: right;
    overflow-y: scroll;
    .view_height{
        .right_dev{
            width:472px;
        }
    }
}
a {
    text-decoration: none;
    color: black;
}
.pinPai{
    position: relative;
    .ppimg{
        position: absolute;
        width: 80px;
        height: 80px;
        line-height: 80px;
        // margin-top: 10px;
        left: 20px;
    }
    .gt{
        position: absolute;
        right: 20px;
        width: 20px;
        height: 80px;
        font-size: 24px;
        border: 0;
        box-shadow: none;
        color: #292626;
        background-color: #ffffff
    }
}
</style>
