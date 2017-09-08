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
    
    <title>唯品会</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="css/category/comm.css"/>
  </head>
  
  <body>
    <jsp:include page="jsps/head.jsp" flush="true" />
    <jsp:include page="jsps/category/content.jsp" flush="true" />
    
    
    
    
    
    
    
    
    
    
    <jsp:include page="jsps/toolbar.jsp" flush="true" />
    <jsp:include page="jsps/footer.jsp" flush="true" />
    
  </body>
</html>
