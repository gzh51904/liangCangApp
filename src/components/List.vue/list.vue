<template>
    <div class="listye">
        <div id="tab_center" style="margin-top: 0px;">
            <div style="width:100%;height:80px;"></div>
            <div style="font-size: 28px;text-align: center;color: #333333;height:68px;line-height: 68px">服装</div>
            <div id="sorlldiv" style="overflow-x: scroll;margin-left: 20px;width: 600px;white-space: nowrap;">
                <input type="hidden" name="cat_key" value="0">
                <div style="font-weight:bold;display: inline-block;margin-left: 40px;color: #000000;height: 60px;line-height: 60px;font-size: 24px; padding-bottom:0px; border-bottom:2px solid #000" onclick="c_cat('01120118')">女装</div>
                <div style="display: inline-block;margin-left: 40px;color: #999999;height: 60px;line-height: 60px;font-size: 24px" onclick="c_cat('01120122')">内衣</div>
                <div style="display: inline-block;margin-left: 40px;color: #999999;height: 60px;line-height: 60px;font-size: 24px" onclick="c_cat('01120257')">男装 </div>
                <div style="display: inline-block;margin-left: 40px;color: #999999;height: 60px;line-height: 60px;font-size: 24px" onclick="c_cat('01120121')">家居服</div>
                <div style="display: inline-block;margin-left: 40px;color: #999999;height: 60px;line-height: 60px;font-size: 24px" onclick="c_cat('01120255')">运动服 </div>
                <div style="display: inline-block;margin-left: 40px;color: #999999;height: 60px;line-height: 60px;font-size: 24px" onclick="c_cat('01120256')">童装</div>          
        </div>

        <div id="testDrag" style="position: fixed;z-index:65535;bottom: 80px;left: 535px;text-align: center;font-size: 14px;height: 104px;"></div>

        <div style="padding-bottom: 0px;margin-bottom: 0px;-webkit-overflow-scrolling: touch;">
            <div class="main_content" tyle="margin:0 auto;width:640px;background-color: #fafafa;border-top:solid 1px #eeeeee;min-height: 130%" id="main_content">
                <!--======main row one====-->
                <div style="margin-top:5px;width:640px;height:60px;border-top:1px solid #6B6B6B;border-bottom:1px solid #6B6B6B;margin:0 auto">
                    <div id="order_sale" style="float:left;height:60px;width:33%;line-height:60px;text-align:center;cursor:pointer;font-size:25px;color: #000000;" onclick="goodslist_order('2',1);">推荐
                    </div>
                    <div id="order_price" value="2" style="float:left;height:60px;width:33%;line-height:60px;text-align:center;cursor:pointer;" onclick="goodslist_order(2,2)">
                        <div id="price" style="float: left; font-size: 25px; margin-left: 73px; color: rgb(153, 153, 153);">价格
                        </div>
                        <div id="arrow" style="float: right; margin-right: 73px; margin-top: 20px;">
                            <div id="arrowup" style="height:7px;width:7px;line-height:7px;background:url('https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/27/27658.png') no-repeat;background-size:contain;"></div>
                            <div id="arrowdown" style="height:7px;width:7px;line-height:7px;background:url('https://imgs-qn.iliangcang.com/ware/sowhatimg/ware/orig/2/27/27659.png') no-repeat;background-size:contain;margin-top:6px"></div>
                        </div>
                    </div>
                    <div id="order_latest" style="float:left;height:60px;width:33%;line-height:60px;text-align:center;cursor:pointer;font-size:25px;color: #999999;" onclick="goodslist_order('5',3);">新品
                    </div>
                </div>
                
                <div class="main_row">
                    <dl class="dl_left" style="width:300px;"> 
                        <dt style="width:300px">
                            <div style="width:100%;height:300px;display:table-cell;vertical-align:top;">
                                <a href="/i/goods/?id=264167">
                                    <div style="max-height:300px;max-width:300px;position:absolute;overflow: hidden">
                                        <img class="box-border-top" src="https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264167.jpg?t=1553150011" width="100%">
                                    </div>
                                    <div style="position:relative;padding-left: 20px;"></div>
                                </a>
                            </div>
                        </dt>

                        <dt class="box-shadow-bottom" style="margin-left:1px;margin-top:-7px;height:280px;width:298px;">
                            <a href="/i/goods/?id=264167">
                                <div class="div_name" style="line-height:1.5;word-break:break-all;width:260px;height:29px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;">
                                    能燃脂瘦身的黑色闪电裤
                                </div>
                            </a>

                            <div class="" style="font-size: 20px;padding-top: 5px;padding-left: 16px;line-height:1.5;word-break:break-all;width:260px;height:29px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;">
                                黑科技瘦腿 舒适塑形还美
                            </div>
                            <div class="" style="color:#999999;font-size: 18px;padding-top: 10px;padding-left: 16px;line-height:1.5;word-break:break-all;width:260px;height:58px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;">
                                可外穿的时尚紧身裤，一穿即瘦，法国微胶囊，紧致嫩
                            </div>
                            <div class="div_brand">                            </div>
                                                        <div style="margin-top:5px;">
                                <div class="div_price">￥188</div>
                            </div>
                        </dt>
                    </dl>
                    <dl class="dl_right" style="width:300px">
                        <dt style="width:300px">
                            <div style="width:100%;height:300px;display:table-cell;vertical-align:top;">
                                <a href="/i/goods/?id=264664">
                                    <div style="max-height:300px;max-width:300px;position:absolute;overflow: hidden">
                                        <img class="box-border-top" src="https://imgs-qn.iliangcang.com/ware/goods/big/2/264/264664.jpg?t=1560509738" width="100%">
                                    </div>
                                    <div style="position:relative;padding-left: 20px;"></div>
                                <a>
                            </div>
                        </dt>

                        <dt class="box-shadow-bottom" style="margin-left:1px;margin-top:-7px;height:280px;width:298px;">
                            <a href="/i/goods/?id=264664">
                                <div class="div_name" style="line-height:1.5;word-break:break-all;width:260px;height:29px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;">
                                    蜜桃臀内裤
                                </div>
                            </a>

                            <div class="" style="font-size: 20px;padding-top: 5px;padding-left: 16px;line-height:1.5;word-break:break-all;width:260px;height:29px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;">
                                立刻拥有翘臀，光速瘦腿
                            </div>

                            <div class="" style="color:#999999;font-size: 18px;padding-top: 10px;padding-left: 16px;line-height:1.5;word-break:break-all;width:260px;height:58px;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;">
                                细化腰线，收腹提臀，精准塑形，立体翘臀，光速瘦腿
                            </div>

                            <div class="div_brand">                            

                            </div>
                            <div style="margin-top:5px;">
                                <div class="div_price">￥139</div>
                            </div>
                        </dt>                                                
                    </dl>
                </div>  
            </div>
            

            
        
    </div>
</template>

<script>
export default {};
</script>

<style>
</style>
