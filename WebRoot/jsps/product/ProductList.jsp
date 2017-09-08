<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>女装专场</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="css/product/pager.css">
<link rel="stylesheet" type="text/css"
	href="css/product/ProductList.css">
<link id="easyuiTheme" rel="stylesheet" type="text/css"
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/metro-red/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/metro-red/layout.css" />
<link rel="stylesheet" type="text/css"
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="adminjsps/admin/css/index/index.css" />
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/product/ProductList.js"></script>
</head>

<body>
    <jsp:include page="../../jsps/head.jsp"></jsp:include>
	 <div class="g-wrap">
	    <!-- 套裙搜索 -->
		<div id="J_catSite" class="m-cat-site J_catSite">
		   <div class="cat-site-cnt J_mq_layout" id="J_catSite_inner">
		      <div class="cat-site-in clearfix J_mq_overflow">
		         <div class="f-left J_mq_cnt J_bread_nav" id="J_catSite_inner_inner">
		            <a class="breadcrumb-item J_revokeAll_dom" href="" id="category">商品分类</a>
		            <i class="breadcrumb-step-icon vipFont">＞</i>
                    <a class="breadcrumb-item" href="ProductServlet?biz=findProductByCategoryId&categoryId=BA6CB5217BA8499D80C02EDCEF71E691">品质女装</a>
                    <i class="breadcrumb-step-icon vipFont">＞</i>
                    <div class="cat-site-more J-cate-act">
                      <p class="cat-site-text">
                        <a href="" class="s">裙装/套装</a>
                        <i class="i-cat-dis vipFont">∨</i>
                      </p>
                      <!-- 隐藏裙装 -->
                      <div class="cat-site-pop J-cate-pop" style="width:120px; display:none;"></div>
                      
                    </div>
                    <i class="breadcrumb-step-icon vipFont">＞</i>
                    <!-- 下拉模块套装 -->
                    <div class="cat-site-more J-cate-act">
                      <p class="cat-site-text">
                        <a href="" class="s">套装</a>
                        <i class="i-cat-dis vipFont">∨</i>
                      </p>
                    </div>
		         </div>
		      </div>
		   </div>
		</div>
		
		<!-- 筛选 -->
		<div id="J_catOperArea" class="m-cat-wrap">
		   <div id="J_catOper" class="m-cat-oper">
		      <!-- 筛选内容显示区 -->
		      <div class="oper-more-cnt" id="J_catOper_inner">
		         <dl id="J_search_brand" class="cat-oper-sec cat-sec-fav f-clearfix" style="height:223px;">
		           <dt class="oper-sec-tit" id="J_search_brand_left">品牌</dt>
		           <dd class="oper-sec-cnt J_multi_option_cnt" id="pin">
		              <div class="oper-sec-lit oper-sec-fav J_ctHeight">
		                <div class="oper-lit-cnt J_content">
		                  <div id="J_row" class="f-clearfix">
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=尚静'/>">
		                       <img src="images/product/primary.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=凡兔'/>">
		                       <img src="images/product/02.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=莫卡娜'/>">
		                       <img src="images/product/03.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=沫晗依美'/>">
		                       <img src="images/product/04.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=韩都衣舍'/>">
		                       <img src="images/product/05.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=迹噫'/>">
		                       <img src="images/product/06.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=丝柏舍'/>">
		                       <img src="images/product/07.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" href="<c:url value='ProductServlet?biz=findProductByBrandName&brandName=一米阳光'/>">
		                       <img src="images/product/08.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item" >
		                       <img src="images/product/09.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/10.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/11.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/12.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/13.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/14.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/15.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/16.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/17.png" height="40" width="80" />
		                    </a>
		                    <a class="option-item-logo J-multi-option-item">
		                       <img src="images/product/18.png" height="40" width="80" />
		                    </a>
		                  </div>
		                </div>
		              </div>
		           </dd>
		           <dd class="oper-sec-more">
		             <span class="cat-more-dis J_moreDis">
		                                      更多
		               <i class="i-cat-dis vipFont">∨</i>
		             </span>
		             <span class="cat-more-add J_moreAdd">
		               <i class="i-cat-add vipFont">+</i>
		                                       多选
		             </span>
		           </dd>  
		         </dl>
		         <dl id="catPerPos" class="cat-oper-sec f-clearfix J_listChoice" style="height:35px">
		           <dt class="oper-sec-tit">尺码</dt>
		           <dd class="oper-sec-cnt J_multi_option_cnt">
		             <div class="oper-sec-lit f-clearfix J_content J_ctHeight">
		               <span class="multi-option-item">XXS </span>
		               <span class="multi-option-item">XS</span>
		               <span class="multi-option-item">S</span>
		               <span class="multi-option-item">M </span>
		               <span class="multi-option-item">L </span>
		               <span class="multi-option-item">XL </span>
		               <span class="multi-option-item">XXL </span>
		               <span class="multi-option-item">XXXL </span>
		               <span class="multi-option-item">XXXXL</span>
		               <span class="multi-option-item">XXXXXL</span>
		             </div>
		           </dd>
		           <dd class="oper-sec-more">
		             <span class="cat-more-dis J_moreDis" style="display:block;">
		                                      更多
		               <i class="i-cat-dis vipFont">∨</i>
		             </span>
		             <span class="cat-more-add J_moreAdd">
		               <i class="i-cat-add vipFont">+</i>
		                                        多选
		             </span>
		           </dd>
		         </dl>
		      </div>
		      <div class="cat-oper-wrap">
		        <div class="cat-oper-hd clearfix">
		          <div class="oper-hd-general">
		            <div class="oper-select">
		              <p id="J_default_sort" class="oper-select-txt z-oper-selected-default">综合</p>
		            </div>
		          </div>
		          <div class="oper-hd-price">
		             <div class="oper-select">
		               <p id="J_price_sort" class="oper-select-txt price-select-txt J_sort_option">价格
		                 <i class="price-sort-icon price-desc vipFont">∧</i>
		                 <i class="price-sort-icon price-asc vipFont">∨</i>
		               </p>
		             </div>
		          </div>
		          <div class="oper-hd-time">
		            <div class="oper-select">
		               <p id="J_discount_sort" class="oper-select-txt time-select-txt J_sort_option">折扣
		                 <i class="time-sort-icon time-desc vipFont">∧</i>
		                 <i class="time-sort-icon time-asc vipFont">∨</i>
		               </p>
		            </div>
		          </div>
		          <div id="J_inputLayout" class="oper-hd-select">
		            <div class="oper-select-inner">
		                <form method="post" action="ProductServlet">
		                                           商品名:
		                <input type="hidden" name="biz" value="findProductByProductName"/>
		                <input id="productName" name="productName"  type="text"/>
		                <input type="submit"  id="btn" value="搜索"/>
		                </form>
		                                         <!-- 商品名:
		                <input id="productName" name="productName"  type="text"/>
		                <input type="button" id="btn" value="确定"/> -->
		            </div>
		          </div>
		        </div>
		      </div>
		   </div>
		</div>
		<div style="margin-top:20px;">
		  <section class="goods-list" id="J_searchCatList">
	       <c:forEach items="${pageBean.beanList}" var="good">
			<div
				class="goods-list-item c-goods J_surpriseSprice_item J_pro_items   has-goods-slide">
				<div class="goods-inner J_item_handle_height">
					<div class="goods-slide J_item_mouseout_warp">
						<div class="goods-image">
							<a href="<c:url value='ProductServlet?biz=findProductByProductId&productId=${good.productId}'/>"
								class="goods-image-link" 
								target="_black">
								<img class="J_img goods-image-img" 
								src="<c:url value='images/product/s1/${good.image_b}'/>"
								style="display: inline;" height="297" width="235"/>
							</a>
							<div
								class="J_phone_price_217381132 J_phone_price goods-mobile-tag hidden"></div>
							<p class="good-title-pms hidden J_pms_1336792"></p>
						</div>
						<div class="goods-images J_thumbWrap">
							<div
								class="J_goodsThumb goods-thumb J_defThumb is-goods-thumb-current"  onclick="chanceP(this)"
								>
								<span 
									class="goods-thumb-link"> <img
									src="<c:url value='images/product/s1/${good.image_s1 }'/>"
									 height="69" width="54">
								</span>
							</div>

							<div class="J_goodsThumb goods-thumb" onclick="chanceP(this)">
								<span 
									class="goods-thumb-link"> <img
									src="<c:url value='images/product/s2/${good.image_s2 }'/>"
									 height="69" width="54">
								</span>
							</div>

							<div class="J_goodsThumb goods-thumb" onclick="chanceP(this)">
								<span 
									class="goods-thumb-link"> <img
									src="<c:url value='images/product/s3/${good.image_s3 }'/>"
									 height="69" width="54">
								</span>
							</div>
						</div>
					</div>
					<div class="goods-info goods-price-info">
						<span class="goods-discount">${good.discount }折</span>
						<div class="goods-price-wrapper"
							id="J_surpriseSprice_wrap217381132" 
							>
							<em class="goods-sells-price"><span
								class="u-yen  currency-symbol">&yen;</span><span class="price">${good.currPrice }</span></em>
						</div>
						<del class="goods-market-price ">
							<span class="u-yen  currency-symbol">&yen;</span>${good.price }
						</del>
					</div>

					<h4 class="goods-info goods-title-info">
						<a target="_blank"
							href="<c:url value='ProductServlet?method=findByProductId&productId=${good.productId}'/><c:url value='ProductController?method=findByProductId&productId=${good.productId}'/>"
							title="圆领上衣+简约通勤纯色短裤套装条纹"> <span class="goods-brand"></span>${good.productName }
						</a>
					</h4>
				</div>
			</div>
	        </c:forEach>
			</section>
		</div>
		
	</div>
	
	<div style="float:left; width: 100%; text-align: center;">
	<br/>
	<br/>	
	<jsp:include page="../../jsps/pager.jsp"></jsp:include>
	</div>
	<jsp:include page="../../jsps/footer.jsp"></jsp:include>
	<jsp:include page="../../jsps/toolbar.jsp"></jsp:include>
	

</body>
</html>
