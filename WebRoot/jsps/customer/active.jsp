<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>激活页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/customer/active.css">
    
  </head>
  
  <body id="register_tips">
    <div class="register_layout">
        <div class="tip_header">
            <a class="logo sprite" href="index.jsp"></a>
            <div class="banner sprite"></div>
        </div>
        <div class="tip_wrapper clearfix">
            <div class="tipbox">
                <div class="inner_tipbox">
                    
                    <c:choose>
					    <c:when test="${sessionScope.status eq 'success'}">
					        <div class="body_title f-cb">
		                        <i class="vipFont if-sigh if-size-32 body_icon"><img width="32px" height="32px" src="images/customer/success.png"/></i>
		                        <h3>恭喜，激活成功</h3>
		                    </div>
                            <div class="content_tip">激活成功，5秒跳转登陆页面。</div>
					    </c:when>
					    
					    <c:otherwise>
		                    <div class="body_title f-cb">
		                        <i class="vipFont if-sigh if-size-32 body_icon"><img width="32px" height="32px" src="images/customer/failed.png"/></i>
		                        <h3>抱歉，注册失败！</h3>
		                    </div>
                            <div class="content_tip">很遗憾，您的注册过程貌似出了点小问题，为了您的账户安全，建议您重新注册。</div>
					    </c:otherwise>
					</c:choose>
					
                    
                    <div class="content_time mt44"><span class="vip" id="time">5</span>&nbsp;秒后自动关闭</div>
                    <div class="tipbox_btn">
                    <c:choose>
					    <c:when test="${sessionScope.status eq 'success'}">
                        <a href="jsps/customer/login.sp" role="button" class="ui-btn-medium ui-btn-primary">马上登陆</a>
					    </c:when>
					    
					    <c:otherwise>
                        <a href="jsps/customer/regist.sp" role="button" class="ui-btn-medium ui-btn-primary">马上注册</a>
					    </c:otherwise>
					</c:choose>
                    </div>
                </div>
            </div>
        </div>
        <div class="tip_footer">
            <div class="copyright">Copyright 2008-2017 vip.com，All Rights Reserved ICP证：粤 B2-20080329</div>
        </div>
    </div>
    <script type="text/javascript">
    var requestTimer = setInterval( "time_down()" , 1000 );
    function time_down() {
        var time = document.getElementById("time").innerHTML;
        time--;
        document.getElementById('time').innerHTML = time;
        if( time == 0 ) {
        	<c:choose>
		    <c:when test="${sessionScope.status eq 'success'}">
            window.location.href="jsps/customer/login.jsp";
		    </c:when>
		    <c:otherwise>
            window.location.href="jsps/customer/regist.jsp";
		    </c:otherwise>
		   </c:choose>
            window.clearInterval( requestTimer );
        }
    }
</script>
</body>
</html>
