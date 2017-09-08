<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link id="easyuiTheme" rel="stylesheet" type="text/css" 
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/metro/easyui.css" />
    <link rel="stylesheet" type="text/css"
	href="adminjsps/admin/js/jquery-easyui-1.3.6/themes/icon.css" />
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/plugins/datagrid-detailview.js"></script>
	<style type="text/css">
	    .btn{
			width:115px;
	        box-sizing: border-box;
	        cursor: pointer;
            text-align: center;
            font-weight: 500;
            white-space: nowrap;
            border: solid 1px #ddd;
            font-size: 18px;
            height: 31px;
            color: #fff;
			background-color: #5eb95e;
			border-color: #5eb95e;
		}
		
		.input{
		    width:200px;
	        outline:0;
	        box-sizing: border-box;
	        border: solid 1px #ddd;
	        font-size: 14px;
	        height:31px;
	        font-weight: inherit;
		}
	
	</style>
	<script type="text/javascript">
	    $(function(){
	         $('#start').datetimebox({    
			    value: '3/4/2010 2:3',    
			    required: true,    
			    showSeconds: true   
			 });  
			 
			 $('#end').datetimebox({    
			    value: '3/4/2010 2:3',    
			    required: true,    
			    showSeconds: true   
			 });  
			 
			 $("#table").datagrid({
			    url : 'admin/OrderController?biz=' + method,
				fit : true,
				striped : true,// 条纹
				loadMsg : '加载中...',
				scrollbarSize : 0,// 滚动条宽度
				fitColumns : true,// 自动展开/收缩列
				rownumbers : true,// 显示一个行号列
				pagination : true,// 分页工具栏
				pageNumber : 1,// 初始化页码
				pageSize : 10,// 初始化页大小
				pageList : [ 5, 10, 15, 20, 25, 30 ],
				//绑定网格中的列
				columns : [ [ {
					checkbox : true
				}, {
					field : 'orderId',
					title : '订单编号'
				}, {
					field : 'totalPrice',
					title : '订单金额'
				}, {
					field : 'orderTime',
					title : '下单时间'
				}, {
					field : 'orderStatus',
					title : '订单状态',
					formatter : function(value, rowData, rowIndex) {
						if (rowData.status == '1') {
							return '未付款';
						} else if (rowData.status == '2') {
							return '已付款';
						} else if (rowData.status == '3') {
							return '已发货';
						} else if (rowData.status == '4') {
							return '交易成功';
						} else {
							return value;
						}
					}
				}, {
					field : 'address',
					title : '收货地址',
					
				}, {
					field : 'consignee',
					title : '收件人',
					
				}, {
					field : 'recPhone',
					title : '联系方式',
					
				}, {
					field : 'customerId',
					title : '下单用户'
				} ] ]
			 
			 });
			 
			 
	    });
	
	
	
	</script>

  </head>
  
  <body>
    
    <div>
       <table>
          <tr>
             <td>下单用户</td>
             <td><input type="text" id="conginee" class="input"/></td>
             <td>下单时间</td>
             <td><input id="start" type="text" name="start" class="input"/></td>
             <td>~</td>
             <td><input id="end" type="text" name="end" class="input"/></td>
             <td><button class="btn">搜索</button></td>
          </tr>
       
       </table>
       
    
    </div>
    
    <div>
        <table id="table">
        
        
        </table>
    
    
    </div>
    
    
    
    
    
    
    
    
  </body>
</html>
