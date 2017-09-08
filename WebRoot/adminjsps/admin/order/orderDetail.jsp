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
    
    <title>My JSP 'orderDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table cellspacing="10px" cellpadding="5px">
     <tr>
      <th>订单图片</th>
      <th>商品名</th>
      <th>商品价格</th>
      <th>商品数量</th>
      <th>小计</th>
     </tr>
      <c:forEach var="detail" items="${sessionScope.orderDetailList}" varStatus="line" >
              <tr 
                  <c:if test="${line.index%2==1}">
                         style="background-color:#CCC;"
                  </c:if>
              >
                 <td><img width="70px" height="85px" src="images/product/s1/${detail.image}"/></td>
                 <td>${detail.productName}</td>
                 <td>${detail.price}</td>
                 <td>${detail.num}</td>
                 <td>${detail.subtotal}</td>
                 <td>
                 
                 
                 </td>
                 
              </tr>
          </c:forEach>
          
    </table>
  </body>
</html>
