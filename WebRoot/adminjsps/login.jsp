<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会后台登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="adminjsps/admin/css/login/login.css">
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
	<script type="text/javascript">
	    $(function(){
	    	var num = 0;
	    	$('#codeImg').click(function(){
	    	 $('img').attr("src","VerifyCodeServlet?biz='"+num+"/>");
	    	 num++;
	    	});
	    });
	
	</script>
  </head>
  
  <body>
	<div class="container">
		<section id="content">
		<form action="admin/AdminController" method="post">
			<h1>唯品会后台登陆</h1>
			<input type="hidden" name="biz" value="login"/>
			<div>
				<input type="text" name="username" placeholder="username" required="true" id="username" autocomplete="off" />
			</div>
			<div>
				<input type="password" name="password" placeholder="password" required="true"
					id="password" />
			</div>
			<div>
				<input type="text" name="code" placeholder="请输入验证码！" required="true" id="code" autocomplete="off" />
				<span id="codeImg">
				   <img id="img" src="VerifyCodeServlet" width="100%" height="47px"/>
				</span>
			</div>
			<div>
				<input type="submit" value="登陆" /> 
			</div>
		</form>
		<!-- form -->
		<div class="button">
			<a href="#">@Tenyun&nbsp;copyright</a>
		</div>
		<!-- button --> </section>
		<!-- content -->
	</div>
	<!-- container -->
</body>
</html>
