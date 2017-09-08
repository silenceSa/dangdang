<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addProduct.jsp' starting page</title>
    
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
<script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
<style type="text/css">
.table tr td {
	text-align: right;
	height:80px;
}

.table tr td input {
	height: 25px;
	padding-left: 5px;
	outline: none;
}

#table{
    height:25px;
    padding-left: 5px;
	outline: none;
	text-align: center;
	height:80px;
	
}

.input {
	height: 25px;
}

#buttons {
	float: right;
	margin: 15px 500px 0 0;
}

#buttons input {
	width: 70px;
	height: 35px;
	font-size: 16px;
	
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
</style>
<script type="text/javascript">
     $(function(){
		    $('#myForm').form({
						url : 'ProductController',
						onSubmit : function(param) {
						    param.biz='add';
						},
						success : function(response) {
						   
							var data = eval('(' + response + ')');// 把响应回来的字符串转成 JSON 格式
							// 根据响应结果的 state 判断操作是否成功, 提示不同的信息
							if (data.status=="success") {
								layer.msg("操作成功",{icon:6});
							} else {
								layer.msg("操作失败",{icon:5});
							}
						}
					});
					$('#dialog table tr td input').css('height', '25px').css('border', '1px solid #D4D4D4').css('border-radius', '4px');
			        validate();// 开启input框的验证
		
		

		/**
		 * 提交表单
		 */
		$('#button').click(function() {
			if ($('#myForm').form('validate')) {// 判断验证是否通过
				$('#myForm').submit();// 提交数据
			}
		});

		$('#cancel').click(function() {
			$('#dialog').dialog('close');
		});
		
   });
   
   
   /**
		 *	input框的验证
		 */
		function validate() {
			$('#productName').validatebox({
				required : true,
				missingMessage : '请输入商品名称!'
			});

			$('#categoryId1').combotree({    
			     url: 'admin/CategoryController?biz=findByPid',
			     editable : false,
			     missingMessage : '请选择父分类!',
			     valueField : 'id'
			 });  


			$('#price').validatebox({
				required : true,
				missingMessage : '请输入商品的定价!'
			});


			$('#currPrice').validatebox({
				required : true,
				missingMessage : '请输入商品的当前价!'
			});



			$('#discount').validatebox({
				required : true,
				missingMessage : '请输入商品的折扣!'
			});
	
			
			$('#freight').validatebox({
				required : true,
				missingMessage : '请输入商品的运费!'
			});

			$('#size').validatebox({
				required : true,
				missingMessage : '请输入商品的尺寸!'
			});

			$('#num').validatebox({
				required : true,
				missingMessage : '请输入商品的数量!'
			});

			$('#brandName').validatebox({
				required : true,
				missingMessage : '请输入品牌名!'
			});

		}
   
   
   
   
</script>

  </head>
  
  <body>
    <div id="dialog" style="width:1100px;height:400px;">
			<form id="myForm" method="post">
					<div>
					    <h3> 基本信息</h3>
						<table style="width:100%"  class="table">
							<tr>
								<td>
								    <label for="">商品名称: </label> 
								    <input type="text" name="productName" id="productName" class="input"/>
								 </td>
								<td>
								     <label for="">所属分类: </label> 
								     <input id="categoryId1" type="text" name="categoryId" class="input"/>
							    </td>
							    <td>
							        <label for="">数量: </label> 
							        <input type="text"	name="num" id="num" class="input"/>
								</td>
							</tr>
							<tr>
							    
								<td><label for="">定价: </label> <input type="text"
									name="price" id="price" class="input"/></td>
								<td><label for="">当前价: </label> <input type="text"
									name="currPrice" id="currPrice" class="input"/></td>
								<td>
									<label for="">折扣: </label> 
									<input type="text" name="discount" id="discount" class="input" />
								</td>
							</tr>
						</table>
					</div>
					<hr/>
					<div>
					    <h3>具体信息</h3>
						<table style="width:100%"  class="table">
							<tr>
								<td>
								    <label for="">运费: </label> 
								    <input type="text" name="freight" id="freight" class="input" />
								</td>
								<td>
								    <label for="">尺寸: </label> 
								    <input type="text" name="size" id="size" class="input"/>
								</td>
							    <td style="width:325px">
							        <label for="">品牌名: </label> 
							        <input type="text" name="brandName" id="brandName" class="input"/>
							    </td>
							</tr>
						</table>
					</div>
					<hr/>
					<div>
					     <h3>图片信息</h3>
					     <table id="table" style="width:100%">
							<tr>
							  <td>
							      超大图: <input type="file" name="image_h" id="image_h" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							      大图片: <input type="file" name="image_b" id="image_b" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							     小图1: <input type="file" name="image_s1" id="image_s1" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							     小图2: <input type="file" name="image_s2" id="image_s2" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							     小图3: <input type="file" name="image_s3" id="image_s3" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							     小图4: <input type="file" name="image_s4" id="image_s4" value="浏览" style="width:150px"/>
							   </td>
							   <td>
							     小图5: <input type="file" name="image_s5" id="image_s5" value="浏览" style="width:150px"/>
							   </td>
							</tr>
						</table>
					</div>
				
				<div id="buttons">
					<input type="button" id="button" value="提交" class="btn" /> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset"	id="cancel" value="取消" class="btn"/>
				</div>
			</form>
		</div>
  </body>
</html>
