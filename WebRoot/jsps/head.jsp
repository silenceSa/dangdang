<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会一家做特卖的网站</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta name="Description" content="全球最大的中文网上书店，全网最低价,快递送货上门，货到付款，为您提供方便快捷的网上购物体验！当当榜、特价书市等特色频道为您提供超级专业、实惠的购物享受！">
    <link rel="stylesheet" type="text/css" href="css/head.css"/>
    <script type="text/javascript" src="js/head.js"></script>
  </head>
  
  <body class="sp-is-small-screen">
      <header id="vip-common-header" class="header vip-common-header clearfix ">
        <nav class="top-nav">
        <div id="J_top_nav" class="head-inner">
            <!-- 选择分区 -->
            <div class="sel-area">
                <div class="sel-area-change" id="J_areaSelect_btn" mars_sead="home_header_location">
                    <div class="sel-area-btn"><span id="J_selected_province" class="sel-province">广东</span><i class="ico-dis"></i><em class="sel-area-botmbod"></em></div>
                    <div class="sel-area-box" id="J_area_content" style="display: none;"><div class="sel-area-box-inner" id="J-areaBinner">  <i class="ico-arw-bodder" style="width: 85px;"></i>  <p class="sab-tit">请选择所在的收货地区</p>  <table class="sab-table" mars_sead="home_top_zone_link"><tbody><tr>      <th>A</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_SH" data-id="103104">安徽</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104108">澳门</span></td>    </tr><tr>      <th>B</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="101101">北京</span></td>    </tr><tr>      <th>C</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="105100">重庆</span></td>    </tr><tr>      <th>F</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="103105">福建</span></td>    </tr><tr>      <th>G</th>      <td><span class="J_select_item selected" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104104">广东</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104105">广西</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="105102">贵州</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="106102">甘肃</span></td>    </tr><tr>      <th>H</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="101103">河北</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_HZ" data-id="104101">河南</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="102103">黑龙江</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104106">海南</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_HZ" data-id="104102">湖北</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_HZ" data-id="104103">湖南</span></td>    </tr><tr>      <th>J</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_SH" data-id="103102">江苏</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="102102">吉林</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_HZ" data-id="103106">江西</span></td>    </tr><tr>      <th>L</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="102101">辽宁</span></td>    </tr><tr>      <th>N</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="101105">内蒙古</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="106104">宁夏</span></td>    </tr><tr>      <th>Q</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="106103">青海</span></td>    </tr><tr>      <th>S</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_SH" data-id="103101">上海</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_SH" data-id="103107">山东</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="101104">山西</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="105101">四川</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="106101">陕西</span></td>    </tr><tr>      <th>T</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104109">台湾</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_BJ" data-id="101102">天津</span></td>    </tr><tr>      <th>X</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="105104">西藏</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_NH" data-id="104107">香港</span><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="106105">新疆</span></td>    </tr><tr>      <th>Y</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_CD" data-id="105103">云南</span></td>    </tr><tr>      <th>Z</th>      <td><span class="J_select_item" mars_sead="te_home_head_diqu_link" data-wh="VIP_SH" data-id="103103">浙江</span></td>    </tr>  </tbody></table></div></div>
                </div>
            </div>
            <ul class="top-nav-tool" id="J-topNavTool">
                <li class="wp-my">
                    <ul id="J_head_log" class="login-before login_before user-no-cookies">
    <li class="wp-user" data-hover="wp-user-hover" id="J-wp-user">
        <span class="user-in" id="J_user_logined" style="display: none;">
            <a id="J_viplevel" href="#" target="_blank" class="user-in-vip"><i></i></a>
            <a href="index.jsp" target="_blank" class="user-in-name">{$J_header_account} </a>
            <i class="ico-dis"></i>
        </span>
        <p class="hidden top-nav-inf" id="J_user_unLogin">
            <span class="top-nav-inf-pc">
                <a href="#" mars_sead="home_top_nav2_login" class="J_header_lnkLogin" rel="nofollow">
                <em class="name">{$J_header_account}</em><span class="u-name-slash">/</span> 请登录
                </a>
                <i class="ico-dis"></i>
            </span>
        </p>
        
        <c:choose>
			<c:when test="${sessionScope.customerName == null}">
		         <span class="user-noid" id="J_user_noId">
                     <a href="jsps/customer/login.jsp" mars_sead="home_top_nav2_login" class="J_header_lnkLogin" rel="nofollow">请登录</a>
        		 </span>
			</c:when>
			<c:otherwise>
		         <span class="user-noid" id="J_user_noId">
                     <a href="#" mars_sead="home_top_nav2_login" class="J_header_lnkLogin" rel="nofollow">${sessionScope.customerName}</a>
        		 </span>
			</c:otherwise>
	    </c:choose>
        
        
        

        <div class="top-nav-dis user-infor" id="J_userInfo">
            <i class="ico-arw-bodder" id="J-ico-arw-bodder" style="width: 71px;"></i>
            
         <c:choose>
			<c:when test="${sessionScope.customerName == null}">
		       <div class="top-nav-inf clearfix">
                <span class="top-nav-pic-avater"></span>
                <div class="top-nav-pic-infs">
                    <p id="J_uInfo_name"><a href="jsps/customer/login.jsp" mars_sead="home_top_nav2_login" class="J_header_lnkLogin" rel="nofollow"><span id="J_uInfo_welcom">您好！</span> 
                    <span class="top-nav-login">[请登录]</span></a>
                    </p>
                </div>
            </div>
			</c:when>
			<c:otherwise>
		        <div class="top-nav-pic clearfix">
                   <a class="top-nav-pic-avater" href="index.jsp" target="_blank"><img id="J_userAvatar" mars_sead="top_nav2_log_my2" src="//shop.vipstatic.com/img/te/common/avatar-default.jpg" data-original="//shop.vipstatic.com/img/te/common/avatar-default.jpg" height="38" width="38"></a>
                   <div class="top-nav-pic-infs">
                      <a href="index.jsp" target="_blank" id="J_nPic_name" class="top-nav-nickname" mars_sead="top_nav2_log_my">${sessionScope.customerName}</a>
                      <a href="CustomerServlet?biz=exit" class="top-nav-logout" id="J_header_lnkLogOut" mars_sead="home_top_nav2_log_logout">[退出]</a>
                   </div>
                </div>
			</c:otherwise>
	    </c:choose>
            
            
            
            
            
           
            <p class="top-nav-list">
                <span>
                    <a href="#" mars_sead="home_top_nav2_log_collect" target="_blank">我的收藏</a>
                </span>
                <span>
                    <a href="OrderServlet?biz=findOrderByCustomerId&customerId=${sessionScope.customer.customerId}" mars_sead="home_top_nav2_log_order" target="_blank">我的订单
                        <i id="J-header-myOrder" class="top-nav-order-num"></i>
                    </a>
                </span>
                <span>
                    <a href="#" mars_sead="home_top_nav2_log_wallet" target="_blank">零钱</a>
                </span>
                <span>
                    <a href="#" mars_sead="home_top_nav2_log_coupon" target="_blank">我的优惠券</a>
                </span>
                <span>
                    <a href="#" mars_sead="home_top_nav2_log_vipmoney" target="_blank">我的唯品币</a>
                </span>
                <span id="J_user_msg" style="display: none;">
                    <a href="#" mars_sead="home_top_nav2_log_message" target="_blank">最新消息</a>
                    <i id="J_user_msgIcon" class="ico-myinfor" title="查看我的信息"></i>
                </span>
                <span>
                    <a href="#" mars_sead="home_top_nav2_log_jinrong" target="_blank">唯品金融</a>
                </span>
            </p>
        </div>
    </li>
    <li id="J_Register_hasnoname" class="register_hasnoname">
        <a href="jsps/customer/regist.jsp" mars_sead="home_top_nav2_reg" class="i-link J_header_lnkRegister" rel="nofollow">注册</a>  </li>
</ul>
                </li>
                <li class="wp-order" data-hover="wp-order-hover">
                    <span class="order-in">
                        <a href="OrderServlet?biz=findOrderByCustomerId&customerId=${sessionScope.customer.customerId}" mars_sead="home_top_nav2_order" target="_blank" rel="nofollow">我的订单</a>

                    </span>
                    <!-- <div class="order-infor">
                        <i class="ico-arw"></i>
                        <a rel="nofollow" target="_blank" mars_sead="home_top_nav2_return" href="#/order/returnlist">自助退货</a>
                    </div> -->
                </li>
                <li class="wp-service wp-fav-nav" data-hover="wp-fav-nav-hover" id="J-favs">
                    <span class="service-in">
                        <a href="#" target="_blank" mars_sead="home_top_nav2_collect" rel="nofollow">我的特卖</a>
                        <i class="ico-dis"></i>

                    </span>
                    <div class="top-nav-dis service-infor fav-nav-drop">
                        <i class="ico-arw-bodder"></i>
                        <p class="top-nav-list">
                        <span><a href="#" target="_blank" mars_sead="home_top_nav2_brand" rel="nofollow">品牌收藏(<i id="J_favBrand_count">0</i>)</a></span>
                        <span><a href="#" target="_blank" mars_sead="home_top_nav2_product" rel="nofollow">商品收藏(<i id="J_favCommodity_count">0</i>)</a></span>
                        <span><a href="#" target="_blank" mars_sead="home_top_nav2_footprint" rel="nofollow">我的足迹(<i id="J_footprint_count">0</i>)</a></span>
                        </p>
                    </div>
                </li>
                <li class="wp-service wp-member" data-hover="wp-service-hover">
                    <span class="service-in">
                        <a href="#" target="_blank" mars_sead="home_top_nav2_club">
                            会员俱乐部
                        </a>
                        <i class="ico-dis"></i>
                    </span>
                    <!-- 会员俱乐部详情 -->
                    <div class="top-nav-dis service-infor">
                        <i class="ico-arw-bodder"></i>
                        <p class="top-nav-list">
                            <span>
                                <a href="#" mars_sead="home_top_nav2_jf" target="_blank" rel="nofollow">俱乐部首页</a>
                            </span>
                            <span>
                                <a href="#" mars_sead="home_top_nav2_jf" target="_blank" rel="nofollow">唯品币兑换</a>
                            </span>

                            <span>
                                <a href="#" mars_sead="home_top_nav2_jf" target="_blank" rel="nofollow">免费抽大奖</a>
                            </span>
                        </p>
                    </div>
                    <!-- 会员俱乐部详情end -->
                </li>
                <li class="wp-service" data-hover="wp-service-hover">
                    <span class="service-in">客户服务<i class="ico-dis"></i></span>
                    <!-- 客服中心详情 -->
                    <div class="top-nav-dis service-infor">
                        <i class="ico-arw-bodder"></i>
                        <p class="top-nav-list">
                            <span>
                                <a href="#" mars_sead="home_top_nav2_kefu" target="_blank" rel="nofollow">联系客服</a>
                            </span>
                            <span>
                                <a href="#" mars_sead="home_top_nav2_help" target="_blank" rel="nofollow">帮助中心</a>
                            </span>
                            <span>
                                <a href="index.jsp" mars_sead="home_top_nav2_feedback" target="_blank" rel="nofollow">服务中心</a>
                            </span>
                            <span>
                                <a href="#" mars_sead="home_top_nav2_feedback" target="_blank" rel="nofollow">知识产权投诉</a>
                            </span>
                        </p>
                    </div>
                    <!-- 客服中心详情end -->
                </li>
                <li class="wp-phone" data-j-hover="wp-phone-hover" id="J_phone_tip">
                    <span class="phone-in"><a href="#/app" target="_blank" mars_sead="top_nav2_m" rel="nofollow"><i class="ico-mob"></i> 手机版</a></span>
                    <!-- 手机版详情 -->
                                        <div class="top-nav-dis phone-infor" id="J_phoneTip_con" style="display: none;">
                        <i class="ico-arw-bodder"></i>
                        <span class="phone-close hidden" id="J_phone_close"></span>
                        <div class="tc" id="J_phoneTips_wrap">
                                                        <a href="#/app/?f=nav" target="_blank">
                                <img mars_sead="top_nav2_m_pic" class="J_qrcode_img" data-original="//b.appsimg.com/2016/06/17/863/1466134037230.jpg" src="images/category/1466134037230.jpg" alt="二维码" height="161" width="161">
                            </a>
                                                                                    <p>
                                <a href="#" target="_blank">随时逛 及时抢</a>
                            </p>
                                                    </div>
                    </div>
                                        <!-- 手机版详情end -->
                </li>
                <li class="wp-service wp-business" data-hover="wp-service-hover">
                    <span class="service-in">
                        <a href="###">更多</a>
                        <i class="ico-dis"></i>
                    </span>
                    <!-- 品牌招商 -->
                    <div class="top-nav-dis service-infor-more">
                        <i class="ico-arw-bodder"></i>
                        <h5 class="service-more-hd clearfix">合作专区</h5>
                        <p class="top-nav-list clearfix">
                            <a href="#" rel="nofollow">联名卡申请</a>
                            <a href="#" target="_blank" mars_sead="home_top_nav1_vipcard" rel="nofollow">唯品卡</a>
                            <a href="#" target="_blank" mars_sead="home_top_nav1_pay" rel="nofollow">支付专区</a>
                        </p>
                        <h5 class="service-more-hd clearfix service-more-hd2">关于我们</h5>
                        <p class="top-nav-list clearfix service-more-p">
                            <a href="#">Sell on vip</a>
                            <a href="#" target="_blank" rel="nofollow">品牌招商</a>
                            <a href="#" target="_blank">官方博客</a>
                        </p>
                    </div>
                    <!-- 客服中心详情end -->
                </li>

            </ul>
        </div>
    </nav>
    <div class="head-logo">
        <div class="head-inner clearfix" id="J-head-inner-def">
            <div class="header-logo-dop">
                                <a target="_blank" href="#/" mars_sead="home_header_vip_logo">
                    <img src="images/category/sprite/logo.gif" data-original="//b.appsimg.com/2017/06/13/421/1497325276953.gif" alt="全球精选_正品特卖" id="J-vipLogo" height="100">
                    </a>
            </div>
            <div id="J_head_cart" class="head-cart head-bag-car J_cart_ico" data-hover="head-cart-hover">
                <div class="tool" id="J_shortTime">
                    <a href="CartController?biz=findCartByCus&customerId=${sessionScope.customer.customerId}" mars_sead="home_top_bag_button" target="_blank" rel="nofollow">
                        <span id="J_skuCount_container" class="counti-cons-bg"><span class="nub" id="J_skuCount">0</span></span>
                        <i class="ico-bag" title="查看我的购物袋"></i>
                        <span id="J-mycartText">我的购物袋</span>
                        <span class="J_cart_countDowncart mycarttext-countdown hidden" id="J-mycartText-countdown"></span>
                    </a>
                </div>
                <div class="tool-cn" id="J_headCartList_wrap" style="display: none;">
    <div class="tool-cn-inner">
        <div class="tool-cn-in">
            <p>好像还未登录！<a href="jsps/customer/login.jsp" mars_sead="home_top_nav2_login">马上登录</a> 查看购物袋吧！</p>
        </div>
    </div>
</div>
            </div>
                            <div class="header-vip">
                    <a href="#" mars_sead="home_header_vip1" target="_blank" class="header-vip-icon1">
                        <img src="images/category/sprite/1466131264367.png"  id="J_header_promise_01" height="100">
                    </a>
                    <a href="#" mars_sead="home_header_vip2" target="_blank" class="header-vip-icon2">
                        <img src="images/category/sprite/1466131266290.png" id="J_header_promise_02" height="100">
                    </a>
                    <a href="#" mars_sead="home_header_vip3" target="_blank" class="header-vip-icon3">
                        <img src="images/category/sprite/1466131268726.png" id="J_header_promise_03" height="100">
                    </a>
                </div>
                        </div>
    </div>
    <nav class="main-nav">
        <!-- 加多一层占位main-nav，防止滚动时页面跳动 -->
                <div class="main-nav" id="J_main_nav">
        <div class="head-inner">
            <ul class="main-nav-link clearfix" id="J_main_nav_link">
                                  <li class=""><a href="#" class="main-nav-atag current menu-item-isbold" mars_sead="home_header_channel_homepage">6.16年中大促</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag  menu-item-isbold" mars_sead="home_header_channel_oversea">唯品国际</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag  menu-item-isbold" mars_sead="home_header_channel_kids">母婴</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag  menu-item-isbold" mars_sead="home_header_channel_household">家居家电</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag " mars_sead="home_header_channel_men">男士</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag " mars_sead="home_header_channel_beauty">美妆</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag " mars_sead="home_header_channel_life">生活超市</a></li>

                    
                                 <li class=""><a href="#" class="main-nav-atag " mars_sead="home_header_channel_finance">金融</a></li>

                    
                                    <li class="more-wrap J_Navmore_wrap" data-hover="more-wrap-hover">
                            <a class="main-nav-atag ">更多<i class="ico-dis icon-triangle"></i></a>
                            <div class="channel-item-group" id="J-channel-item-group">
                            
                                <div class="channel-item">
                                    <a href="#/" class="channel-more-itemlink" mars_sead="home_header_channel_dresses">
                                        <img src="images/category/class/1467620677036.jpg" class="J_subNav_pics" data-original="//b.appsimg.com/2016/07/04/467/1467620677036.jpg" height="96" width="170">
                                        <div class="shadow"></div>
                                        <div class="brand-text">
                                            <p class="brand-name-Chinese">女装</p>
                                        </div>
                                    </a>
                                </div>
                            
                                <div class="channel-item">
                                    <a href="#/" class="channel-more-itemlink" mars_sead="home_header_channel_shoes&amp;bags">
                                        <img src="images/category/class/1467620750077.jpg" class="J_subNav_pics" data-original="//b.appsimg.com/2016/07/04/362/1467620750077.jpg" height="96" width="170">
                                        <div class="shadow"></div>
                                        <div class="brand-text">
                                            <p class="brand-name-Chinese">鞋包</p>
                                        </div>
                                    </a>
                                </div>
                            
                                <div class="channel-item">
                                    <a href="#/" class="channel-more-itemlink" mars_sead="home_header_channel_watch">
                                        <img src="images/category/class/1467620773404.jpg" class="J_subNav_pics" data-original="//b.appsimg.com/2016/07/04/239/1467620773404.jpg" height="96" width="170">
                                        <div class="shadow"></div>
                                        <div class="brand-text">
                                            <p class="brand-name-Chinese">配饰</p>
                                        </div>
                                    </a>
                                </div>
                            
                                <div class="channel-item">
                                    <a href="#/" class="channel-more-itemlink" mars_sead="home_header_channel_sports">
                                        <img src="images/category/class/1467620790247.jpg" class="J_subNav_pics" data-original="//b.appsimg.com/2016/07/04/974/1467620790247.jpg" height="96" width="170">
                                        <div class="shadow"></div>
                                        <div class="brand-text">
                                            <p class="brand-name-Chinese">运动</p>
                                        </div>
                                    </a>
                                </div>
                            
                                <div class="channel-item">
                                    <a href="#/" class="channel-more-itemlink" mars_sead="home_header_channel_lux">
                                        <img src="images/category/class/1467620841997.jpg" class="J_subNav_pics" data-original="//b.appsimg.com/2016/07/04/142/1467620841997.jpg" height="96" width="170">
                                        <div class="shadow"></div>
                                        <div class="brand-text">
                                            <p class="brand-name-Chinese">VIPLUX</p>
                                        </div>
                                    </a>
                                </div>
                                                        </div>
                        </li>
                    
                            <li class="nav-comingsoon"><a href="#" class="main-nav-atag " mars_sead="home_header_channel_comingsoon"><img class="link-front-icon J-link-front-icon" src="images/category/sprite/1470377501079.png" data-original="//b.appsimg.com/2016/08/05/979/1470377501079.png">预告</a></li>
                <li class="nav-category"><a href="#" class="main-nav-atag " mars_sead="home_header_channel_category"><img class="link-front-icon J-link-front-icon" src="images/category/sprite/1470377526197.png" data-original="//b.appsimg.com/2016/08/05/229/1470377526197.png">分类</a></li>
            
            </ul>
        </div>
    </div>
    </nav>
</header>
    
  </body>
</html>
