<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>当当后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
	<link id="easyuiTheme" rel="stylesheet" type="text/css"
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/metro-red/easyui.css" />
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
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
	$(function() {
		$('#ul a').click(function() {
			var href = $(this).attr('href');
			var title = $(this).text();

			if ($('#tabs').tabs('exists', title)) {
				$('#tabs').tabs('select', title);
			} else {
				$('#tabs').tabs('add', {
					title : title,
					content : '<iframe src="' + href + '" style="width:100%;height:100%" frameborder="0"></iframe>',
					closable : true,// 关闭按钮
				});
			}
			return false;
		});
	});
    </script>
    
    
  </head>
  
  <body class="easyui-layout">
	  <div class="head" data-options="region:'north'" style="height:60px;overflow:hidden;background:#E57489">
	       <div id="head-contain">
	            <img src="adminjsps/admin/images/logo.png" style="width:45px;height:45px"/>
	            <div id="appname">
	               <span>后台管理系统</span>
	            </div>
	            
	              <div id="admin-menu">
	                  <a href="javascript:void(0)" id="mb" class="easyui-menubutton"     
                      data-options="menu:'#mm',iconCls:'icon-edit'">${sessionScope.adminName}</a>   
						<div id="mm" style="width:55px">   
						    <div><a href="admin/AdminController?biz=quit">注销</a></div>   
						    <div id="changeTheam">随机换肤</div>   
						    <div>...</div> 
						</div>  

	                  
	              </div>
	              <div id="admin-img">
	                 <img src="adminjsps/admin/images/user.png"/>
	              </div>
	            
	       </div>
	  
	  
	  
	  </div>   
    <div data-options="region:'south'" style="height:25px;">
        <div id="copyright">
	        <img style="float:left;width:16px;height:16px;display:inline-block;margin-top:4px;" src="admin/js/jquery-easyui-1.3.6/themes/icons/plaint.png"/>
	        <span style = "float:left;line-height:25px">&nbsp;&nbsp;当当后台管理系统 V1.0</span>
	        <span style = "float:right;line-height:25px">  &copy; 2017 Tenyun Rights Reserved</span>
        </div>
    </div>   
    <div class="navbox" data-options="region:'west',title:'导航栏'" style="width:210px;">
        <div id="navpanel" class="easyui-accordion" style="width:208px;height:495px;">   
		    <div title="商品管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/product/product.jsp" target="_blank">查询所有商品</a>
					</li>
					<li>
						<a href="adminjsps/admin/product/addProduct.jsp" target="_blank">添加商品</a>
					</li>
					<li>
						<a href="adminjsps/admin/product/updateProduct.jsp" target="_blank">修改商品</a>
					</li>
				</ul>
			</div>
			<div id="categoryManage" title="分类管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/category/category.jsp" target="_blank">查询所有分类</a>
					</li>
					<li>
						<a href="adminjsps/admin/category/addCate.jsp" target="_blank">添加分类</a>
					</li>
					<li>
						<a href="adminjsps/admin/category/cateoper.jsp?biz=level1" target="_blank">管理一级分类</a>
					</li>
					<li>
						<a href="adminjsps/admin/category/cateoper.jsp?biz=level2" target="_blank">管理二级分类</a>
					</li>
					<li>
						<a href="adminjsps/admin/category/cateoper.jsp?biz=level3" target="_blank">管理三级分类</a>
					</li>
				</ul>
			</div>
			<div title="用户管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/customer/findAllCustomer.jsp?biz=findAllCus" target="_blank">查询所有用户</a>
					</li>
					<li>
						<a href="adminjsps/admin/customer/findAllCustomer.jsp?biz=findActive" target="_blank">查询已激活用户</a>
					</li>
					<li>
						<a href="adminjsps/admin/customer/findAllCustomer.jsp?biz=findUnActive" target="_blank">查询未激活用户</a>
					</li>
				</ul>
			</div>
			<div title="管理员管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/log/admins.jsp" target="_blank">管理员列表</a>
					</li>
				</ul>
			</div>
			<div title="订单管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/order/Order.jsp?biz=findAll">查询所有订单</a>
					</li>
					<li>
						<a href="adminjsps/admin/order/Order.jsp?biz=findNoPay">未付款订单</a>
					</li>
					<li>
						<a href="adminjsps/admin/order/Order.jsp?biz=findPay">已付款订单</a>
					</li>
					<li>
						<a href="adminjsps/admin/order/Order.jsp?biz=findDeliver">已发货订单</a>
					</li>
					<li>
						<a href="adminjsps/admin/order/Order.jsp?biz=findSucceed">交易成功订单</a>
					</li>
				</ul>
			</div>
			<div title="系统管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/log/log.jsp" target="_blank">系统日志</a>
					</li>
				</ul>
			</div>
			<div title="评论管理" style="overflow:auto;">
				<ul id="ul">
					<li>
						<a href="adminjsps/admin/comment/comment.jsp" target="_blank">查询所有评论</a>
					</li>
				</ul>
			</div>
		    
		</div>
    
    
    </div>   
    <div class="main" data-options="region:'center'" style="padding:1px;background:#eee;">
	    <div id="tabs" data-options="fit:true" class="easyui-tabs">
		</div>
	
	</div>   
  </body>
</html>
