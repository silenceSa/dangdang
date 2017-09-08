<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的唯品会-订单详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="css/order/orderDetail.css">


  </head>
  
  <body>
    <div class="public-header">
		<div class="hd-top">
			<div class="hd-wrap">
				<div class="hd-top-left">
					<a class="on btn-gobuy" href="" target="_black">返回特卖会</a>
				</div>
				<div class="hd-top-right">
					<span class="u-wel">您好，</span> <a class="u-name" id="customerId" href=""
						>${sessionScope.customerName}</a> <a id="public-user-level"
						class="u-vmark v0" href="" title="铁牌会员" target="_blank"></a> <a
						class="u-logout" href="CustomerServlet?biz=exit">[退出]</a> <a class="u-order" href=""
						target="_blank">我的订单</a> <a class="u-brand" href=""
						target="_blank">我的收藏</a> <a class="u-club" href="" target="_blank">会员俱乐部</a>
					<dl class="hd-top-service">
						<dt>
							<a href=""> 客户服务 <i class="vipFont if-arrow-bottom"></i>
							</a>
						</dt>
				</div>
			</div>
		</div>
		<div class="hd-main">
			<div class="hd-wrap clearfix hd-logo-bg">
				<div class="hd-logo">
					<a class="hd-logo-link" href="" target="_blank"></a>
				</div>
				<div class="hd-purchase">
				 <a href="CartController?biz=findCartByCus&customerId=${sessionScope.customer.customerId}" target="_blank">购物袋(0)</a>
				</div>
			</div>
			<div class="clearfix hd-nav-bg">
				<div class="hd-main-nav">
					<dl class="hd-main-nav-dl hd-main-index active">
						<dt>
							<a href="">我的唯品会</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl">
						<dt>
							<a href="">安全中心</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl">
						<dt>
							<a href="">消息中心</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl hd-nav-right">
						<dt>
							<a href="">特卖会首页>></a>
						</dt>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<div class="g-wrap clearfix">
		<div class="m-order-ad"></div>
		<div id="J_adads16snx" class="survey-entry"></div>
		<script id="J_adads16snx_tpl" type="text/html"></script>
		<script id="J_adads4dpm2_tpl" type="text/html"></script>
		<div class="g-sidebar">
			<div class="public-sidebar public-sidebar-transition"
				style="position:relative;">
				<div class="public-sidebar-content">
					<dl class="side-btm">
						<dt>
							<i></i> <a>我的交易</a>
						</dt>
						<dd class="active">
							<a href="">订单管理</a>
						</dd>
						<dd class="">
							<a href="">申请退货</a>
						</dd>
						<dd class="mar-btm-clear">
							<a href="">收货地址</a>
						</dd>
					</dl>
					<dl class="side-btm">
						<dt>
							<i></i> <a>我的交易</a>
						</dt>
						<dd class="">
							<a href="">零钱</a>
						</dd>
						<dd class="">
							<a href="">唯品金融</a>
						</dd>
						<dd class="">
							<a href="">银行卡</a>
						</dd>
					</dl>
					<dl class="side-nav-clear">
						<dt>
							<i></i> <a>我的账户</a>
						</dt>
						<dd class="">
							<a href="">我的资料</a>
						</dd>
						<dd class="">
							<a href="">分享账号</a>
						</dd>
						<dd class="">
							<a href="">爱心账户</a>
						</dd>
						<dd class="">
							<a href="">消息订阅</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class="g-content">
	    <h2 class="u-page-title">订单详情</h2>
	    <div id="J_adads56484" class="m-ad-link"></div>
	    <div class="m-detail-modules">
	     <h3 class="u-modules-title">
	       <span>订单概况</span>
	     </h3>
	     <div class="m-detail-info">
	       <div class="m-detail-state">
	         <div class="u-custom-service"></div>
	         <p>
	          订单号：${order.orderId}
	          <span class="type"></span>
	          状态：
	          <b class="" style="color:red">
	          <c:choose>
	           <c:when test="${order.orderStatus==1}">
	           未付款
	           </c:when>
	           <c:when test="${order.orderStatus==2}">
	           已付款
	           </c:when>
	           <c:when test="${order.orderStatus==3}">
	           已发货
	           </c:when>
	           <c:when test="${order.orderStatus==4}">
	           已收货
	           </c:when>
	           <c:when test="${order.orderStatus==5}">
	           交易成功
	           </c:when>
	          </c:choose>
	          </b>
	         </p>
	         <div class="ui-tips-nor ui-tips2">
	          <p class="info">
	            <i class="vipFont if-info"></i>
	            <span><c:choose>
	           <c:when test="${order.orderStatus==1}">
	           您的订单尚未支付。提交订单后30分钟内仍未支付，将不能保证下列商品仍有库存。
	           </c:when>
	           <c:when test="${order.orderStatus==2}">
	           您的订单已成功支付。
	           </c:when>
	           <c:when test="${order.orderStatus==3}">
	           您的订单已发货。
	           </c:when>
	           <c:when test="${order.orderStatus==4}">
	           您已收货，请评价商品。
	           </c:when>
	           <c:when test="${order.orderStatus==5}">
	           您的订单已交易成功！
	           </c:when>
	          </c:choose></span>
	          </p>
	         </div>
	       </div>
	       <dl class="m-detail-info-list">
	         <dt>订单金额：</dt>
	         <dd>
	          <b class="money">¥${order.totalPrice}</b>
	          <span>(已免运费)</span>
	         </dd>
	         <dt class="">发货仓库：</dt>
	         <dd class="">武汉站</dd>
	         <dt>收获信息：</dt>
	         <dd>${order.consignee},${order.recPhone},${order.address}</dd>
	         <dt>支付方式：</dt>
	         <dd>未选择</dd>
	         <dt>送货方式：</dt>
	         <dd>快递送货上门( 不限时间 送货)</dd>
	       </dl>
	     </div>
	    </div>
	    <div id="goodsList" class="m-detail-modules clearfix">
	     <h2 class="u-modules-title">
	       <span>商品清单</span>
	     </h2>
	     <table id="goodsList_" class="m-order-goods-list">
	       <colgroup>
	         <col class="c1">
	         <col class="c2">
	         <col class="c3">
	         <col class="c4">
	         <col class="c5">
	       </colgroup>
	       <thead class="">
	         <tr>
	          <th>商品</th>
	          <th>单价</th>
	          <th>优惠</th>
	          <th>数量</th>
	          <th>小计</th>
	         </tr>
	       </thead>
	       <c:forEach var="orderD" items="${order.orderD}">
	       <tbody>
	         <tr>
	          <td class="m-goods">
	           <a class="pic" href="" target="_blank">
	            <img alt="" src="images/product/s1/${orderD.image}" width="50" height="63">
	           </a>
	           <div class="m-goods-info">
	            <a class="name" target="_blank" href="">
	            ${orderD.productName}
	            </a>
	            <span class="size">48</span>
	           </div>
	          </td>
	          <td>
	           <b>¥${orderD.price}</b>
	          </td>
	          <td>
	          </td>
	          <td>${orderD.num}</td>
	          <td class="u-money-color">¥${orderD.subtotal}</td>
	         </tr>
	       </tbody>
	     </c:forEach>
	     </table>
	     
	     <ul class="m-total-pay ">
	       <li>
	         <span class="category">
	          共
	          <span class="num">${orderD.num}</span>
	          件商品 金额：
	         </span>
	         <span class="txt">¥${order.totalPrice}</span>
	       </li>
	       <li>
	         <span class="category">运费(已免运费)：</span>
	         <span class="txt">¥0.00</span>
	           
	       </li>
	       <li>
	         <span>
	         <b class="total">订单金额：</b>
	         </span>
	         <span>
	         <b class="u-money-color" data-hover="u-money-color-hover">¥${order.totalPrice}</b>
	         </span>
	       </li>
	     </ul>
	    </div>
	  </div>
	  </div>
	  <div class="public-footer">
	 <div class="hd-wrap">
	   <div class="footer-icon"></div>
	   <div class="footer-list">
	     <dl class="link-anim">
	      <dt>服务保障</dt>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">正品保证</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">7天无理由放心退</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">退货返运费</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">7X15小时客户服务</a>
	      </dd>
	     </dl>
	     <dl class="link-anim">
	      <dt>购物指南</dt>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">导购演示</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">订单操作</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">会员注册</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">账户管理</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">收获样品</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">会员等级</a>
	      </dd>
	     </dl>
	     <dl class="link-anim">
	      <dt>支付方式</dt>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">23家主流网银支付</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">货到付款</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">支付宝、银联等支付</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">信用卡支付</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">零钱支付</a>
	      </dd>
	     </dl>
	     <dl class="link-anim">
	      <dt>配送方式</dt>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">全场满288元满运费</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">配送范围及运费</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">验货与签收</a>
	      </dd>
	     </dl>
	     <dl class="link-anim">
	      <dt>售后服务</dt>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">退货政策</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">退货流程</a>
	      </dd>
	      <dd>
	        <a href="" target="_blank" rel="nofollow">退款方式和时效</a>
	      </dd>
	     </dl>
	     <dl class="tc">
	      <dt>唯品会移动APP二维码</dt>
	      <dd class="app"></dd>
	      <dd>下载唯品会移动APP</dd>
	     </dl>
	   </div>
	   <div class="footer-link">
	     <a href="" title="关于我们" target="_blank" rel="nofollow">关于我们</a>
	     |
	     <a href="" title="About us" target="_blank" rel="nofollow">About us</a>
	     |
	     <a href="" title="Investor Relations" target="_blank" rel="nofollow">Investor Relations</a>
	     |
	     <a href="" title="媒体报道" target="_blank" rel="nofollow">媒体报道</a>
	     |
	     <a href="" title="品牌招商" target="_blank" rel="nofollow">品牌招商</a>
	     |
	     <a href="" title="隐私条款" target="_blank" rel="nofollow">隐私条款</a>
	     |
	     <a href="" title="友情链接" target="_blank" rel="nofollow">友情链接</a>
	     |
	     <a href="" title="唯品招聘" target="_blank" rel="nofollow">唯品招聘</a>
	     |
	     <a href="" title="爱心基金" target="_blank" rel="nofollow">爱心基金</a>
	     |
	     <a href="" title="唯品卡" target="_blank" rel="nofollow">唯品卡</a>
	     |
	     <a href="" title="唯品地图" target="_blank" rel="nofollow">唯品地图</a>
	     |
	     <a href="" title="品牌大全" target="_blank" rel="nofollow">品牌大全</a>
	     |
	     <a href="" title="联系我们" target="_blank" rel="nofollow">联系我们</a>
	   </div>
	   <div class="footer-copy">
	    <p>
	      Copyright © 2008-2016 vip.com，All Rights Reserved 
	      <a href="" rel="nofollow">粤ICP备08114786号</a>
	      <a href="" rel="nofollow">ICP经营许可证：粤B2-20080329 </a>
	      <a href="" rel="nofollow">网络文化经营许可证：粤网文〔2015〕1528-229</a>
	      <br>
	      使用本网站即表示接受
	      <a href="" rek="nofollow">唯品会用户协议</a>
	      。版权所有
	      <a href="" rel="nofollow">广州唯品会信息科技有限公司</a>
	    </p>
	   </div>
	 </div>
	 <div class="footer-service">
	   <a class="serv1" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv4" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv5" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv6" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv7" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv10" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv9" rel="nofollow" target="_blank" href=""></a>
	 </div>
	</div>
  </body>
</html>
