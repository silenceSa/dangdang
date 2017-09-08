<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>My JSP 'comment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/comment/comment.css">

</head>

<body>
	<div class="content_text" id="script_koubei" koubeiwrap="script_koubei"
		productid="2288965" style="display: block;">
		<div class="deal_con product_report" id="product_report">
			<div id="reportwrap">
				<div class="block_title" style="display:none;"
					id="product_report_title">
					<span style="display:none;">口碑报告</span>
				</div>
				<div class="lazy" id="reportload" style="display: none;">请稍候，正在加载....</div>
				<div class="deal_con_content">
					<div class="product_report_ranks clearfix">
						<div class="rp_score_l">
							<span class="tit"></span>
							<div>
								<h2 class="record_num">4.7/5</h2>
								<div class="rating">
									<div class="value" style="width:75.2px;"></div>
								</div>
							</div>
							<p class="pink">
								<a class="reda"
									href="http://koubei.jumei.com/report_list-268647.html"
									target="_blank">12</a>口碑&nbsp;&nbsp;<a class="reda"
									href="http://koubei.jumei.com/comment_list-Ud0c22116deedf690-1.html"
									target="_blank">62911</a>短评
							</p>
						</div>
						<div class="rp_score_c">
							<dl class="rp_histogram">
								<dd>
									<span class="icon_red">1</span><span class="progress_wrap"><span
										class="bg" style="width:96%;"></span><span class="txt">哑光</span></span>
								</dd>
								<dt>4.8</dt>
								<dd>
									<span class="icon_red">2</span><span class="progress_wrap"><span
										class="bg" style="width:94%;"></span><span class="txt">光泽度</span></span>
								</dd>
								<dt>4.7</dt>
								<dd>
									<span class="icon_red">3</span><span class="progress_wrap"><span
										class="bg" style="width:94%;"></span><span class="txt">色彩度</span></span>
								</dd>
								<dt>4.7</dt>
							</dl>
							<dl class="rp_histogram">
								<dd>
									<span class="icon_red">4</span><span class="progress_wrap"><span
										class="bg" style="width:94%;"></span><span class="txt">防晕染</span></span>
								</dd>
								<dt>4.7</dt>
								<dd>
									<span class="icon_red">5</span><span class="progress_wrap"><span
										class="bg" style="width:90%;"></span><span class="txt">持久度</span></span>
								</dd>
								<dt>4.5</dt>
							</dl>
						</div>
						<div class="rp_score_r">
							<p>该商品使用起来好用吗？</p>
							<p>与超千万聚美用户分享</p>
							<p>你的独家心得</p>
							<div class="report_share_btn">
								<a target="_blank"
									href="http://koubei.jumei.com/user/products#filter=write#page=1">我要写口碑</a>
							</div>
						</div>
					</div>
					<div class="product_report_filters clearfix">
						<div class="product_report_filter">
							<div class="report_attr_select">
								<div class="selected_item">
									<span class="age_text" id="kb_select_age_tit" val="0">全部年龄</span><span
										class="arrow"></span>
								</div>
								<ul id="kb_age_select_list_wrap" style="display: none;">
									<li><a href="javascript:;" type="age" val="0">全部年龄</a></li>
									<li><a href="javascript:;" type="age" val="20">0-20岁</a></li>
									<li><a href="javascript:;" type="age" val="21">21-25岁</a></li>
									<li><a href="javascript:;" type="age" val="26">26-30岁</a></li>
									<li><a href="javascript:;" type="age" val="31">31-35岁</a></li>
									<li><a href="javascript:;" type="age" val="36">36-40岁</a></li>
									<li><a href="javascript:;" type="age" val="40">40岁以上</a></li>
								</ul>
							</div>
							<div class="report_attr_select">
								<div class="selected_item">
									<span class="age_text" id="kb_select_skin_tit" val="0">全部肤质</span><span
										class="arrow"></span>
								</div>
								<ul id="kb_skin_select_list_wrap" style="display: none;">
									<li><a href="javascript:;" type="skin" val="0">全部肤质</a></li>
									<li><a href="javascript:;" type="skin" val="1">中性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="2">干性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="3">混合性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="4">油性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="5">敏感性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="6">敏感中性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="7">敏感油性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="8">敏感干性皮肤</a></li>
									<li><a href="javascript:;" type="skin" val="9">敏感混合性皮肤</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					
					
					<%-- pinlunneiro --%>
					<ul id="reports_list_wrap">
		               <c:forEach var="comm" items="${sessionScope.pageBean.beanList}" >
		          
					
						<li class="pfTrends">
							<div class="arrow"></div> <a
							href="https://koubei.jumei.com/user/U9ebe8fb1620a450c"
							rel="nofollow" class="avatar" target="_blank"><img
								src="images/comment/16884629-64.jpg"
								alt="${comm.customerName}"></a>
							<div class="report">
								<div class="user_info">
									<span class="user_name"><a
										href="https://koubei.jumei.com/user/U9ebe8fb1620a450c"
										class="avatar" target="_blank">${comm.customerName}</a></span> <img
										src="https://koubei.jumei.com/images/v_1.gif" title="黄金会员"
										class="vip_icon"><span class="user_attr">
										评论时间:${comm.commentTime}</span>
									<div class="rating_wrap">
										<div class="rating">
											<div class="value" rating="${comm.score}" style="width:${comm.score*16}px;"></div>
										</div>
									</div>
								</div>
								<div class="report_content">
									<a
										href="https://koubei.jumei.com/review_U23bbf2d043abb07b.html"
										class="tit" target="_blank">${comm.productName}</a>
									<div class="desc">
										<a
											href="https://koubei.jumei.com/review_U23bbf2d043abb07b.html"
											target="_blank">${comm.commentText}</a>
									</div>
									<div class="gray_f1 pt10">
										<div class="txtL">
											1276阅读<em>|</em><span class="redtxt">0</span><b>回复</b><em>|</em><span
												class="redtxt">0</span><b>有用</b>
										</div>
										<div class="cl"></div>
									</div>
								</div>
							</div>
						</li>
						</c:forEach>
						<div class="cl"></div>
					</ul>
					<div id="pageSplit">
						<!-- <span>1</span> <a href="javascript:;" class="pageTab" page="2">2</a>
						<a href="javascript:;" class="next">下一页</a> -->
						  <div class="divContent">
						    <%--上一页 --%>
						    <c:choose>
						    	<c:when test="${pageBean.pageIndex eq 1}">
						    		<span class="spanBtnDisabled">上一页</span>
						    	</c:when>
						        <c:otherwise>
						        	<a href="${pageBean.url}&page=${pageBean.pageIndex -1}" class="aBtn bold" target="_self">上一页</a>
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
							     <c:if test="${pageBean.totalPages > pageBean.pageIndex}">
							      	 <span class="spanApostrophe">...</span>
							     </c:if>

							     <%--下一页 --%>
							     <c:choose>
							     	<c:when test="${pageBean.pageIndex eq pageBean.totalPages}">
							     		<span class="spanBtnDisabled">下一页</span>
							     	</c:when>
							     	<c:otherwise>
							     		<a href="${pageBean.url}&page=${pageBean.pageIndex+1}" class="aBtn bold" target="_self">下一页</a>
							     	</c:otherwise>
							     </c:choose>
							    
							    <%-- 共N页 到M页 --%>
							    <span>共${pageBean.totalPages }页</span>
							    <span>到</span>
							    <input type="text" class="inputPageCode" id="pageCode" value=""/>
							    <span>页</span>
							    <a href="javascript:_go();" class="aSubmit" target="_self">确定</a>
					  		</div>
                    <!-- 分页显示div end -->
					</div>
					<br/>
					<br/>
					<br/>
					<a href="https://koubei.jumei.com/report_list-268647.html"
						class="all_reports_btn">查看全部口碑报告</a>
				</div>
			</div>
			<div id="commentwrap" style="display: none;">
				<div class="block_title" id="title_comments">
					<span style="display:none;">收货评论</span>
				</div>
				<div class="deal_con_content">
					<ul class="comments" id="ul_comments"></ul>
					<div class="notice">
						<a href="#" target="_blank">共有<span id="comment_count"></span>条收货短评，点击查看
		
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

    <div style="float:left; width: 100%; background:red; text-align: center;">
	<hr/>
	<br/>
	<%-- <%@include file="../jsps/pager/pager.jsp" %> --%>
	
	<%-- <jsp:include page="../../jsps/pager/pager.jsp"/> --%>
	
	
	
	
	</div>

</body>
</html>
