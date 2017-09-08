<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function _go() {
		var pc = $("#pageCode").val();//获取文本框中的当前页码
		if(!/^[1-9]\d*$/.test(pc)) {//对当前页码进行整数校验
			alert('请输入正确的页码！');
			return;
		}
		if(pc > ${pageBean.totalPages}) {//判断当前页码是否大于最大页
			alert('请输入正确的页码！');
			return;
		}
		location = "${pageBean.url}&page="+pc;
	}
</script>


<div class="divBody">
  <div class="divContent">
    <span id="font" class="vipFont">共${pageBean.totalPages }页</span>
    <%--上一页 --%>
    <c:choose>
    	<c:when test="${pageBean.pageIndex eq 1}">
    		<span class="spanBtnDisabled">＜</span>
    	</c:when>
        <c:otherwise>
        	<a href="${pageBean.url}&page=${pageBean.pageIndex -1}" class="aBtn bold" target="_self">＜</a>
        </c:otherwise>
    </c:choose>
    
    <%-- 设置页码的显示 --%>
    <c:choose>
    	<c:when test="${pageBean.totalPages < 6}">
    		<c:set var="begin" value="1" />
    		<c:set var="end" value="6" />
    	</c:when>
    	<c:otherwise>
    		<c:set var="begin" value="${pageBean.pageIndex-2}"/>
    		<c:set var="end" value="${pageBean.pageIndex+3}"/> 		
    		<c:if test="${begin < 1}">
    			<c:set var="begin" value="1"/>
    			<c:set var="end" value="6"/>
    		</c:if>
    		<c:if test="${end >pageBean.totalPages}">
    			<c:set var="begin" value="${pageBean.totalPages-5}"/>
    			<c:set var="end" value="${pageBean.totalPages}"/>
    		</c:if>	
    	</c:otherwise>
    </c:choose>

    <%-- 显示页码列表 --%>
    <c:forEach begin="${begin}" end="${end}" var="i">
    	<c:choose>
    		<c:when test="${pageBean.pageIndex eq i}">
    			<span class="spanBtnSelect">${i}</span>
    		</c:when>	
    		<c:otherwise>
    			<a href="${pageBean.url}&page=${i}" class="aBtn" target="_self">${i}</a>
    		</c:otherwise>
    	</c:choose>
    </c:forEach>
    
    <%--显示.... --%>
     <%-- <c:if test="${pageBean.totalPages > pageBean.pageIndex}">
      	 <span class="spanApostrophe">...</span>
     </c:if> --%>
       

    
     <%--下一页 --%>
     <c:choose>
     	<c:when test="${pageBean.pageIndex eq pageBean.totalPages}">
     		<span class="spanBtnDisabled">＞</span>
     	</c:when>
     	<c:otherwise>
     		<a href="${pageBean.url}&page=${pageBean.pageIndex+1}" class="aBtn bold" target="_self">＞</a>
     	</c:otherwise>
     </c:choose>
    
    <%-- 共N页 到M页 --%>
    
    <%-- <span>到</span>
    <input type="text" class="inputPageCode" id="pageCode" value=""/>
    <span>页</span>
    <a href="javascript:_go();" class="aSubmit" target="_self">确定</a> --%>
  </div>
</div>