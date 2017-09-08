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
    
    <title>My JSP 'category.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style>
       
    
    </style>
  </head>
  
  <body>
      
      <ul class="cate" style="float:left">
         <c:forEach items="${sessionScope.cates}" var="fcate">
         <li class="secCate">
           <span style="color:#f10180">${fcate.categoryName}</span>
           <div class="links">
              <c:forEach items="${fcate.childrens}" var="scate">
                 <a href="ProductServlet?biz=findProductByCategoryId&categoryId=${scate.categoryId}">${scate.categoryName}</a>
              </c:forEach>
           </div>
         </li>
         </c:forEach>
      </ul>
      <div class="logoArea" style="float:left">
         <img class="logoImg" src="images/category/class/9d11a31b-aa6c-4ffb-9e81-395d3ec55cd1.png"/>
         <br/>
         <img class="logoImg" src="images/category/class/11b12c4e-c845-4023-85c1-d30032806d83.jpg"/>
         <br/>
         <img class="logoImg" src="images/category/class/67a5e661-1865-4b34-8b04-711bf086bca4.png"/>
         <br/>
         <img class="logoImg" src="images/category/class/e32841ad-edbc-4dc1-ad8b-8f25e1a92608.png"/>
      </div>
    
    
  </body>
</html>
