<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的唯品会-订单管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="css/order/order.css">
<link rel="stylesheet" type="text/css" href="css/order/pager.css">
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
	<script type="text/javascript"
	src="adminjsps/admin/js/layer/layer.js"></script>
	
</head>
<script type="text/javascript">
	$(function() {

		/* $("#phonelink").hover(function(){
		   $("#J_phoneTips_con").css("display","block");
		   
		},function(){
		   $("#J_phoneTips_con").css("display","none");
		}); */
		$("#phone").hover(function() {
			$("#J_phoneTip_con").css("display", "block");
		}, function() {
			$("#J_phoneTip_con").css("display", "none");
		});
        var customerId = $("#customerId").html();
        var json = null;
        $.ajax({
        	   type: "POST",
        	   url: "admin/OrderController?biz=findOrderBycustomerId&customerId=2FC58B7D9C7F454F8065B7A4282A3359",        	  
        	   success: function(msg){
        	   json = $.parseJSON(msg);
        	   }
        });
        
        $("#J_order_type").mouseover(function() {
			$(".ui-dropdown-bd").css("display", "block");
		});
        $("#J_order_type").mouseout(function() {
			$(".ui-dropdown-bd").css("display", "none");
		});
       
	});
	
	function remove(obj){
		
		 $.getJSON('admin/OrderController',{biz:"remove",orderId:$(obj).attr("id")},function(data){
	        	if (response.status=="success") {
	        		
				} else {
					alert("删除失败");
				}
	     });
		
		
	}
	
	
	function confirmDelete(obj){
		
		layer.open({
			  title: '删除订单',
			  content: '<span style="font-size:18px;">是否要删除订单?</span>',
			  area:['300px','160px'],
			  btn:['确定','取消'],
			  btnAlign: 'c',
			  yes: function(index, layero){
			    window.location=$(obj).attr("v-href");
			  },
			  offset: (window.innerHeight-160)/2

			});   
	}
	
	function faohuo(obj){
		layer.msg("商家正在发货中",{icon:6,offset: (window.innerHeight-50)/2});
	}
	
	
	
</script>

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
						class="u-logout" href="CustomerServlet?biz=exit">[退出]</a> <a class="u-order" href="#"
						target="_blank">我的订单</a> <a class="u-brand" href=""
						target="_blank">我的收藏</a> <a class="u-club" href="" target="_blank">会员俱乐部</a>
					<dl class="hd-top-service">
						<dt>
							<a href=""> 客户服务 <i class="vipFont if-arrow-bottom"></i>
							</a>
						</dt>
					</dl>
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
			<p class="m-title">
				<a href="//myi.vip.com">我的唯品会</a> >订单管理
			</p>
			<div class="m-ad J_declare">
				<i class="i-horn"></i> <b>安全提醒：唯品会不会以任何理由要求您提供银行卡信息或支付额外费用，请谨防钓鱼链接或诈骗电话
					<br> *为保障您的信息安全，订单信息中的联系电话已被加密隐藏。
				</b> <br>
			</div>
			<div class="g-container">
				<div class="ui-tab u-tab">
					<div class="ui-tab-hd">
						<ul id="J_channel_tab" class="ui-tab-panel">
							<li class="z-current" data-value="all"><a href="">
									<p class="frist">普通订单</p>
							</a></li>
							<li data-value="presell"><a href="">
									<p>预付订单</p>
							</a></li>
							<li data-value="vsc"><a href="">
									<p>旅行订单</p>
							</a></li>
							<li data-value="vscCard"><a href="">
									<p>电子卡券订单</p>
							</a></li>
							<li data-value="vscCoin"><a href="">
									<p>唯品币兑换订单</p>
							</a></li>
							<li class="line" style="width:96px;left:0px;"></li>
						</ul>
					</div>
					<div class="ui-tab-bd">
						<div class="ui-tab-content">
							<div id="J_order_list" class="">
								<table class="m-table">
									<colgroup>
										<col class="c1">
										<col class="c2">
										<col class="c3">
										<col class="c4">
										<col class="c5">
									</colgroup>
									<thead style="font-size:12;">
										<tr class="col-name">
											<th class="goods">商品</th>
											<th class="total">订单总额</th>
											<th class="state">
												<div id="J_order_type" class="ui-dropdown ui-dropdown-float"
													data-hover="ui-dropdown-float-hover">
													<div class="ui-dropdown-hd f-text-center" id="block">
														<a id="J-drop-title" class="ui-dropdown-current" href=""
															role="button" title="订单状态">全部订单状态</a> <i
															class="vipFont i-arrow-up"></i> <i
															class="vipFont i-arrow-down"></i>
													</div>
													<div class="ui-dropdown-bd" >
														<ul id="J_drop-menu" class="ui-drop-menu u-dropdown-menu">
															<li><a href="" data-value="0" title="全部订单状态"
																role="button">全部订单状态</a></li>
															<li><a href="" data-value="1" title="待处理"
																role="button">待处理</a></li>
															<li><a href="" data-value="2" title="待发货"
																role="button">待发货</a></li>
															<li><a href="" data-value="3" title="已发货"
																role="button">已发货</a></li>
															<li><a href="" data-value="4" title="已收货"
																role="button">已收货</a></li>
															<li><a href="" data-value="5" title="已取消"
																role="button">已取消</a></li>
														</ul>
													</div>
												</div>
											</th>
											<th class="control">操作</th>
											<th class="other">其他操作</th>
										</tr>
									</thead>
									<c:forEach var="order" items="${pageBean.beanList}" >
									<tbody data-receiver="袁棋凡">
										<tr class="sep-row">
											<td colspan="5"></td>
										</tr>
										<tr class="order-hd">
											<td colspan="5">
											<i class="ii-te"></i> 
											<span class="num">
													订单号： <a href="" target="_blank">${order.orderId}</a> 
													<em class="type"></em>
											</span><span class="recipients">收货人：${order.consignee}</span> <span class="num">${order.orderTime}</span></td>
										</tr>

										
										
										<c:forEach var="orderD" items="${order.orderD}" >
										<tr class="order-bd">
											<td class="goods"><a href="" target="_blank" class="pic"><img
													src="images/product/s1/${orderD.image}"
													alt="" width="50" height="63"></a>
												<div class="goods-info">
													<a href="" target="_blank" class="name">${orderD.productName}</a>
													<span class="size">30</span>
												</div>
											</td>
											<td class="price" rowspan="1">
												<p>
													<strong>${orderD.subtotal}</strong>
												</p>
												<p>（免运费）</p>
												<p>在线</p>
											</td>
											<td class="state" rowspan="1">
												<p class="purple">
													<span style="color:gray ">
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
													    已取消
													   </c:when>
													 </c:choose>
													</span>
												</p>
												<a href="OrderServlet?biz=findDetatil&orderId=${order.orderId}"target="_blank" mars_sead="account_order_detail_btn">订单详情</a>
											</td>
											<td class="control" rowspan="1">
											    <p>
											      <c:choose>
													   <c:when test="${order.orderStatus==1}">
													    <a class="ui--btn-mini ui-btn-secondary J_rebuy" role="button" href="javascript:void(0)">
													    去支付
													    </a>
													   </c:when>
													   <c:when test="${order.orderStatus==2}">
													   <a class="ui--btn-mini ui-btn-secondary J_rebuy" role="button"  href="javascript:void(0)">
													   待发货
													    </a>
													   </c:when>
													   <c:when test="${order.orderStatus==3}">
													   <a class="ui--btn-mini ui-btn-secondary J_rebuy" role="button"  href="OrderServlet?biz=delivery&orderId=${order.orderId}&customerId=${sessionScope.customer.customerId}">
													    确认收货
													    </a>
													   </c:when>
													   <c:when test="${order.orderStatus==4}">
													    <a class="ui--btn-mini ui-btn-secondary J_rebuy" role="button"  href="CommentServlet?biz=addComment&productId=${orderD.productId}&orderId=${order.orderId}">
													    去评价
													    </a>
													   </c:when>
													   <c:when test="${order.orderStatus==5}">
													   <a class="ui--btn-mini ui-btn-secondary J_rebuy" role="button"  href="ProductServlet?biz=findProductByProductId&productId=${orderD.productId}">
													    再次购买
													   </a>
													   </c:when>
												  </c:choose>
											    </p>
											</td>
											<td class="other" rowspan="1">
												<p>
													  <c:choose>
													   <c:when test="${order.orderStatus==1}">
													<a class="J_delete" id="${order.orderId}" href="javascript:void(0)" onclick="confirmDelete(this)" v-href="OrderServlet?biz=delete&orderId=${order.orderId}" role="button" mars_sead="711|7|1|8"
														href="j">
													    删除订单
													</a>
													   </c:when>
													   <c:when test="${order.orderStatus==2}">
													 <a class="J_delete" id="${order.orderId}" href="javascript:void(0)" onclick="faohuo(this)" v-href="OrderServlet?biz=delete&orderId=${order.orderId}" role="button">
													   提醒发货
													 </a> 
													   </c:when>
													   <c:when test="${order.orderStatus==3}">
													   查看物流
													   </c:when>
													   <c:when test="${order.orderStatus==4}">
													   货已收到
												      </c:when>
													   <c:when test="${order.orderStatus==5}">
													      交易成功
													   </c:when>
												  </c:choose>	
												</p>
											</td>
										</tr>
										</c:forEach>
										
										
										
										
									</tbody>
										</c:forEach>
								</table>
								<div class="m-pagging">
								 
								 <jsp:include page="../pager.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div>
				</div>
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
