<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'product.jsp' starting page</title>

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

#search_box input{
    width: 200px;
	height: 32px;
	font-size: 16px;
}

#search_box label{
    font-size:19px;
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
            $('#categoryId').combotree({    
			     url: 'admin/CategoryController?biz=findByPid',
			     editable : false,
			     missingMessage : '请选择父分类!',
			     valueField : 'id'
			 }); 
       
            var table = $('#table');
		    //初始化所有商品的表格
		    table.datagrid({
			url : 'ProductController?biz=findAll',
			treeField : 'text',
			loadMsg : '加载中...',
			fitColumns:true,
			scrollbarSize : 0,// 滚动条宽度
			fitColumns : true,// 自动展开/收缩列
			animate : true,
			fit : true,
			singleSelect:true, //一次只能选择一行				
	    	sortName:"age",  //按列排序
            sortOrder:"desc", //排序方式  
            
			columns : [ [ {
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
		
		});
		
		
		$("#search").click(function(){
		     var t = $('#categoryId').combotree('tree');	// 获取树对象
             var n = t.tree('getSelected');	
		     var categoryId = n.id;
		     var productName=$("#productName").val();
		     var currPrice1=$("#currPrice1").val();
		     var currPrice2=$("#currPrice2").val();
		     $.getJSON("ProductController",{biz:"findProductByDysql",productName:productName,categoryId:categoryId,currPrice1:currPrice1,currPrice2:currPrice2},function(data){
		         //更新数据
		         $("#table").datagrid("loadData",data);
		     });
		
		
		
		});
		
		
		
		
		
		
    
      });
      
    </script>
</head>

<body class="easyui-layout">
	<div id="search" data-options="region:'north',split:true"
		style="height:80px;">
		<div id="search_box">
		<br/>
			
			<label>商品名：</label><input type="text" name="productName" id="productName" />&nbsp;&nbsp;&nbsp;  <label>分类：</label><input type="text" name="categoryId" id="categoryId" style="width:200px;height:32px"/>&nbsp;&nbsp;&nbsp;  <label>价格：</label><input type="text" name="currPrice1" id="currPrice1" />~<input type="text" name="currPrice2" id="currPrice2" /> <input id="search" type="button" value="查询" style="width:70px;height:30px" class="btn"/>
		</div>
	</div>
	
	<div data-options="region:'center'," data-options="fit:true"
		style="background:#eee;border:none">

		<table id="table"></table>
		
		
	</div>
</body>
</html>
