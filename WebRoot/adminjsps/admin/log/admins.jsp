<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admins.jsp' starting page</title>
    
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
        	$('#addFrom').form({    
                url:'admin/AdminController',    
                onSubmit: function(param){    
                    param.biz='add';    
                },    
                success:function(data){    
                	var res = JSON.parse(data);
                    if (res.status=="success") {
						//添加成功
                    	layer.msg("添加成功",{icon:6});
                    	$("#table").datagrid("insertRow",{
                    	   	index:0,
                    	   	row:{
                    	   		adminId:'535282E407CF4589B92B231C95D8FD9F',
                    	   		adminName:$("input[name='username']").val(),
                    	   		adminPass:$("input[name='password']").val()
                    	   	}
                    	});
                    	$("#table").datagrid("selectRow",0);
					} else {
                       //添加失败
						layer.msg("添加失败",{icon:5});
					}
                    layer.close(index);
                	
                }    
            });    
        	
            $("#table").datagrid({
				url:"admin/AdminController?biz=findAdmin",
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
							{field:'adminId',title:'管理员Id',width:150,editor:'text'},
        					{field:'adminName',title:'管理员名',width:350,editor:'text'},
        					{field:'adminPass',title:'管理员密码',width:150,editor:'text'}
    					]],
    					toolbar : [ { // 工具栏
    						text : '添加',
    						iconCls : 'icon-add',
    						handler : function() {
    						   //添加用户
    						   addAdmin();
    						}
    					}, '-', {
    						text : '修改',
    						iconCls : 'icon-edit',
    						handler : function() {
    							//编辑用户
    							edit();
    						}
    					}, '-', {
    						text : '保存',
    						iconCls : 'icon-edit',
    						handler : function() {
    							//编辑用户
    							saverow();
    						}
    					}, '-', {
    						text : '删除',
    						iconCls : 'icon-remove',
    						handler : function() {
    							//删除用户
    							remove();
    						}
    					} ]
     		    
    		   });
            
            


               
        });
        
        var index=null;
        function addAdmin(){
        	index = layer.open({
				  type: 1,
				  content: $('#addCus') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
		    });
        }
        
        function edit(){
        	editrow();
        }
        
      
        function remove(){
			 //获得被选择的行
			 var rows = $("#table").datagrid('getSelections');
			
			 if (rows.length>0) {
				//提示管理员是否确定删除
				layer.confirm('是否确认删除！',{
					btn:['确认','取消'],
					yes:function(index){
						$("#table").datagrid("deleteRow",$("#table").datagrid("getRowIndex",rows[0]));
						layer.close(index);
					} 
					
				}); 
				
			 } else {
				 layer.msg("请选择要删除的行",{icon:3});
			 }
			 
			 
			 
		 }
		 
		 function updateActions(index){
				$('#table').datagrid('updateRow',{
					index: index,
					row:{}
				});
			  }
			  
			  //获得行的序列号
			  function getRowIndex(){
				var rows = $("#table").datagrid('getSelections');
				if(rows.length>0){
				    return $("#table").datagrid("getRowIndex",rows[0]);
				}else{
					return 0;
				}
			  }
			  
			//编辑行
			function editrow(){
				$('#table').datagrid('beginEdit', getRowIndex());
			}
			
			//删除行
			function deleterow(){
				$.messager.confirm('Confirm','Are you sure?',function(r){
					if (r){
						$('#table').datagrid('deleteRow', getRowIndex());
					}
				});
			}
			
			
			//保存行
			function saverow(){
			    //同步数据库
			    //获得修改的行数
			    var rowNum = getRowIndex();
				$('#table').datagrid('endEdit', rowNum);
			    //获得行的内容
			    var oRows = $('#table').datagrid("getRows");
			    var oRow=oRows[rowNum];
			    //拼接数据  biz=xxx
			    var sdata = "";
			    for(var i in oRow){
				    if ("editing"==i) {
			           sdata+=i+"="+oRow[i];
					} else {
			           sdata+=i+"="+oRow[i]+"&";
					}
			    }
			    //同步数据库
			    layer.msg("修改成功",{icon:6});
				
			}
			
			//取消修改
			function cancelrow(){
				$('#table').datagrid('cancelEdit', getRowIndex());
			}
			
			
			function upDateToDB(){
				//提交表单
				$('#addFrom').submit();
				
			}
		 
    
    
    </script>

  </head>
  
  <body class="easyui-layout">
    
    
    <div data-options="region:'center'">
       <table id="table"></table>
    </div>
    <div id="addCus">
  	       <div>
  	       <form id="addFrom">
  	          <table cellpadding="15px 15px 10px 15px">
  	              <tr>
  	                  <td>管理员名</td>
  	                  <td><input type="text" name="username" class="input" required="true" placeholder="请输入管理员名"/></td>
  	              </tr>
  	              <tr>
  	                  <td>密码</td>
  	                  <td><input type="password" name="password" class="input"  required="true" placeholder="请输入管理员密码"/></td>
  	              </tr>
  	              <tr>
  	                  <td colspan="2"><input style="margin-left:90px;" onclick="upDateToDB()" required="true" placeholder="请输入管理员密码" type="button" value="提交" class="btn"/></td>
  	              </tr>
  	          
  	          </table>
  	          </form>
  	       
  	       </div>
  	  </div>
    
    
  </body>
</html>
