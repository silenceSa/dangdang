<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'toolbar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/category/operbar.css">
	<script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
        	$(".sidebarcom-oper li").each(function(){
        		var className = $(this).attr("class");
        		$(this).hover(function(){
        		    $(this).attr("class",className+" curr");
        		},function(){
        		    $(this).attr("class",className);
        		});
        	});
        	
        	
        	$("#J_sidebar_ft").children().each(function(){
        		var className = $(this).attr("class");
        		$(this).hover(function(){
        		    $(this).attr("class",className+" curr");
        		},function(){
        		    $(this).attr("class",className);
        		});
        	});
        	
        	
        	
        });
    </script>


  </head>
  
  <body>
    <div id="J_sidebar" class="m-sidebarcom">
    <div class="sidebarcom-nav">
        <div id="J_sidebar_cnt" class="sidebarcom-nav-cnt">
            <div class="sidebar-act" id="J_sidebar_act">
                            </div>
            <ul class="sidebarcom-oper">
                <!-- 个人信息 start -->
                <li class="sidebarcom-my " mars_sead="rightnav_my">
                    <div id="J_my" class="sidebarcom-my-con">
                        <i class="i-sidebarcom-my vipSidebarFont"><i class="sidebarcom-my-name">账号</i></i>
                        <p class="sidebarcom-hover">个人中心</p>
                    </div>
                    <!-- 尾款支付弹窗-->
                    <div id="J-prepay-last-tip" class="sidebarcom-pop-tips J_all_tip">
                        <i class="cart-pop-arrow"></i>
                        <span id="J-prepay-last-tip-close" class="sidebarcom-pop-tips-close" mars_sead="rightnav_presale_close"></span>
                        <div class="sidebarcom-pop-prepay-tips J_tip_cnt">
                            <p class="sidebarcom-pop-prepay-p">
                                <i class="sidebarcom-pop-prepay-icons"></i>
                                <strong>您有预付订单</strong><br>可以支付尾款了！
                            </p>
                            <a id="J-prepay-last-tip-go" href="//order.vip.com/order/orderlist?tabChannel=presell" target="_blank" class="i-sidebarcom-btn" mars_sead="rightnav_presale_finalpay">支付尾款</a>
                        </div>
                    </div>
                    <!-- 预支付 end -->
                </li>
                <!-- 个人信息 end -->
                <!-- 购物袋 start -->
                <!-- rightBarCartApi:购物袋开关删除，如果开关被设置则显示可点击跳转的购物袋 -->
                <li class="sidebarcom-cart is-cart-highlight" mars_sead="rightnav_bag">
                    <div id="J_cart">
                        <div class="sidebarcom-cart-bar">
                            <i class="i-sidebarcom-cart vipSidebarFont"></i>
                            <p class="sidebarcom-cart-text">购物袋</p>
                            <i id="J_cart_num" class="J_sbar_cart_count i-sidebarcom-nub">0</i>
                        </div>
                    </div>
                    <p id="J_sbar_hover_cd" class="sidebarcom-countdown-tips" style="display: none;"><span>20分00秒</span><i class="cart-pop-arrow"></i></p>
                    <!-- 购物车文字提示 start -->
                    <div id="J_cart_all_tip" class="J_all_tip cart_pop_tips sidebarcom-pop-tips">
                        <i class="cart-pop-arrow"></i>
                        <span class="J_cart_tip_close sidebarcom-pop-tips-close"></span>
                        <div class="sidebarcom-cart-pop-tips">
                            <!-- 3分钟后 -->
                            <p id="J_cart_last3mins" class="J_tip_cnt hidden">
                                <i class="i-sidebarcom-warn"></i>
                                3分钟后购物袋就要被清空了要尽快结算哦~
                                <a href="//cart.vip.com/te2/?ff=99999|3|5|5" target="_blank" class="J_cart_tip_close pop-font-btn">去购物袋结算&gt;&gt;</a>
                            </p>
                            <!-- 3分钟后 end -->
                            <!-- 清空tips -->
                            <p id="J_cart_timeout" class="J_tip_cnt hidden">
                                <i class="i-sidebarcom-warn"></i>
                                购物袋的商品超时了，可能还有库存，要尽快结算哦~
                                <a href="#" target="_blank" class="J_cart_tip_close pop-font-btn">去购物袋结算&gt;&gt;</a>
                            </p>
                            <!-- 清空tips end -->
                        </div>
                    </div>
                    <!-- 购物车文字提示 end -->
                </li>
                <!-- 购物袋 end -->
                <!-- 个人资产 start -->
                <li class="sidebarcom-asset" mars_sead="rightnav_coupon">
                    <div id="J_asset">
                        <i class="i-sidebarcom-asset vipSidebarFont"></i>
                        <p class="sidebarcom-hover">我的优惠券</p>
                    </div>
                    <!-- 优惠券提示 start -->
                    <div id="J_asset_all_tip" class="J_all_tip cart-pop-tips sidebarcom-pop-tips">
                        <span id="J_asset_tip_close" class="hidden sidebarcom-pop-tips-close"></span>
                        <i class="cart-pop-arrow"></i>
                        <div id="J_asset_tip_have" class="J_tip_cnt sidebarcom-pop-tips-cnt hidden">你有优惠券可以用哦~快来看看~
                        </div>
                    </div>
                    <!-- 优惠券提示 end -->
                </li>
                <!-- 个人资产 end -->
                <!-- 收藏品牌 start -->
                <li class="sidebarcom-brand" mars_sead="rightnav_brand">
                    <div id="J_brand">
                        <i id="J_sbar_brand_point" class="i-sidebarcom-brand-tips hidden"></i>
                        <i class="i-sidebarcom-brand vipSidebarFont"></i>
                        <p class="sidebarcom-hover">品牌收藏</p>
                    </div>
                    <!-- 收藏品牌文字提示 start -->
                    <div id="J_brand_all_tip" class="J_all_tip sidebarcom-pop-tips">
                        <i class="cart-pop-arrow"></i>
                        <span id="J_brand_tip_close" class="hidden sidebarcom-pop-tips-close"></span>
                        <!-- 收藏提示 start -->
                        <div id="J_brand_tip_have" class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
                            <p>有<span id="J_brand_tip_have_num" class="pop-font-tp"></span>个你收藏的品牌已经开售咯</p>
                        </div>
                        <div id="J_brand_tip_success" class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
                            <i class="i-sidebarcom-pass"></i>品牌收藏成功<p class="sidebarcom-pop-tips-txt">这里可以查看品牌的最新动态</p>
                        </div>
                        <div id="J_brand_tip_phone" class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
                            <i class="i-sidebarcom-pass"></i>品牌收藏成功<p class="sidebarcom-pop-tips-ft">不想错过？<a href="//m.vip.com/app/" target="_blank">手机版</a>随时会随地提醒你</p>
                        </div>
                        <!-- 收藏提示 end -->
                    </div>
                    <!-- 收藏品牌文字提示 end -->
                    <!-- 收藏品牌动画弹窗提示,添加外框样式.sidebracom-pop-sty -->
                    <div id="J-sidebarcom-pop-brand" class="J_all_tip">

                    </div>
                    <!-- 收藏品牌动画弹窗提示 end -->
                </li>
                <!-- 收藏品牌 end -->
                <!-- 收藏商品 start -->
                <li class="sidebarcom-fav" mars_sead="rightnav_product">
                    <div id="J_fav">
                        <i id="J_fav_point" class="i-sidebarcom-brand-tips hidden"></i>
                        <i class="i-sidebarcom-fav vipSidebarFont"></i>
                        <p class="sidebarcom-hover">商品收藏</p>
                    </div>
                    <!-- 收藏商品文字提示 start -->
                    <div id="J_fav_all_tip" class="J_all_tip sidebarcom-pop-tips fav-goods-tips">
                        <i class="cart-pop-arrow"></i>
                        <i class="i-sidebarcom-dm sidebarcom-pop-tips-close hidden" id="J_fav_tip_close"></i>
                        <!-- 收藏有机会商品提示 -->
                        <div class="sidebarcom-pop-tips-cnt">
                            <i class="i-sidebarcom-pass"></i>
                            收藏成功，有货提醒你
                            <p class="sidebarcom-pop-tips-ft">不想错过？<a href="//m.vip.com/app/" target="_blank">手机版</a>随时会随地提醒你</p>
                        </div>
                        <!-- 收藏有机会商品提示 end -->
                        <!-- 成功收藏提示 -->
                        <div class="J_fav_goods_success sidebarcom-pop-tips-cnt">
                            <i class="i-sidebarcom-pass"></i>
                            收藏成功，你可以在这里找到收藏的商品。
                        </div>
                        <!-- 成功收藏提示 end -->
                        <!-- 收藏提示 end -->
                    </div>
                    <!-- 收藏商品文字提示 end -->
                    <div id="J-sidebarcom-pop-goods" class="J_all_tip">

                    </div>
                </li>
                <!-- 收藏商品 end -->
                <!-- 足迹 start -->
                <li class="sidebarcom-footprint " mars_sead="">
                    <div id="J_footprint" mars_seed="rightnav_footprint_click_out">
                        <i id="J_sbar_footprint_point" class="i-sidebarcom-brand-tips hidden"></i>
                        <i class="i-sidebarcom-footprint vipSidebarFont"></i>
                        <p class="sidebarcom-hover">我的足迹</p>
                    </div>
                </li>
                <!-- 足迹 end -->
            </ul>
        </div>
        <div id="J_sidebar_ft" class="sidebarcom-nav-ft" style="display: block;">
            <div class="sidebarcom-survey" mars_sead="rightnav_feedback">
                <div id="J_sbar_survey">
                    <a href="//feedback.vip.com/feedback!hotFeedback.do" target="_blank">
                        <i class="i-sidebarcom-survey vipSidebarFont"></i>
                    </a>
                    <p class="sidebarcom-hover">会员反馈</p>
                </div>
            </div>
            <div class="sidebarcom-top" mars_sead="rightnav_backtotop">
                <div id="J_sbar_top">
                    <a href="#top">
                        <i class="i-sidebarcom-top vipSidebarFont"></i>
                    </a>
                    <p class="sidebarcom-hover">返回顶部</p>
                </div>
            </div>
        </div>
    </div>

    <div id="J_wrap" class="sidebarcom-pop"></div>
    <div id="J_login_wrap" class="sidebarcom-pop"></div>
    <!-- 唯小宝提示 -->
    <div id="J_bao" class="sidebarcom-bao sprite hidden">
        <div id="J_bao_dialog" class="sidebarcom-bao-pop hidden">
            收藏成功！<br>
            你收藏的品牌都在这里哦！
        </div>
    </div>
   
    <div id="J_sbar_tip_pop" class="sidebarcom-tips-pop sidebarcom-order-cnt">
        <span class="J_sbar_pop_tips_close sidebarcom-pop-tips-close"></span>
        <h5><i class="i-sidebarcom-warn"></i>你有未支付的订单</h5>
        <p>请尽快完成付款，否则商品售光后<br>你的订单将会取消。</p>
        <a href="//order.vip.com/order/orderlist?from=m_public_top_unpaid_link" target="_blank" class="sidebarcom-tips-pop-btn i-sidebarcom-btn J_sbar_pop_tips_close" mars_sead="tmh_right_button_unpay">立即查看</a>
    </div>
</div>
  </body>
</html>
