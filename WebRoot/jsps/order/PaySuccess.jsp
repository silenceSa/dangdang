<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会-支付成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/order/paySuccess.css">
    
    <style type="text/css">
		body {
			font-size: 10pt;
			color: #404040;
			font-family: SimSun;
		}
		
		.divBody {
		    margin-top:5%;
			margin-left: 22%;
		}
		.public-footer{
		    margin-top:5%;
		}
		.divTitle {
			text-align:left;
			width: 900px;
			height: 25px;
			line-height: 25px;
			background-color: #F545AC;
			border: 5px solid #F545AC;
		}
		.divContent {
			width: 900px;
			height: 230px;
			border: 5px solid #F545AC;
			margin-right:20px; 
			margin-bottom:20px;
		}
		.spanTitle {
			margin-top: 10px;
			margin-left:10px;
			height:25px;
			font-weight: 900;
		}
        .divContent a{
        text-decoration: none;
        color:#8E868D;
        font-size:20px;
        }
</style>
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
						class="u-logout" href="">[退出]</a> <a class="u-order" href=""
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
				 <a href="" target="_blank">购物袋(0)</a>
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

<div class="divBody">
	<div class="divTitle">
		<span class="spanTitle">恭喜，支付成功</span>
	</div>
	<div class="divContent">
	  <div style="margin: 20px;">
		<img style="float: left; margin-right: 50px;" src="images/order/10-14041322462QL.jpg" width="150"/>
		<br/>
		<br/>
		<br/>
		<br/>
		<span style="margin-left: 50px;"><a target="_top" href="ProductServlet?biz=findProductByCategoryId&categoryId=BA6CB5217BA8499D80C02EDCEF71E691">继续购物</a></span>
		<span style="margin-left: 50px;"><a target="_top" href="OrderServlet?biz=findOrderByCustomerId&customerId=${sessionScope.customer.customerId}">前往订单</a></span>
	  </div>
	</div>
</div>

	<div class="public-footer">
	 <div class="hd-wrap">
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
