<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addComment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/comment/fcomment.css" />
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
<script type="text/javascript">
	 $(function(){

		$("#a").click(function(){
			$("#a").attr("class","img").attr("src","images/comment/1.jpg");
		});
		$("#b").click(function(){
			$("#b").attr("class","img").attr("src","images/comment/2.jpg");
		    $("#score").val("2");
		});
		$("#c").click(function(){
			$("#c").attr("class","img").attr("src","images/comment/3.jpg");
			$("#score").val("3");
		});
		$("#d").click(function(){
			$("#d").attr("class","img").attr("src","images/comment/4.jpg");
			$("#score").val("4");
		});
		$("#e").click(function(){
			$("#e").attr("class","img").attr("src","images/comment/5.jpg");
			$("#score").val("5");
		});
		
	
	});
</script>
</head>

<body>


	<div id="whole">
		<div id="coping"></div>
		<div id="route">首页>女装>精品套装</div>
		<form action="CommentServlet" method="post">
		<input type="hidden" name="biz" value="add"/>
		<input type="hidden" name="productId" value="${product.productId}"/>
		<input type="hidden" name="productname" value="${product.productName}"/>
		<input id="score" type="hidden" name="score" value="1"/>
		
		<div id="between">
			<div id="brief">
				<div id="picture">
					<img src="images/comment/16884629-64.jpg" />
					<p id="name"> ${product.productName}</p>
					<p id="cName"> 评论人:${sessionScope.customer.customerName}</p>
					<p id="picture"><img width="200px" height="200px" src="images/product/s1/${product.image_s1}"/></p>
					<p id="comm">1.8万人评价</p>
				</div>
			</div>
			<div id="right">
				<div id="grade">
					<ul class="star">
						<li class="length"><img class="lengImg" src="images/comment/round.jpg" id="a"/></li>
						<li class="length"><img class="lengImg" src="images/comment/round.jpg" id="b"/></li>
						<li class="length"><img class="lengImg" src="images/comment/round.jpg" id="c"/></li>
						<li class="length"><img class="lengImg" src="images/comment/round.jpg" id="d"/></li>
						<li class="length"><img class="lengImg" src="images/comment/round.jpg" id="e"/></li>
					</ul>
					<span id="star-text">客官请给个评价吧！</span>
				</div>
				<div id="fill">
					<input id="import" type="text" name="commentText"
						placeholder="外形如何,品质如何,好用吗,写点您的真实感受吧" /><br />
				    <input type="hidden" name="orderId" value="${orderId}"/> 
					<button id="btn" type="submit">保存</button>
				</div>

			</div>
		</div>
		</form>
		<div id="foot"></div>
	</div>
</body>
</html>
