<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" type="text/css" href="../../css/comment/comment.css">
<link rel="stylesheet" type="text/css" href="../../css/comment/pager.css">
<div class="content_text" id="script_koubei" style="display: block;">
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
							<a class="reda">12</a>口碑&nbsp;&nbsp;<a
								class="reda">62911</a>短评
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
							<a target="_blank">我要写口碑</a>
						</div>
					</div>
				</div>
				<div class="product_report_filters clearfix">
					<div class="product_report_filter">
						<div class="report_attr_select">
							<div class="selected_item">
								<span class="age_text" id="kb_select_age_tit">全部年龄</span><span
									class="arrow"></span>
							</div>
							<ul id="kb_age_select_list_wrap" style="display: none;">
								<li><a>全部年龄</a></li>
								<li><a>0-20岁</a></li>
								<li><a>21-25岁</a></li>
								<li><a>26-30岁</a></li>
								<li><a>31-35岁</a></li>
								<li><a>36-40岁</a></li>
								<li><a>40岁以上</a></li>
							</ul>
						</div>
						<div class="report_attr_select">
							<div class="selected_item">
								<span class="age_text" id="kb_select_skin_tit">全部肤质</span><span
									class="arrow"></span>
							</div>
							<ul id="kb_skin_select_list_wrap" style="display: none;">
								<li><a>全部肤质</a></li>
								<li><a>中性皮肤</a></li>
								<li><a>干性皮肤</a></li>
								<li><a>混合性皮肤</a></li>
								<li><a>油性皮肤</a></li>
								<li><a>敏感性皮肤</a></li>
								<li><a>敏感中性皮肤</a></li>
								<li><a>敏感油性皮肤</a></li>
								<li><a>敏感干性皮肤</a></li>
								<li><a>敏感混合性皮肤</a></li>
							</ul>
						</div>
					</div>
				</div>



				<ul id="reports_list_wrap">
					<c:forEach var="comm" items="${sessionScope.pageBean.beanList}">
						<li class="pfTrends">
							<div class="arrow"></div> <a rel="nofollow" class="avatar"
							target="_blank"><img src="../../images/comment/16884629-64.jpg"
								alt="${comm.customerName}"></a>
							<div class="report">
								<div class="user_info">
									<span class="user_name"><a class="avatar"
										target="_blank">${comm.customerName}</a></span> <span class="user_attr">
										评论时间:${comm.commentTime}</span>
									<div class="rating_wrap">
										<div class="rating">
											<div class="value" rating="${comm.score}"
												style="width:${comm.score*16}px;"></div>
										</div>
									</div>
								</div>
								<div class="report_content">
									<a class="tit" target="_blank">${comm.productName}</a>
									<div class="desc">
										<a target="_blank">${comm.commentText}</a>
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
						
					</div>
					<!-- 分页显示div end -->
				</div>
				<br /> <br /> <br /> <a
					href="https://koubei.jumei.com/report_list-268647.html"
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

	<div style="float:left; width: 100%; text-align: center;">
		<jsp:include page="../../jsps/pager.jsp"></jsp:include>
	</div>

</div>