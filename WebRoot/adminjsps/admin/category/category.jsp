<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	
	    #ff{
	       margin-left:50px;
	    }
	    
	    
	    #sbtn{
	       width:80px;
	       height:25px;
	       border:1px solid #eee;
	       background:#E57489;
	       margin-left:22px;
	    }
	    
	    
	</style>
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
    <script type="text/javascript">
    $(function(){
    
            var table = $('#table');
		    table.treegrid({
			url : 'admin/CategoryController?biz=findByPid',
			idField : 'id',
			treeField : 'text',
			loadMsg : '加载中...',
			scrollbarSize : 0,// 滚动条宽度
			fitColumns : true,// 自动展开/收缩列
			animate : true,
			fit : true,
			columns : [ [ {
				field : 'id',
				title : '编号',
				width : 200,
			}, {
				field : 'text',
				title : '名称',
				width : 450,
			}, {
				field : 'parentId',
				title : '父分类编号',
				width : 200,
			} ,{
				field : 'describe',
				title : '父类描述',
				width : 200,
			}] ]
		
		
			
		});
		
		
		$('#ff').form({    
		    url:'admin/CategoryController?biz=findCategory',    
		    onSubmit: function(){  
		        if($("#ff div input").val()==null||$("#ff div input").val()==""){
		           return false;    
		        }  
		    },    
		    success:function(data){
		        //成功后接受    
		        alert(data);    
		    }    
		});    
		
		
		$("#sbtn").click(function(){
		    $("#ff").submit();
		});
		
  
    
    });
       
    
    
    
    </script>
  </head>
  
  <body>
 
    <table id="table"></table>
    
    
    
    
  </body>
</html>
