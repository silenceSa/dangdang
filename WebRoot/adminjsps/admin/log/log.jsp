<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'log.jsp' starting page</title>
    
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
          #name,#start,#end{
            width:200px;
	        outline:0;
	        box-sizing: border-box;
	        border: solid 1px #ddd;
	        font-size: 14px;
	        height:31px;
	        font-weight: inherit;
          }
          
          #sbtn{
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
	    
	    #sbtn:hover{
	        background-color:#64A05D;
	    }
          
          
          
    
    </style>

    <script type="text/javascript">
        $(function(){
            $("#table").datagrid({
				url:"admin/AdminController?biz=findLogByPage",
				fitColumns:true, //自动调整列宽
				resizeHandle:"left", //自动调整列 可能的值是 left,right,both
				autoRowHeight:false, //自动设置行高，默认是true,设为false可以提高性能
				nowrap:true,//列中内容过长是否自动换行，设置为true可以提高加载性能
				idField:"uid", //指明那个类是标识字段
				loadMsg:"玩命加载中，请稍候....",
				striped:true,  //隔行变色
				rownumbers:true, //显示行号列
				singleSelect:true, //一次只能选择一行
				ctrlSelect:true, //用ctrl键和鼠标左键选取多行
				sortName:"age",  //按列排序
                sortOrder:"desc", //排序方式 
                striped:true,
                fit:true,
				columns:[[      
							{field:'adminName',title:'管理员名',width:150},
        					{field:'operType',title:'操作类型',width:350},
        					{field:'operDetail',title:'操作详细',width:150},
        					{field:'operResult',title:'评论时间',width:350},
        					{field:'loginIp',title:'登陆IP',width:100},
							{field:'loginTime',title:'登录时间',width:150},
    					]],
    			pagination:true, //底部显示分页工具栏		   
    		    pageNumber:1,  //分页显示时，初始显示第几页，默认值1
    		    pageSize:10,   //分页显示时，页面显示记录的条数
    		    pageList:[5,10,20,50], //分页显示时，页面大小列表
    		    
    		   });

               $("#start").datetimebox({    
				    required: false,    
				    showSeconds: true,   
				}); 
				
				$("#end").datetimebox({    
				    required: false,    
				    showSeconds: true,   
				});
				
				$("#search").form({    
				    url:"admin/AdminController",    
				    onSubmit: function(param){    
				        param.biz="findLog";    
				    },    
				    success:function(data){   
				        $("#table").datagrid("loadData",JSON.parse(data));    
				    }    
				});    
				
				$("#sbtn").click(function(){
				    $("#search").submit();
				});
        });
    
    
    </script>

  </head>
  
  <body class="easyui-layout">
    <div data-options="region:'north'" style="height:60px;overflow:hidden">
       <form id="search">
          <table cellpadding="0" cellspacing="15px">
           <tr>
                 <td>用户名</td>
                 <td><input id="name" type="text" name="name"/></td>
                 <td>日期</td>
                 <td>
                     <input id="start" type="text" style="width:200px;outline:0;box-sizing: border-box;border: solid 1px #ddd;font-size: 14px;height:31px;font-weight: inherit;" name="startTime"/>
    	         </td>
                 <td>
                     <input id="end" type="text"  style="width:200px;outline:0;box-sizing: border-box;border: solid 1px #ddd;font-size: 14px;height:31px;font-weight: inherit;" name="endTime"/>
                 </td>
                 <td>
                     <input type="button" id="sbtn" value="搜索"/>
                 </td>
              </tr>
           </table>
       </form>
    </div>
    
    <div data-options="region:'center'">
       <table id="table"></table>
    </div>
    
    
  </body>
</html>
