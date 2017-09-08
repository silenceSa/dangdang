<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单页面</title>
    
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
    <script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
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
		    width:250px;
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
	   var url = $('body').parent('iframe').context.URL;
		var method = url.split('=')[1];
		var orderId;

		var order = $('#table');
		order.datagrid({
			view: detailview,
	detailFormatter:function(index,row){
		return '<div class="ddv" style="padding:5px 0"></div>';
	},
	onExpandRow: function(index,row){
	    $.get('admin/OrderController', { biz: "findDetail", id: row.orderId },function(){
		var ddv = $("#table").datagrid('getRowDetail',index).find('div.ddv');
		ddv.panel({
			border:false,
			cache:false,
			href:'adminjsps/admin/order/orderDetail.jsp',
			onLoad:function(){
				$('#table').datagrid('fixDetailRowHeight',index);
			}
		});
	    
	    } );
		$('#table').datagrid('fixDetailRowHeight',index);
	},
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
			singleSelect:true,
			//绑定网格中的列
			columns : [ [ {
				checkbox : true
			}, {
				field : 'orderId',
				title : '订单编号',
				width:200
			}, {
				field : 'totalPrice',
				title : '订单金额',
				width:200
			}, {
				field : 'orderTime',
				title : '下单时间',
				width:200
			}, {
				field : 'orderStatus',
				title : '订单状态',
				width:200,
				formatter : function(value, rowData, rowIndex) {
					if (rowData.orderStatus == '1') {
						return '未付款';
					} else if (rowData.orderStatus == '2') {
						return '已付款';
					} else if (rowData.orderStatus == '3') {
						return '已发货';
					} else if (rowData.orderStatus == '4') {
						return '未评论';
					} else {
						return '交易成功';
					}
				}
			}, {
				field : 'address',
				title : '收货地址',
				width:200
				
			}, {
				field : 'consignee',
				title : '收件人',
				width:200
				
			}, {
				field : 'recPhone',
				title : '联系方式',
				width:200
				
			}, {
				field : 'customerId',
				title : '下单用户',
				width:200
			} ] ],
			//工具栏
			toolbar : [ {
				text : '删除',
				iconCls : 'icon-remove',
				//处理方法
				handler : function() {
					remove();
				}
			}, {
				text : '发货',
				//处理方法
				handler : function() {
					fahuo();
				}
			} ],
		});

		function fahuo() {
			var rows = order.datagrid('getSelections');// 获得选中的行
			if (rows.length == 1) {
				if (rows[0].orderStatus == 2) {
					orderId = rows[0].orderId;
					
					/* $('#dialog').css('display', 'block');
					
					$('#dialog').dialog({
						title : '发货信息',
						width : 350,
						height : 350,
						modal : true
					}); */
					

					/* $('#wuliue').combobox({
						required : true,
						data : [ {
							"id" : 1,
							"text" : "申通快递",
							"selected" : true
						}, {
							"id" : 2,
							"text" : "圆通快递"
						}, {
							"id" : 3,
							"text" : "韵达快递"
						}, {
							"id" : 4,
							"text" : "顺丰快递"
						} ],
						valueField : 'id',
						textField : 'text',
						missingMessage : '请选择物流!'
					}); */

					
					layIndex=layer.open({
						type: 1,
		        		title:'发货',
		        		area: ['400px', '380px'],
		        		resize:true,
		        		scrollbar: false,
		        		offset: (window.innerHeight-350)/2+"px",
		        		content:$('#dialog'),
		        		btn:['确认发货',' 取消 '],
		        		btnAlign:'c',
		        		yes:function(index,layero){
		        			var rows = order.datagrid('getSelections');
		        			var id = rows[0].orderId;
		        			$.getJSON("admin/OrderController",{biz:"updateOrderStatus",orderId:id,status:"3"},function(data){
		        				  if(data.status=="success"){
		        				    layer.msg("发货成功",{icon:1});
		        				    rows.orderStatus=3;
		        				  }else{
		        				    layer.msg("发货失败",{icon:5});
		        				  }
		        			
		        			});
		        			layer.close(layer.index);
		        		}
					});
					
					$('#addressName').val(rows[0].address);
					$('#receiver').val(rows[0].consignee);
					$('#mobile').val(rows[0].recPhone);
					

				} else if (rows[0].orderStatus == 1) {
					layer.msg("未付款的订单不能发货!",{icon:2});
				} else if (rows[0].orderStatus == 3) {
					layer.msg("订单已经发货了!",{icon:4});
				} else if (rows[0].orderStatus == 4) {
					layer.msg("订单已经交易成功了!",{icon:4});
				}

			} else if (rows.length == 0) {
				layer.msg("请选择要发货的订单!",{icon:3});
			} else {
				layer.msg("只能选择一个订单!",{icon:2});
			}
		}

		/**
		 *	删除用户
		 */
		function remove() {
			var rows = order.datagrid('getSelections');// 获得选中的行
			if (rows.length > 0) {
				$.messager.confirm('请确认', '确定删除当前所选行?', function(r) {
					if (r) {
						var ids = [];
						for ( var i = 0; i < rows.length; i++) {
							ids.push(rows[i].orderId);// 向数组中添加一个元素
						}
						$.ajax({
							url : 'admin/OrderController?biz=remove',
							dataType : 'json',
							data : {
								orderId : ids.join(',')
							},
							success : function(response) {
								// 根据响应结果的 state 判断操作是否成功, 提示不同的信息
								if (response.status=="success") {
									layer.msg("删除成功!",{icon:1});
									order.datagrid('load');// 重新加载数据
								} else {
									$.messager.alert('提示', response.message, 'error');
								}
								order.datagrid('unselectAll');// 取消所有行的选中
							}
						});
					}
				});
			} else {
				layer.msg("请选择要删除的记录!",{icon:1});
			}
		}

		$('#button').click(function() {
		var rows = order.datagrid('getSelections');
		var id = rows[0].orderId;
		alert(id);
			$.getJSON("admin/OrderController",{biz:"updateOrderStatus",orderId:id,status:"3"},function(data){
			  if(data.status=="success"){
			    layer.msg("修改成功",{icon:1});
			    rows.orderStatus=3;
			  }else{
			    layer.msg("修改失败",{icon:5});
			  }
		
			});
	
		});	
		
		
		 $('#start').datetimebox({    
			    required: false,    
			    showSeconds: true   
			 });  
			 
			 $('#end').datetimebox({    
			    required: false,    
			    showSeconds: true   
			 }); 
			 
			 
			 $("#sbtn").click(function(){
			     var conginee = $("#conginee").val();
			     var start = $("#start").datetimebox('getValue');
			     var end = $("#end").datetimebox('getValue');
			     
			     $.getJSON("admin/OrderController",{biz:"searchOrder",conginee:conginee,start:start,end:end},function(data){
			         $("#table").datagrid("loadData",data);
			     });
			     
			     
			     
			 });
		
		
	});
	
	</script>
  </head>
  
  <body class="easyui-layout">
  <div data-options="region:'north'" style="height:60px;">
       <table cellpadding="15px">
          <tr>
             <td>下单用户</td>
             <td><input type="text" id="conginee" class="input"/></td>
             <td>下单时间</td>
             <td><input id="start" type="text" name="start" style="width:200px;outline:0;box-sizing: border-box;border: solid 1px #ddd;font-size: 14px;height:31px;font-weight: inherit;"/></td>
             <td>~</td>
             <td><input id="end" type="text" name="end" style="width:200px;outline:0;box-sizing: border-box;border: solid 1px #ddd;font-size: 14px;height:31px;font-weight: inherit;"/></td>
             <td><button id="sbtn" class="btn">搜索</button></td>
          </tr>
       </table>
       
    
    </div>
   <div data-options="region:'center'">
    <table id="table"></table>
     
   </div>
  </body>
  <div id="dialog" style="display:none;">
		<form id="myForm">
			<table border="0" cellpadding="15px 15px 10px 15px">
				<tr>
				<td>
						<label for="">物流: </label>
				</td>
					<td>
						<select name="wuliu" class="input">
							<option value="申通快递" selected>申通快递</option>
							<option value="圆通快递">圆通快递</option>
							<option value="韵达快递">韵达快递</option>
							<option value="顺丰快递">顺丰快递</option>
						</select>
					</td>
				</tr>
				<tr>
				<td>
						<label for="">收货地址: </label>
				</td>
					<td>
						<input type="text" class="input" name="addressName" id="addressName"/>
					</td>
				</tr>
				<tr>
				<td>
						<label for="">收件人: </label>
				</td>
					<td>
						<input type="text" class="input" name="receiver" id="receiver" />
					</td>
				</tr>
				<tr>
				<td>
						<label for="">联系方式: </label>
				</td>
					<td>
						<input type="text" class="input" name="mobile" id="mobile" />
					</td>
				</tr>
			</table>
			
			
		</form>
	</div> 
</html>
