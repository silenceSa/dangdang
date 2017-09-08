<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateProduct.jsp' starting page</title>
    
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
body {
	font: 12px/1.5 "Helvetica Neue", Helvetica, Arial, "Hiragino Sans GB",
		\5FAE\8F6F\96C5\9ED1, tahoma, simsun, \5b8b\4f53;
}

#dialog table tr td {
	text-align: right;
}

#dialog table tr td input {
	height: 25px;
	padding-left: 5px;
	outline: none;
}

.input {
	height: 25px;
}

#buttons {
	float: right;
	margin: 15px 55px 0 0;
}

#button {
	margin-right: 30px;
}

#dialog label {
	font-size: 17px;
}
#productId{
    width:500px;
    height:35px;
    margin-top:30px;
}

#search{
    height:35px;
    width:70px;
}

#buttons input {
	width: 70px;
	height: 35px;
	font-size: 16px;
}

.combo {
	border-radius: 4px;
}

div p {
	margin: 20px 0;
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
            var table = $('#table');
		    //初始化所有商品的表格
		    table.datagrid({
			url : 'ProductController?biz=findProductByProductId',
			treeField : 'text',
			loadMsg : '加载中...',
			scrollbarSize : 0,// 滚动条宽度
			fitColumns : true,// 自动展开/收缩列
			animate : true,
			fit : true,
			singleSelect:true, //一次只能选择一行				
	    	sortName:"age",  //按列排序
            sortOrder:"desc", //排序方式  
            
			columns : [ [{
				field : 'image_s1',
				title : '小图片',
				width : 20,
				formatter: function(value,row,index){
					
					   var src="images/product/s1/"+row.image_s1;
					   	
			   	       return "<img src='"+src+"' width='60px' height='80px'/>"; 
			   	       
				}
				
			}, {
				field : 'productName',
				title : '产品名称',
				width : 80,
				
			},{
				field : 'price',
				title : '定价',
				width : 30,
				
			}, {
				field : 'currPrice',
				title : '当前价格',
				width : 30,
				
			},{
				field : 'discount',
				title : '折扣',
				width : 30,
				
			},{
				field : 'freight',
				title : '运费',
				width : 30,
				
			},{
				field : 'size',
				title : '尺寸',
				width : 30,
				
			},{
				field : 'num',
				title : '数量',
				width : 30,
				
			},{
				field : 'productId',
				title : '产品编号',
				width : 80,
				
			}] ],
    			pagination:true, //底部显示分页工具栏		   
    		    pageNumber:1,  //分页显示时，初始显示第几页，默认值1
    		    pageSize:10,   //分页显示时，页面显示记录的条数
    		    pageList:[5,10,20,50], //分页显示时，页面大小列表
    		    onDblClickRow:function(){
    		       update();
    		    }
		});
        
			
			/**
		    *修改商品
		    */
            function update() {
			var rows = table.datagrid('getSelections');// 获得选中的行

			if (rows.length == 1) {
				/**
				 * 准备提交的数据
				 */
				$('#myForm').form({
					url : 'ProductController',
					onSubmit : function(param) {
						param.biz = 'update';
						param.productId = rows[0].productId;
					},
					success : function(response) {
						var data = eval('(' + response + ')');// 把响应回来的字符串转成 JSON 格式
							// 根据响应结果的 state 判断操作是否成功, 提示不同的信息
							if (data.status=="success") {
								layer.msg("操作成功",{icon:6});
								$('#dialog').dialog('close');
								table.datagrid('load');// 重新加载数据
							} else {
                                layer.msg("操作失败",{icon:5});
							}
					}
				});

				dialogTitle = '修改商品';

				createDialog();

				$('#productName').val(rows[0].productName);
				
				$('#categoryId').combotree({    
			     url: 'admin/CategoryController?biz=findByPid',
			     editable : false,
			     missingMessage : '请选择父分类!',
			     valueField : 'id'
			    });  
				
				$('#price').numberbox('setValue', rows[0].price);
				$('#currPrice').numberbox('setValue', rows[0].currPrice);
				$('#discount').numberbox('setValue', rows[0].discount);
				$('#freight').numberbox('setValue',rows[0].freight);
				$('#size').val(rows[0].size);
				$('#num').val(rows[0].num);
				$('#brandName').val(rows[0].brandName);
				
			} else if (rows.length == 0) {
				$.messager.show({
					title : '消息',
					msg : '请选择编辑的行!'
				});
			} else {
				$.messager.show({
					title : '消息',
					msg : '只能选择一行!'
				});
			}
		}
        
        /**
		 * 创建一个弹窗
		 */
		function createDialog() {
			$('#dialog').css('display', 'block');
			$('#dialog').dialog({
				title : dialogTitle,
				width : 600,
				height : 400,
				modal : true
			});
			$('#dialog table tr td input').css('height', '25px').css('border', '1px solid #D4D4D4').css('border-radius', '4px');
			validate();// 开启input框的验证
		}

		/**
		 *	input框的验证
		 */
		function validate() {
			$('#productName').validatebox({
				required : true,
				missingMessage : '请输入商品名称!'
			});

			$('#categoryId').combotree({    
			     url: 'admin/CategoryController?biz=findByPid',
			     editable : false,
			     missingMessage : '请选择父分类!',
			     valueField : 'id'
			 });  

			$('#price').numberbox({
				min : 0,
				precision : 2,
			});

			$('#price').validatebox({
				required : true,
				missingMessage : '请输入商品的定价!'
			});

			$('#currPrice').numberbox({
				min : 0,
				precision : 2,
			});

			$('#currPrice').validatebox({
				required : true,
				missingMessage : '请输入商品的当前价!'
			});

			$('#discount').numberbox({
				min : 0,
				precision : 2,
			});

			$('#discount').validatebox({
				required : true,
				missingMessage : '请输入商品的折扣!'
			});
			
			$('#freight').numberbox({
				min : 0,
				precision : 2,
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
		
		
		$("#search").click(function(){
		   $("#text").css('display','block');
		   
		   var productId=$("#productId").val();
		     $.getJSON("ProductController",{biz:"findProductByProductId",productId:productId},function(data){
		         //更新数据
		         $("#table").datagrid("loadData",data);
		     });
		   
		});
		
      });
      
    </script>
</head>

<body class="easyui-layout">
	<div id="search" data-options="region:'north',split:true"
		style="height:100px;">
		<div id="search_box">
			<font size="6px">商品ID:</font>
			<input type="text" id="productId"/>  <input type="button" id="search" value="搜索" class="btn"/>
			
		</div>
	</div>
	
	<div data-options="region:'center'," data-options="fit:true"
		style="background:#eee;border:none;display:none" id="text">

		<table id="table"></table>
		
		<div id="dialog" style="width:550px;height:400px;">
			<form id="myForm" method="post">
				<div id="tt" class="easyui-tabs">
					
					<div title="基本信息">
						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 520px;height: 250px;margin-left: 25px;">
							<tr>
								<td><label for="">商品名称: </label> <input type="text"
									name="productName" id="productName" /></td>
								<td><label for="">所属分类: </label> <input id="categoryId"
									type="text" name="categoryId" /></td>
							</tr>
							<tr>
								<td><label for="">定价: </label> <input type="text"
									name="price" id="price" /></td>
								<td><label for="">当前价: </label> <input type="text"
									name="currPrice" id="currPrice" /></td>
							</tr>
							<tr>
								<td>
									<label for="">折扣: </label> 
									<input type="text" name="discount" id="discount" />
								</td>
							</tr>
						</table>
					</div>
					
					<div title="具体信息" style="overflow:auto;">
						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 520px;height: 250px;margin-left: 25px;">
							<tr>
								<td><label for="">运费: </label> <input type="text"
									name="freight" id="freight" /></td>
								<td><label for="">尺寸: </label> <input type="text"
									name="size" id="size" /></td>
							</tr>
							<tr>
								<td><label for="">数量: </label> <input type="text"
									name="num" id="num" /></td>
								<td><label for="">品牌名: </label> <input type="text"
									name="brandName" id="brandName" /></td>

							</tr>

						</table>
					</div>
					
					<div title="图片信息" style="overflow:auto;margin-left: 190px;">
						<p>
							超大图: <input type="file" name="image_h" id="image_h" value="浏览" />
						</p>
						<p>
							大图片: <input type="file" name="image_b" id="image_b" value="浏览" />
						</p>
						<p>
							小图1: <input type="file" name="image_s1" id="image_s1" value="浏览" />
						</p>
						<p>
							小图2: <input type="file" name="image_s2" id="image_s2" value="浏览" />
						</p>
						<p>
							小图3: <input type="file" name="image_s3" id="image_s3" value="浏览" />
						</p>
						<p>
							小图4: <input type="file" name="image_s4" id="image_s4" value="浏览" />
						</p>
						<p>
							小图5: <input type="file" name="image_s5" id="image_s5" value="浏览" />
						</p>
					</div>
				</div>
				<div id="buttons">
					<input type="submit" id="button" value="提交" class="btn"/> <input type="reset"
						id="cancel" value="取消" class="btn"/>
				</div>
			</form>
		</div>
	</div>
  </body>
</html>
