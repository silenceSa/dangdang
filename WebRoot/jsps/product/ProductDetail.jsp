<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>${product.productName}</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="css/product/ProductDetail.css">

<link rel="stylesheet" type="text/css"
	href="adminjsps/admin/css/index/index.css" />
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>

<script type="text/javascript" src="js/product/ProductDetail.js"></script>
 <link rel="stylesheet" href="js/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="js/layui/css/modules/layim/layim.css" media="all"/>
    <script src="js/layui/lay/modules/jquery.js"></script>
    <script src="js/layui/layui.js"></script>
	  <script>
			layui.config({
			  base: '/layui/lay/modules/' //你的模块目录
			}).use('layim'); //加载入口
	  </script>

</head>

<body>
	<jsp:include page="../../jsps/head.jsp"></jsp:include>
	<div class="FW-wrap fwr">
		<!-- 产品信息结构容器 -->
		<div class="FW-product clearfix">
			<!-- 产品位置模块 -->
			<div class="M-class">
				<a href="/">首页&nbsp;&gt;&nbsp;</a><a href="#">616高能大促-${product.brandName}女装专场</a>&nbsp;&gt;&nbsp;<span
					title="V领时尚条纹雪纺上衣阔腿裤套装黑色">${product.productName}</span>
			</div>

			<div class="M-product J_M_product">
				<div class="M-pic">
					<!-- 360°图片展示 -->
					<!-- 360°图片展示 end -->

					<!-- 产品图片模块 -->
					<div id="J-mer-ImgReview">
						<div class="pic-sliderwrap">
							<div class="show-midpic active-pannel">
								<div class="zoomPad" id="big">
									<img class="lazy"
										src="<c:url value='images/product/s1/${product.image_b}'/>"
										alt="" width="420" height="531" id="img">
									<div class="zoomWindow"
										style="position: absolute; z-index: 5001; cursor: default; left: 0px; top: 0px; display: none;">
									</div>
									<div class="magnifyingBegin"></div>
									<!-- 滑块 -->
									<div class="magnifyingShow">
										<!-- 放大镜显示的图片 -->
										<img src="<c:url value='images/product/s1/${product.image_b}'/>">
									</div>
								</div>
								<em class="icon-a"></em>
							</div>
						</div>

						<div class="pic-slider" id="J-sImgSlide-wrap">
							<div id="J-sImg-wrap" class="pic-slider-wrap"
								style="position: absolute; width: 355px; left: 0px;">
								<div
									class="pic-slider-items J-picSlider-items pic-slider-cur active-pannel"
									style="width: 62px; height: 73px; float: left;" id="s1">
									<img src="<c:url value='images/product/s1/${product.image_s1}'/>"
										alt="" class="J-mer-smallImg" width="62" height="78">
								</div>
								<div class="pic-slider-items J-picSlider-items"
									style="width: 62px; height: 73px; float: left;" id="s2">
									<img src="<c:url value='images/product/s2/${product.image_s2}'/>"
										alt="" class="J-mer-smallImg" width="62" height="78">
								</div>
								<div class="pic-slider-items J-picSlider-items"
									style="width: 62px; height: 73px; float: left;" id="s3">
									<img src="<c:url value='images/product/s3/${product.image_s3}'/>"
										alt="" class="J-mer-smallImg" width="62" height="78">
								</div>
								<div class="pic-slider-items J-picSlider-items"
									style="width: 62px; height: 73px; float: left;" id="s4">
									<img src="<c:url value='images/product/s4/${product.image_s4}'/>"
										alt="" class="J-mer-smallImg" width="62" height="78">
								</div>
								<div class="pic-slider-items J-picSlider-items"
									style="width: 62px; height: 73px; float: left;" id="s5">
									<img src="<c:url value='images/product/s5/${product.image_s5}'/>"
										alt="" class="J-mer-smallImg" width="62" height="78">
								</div>
							</div>
						</div>
					</div>

					<!-- 产品图片模块 end -->

					<div class="product-text">
						<!-- 产品编码 -->
						<p class="other-infoCoding">商品编码：${product.productId}</p>
						<!-- 产品编码 end -->
						<!-- 在售商品收藏 -->
						<div class="onsell-collect" id="J_add_fav_wrapper">
							<div class="goods-fav-collect" id="J_add_fav_button">
								<i class="star-icon star-empty-icon"></i> <span
									class="collect-tips">收藏商品</span>
							</div>
						</div>
						<!-- 在售商品收藏 end -->

					</div>
				</div>
				<!-- 产品信息模块 -->
				<div class="M-productInfo clearfix">
					<div class="product-content-inner clearfix" id="message">

						<div class="pi-title-box">

							<div class="pib-title">
								<p class="pib-title-class">${product.brandName}</p>
								<p class="pib-title-detail" title="V领时尚条纹雪纺上衣阔腿裤套装黑色">${product.productName}</p>
							</div>
						</div>


						<div class="pi-price-box  clearfix" id="J-pi-price-box">
							<span class="pbox-price showthis"
								id="J_surpriseSprice_wrap216914989"> <i class="pbox-yen">&yen;</i><em
								class="J-price" id="currPrice">${product.currPrice}</em>
							</span>
							<div class="pi-dicount-box">
								<div class="pbox-off-box">
									<span class="pbox-off J-discount">${product.discount}折</span>
								</div>
								<span class="pbox-market">&yen;<del class="J-mPrice">${product.price}</del></span>
							</div>
							<div class="pbox-pms">
								<div class="pbox-pms-wrap" id="J-pmsContent">
									<span class="pbox-pms-moreact" id="J-pms-moreact">更多活动<i
										class="vipFont"></i></span> <span class="pbox-pms-packup"
										id="J-pms-packup">收起<i class="vipFont"></i></span>
								</div>
							</div>

						</div>
						<div class="pi-attr-box " id="J-proData-box">
							<form id="J-cartAdd-frm"  class="cartAdd-form" method="post"
								action="CartController">
								<input type="hidden" name="biz" value="addCartItem"/>
								<input type="hidden" name="customerId" value="00B2AF38C09E41D799069E24D98916C6"/>
								<input type="hidden" name="productId" value="${product.productId}"/>
								<input id="psize" type="hidden" name="size" value="s"/>
								
								
								<dl class="i-freight clearfix" id="J_freight_frame">
									<dt class="freight-name">运费</dt>

									<dd class="freight-con" id="J_freightTip_wrap">
										<span id="J-fare">&yen;${product.freight}</span> <span>（订单满288免运费）</span>
									</dd>
								</dl>
								<dl class="i-size clearfix J-sizeArea-wrap "
									id="J-sizeArea-wrap">
									<dt class="size-name">尺码</dt>
									<dd class="size-list">
										<ul class="clearfix">
											<li class="size-list-item J-sizeID" 
												id="J-cartAdd-sizeID-561633723" style="z-index: 5;"><span
												class="size-list-item-name" onclick="chance(this)">S</span> <span class="i-select"
												id="s-select"></span> <span class="i-recommand"></span> <span
												class="J-size-waitlist size-waitlist" id="select-s"></span>
												<div
													class="ui-tooltips ui-tooltips-top-arrow size-pop J-sizeData-item">
													<div class="ui-tooltips-content">
														<div class="pop-list-wrap">
															<ul class="pop-size-list clearfix">
																<li class="fl"><span>号型：155/80A</span></li>
																<li class="fl"><span>胸围：96</span></li>
																<li class="fl"><span>衣长：56</span></li>
																<li class="fl"><span>腰围：64</span></li>
																<li class="fl"><span>裤长：87</span></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li  
												class="size-list-item J-sizeID sli-disabled sli-have-chance"
												id="J-cartAdd-sizeID-561633722" style="z-index: 4;"><span
												class="size-list-item-name" onclick="chance(this)">M</span> <span class="i-select"
												id="m-select"></span> <span class="i-recommand"></span> <span
												class="J-size-waitlist size-waitlist" id="select-m"></span>
												<div
													class="ui-tooltips ui-tooltips-top-arrow size-pop J-sizeData-item">
													<div class="ui-tooltips-content">
														<div class="">
															<span class="J-btn-popup-waitlist btn-popup-waitlist"></span>
															<p class="txt-not-waitlist">此尺码还有机会购买，加入提醒试试吧！</p>
														</div>
														<div class="pop-list-wrap">
															<ul class="pop-size-list clearfix">
																<li class="fl"><span>号型：160/84A</span></li>
																<li class="fl"><span>胸围：100</span></li>
																<li class="fl"><span>衣长：57</span></li>
																<li class="fl"><span>腰围：68</span></li>
																<li class="fl"><span>裤长：88</span></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="size-list-item J-sizeID"  
												id="J-cartAdd-sizeID-561633721" style="z-index: 3;"><span
												class="size-list-item-name" onclick="chance(this)">L</span> <span class="i-select"
												id="l-select"></span> <span class="i-recommand"></span> <span
												class="J-size-waitlist size-waitlist" id="select-l"></span>
												<div
													class="ui-tooltips ui-tooltips-top-arrow size-pop J-sizeData-item">
													<div class="ui-tooltips-content">
														<div class="pop-list-wrap">
															<ul class="pop-size-list clearfix">
																<li class="fl"><span>号型：165/88A</span></li>
																<li class="fl"><span>胸围：104</span></li>
																<li class="fl"><span>衣长：58</span></li>
																<li class="fl"><span>腰围：72</span></li>
																<li class="fl"><span>裤长：89</span></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li  
												class="size-list-item J-sizeID sli-disabled sli-have-chance"
												id="J-cartAdd-sizeID-561633720" style="z-index: 2;"><span
												class="size-list-item-name" onclick="chance(this)">XL</span> <span class="i-select"
												id="xl-select"></span> <span class="i-recommand"></span> <span
												class="J-size-waitlist size-waitlist" id="select-xl"></span>
												<div
													class="ui-tooltips ui-tooltips-top-arrow size-pop J-sizeData-item">
													<div class="ui-tooltips-content">
														<div class="">
															<span class="J-btn-popup-waitlist btn-popup-waitlist"></span>
															<p class="txt-not-waitlist">此尺码还有机会购买，加入提醒试试吧！</p>
														</div>
														<div class="pop-list-wrap">
															<ul class="pop-size-list clearfix">
																<li class="fl"><span>号型：170/92A</span></li>
																<li class="fl"><span>胸围：108</span></li>
																<li class="fl"><span>衣长：59</span></li>
																<li class="fl"><span>腰围：76</span></li>
																<li class="fl"><span>裤长：90</span></li>
															</ul>
														</div>
													</div>
												</div></li>
											<li class="size-list-item J-sizeID sli-disabled"  
												id="J-cartAdd-sizeID-575225047" style="z-index: 1;"><span
												class="size-list-item-name" onclick="chance(this)">XXL</span> <span
												class="i-select" id="xxl-select"></span> <span
												class="i-recommand"></span> <span
												class="J-size-waitlist size-waitlist" id="select-xxl"></span>
												<div
													class="ui-tooltips ui-tooltips-top-arrow size-pop J-sizeData-item">
													<div class="ui-tooltips-content">
														<div class="pop-list-wrap">
															<ul class="pop-size-list clearfix">
																<li class="fl"><span>号型：175/96A</span></li>
																<li class="fl"><span>胸围：112</span></li>
																<li class="fl"><span>衣长：60</span></li>
																<li class="fl"><span>腰围：80</span></li>
																<li class="fl"><span>裤长：91</span></li>
															</ul>
														</div>
													</div>
												</div></li>
										</ul>

									</dd>
								</dl>

								<dl class="i-num clearfix" id="J-num-select">
									<dt class="num-name">数量</dt>
									<dd class="num-box">
										<span class="num-reduce num-reduce-disabled J-num-act-reduce"
											id="num-sub"></span> <em class="num-input J-pro-num-txt"
											id="num">1</em> <input value="1" name="productNum" id="J-num-input"
											type="hidden"> <span class="num-add J-num-act-add"
											id="num-add"></span>
									</dd>
								</dl>

								<div class="i-button">
									<!-- 海淘首次进入提示浮层显示 .z-ui-tooltips-in -->
									<div id="J-button-box" class="button-box  ">
										<button type="submit" 
											class="ui-btn-large ui-btn-primary ui-btn-loading"
											id="J-cartAdd-submit">
											<span class="ui-btn-loading-before" > 加入购物袋
											</span>
										</button>
									</div>
								</div>

								<div class="vip-point vip-currency-v1" id="J-vip-point">
									<div class="user-in-vip">
										<p class="vip-currency-title-v1">
											购买最多可获<em class="other-box-point">129</em>个唯品币
										</p>

									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="other-form-box" id="J-other-form-box">

						<dl class="other-service clearfix">
							<dt class="other-name">服务</dt>
							<dd class="other-box">
								<div class="ht-txt J-ht-tip">该商品支持换货，订单签收7天内可申请换货</div>
							</dd>
						</dl>

						<!-- 服务保障信息 -->
						<div id="J-safeguard-icon">
							<div class="pi-promise-box clearfix">
								<ul class="pi-promise-list new-guest">
									<li class="pi-promise-item"><i
										class="pi-promise-icon item-7day"></i><a
										class="J_freight_free" href="#" target="_blank">商品放心挑</a></li>
									<li class="pi-promise-item item-empty"><a
										class="J_freight_free" href="#" target="_blank">唯品会七天内无理由放心退（返运费）</a></li>
								</ul>
							</div>
						</div>
						<!-- 服务保障信息 end -->


					</div>
				</div>
			</div>


		</div>

		<!-- 产品详情结构容器 -->
		<div id="J-FW-detail" class="FW-detail clearfix J-data-module">
			<div class="M-detail">
				<!-- 终端页模块导航 -->
				<div class="M-detailTop" id="J-topbar">
					<div class="M-detailTop-wrap">
						<ul class="dt-list">
							<li class="dt-item"><span class="dt-list-item J-topbar-tabs"
								id="a">商品详情</span>
							<li class="dt-item"><span class="dt-list-item J-topbar-tabs"
								id="b">商品图片</span>
							<li class="dt-item"><span class="dt-list-item J-topbar-tabs"
								id="c">商品评论</span> <span class="hidden" id="hidden">${product.productId}</span>
						</ul>

						<div class="dt-cart hidden" id="J-topbar-addBtn">
							<span id="J-topBar-sell-price" class="dt-cart-price"> <i
								class="dt-cart-yen">&yen;</i><em class="J-price" id="fontSize">${product.currPrice}</em>
							</span>

							<button type="submit"
								class="ui-btn-medium ui-btn-primary dt-cart-btn">
								 加入购物袋
							</button>
						</div>
					</div>
				</div>
				<!-- 终端页模块导航 end -->

				<div class="M-detailCon">
					<!-- 标记线，使用商品库模版 -->

					<div class="size-helper-table-wrapper J_size_helper_table_wrapper"
						id="detail1">
						<div class="J-dc-tit-new dc-tit-new" id="J-proSize-scroll">
							<i class="dc-tit-new-icon"></i>
							<p class="dc-title">
								商品尺码<i class="dc-title-en">SIZE</i>
							</p>
						</div>

						<div class="size-helper-description J_size_info_warpper">
							<dl class="dc-size-tip">
								<dt>TIPS:</dt>
								<dd>1. 选购时，请综合参考尺码表中各项参数，有助于你选择到更合适的尺码。</dd>
								<dd>2.（只适用服装）平铺测量自己的合身服装尺寸作参考，对比选购更准确！</dd>
								<dd>3. 请放心挑选尺码，唯品7天退货无忧替你保驾护航。</dd>
							</dl>
							<div class="size-helper-cnt J_size_helper_v3_cnt hidden"></div>
							<h4 class="dc-size-tit" id="J-sizeCheck-scroll">尺码对照表：</h4>
							<div id="J-wrap-sizeTable"
								class="J-wrap-sizeTable pro-size-table">
								<table class="pro-size-tab">
									<tbody id="J-tableBody" class="J_size_table_body">
										<tr class="J-size-tr pro-size-tab-bg-a">
											<td>尺码</td>
											<td>号型</td>
											<td>胸围</td>
											<td>衣长</td>
											<td>腰围</td>
											<td>裤长</td>
										</tr>
										<tr class="J-size-tr J-sizeId-561633723">
											<td>S</td>
											<td>155/80A</td>
											<td>96</td>
											<td>56</td>
											<td>64</td>
											<td>87</td>
										</tr>
										<tr class="J-size-tr J-sizeId-561633722">
											<td>M</td>
											<td>160/84A</td>
											<td>100</td>
											<td>57</td>
											<td>68</td>
											<td>88</td>
										</tr>
										<tr class="J-size-tr J-sizeId-561633721">
											<td>L</td>
											<td>165/88A</td>
											<td>104</td>
											<td>58</td>
											<td>72</td>
											<td>89</td>
										</tr>
										<tr class="J-size-tr J-sizeId-561633720">
											<td>XL</td>
											<td>170/92A</td>
											<td>108</td>
											<td>59</td>
											<td>76</td>
											<td>90</td>
										</tr>
										<tr class="J-size-tr J-sizeId-575225047">
											<td>XXL</td>
											<td>175/96A</td>
											<td>112</td>
											<td>60</td>
											<td>80</td>
											<td>91</td>
										</tr>
										<tr>
											<td colspan="6" class="tag J_size_table_tips"
												id="J-size-tips"><span class="light-red">温馨提示：</span>
												A表示一般体型，尺码误差在1-3cm。</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>


					<!-- 商品参数 -->
					<div id="detail2">
						<div class="J-dc-tit-new dc-tit-new">
							<i class="dc-tit-new-icon"></i>
							<p class="dc-title">
								商品参数<i class="dc-title-en">DETAIL</i>
							</p>
						</div>
						<div class="dc-info clearfix">
							<table class="dc-table fst">
								<tbody>
									<tr>
										<th class="dc-table-tit">品牌名称：</th>
										<td>${product.brandName }</td>
										<th class="dc-table-tit">商品名称：</th>
										<td>${product.productName}</td>
									</tr>
									<tr>
										<th class="dc-table-tit">商品分类：</th>
										<td>女式套装</td>
										<th class="dc-table-tit">产地：</th>
										<td>杭州</td>
									</tr>
									<tr>
										<th class="dc-table-tit">材质：</th>
										<td>上衣：100%聚酯纤维 裤子：100%聚酯纤维</td>
										<th class="dc-table-tit">洗涤说明：</th>
										<td>40度手洗，不可漂白，悬挂晾干，中温熨烫，不可干洗</td>
									</tr>
									<tr>
										<th class="dc-table-tit">适用季节：</th>
										<td>夏</td>
										<th class="dc-table-tit">风格：</th>
										<td>通勤</td>
									</tr>
									<tr>
										<th class="dc-table-tit">腰型：</th>
										<td>高腰</td>
										<th class="dc-table-tit">款式：</th>
										<td>上衣+裤子</td>
									</tr>
									<tr>
										<th class="dc-table-tit">裤长：</th>
										<td>九分裤</td>
										<th class="dc-table-tit">领型：</th>
										<td>V领</td>
									</tr>
									<tr>
										<th class="dc-table-tit">适用人群：</th>
										<td>青年</td>
										<th class="dc-table-tit">图案：</th>
										<td>几何图案</td>
									</tr>
									<tr>
										<th class="dc-table-tit">面料：</th>
										<td>聚酯纤维</td>
										<th class="dc-table-tit">袖长：</th>
										<td>短袖</td>
									</tr>
									<tr>
										<th class="dc-table-tit">配件/备注：</th>
										<td>无配件</td>
										<th class="dc-table-tit">商品编号：</th>
										<td>${product.productId}</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
					<!-- 商品参数 end -->

				</div>
				<!-- 图片展示区 -->
				<div id="picture">
					<div class="J-dc-tit-new dc-tit-new" id="jsp">
						<i class="dc-tit-new-icon"></i>
						<p class="dc-title">
							商品图片<i class="dc-title-en">PICTURE</i>
						</p>
					</div>
					<div id="image-h">
					    <img src="<c:url value='images/product/h/${product.image_h}'/>"/>
					</div>
				</div>


				<!-- 商品评论 -->
				<div id="comment">
					<div class="J-dc-tit-new dc-tit-new">
						<i class="dc-tit-new-icon"></i>
						<p class="dc-title">
							商品评论<i class="dc-title-en">COMMENT</i>
						</p>
					</div>
					<div id="common">
						<iframe width="100%" height="100%" frameborder="0" src="<c:url value='/CommentServlet?productId=${product.productId}'/>" ></iframe>
					
					</div>
				</div>

			</div>
		</div>




	</div>





	<jsp:include page="../../jsps/footer.jsp"></jsp:include>
	<jsp:include page="../../jsps/toolbar.jsp"></jsp:include>

</body>
<script type="text/javascript" src="js/chat.js"></script>
</html>
