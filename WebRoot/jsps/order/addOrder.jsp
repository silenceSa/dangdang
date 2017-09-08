<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会-订单信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/order/addOrder.css">
	<script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
	<script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
	<script type="text/javascript" src="js/order/addOrder.js"></script>
	
  </head>
  
  <body>
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
							<span style="margin-right: 6px;">你好， <a>${sessionScope.customerName}</a> <a
								href="javaScript:void(0)" target="_blank" class="member-level"
								title="等级：铁牌会员"></a>
							</span> <a href="CustomerServlet?biz=exit" style="margin-right: 20px;">[退出]</a>
							<a href="OrderServlet?biz=findOrderByCustomerId&customerId=${sessionScope.customer.customerId}">订单管理</a>
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
	<div id="main">
		<%-- 放置主体的容器 --%>
		<div id="main-contain">
			<%-- 	购物提示 --%>
			<div class="o_header">
				<%-- 购物过程提示 --%>
				<div class="flow-step-cart">
					<div class="flow-step  flow-img-one"></div>
					<span style="font-size: 14px;margin-left: 12px;color:gray;">查看购物袋</span>
				</div>
				<%-- 商品购买过程连接线 --%>
				<span class="flow-step-line  line-one"></span>

				<%-- 购物过程提示 --%>
				<div class="flow-step-cart">
					<div class="flow-step  flow-img-two"></div>
					<span style="color:black;font-size: 14px;">确认订单信息</span>
				</div>
				<%-- 商品购买过程连接线 --%>
				<span class="flow-step-line  line-two"></span>

				<%-- 购物过程提示 --%>
				<div class="flow-step-cart">
					<div class="flow-step  flow-img-three"></div>
					<span style="color:gray;font-size: 14px;">成功提交订单</span>
				</div>
			</div>
			<%-- 收货信息 --%>
			<div id="goodsInfo">
				<%-- 收货信息头部 --%>
				<div class="goods-h">
					<div style="margin: 8px 0 0 20px;">收货信息</div>
				</div>
				<%-- 信息 --%>
				<form id="addressForm" class="addressForm" onsubmit="return false">
					<div class="writeInfo">
						<%-- 收货人 --%>
						<div class="consignee-info">
							<div class="nullInfo promptNull" id="receiver_prompt">
								<div class="consigneeNull"></div>
								请输入收货人姓名
							</div>
							<div class="people">
								<label class="ui-label">收货人：</label>
							</div>
							<div class="people-input">
								<input id="contacts_prompt" class="ui-input"
									placeholder="收货人姓名" name="consignee" value="" autofocus="true"
									mars_sead="address_name_input" type="text" onblur="checkContacts(this)">
							</div>
						</div>
						<%-- 收货时间 --%>
						<div class="consignee-info">
							<div class="goodsTime">
								<label class="ui-label">收货时间：</label>
							</div>
							<div class="ui-dropdown J_shipping_time_dropdown 
								z-ui-dropdown-selected deployTakeTime"
								mars_sead="address_time_sel">
								<div class="ui-dropdown-hd"  id="takeGoodsTime">
									<a href="javascript:;" role="button" title="请选择收货时间"
										class="ui-dropdown-current"
										onclick="changTime(this)">请选择收货时间</a> 
										<i class="vipFont i-arrow-up"></i>
								</div>
								<div class="ui-dropdown-bd" id="takeTime">
									<ul class="ui-dropdown-menu">
										<li data-value="1"><a href="javascript:;"
											title="周一至周日均可收货" role="button" id="a">周一至周日均可收货</a></li>
										<li data-value="2"><a href="javascript:;"
											title="周六日、节假日收货" role="button">周六日、节假日收货</a></li>
										<li data-value="3"><a href="javascript:;" title="周一至周五收货"
											role="button">周一至周五收货 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									</ul>
								</div>
							</div>
						</div>
						<%-- 联系电话 --%>
						 <div class="consignee-info">
							<div class="phoneNullInfo promptNull" id="phone">
								<div class="consigneeNull"></div>
								手机号码跟备用联系电话至少填一个 
							</div>
							<div class="phone">
								<label class="ui-label">联系电话：</label>
							</div>
							<div class="phone-input">
								<input id="phone_prompt" class="ui-input"
									placeholder="请填写手机号" type="text" name="recPhone" onblur="checkPhone(this)">
									<span style="font-size: 13px;">(必填)</span>
							</div>
						</div>
						<%-- 地址类型 --%>
						<div class="consignee-info">
							<div class="addressType">
								<label class="ui-label">地址类型：</label>
							</div>
							<div class="ui-dropdown J_address_category_dropdown" id="addressType">
								<div class="ui-dropdown-hd" id="addressChang">
									<a href="javascript:;" role="button" title="请选择地址类型"
										class="ui-dropdown-current">请选择地址类型</a> 
										<i class="vipFont i-arrow-up"></i>
								</div>
								<div class="ui-dropdown-bd">
									<ul class="ui-dropdown-menu" >
										<li data-value="1"><a href="javascript:;" title=""
											role="button">家庭</a></li>
										<li data-value="2"><a href="javascript:;" title=""
											role="button">公司</a></li>
										<li data-value="3"><a href="javascript:;" title=""
											role="button">其他</a></li>
									</ul>
								</div>
							</div>
						</div>
						<%--所在地区 --%>
						<div class="consignee-info">
							<div class="area">
								<input name="county" value="" type="hidden"> <input
									name="postcode" value="" type="hidden"> <label
									class="ui-label">所在地区：</label>
							</div>
							<div class="ui-form-item-group" id="province">
								<div class="ui-dropdown J_drop_downs z-ui-dropdown-open"
									id="J_address_province" mars_sead="address_provice_sel">
									<div class="ui-dropdown-hd">
										<a href="javaScript:void(0)" role="button"
											class="J_fake_a ui-dropdown-current " id="proviceName">省/直辖市</a> 
										<i class="vipFont i-arrow-up"></i>
									</div>
									<div class="ui-dropdown-bd dropdown-bd-province">
										<ul class="ui-dropdown-menu" id="eachUl">
											<li data-text="北京市" data-value="101101"><a
												href="javascript:;" class="" title="北京市">北京市</a></li>
	
											<li data-text="天津市" data-value="101102"><a
												href="javascript:;" class="" title="天津市">天津市</a></li>
	
											<li data-text="河北省" data-value="101103"><a
												href="javascript:;" class="" title="河北省">河北省</a></li>
	
											<li data-text="山西省" data-value="101104"><a
												href="javascript:;" class="" title="山西省">山西省</a></li>
	
											<li data-text="辽宁省" data-value="102101"><a
												href="javascript:;" class="" title="辽宁省">辽宁省</a></li>
	
											<li data-text="吉林省" data-value="102102"><a
												href="javascript:;" class="" title="吉林省">吉林省</a></li>
	
											<li data-text="上海市" data-value="103101"><a
												href="javascript:;" class="" title="上海市">上海市</a></li>
	
											<li data-text="江苏省" data-value="103102"><a
												href="javascript:;" class="" title="江苏省">江苏省</a></li>
	
											<li data-text="浙江省" data-value="103103"><a
												href="javascript:;" class="" title="浙江省">浙江省</a></li>
	
											<li data-text="安徽省" data-value="103104"><a
												href="javascript:;" class="" title="安徽省">安徽省</a></li>
	
											<li data-text="福建省" data-value="103105"><a
												href="javascript:;" class="" title="福建省">福建省</a></li>
	
											<li data-text="江西省" data-value="103106"><a
												href="javascript:;" class="" title="江西省">江西省</a></li>
	
											<li data-text="山东省" data-value="103107"><a
												href="javascript:;" class="" title="山东省">山东省</a></li>
	
											<li data-text="河南省" data-value="104101"><a
												href="javascript:;" class="" title="河南省">河南省</a></li>
	
											<li data-text="湖北省" data-value="104102"><a
												href="javascript:;" class="" title="湖北省">湖北省</a></li>
	
											<li data-text="湖南省" data-value="104103"><a
												href="javascript:;" class="" title="湖南省">湖南省</a></li>
	
											<li data-text="广东省" data-value="104104"><a
												href="javascript:;" class="" title="广东省">广东省</a></li>
	
											<li data-text="海南省" data-value="104106"><a
												href="javascript:;" class="" title="海南省">海南省</a></li>
	
											<li data-text="重庆市" data-value="105100"><a
												href="javascript:;" class="" title="重庆市">重庆市</a></li>
	
											<li data-text="四川省" data-value="105101"><a
												href="javascript:;" class="" title="四川省">四川省</a></li>
	
											<li data-text="贵州省" data-value="105102"><a
												href="javascript:;" class="" title="贵州省">贵州省</a></li>
	
											<li data-text="云南省" data-value="105103"><a
												href="javascript:;" class="" title="云南省">云南省</a></li>
	
											<li data-text="陕西省" data-value="106101"><a
												href="javascript:;" class="" title="陕西省">陕西省</a></li>
	
											<li data-text="甘肃省" data-value="106102"><a
												href="javascript:;" class="" title="甘肃省">甘肃省</a></li>
	
											<li data-text="青海省" data-value="106103"><a
												href="javascript:;" class="" title="青海省">青海省</a></li>
											
											<li data-text="黑龙江省" data-value="102103"><a
												href="javascript:;" class="" title="黑龙江省">黑龙江省</a></li>
											
											<li data-text="广西壮族自治区" data-value="104105"><a
												href="javascript:;" class="" title="广西壮族自治区">广西壮族自治区</a></li>
	
											<li data-text="西藏自治区" data-value="105104"><a
												href="javascript:;" class="" title="西藏自治区">西藏自治区</a></li>
												
											<li data-text="内蒙古自治区" data-value="101105"><a
												href="javascript:;" class="" title="内蒙古自治区">内蒙古自治区</a></li>
	
											<li data-text="宁夏回族自治区" data-value="106104"><a
												href="javascript:;" class="" title="宁夏回族自治区">宁夏回族自治区</a></li>
	
											<li data-text="新疆维吾尔自治区" data-value="106105"><a
												href="javascript:;" class="" title="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="ui-form-item-group">
								<div class="ui-dropdown  z-ui-dropdown-disable  J_drop_downs " id="J_address_city" mars_sead="address_city_sel">
				                    <div class="ui-dropdown-hd  style city">
				                        <a href="javaScript:void(0)" role="button"  id="cityName"
				                          class="J_fake_a ui-dropdown-current  cityStyle">城市</a>
				                        <i class="vipFont i-arrow-up"></i>
				                    </div>
				                    <div class="ui-dropdown-bd dropdown-bd-city">
				                        <ul class="ui-dropdown-menu" id="cityUl"></ul>
				                    </div>
				                </div>
							</div>
							<div class="ui-form-item-group">
								<div class="ui-dropdown  z-ui-dropdown-disable  J_drop_downs" id="J_address_county" mars_sead="address_district_sel">
				                    <div class="ui-dropdown-hd style">
				                        <a href="javaScript:void(0)" role="button" id="areaName"
				                         class="J_fake_a ui-dropdown-current  aredStyle">区/县</a>
				                        <i class="vipFont i-arrow-up"></i>
				                    </div>
				                    <div class="ui-dropdown-bd dropdown-bd-county">
				                        <ul class="ui-dropdown-menu" id="areaUl"></ul>
				                    </div>
				                </div>
							</div>
						</div>
						<%-- 详细地址 --%>
						<div class="consignee-info">
							<div class="address promptNull">
								填写路名、门牌号，请勿再次填写省市区
							</div>
							<div class="addressDump">
								<label class="ui-label">详细地址：</label>
							</div>
							<div class="people-input">
								<input id="address_prompt" class="ui-input special-input"
									placeholder="请填写详细地址" name="consignee" value="" autofocus="true"
									mars_sead="address_name_input" type="text"onfocus="checkAddress(this)">
							</div>
						</div>
						<%-- 设为默认 --%>
						<div class="consignee-info">
							<div class="default">
								<span class="default-icon"></span>
								<span style="font-size: 13px;">设为默认地址</span>
							</div>
						</div>
						<%--保存 --%>
						<div class="keep_item">
							<button class="keep" id="saveAddress">保存</button>
						</div>
					</div> 
				</form>
				
			</div>
			
			
			<%-- 地址填写完成 --%>
				<div class="m-address" style="display:none" id="addressArea">
					<ul class="m-inline-block address-list J_address_list" id="addressCardArea">
						
						<li id = "addPanel" class="inline-block-item address-item address-item-add J_address_item_container
							 	 J_address_add_container J_address_mod_container" data-hover="address-item-add-hover" data-touch="z-touch">
					        <div class="address-inner">
					            <a class="add-address J_address_add_btn J_fake_a"  href="javaScript:void(0)" mars_sead="address_new_radio">
					                <span class="addIcon glyphicon-address-add">+</span>
					                <div class="add-address-text">添加地址</div>
					            </a>
					        </div>
					    </li>
					</ul>
				</div>
			
			<%-- 商品清单 --%>
			<div class="orderInventory">
				<div class="goods-h">
					<div style="margin: 8px 0 0 20px;float: left;">购物清单</div>
					<div style="float: right;margin: 10px 10px 0 0;font-size: 13px">
						<a href="CartController?biz=findCartByCus&customerId=00B2AF38C09E41D799069E24D98916C6">返回购物袋修改商品</a>
					</div>
				</div>
				<div class="orderInfo">
					<div style="margin-bottom: 10px;">
						<ul>
							<li style="margin:0 440px 0 20px;"><b>唯品会 发货商品</b></li>
							<li class="ul-she">尺码</li>
							<li class="ul-she">单价</li>
							<li>数量</li>
						</ul>
					</div>
					<form id="addOrder" action="OrderServlet" method="post" onsubmit="return checkForm()">
					<input type="hidden" name="biz" value="addOrder"/>
		            <input id="oAdress" type="hidden" name="address" value=""/>
		            <input id="congineeP" type="hidden" name="consignee" value=""/>
                    <input id="recPhoNum" type="hidden" name="recPhone" value=""/>
					<input id="totalPrices" type="hidden" name="totalPrice" value=""/>
					<div class="makeOrder">
						<c:forEach items="${requestScope.cartList}" var="cartList">
							<table>
								<tr>
									<td>
										<div class="product-item-special">
											<div class="out-icon">
												<img src="<c:url value='images/product/s1/${cartList.picture}'/>" style="float: left;width: 50px;height: 50px;"
													class="product-icon" />
													<input type="hidden" name="cartId" value="${cartList.cartId}"/>
											</div>
											<div class="product-item productName">
												<a href="javaScript:void(0)">${cartList.productName }</a>
											</div>
										</div>
									</td>
									<td>
										<div class="product-item">
											<span>${cartList.size}</span>
										</div>
									</td>
									<td>
										<div class="product-item">
											<span>￥</span><span class="subTotal">${cartList.price}</span>
										</div>
									</td>
									<td>
										<div class="product-item" style="color:#f10180;">
											<span class="num">${cartList.productNum}</span>
										</div>
										<div style="display: none" class="sum">
											${cartList.subtotal }
										</div>
									</td>
								</tr>
							</table>
						</c:forEach>
					</div>
					</form>
					<div style="font-size: 14px;margin-left: 580px;">
						<span style="margin-left: 128px;">运费：免运费</span>
						<span style="margin-left: 30px;">本组商品金额：
							<span style="color: #f10180;">￥</span>
							<span class="total" style="color: #f10180;"></span>
						</span>
					</div>
				</div>
			</div>

			<%-- 支付方式 --%>
			<div class="defray-Type">
				<div class="goods-h">
					<div style="margin: 8px 0 0 20px;">支付方式</div>
				</div>
				<div class="defray-Type-info">
					<span style="margin-left: 23px;">*请先保存收货信息</span>
					<div class="all-defray-info">
						<div class="all-defray-top">
							<div class="left">
								<span class="receipt"></span>
								<span>开具发票</span>
								<div style="margin-top: 3px;">*请先保存收货信息</div>
							</div>
							<div class="right">
								<div class="right-info">
									<div class="prix" style="color:#f10180;">
										<span>￥</span>
										<span class="total"></span>
									</div>
									<div class="itemforeceipt">
										<label class="ui-label">商品金额：</label>
									</div>
								</div>
								<div class="right-info">
									<div class="prix">
										<span>￥</span>
										<span>0</span>
									</div>
									<div class="itemforeceipt">
										<label class="ui-label">运费：</label>
									</div>
								</div>
								<div class="right-info">
									<div class="prix">
										<span>￥</span>
										<span>0</span>
									</div>
									<div class="itemforeceipt">
										<label class="ui-label">获得优惠：</label>
									</div>
								</div>
								<div class="right-info">
									<div class="prix" style="font-size: 17px;color:#f10180;">
										<b><span>￥</span>
										<span class="total"></span></b>
									</div>
									<div class="itemforeceipt stayOut">
										<label class="ui-label" style="font-size: 17px;"><b>待支付：</b></label>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="all-defray-down" >
							<div style="width: 39%;margin-left: 610px;">
								<span>请在倒计时结束前提交订单</span>
								<span class="prompt"></span>
								<a id="subButton" class="submit-goods" href="javascript:$('#addOrder').submit()">提交订单</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
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
	
	
	<div id="textModel" style="display:none">
			    <li onclick="writeForm(this)" class="inline-block-item address-item J_address_item_container 
							J_address_mod_container z-address-item-default">
							<div class="receiverAddress">
								<div class="member-info-item member-info-title">
					                <p class="member-text" title="">收货人</p>
					            </div>						
		            			<div class="member-info-item member-info-time">
					                <p>周一至周日均可发货</p>
					            </div>
								<div class="member-info-item member-info-phone">
					                <div class="member-text">
					                        <span class="member-mobile">手机号</span>
					                        <span class="member-tel"></span>
					            	</div>
					            </div>
								<div class="member-info-item member-info-local" title="地址">
					                <div class="member-text" title="address">地址</div>
					            </div>
					            <span class="default-address-text">默认地址</span>
					            <a class="update-address-text">修改</a>
							</div>
						</li>
			
			</div>
	
	
	
	
  </body>
</html>
