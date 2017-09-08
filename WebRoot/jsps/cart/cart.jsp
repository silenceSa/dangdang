<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>唯品会-我的购物袋</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/cart/cart.css">
<link rel="stylesheet" type="text/css"
	href="adminjsps/admin/css/index/index.css" />
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>

<script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
<script type="text/javascript" src="js/cart/cart.js"></script>


</head>

<body>
	<%-- 浮动在线服务 --%>
	<div class="float">
		<span class="floatOnline"></span> <a href="javaScript:void(0)"></a>
	</div>
	<%-- 头部 --%>
	<div id="header">
		<%-- 头部上部分 --%>
		<div class="h_top">
			<%--头部上部分的控制 --%>
			<div class="h_propmt">
				<%-- 唯品会logo --%>
				<div class="logo">
					<a href="javaScript:void(0)" class="logo-link">唯品会 - 全球精选_正品特卖</a>
				</div>
				<%-- 唯品会头部左边样式 --%>
				<div class="h_right">
					<%-- 唯品会右边头部样式 --%>
					<div class="h_right_top">
						<%-- 对头部的用户介绍的模块 --%>
						<div class="cusPresent">
						
							<span style="margin-right: 6px;">你好， <a>${sessionScope.customer.customerName}</a> <a
								href="javaScript:void(0)" target="_blank" class="member-level"
								title="等级：铁牌会员"></a>
							</span> <a href="javaScript:void(0)" style="margin-right: 20px;">[退出]</a>
							<a href="javaScript:void(0)">订单管理</a>
							
						</div>

						<%-- 唯品会右边头部各个模块之间的分割线 --%>
						<span class="interval"></span>

						<%-- 客服电话 --%>
						<div class="servePhone">
							<%-- 放置电话图片的行 --%>
							<span class="h_phone_img"></span>
							<%-- 放置电话号码的块 --%>
							<div class="h_phone">400-6789-888</div>
						</div>

						<%-- 唯品会右边头部各个模块之间的分割线 --%>
						<span class="interval"></span>

						<%-- 在线客服 --%>
						<div class="online">
							<a href="javaScript:void(0)"> <span class="onling_img"></span>
								在线客服
							</a>
						</div>


						<%-- 会员服务 --%>
						<div class="vipServe">
							<%-- 唯品会右边头部各个模块之间的分割线 --%>
							<span class="interval"></span> 
								<a href="javaScript:void(0)">
									<span class="vip_img" id="vip_img"></span> 会员服务<span class="vip_img_later" id="vip_img_later"></span>
								</a>
							<%-- 鼠标未移上是的一个隐藏div --%>
							<div class="small_none"></div>
							<div class="none_vipServe">
								<ul>
									<li><a href="javaScript:void:void(0)">帮助中心</a></li>
									<li><a href="javaScript:void:void(0)">会员反馈</a></li>
									<li><a href="javaScript:void:void(0)">会员俱乐部</a></li>
								</ul>
							</div>
						</div>
					</div>

					<%-- 头部上部分的下部分 --%>
					<div class="h_right_down">
						<ul class="down_prompt">
							<li class="helper_small_item"><span class="down_img_prompt"><img
									src="images/cart/ok.png" /></span>
								<div class="down_font_prompt">100% 正品保证</div></li>
							<li class="helper_small_item"><span class="down_img_prompt"><img
									src="images/cart/seven.png" /></span>
								<div class="down_font_prompt">7天无理由放心退</div></li>
							<li class="helper_samll_item"><span class="down_img_prompt"><img
									src="images/cart/money.png" /></span>
								<div class="down_font_prompt">退货反运费</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%-- 主体 --%>
	<div id="body">
		<%-- 商品购买超时提示 --%>
		<div class="overtime">
			<div class="overtime-icon-prompt">
				<div class="overtime-img"></div>
				<div class="overtime-prompt">
					<h3>逛超时了，以下商品已被清空！</h3>
					<span style="float: left">赶紧一键抢回来~~</span> <span class="quiz-help"></span>
					<button class="addCart">一键加入购物袋</button>
				</div>
			</div>
		</div>
		<div class="timing"></div>
		<%-- 购物车中的所有商品 --%>
		<div class="order">
			<%-- 购物车中的商品 --%>
			<div class="o_main">
				<c:choose>
					<c:when test="${requestScope.cartList.size() eq 0}">
						<%-- 放置身体部分组件的容器 --%>
						<div class="b_prompt">
							<%-- 组件放置 --%>
							<div class="prompt_top">
								<%-- 图片放置 --%>
								<span class="b_img"></span>
								<%-- 放置提示的div --%>
								<div class="b_show">
									购物袋空空如也，<br />快去抢购心仪商品吧~<br />
									<div class="a_prompt">
										<a href="ProductServlet?biz=findProductByCategoryId&categoryId=BA6CB5217BA8499D80C02EDCEF71E691" class="install"
											style="background: #f43499;color:white;">立即抢购</a> 
										<a href="OrderServlet?biz=findOrderByCustomerId&customerId=${sessionScope.customer.customerId}" class="install"
											style="background: #D0D0D0;color:black;">查看订单</a>
									</div>
								</div>
							</div>
						</div>
					</c:when>
					
					<%--购物车中有商品 --%>
					<c:otherwise>
						<%-- 	购物提示 --%>
						<div class="o_header">
							<%-- 购物过程提示 --%>
							<div class="flow-step-cart">
								<div class="flow-step  flow-img-one"></div>
								<span style="font-size: 14px;margin-left: 12px;">查看购物袋</span>
							</div>
							<%-- 商品购买过程连接线 --%>
							<span class="flow-step-line  line-one"></span>
			
							<%-- 购物过程提示 --%>
							<div class="flow-step-cart">
								<div class="flow-step  flow-img-two"></div>
								<span style="color:gray;font-size: 14px;">确认订单信息</span>
							</div>
							<%-- 商品购买过程连接线 --%>
							<span class="flow-step-line  line-two"></span>
			
							<%-- 购物过程提示 --%>
							<div class="flow-step-cart">
								<div class="flow-step  flow-img-three"></div>
								<span style="color:gray;font-size: 14px;">成功提交订单</span>
							</div>
						</div>
						<%-- 购物时间提示 --%>
						<div id="overTime">
							<div style="float: left;font-size: 20px;margin-top: 10px;"><b>购物袋</b></div>
							<span style="border-left: 1px  solid #e0e0e0;float: left;
								margin: 10px 0 0 13px;padding: 10px"></span>
							<div class="channel-tips-cnt">
								<div class="shopping-tips-text">
									请在
									<span style="color:#f43499;">
										<span class="minute ">20</span> 分
										<span class="second">00</span> 秒
									</span>
									内提交订单，下单后你另有30分钟支付时间。
									<span class="prompt"></span>
								</div>
							</div>
						</div>
						
						<c:forEach items="${requestScope.cartList }" var="cartList">
						<div class="order-item">
							<%-- 商品 --%>
							<div class="order-hd" onclick="remove(this)">
								<ul class="m-inline-block">
									<li class="line-block"><span class="product-item-title">唯品自营</span></li>
									<li class="line-block"><span class="text">单价</span></li>
									<li class="line-block"><span class="text">数量</span></li>
									<li class="line-block"><span class="text">小计</span></li>
									<li class="line-block"><span class="text">操作</span></li>
								</ul>
							</div>
							<%-- 购物车商品 --%>
							<div class="cart-product">
								<table>
									<tr>
										<td>
											<div class="cartId" style="display: none;">${cartList.cartId }</div>
											<div class="product-item-special">
												<div class="out-icon">
													<img src="<c:url value='images/product/s1/${cartList.picture}'/>" style="float: left;width: 100px;height: 110px;margin-right: 10px;" 
													class="product-icon"/>
												</div>
												<div class="productName"><a href="javaScript:void(0)" >${cartList.productName }</a></div>
												<div class="size">
													<div>尺码: ${cartList.size}</div>
												</div>
											</div>
										</td>
										<td>
											<div class="product-item price" >
												<span>￥</span><span>${cartList.price}</span>
											</div>
										</td>
										<td>
											<div class="product-item">
												<div class="productNum" cartId="${cartList.cartId }">
													<input type="button" value="-" class="subNum" onclick="subNum(this)" /><span class="num">${cartList.productNum}</span><input type="button" value="+"
													 class="addNum" onclick="addNum(this)"/>
												</div>
											</div>
										</td>
										<td>
											<div class="product-item" style="color:#f10180;">
												<span>￥</span><span id="${cartList.cartId }subtotal" class="sum">${cartList.subtotal}</span>
											</div>
										</td>
										<td>
											<div class="product-item" onmouseover="change(this)" cart="${cartList.cartId }" product="${cartList.productId }"   
												onmouseout="changeOut(this)" onclick="remove(this)">
												<%-- 删除商品条目 --%>
												<div><span class="product-delect-top"></span></div>
												<div><span class="product-delect-down"></span></div>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="freight">
								<div style="height: 11px;"></div>
								<div><a>运费</a>本组商品已免运费</div>
							</div>
						</div>
						</c:forEach>
						<%-- 优惠提示 --%>
						<div class="preferential">
							<%-- 优惠提示的左边 --%>
							<div class="left" >
								<%-- 放置优惠提示的容器 --%>
								<div class="ticket">
									<span class="case"> <span style="margin-right: 20px">使用优惠券</span>
										<span class="preferential-img"></span>
									</span>
								</div>
							</div>
							<%-- 当使用优惠券被点击时出现 --%>
							<div class="hide">
								<div class="hide-one">
									<span class="vip-hide" style="float: left;"></span>
									<div class="hide-prompt">
										<div class="activation-item">
											<div style="margin-bottom: 10px;">
												<span>没有可用的优惠券，激活新优惠券</span>
											</div>
											<input type="text" placeholder="请输入激活码" /><a
												href="javaScript:void(0)" class="activation-a">激活并使用</a>
										</div>
									</div>
								</div>
							</div>
							<%-- 放置优惠提示的容器 --%>
							<div class="ticket">
								<span class="case"> <span style="margin-right: 5px;">使用优惠口令</span>
									<span class="preferential-img"></span>
								</span>
							</div>

							<%-- 优惠提示的右边 --%>
							<div class="right">
								<div style="margin-bottom: 20px;color:gray;font-size:14px;">
									<span style="margin-right: 45px;">
										共<span style="color:#f10180;">${cartList.size()}</span>件商品 商品金额
									</span> 
									￥<span class="total"></span>
								</div>
								<div style="color:gray;font-size:16px;">
									<span style="margin-right: 140px">总金额 </span> 
									<span  style="color:#f10180;">￥</span><span class="total"  style="color:#f10180;"></span>
								</div>
							</div>

						</div>



						<%-- 结算提示 --%>
						<div class="total-item">
							<a class="balance" href="CartController?biz=loadCartItem&customer=00B2AF38C09E41D799069E24D98916C6">立即结算</a>
							<%--结算提示  --%>
							<div class="balance-item">
								请在规定时间内进行支付
								<span class="prompt"></span>
							</div>
						</div>
						
						<form action="CartController" method="post" id="submitForm">
							<input type="hidden" name="cartId" id="cartId"/>
							<input type="hidden" name="biz"/>
						</form>
						
						<%-- 购物车商品底部 --%>
						<div class="o_footer">
							<%-- 100% 正品保证提示图片 --%>
							<div class="icon-contain  authentic-tiem"></div>
							<%-- 7天无理由退货提示图片 --%>
							<div class="icon-contain  return-item"></div>
							<%-- 退货反运费提示图片 --%>
							<div class="icon-contain  courier-charge-item"></div>
						</div>
						
					</c:otherwise>
				</c:choose>
				
			</div><%--购物车中的商品 --%>


			

		</div>
	</div>






	<%-- 底部 --%>
	<div id="footer">
		<%-- 底部控制 --%>
		<div class="f_prompt">
			<%-- 底部上部分 --%>
			<div class="f_prompt_top">
				<p class="f_top_show">
					<a href="javaScript:void(0)">关于我们</a> | <a
						href="javaScript:void(0)">About us</a> | <a
						href="javaScript:void(0)"> Investor Relations</a> | <a
						href="javaScript:void(0)">媒体报道</a> | <a href="javaScript:void(0)">品牌招商</a>
					| <a href="javaScript:void(0)">隐私条框</a> | <a
						href="javaScript:void(0)">唯品诚聘</a> | <a href="javaScript:void(0)">365爱心基金</a>
					| <a href="javaScript:void(0)">唯品卡</a> | <a
						href="javaScript:void(0)">唯品地图</a> | <a href="javaScript:void(0)">品牌大全</a>
					| <a href="javaScript:void(0)">联系我们</a>
				</p>
			</div>
			<%-- 底部中间部分 --%>
			<div class="f_propmt_centre">
				Copyright © 2008-2017 vip.com，All Rights Reserved 使用本网站即表示接受 <a
					href="javaScript:void(0)">唯品会用户协议</a>。 版权所有 <a
					href="javaScript:void(0)">广州唯品会信息科技有限公司</a><br /> <a
					href="javaScript:void(0)"><img
					src="images/cart/police_icon.png" /> 粤公网安备 44010302111111号
					粤ICP备08114786号 </a> <a href="javaScript:void(0)">ICP经营许可证：粤B2-20080329
				</a> <a href="javaScript:void(0)">网络文化经营许可证：粤网文〔2015〕1528-229</a><br />
				<a href="javaScript:void(0)">自营主体经营证照 风险监测信息
					互联网药品交易服务资格证（粤C20140002）</a>
			</div>
			<%-- 底部下部分 --%>
			<div class="f_prompt_down">
				<div class="prompt_img">
					<a><span class="f_pic_icon01" title="银联特约商户"></span></a> <a><span
						class="f_pic_icon02" title="消费维权商户"></span></a> <a><span
						class="f_pic_icon03" title="红盾电子链接标识"></span></a> <a><span
						class="f_pic_icon04" title="网络警察报警平台"></span></a> <a><span
						class="f_pic_icon05"></span></a> <a><span class="f_pic_icon06"
						title="诚信网站"></span></a> <a><span class="f_pic_icon07"
						title="可信网站"></span></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
