<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示用户</title>
    
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
		#select,.btn{
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
		
		#select{
		    background-color:#64A05D;
		}
		
		#name,#num,.input{
		    width:200px;
	        outline:0;
	        box-sizing: border-box;
	        border: solid 1px #ddd;
	        font-size: 14px;
	        height:31px;
	        font-weight: inherit;
		}
		
		#status{
		    width:150px;
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
			 
			 
		        var biz = $('body').parent('iframe').context.URL.split('=')[1];
		        loadGrid(biz);
		        $('#addFrom').form({    
	                url:'CustomerController',    
	                onSubmit: function(param){    
	                    param.biz='addCus';    
	                },    
	                success:function(data){    
	                	var res = JSON.parse(data);
	                    if (res.status=="success") {
							//添加成功
	                    	layer.msg("添加成功",{icon:6});
							//往表格中添加数据
							var name=$("#inputName").val();
							alert(name);
							var pass=$("input[name='password']").val();
							var phone=$("input[name='phone']").val();
							var cus=$("select").val();
							var code=$("input[name='code']").val();
	                    	$("#CustomerList").datagrid("insertRow",{
	                    	   	index:0,
	                    	   	row:{
	                    	   		customerId:'1D09F9298E5D46AA93BCB9FA3526E77B',
	                    	   		customerName:name,
	                    	   		pwd:pass,
	                    	   		phoneNum:phone,
	                    	   		customerStatus:cus,
	                    	   		activationStatus:code
	                    	   	}
	                    	});
	                    	$("#CustomerList").datagrid("selectRow",0);
						} else {
	                       //添加失败
							layer.msg("添加失败",{icon:5});
						}
	                    
	                    layer.close(index);
	                	
	                }    
	            });    
		        
		        $("#select").click(function(){
		            var name = $("#name").val();
		            var phoneNum = $("#num").val();
		            var state = $("#status").val();
		        
		            $.getJSON("CustomerController",{name:name,phoneNum:phoneNum,status:state,biz:"findUser"},function(data){
		                  $("#CustomerList").datagrid("loadData",data);
		            });
		        });
		 });
		 
		 
		 
		 function loadGrid(method){
		            $("#CustomerList").datagrid({
					url:"CustomerController?biz="+method,
					fitColumns:true,	
					singleSelect:true,
					fit:true,
					columns:[[
						{field:"customerId",title:"用户Id",width:100,align:"right",editor:'text'},    
						{field:"customerName",title:"用户名",width:100,align:"right",editor:'text'},    
						{field:"pwd",title:"用户密码",width:100,align:"right",editor:'text'},    
						{field:"phoneNum",title:"电话号码",width:100,align:"right",editor:'text'},    
						{field:"customerStatus",
							title:"用户状态",
							width:100,
							align:"right",
							formatter: function(value,row,index){
								if (row.customerStatus==1){
									return '已激活';
								} else {
									return '未激活';
								}
							},
							editor:{
								type:'combobox',
								options:{
									valueField:'value',
									textField:'text',
									data:[{"value":1,"text":"激活"},{"value":0,"text":"禁言"}],
									required:true
								}
							}},    
						{field:"activationStatus",title:"激活码",width:100,align:"right",editor:'text'}    
					]],
					pagination:true,
					toolbar : [ { // 工具栏
						text : '添加',
						iconCls : 'icon-add',
						handler : function() {
						   //添加用户
						   addCustomer();
						}
					}, '-', {
						text : '修改',
						iconCls : 'icon-edit',
						handler : function() {
							//编辑用户
							edit();
						}
					},'-', {
						text : '保存',
						iconCls : 'icon-save',
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
					} ],
					onBeforeEdit:function(index,row){
						row.editing = true;
						updateActions(index);
					},
					onAfterEdit:function(index,row){
						row.editing = false;
						updateActions(index);
					},
					onCancelEdit:function(index,row){
						row.editing = false;
						updateActions(index);
					}
					
				});
		        
		 };
		 
		 var index=null;
		 
		 function addCustomer(){
			 //弹框添加
			 index = layer.open({
				  type: 1,
				  content: $('#addCus') //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
		     });
			 
			 
		 }
		 
		 
		 function edit(){
			 //修改
			 editrow();
		 }
		 
		 
		 function remove(){
			 //获得被选择的行
			 var rows = $("#CustomerList").datagrid('getSelections');
			
			 if (rows.length>0) {
				//提示管理员是否确定删除
				layer.confirm('是否确认删除！',{
					btn:['确认','取消'],
					yes:function(index){
						$("#CustomerList").datagrid("deleteRow",$("#CustomerList").datagrid("getRowIndex",rows[0]));
						layer.close(index);
					} 
					
				   
				}); 
				
			 } else {
				 layer.msg("请选择要删除的行",{icon:3});
			 }
			 
			 
			 
		 }
		 
		 function updateActions(index){
				$('#CustomerList').datagrid('updateRow',{
					index: index,
					row:{}
				});
			  }
			  
			  //获得行的序列号
			  function getRowIndex(){
				var rows = $("#CustomerList").datagrid('getSelections');
				if(rows.length>0){
				    return $("#CustomerList").datagrid("getRowIndex",rows[0]);
				}else{
					return 0;
				}
			  }
			  
			//编辑行
			function editrow(){
				$('#CustomerList').datagrid('beginEdit', getRowIndex());
			}
			
			//删除行
			function deleterow(){
				$.messager.confirm('Confirm','Are you sure?',function(r){
					if (r){
						$('#CustomerList').datagrid('deleteRow', getRowIndex());
					}
				});
			}
			
			
			//保存行
			function saverow(){
			    //同步数据库
			    //获得修改的行数
			    var rowNum = getRowIndex();
				$('#CustomerList').datagrid('endEdit', rowNum);
			    //获得行的内容
			    var oRows = $('#CustomerList').datagrid("getRows");
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
			    layer.msg("修改成功",{icon:6});
				
			}
			
			//取消修改
			function cancelrow(){
				$('#CustomerList').datagrid('cancelEdit', getRowIndex());
			}

			function addCus(){
				$('#addFrom').submit();
			}
		 
		 
		 
	</script>

  </head>
  
  <body class="easyui-layout">
      <div data-options="region:'north'" style="height:60px;overflow:hidden;background:#fff">
	  	<table cellpadding="0" cellspacing="15px" style="margin-left:80px">
	  	  <tr>
           <td>姓名：</td>
           <td><input type="text" name="name" id="name"/></td>
           <td>电话号码：</td>
           <td><input type="text" name="phoneNum" id="num"/></td>
           <td>用户状态：</td>
           <td><input type="text" name="status" id="status"/></td>
           <td><input type="submit" value="搜索" id="select"/></td>
	  	  </tr>
        </table>
      </div>
  	  <div data-options="region:'center'">
	    <table id="CustomerList">
	    </table>
  	  </div>
  	  <div id="addCus">
  	       <div>
  	       <form id="addFrom">
  	          <table cellpadding="15px 15px 10px 15px">
  	              <tr>
  	                  <td>用户名</td>
  	                  <td><input type="text" name="name" id="inputName" required="true" placeholder="请输入用户名" class="input"/></td>
  	              </tr>
  	              <tr>
  	                  <td>密码</td>
  	                  <td><input type="password" required="true" placeholder="请输入密码" name="password" class="input"/></td>
  	              </tr>
  	              <tr>
  	                  <td>电话号码</td>
  	                  <td><input type="text" required="true" placeholder="请输入手机号码" name="phone" class="input"/></td>
  	              </tr>
  	              <tr>
  	                  <td>用户状态</td>
  	                  <td>
  	                      <select name="status"  class="input">
  	                         <option value="1">激活</option>
  	                         <option value="0" selected>未激活</option>
  	                      </select>
  	                  </td>
  	              </tr>
  	              <tr>
  	                  <td>激活码</td>
  	                  <td><input type="text" name="code" class="input"  required="true" placeholder="请输入激活码"/></td>
  	              </tr>
  	              <tr>
  	                  <td colspan="2"><input style="margin-left:90px;" type="button" onclick="addCus()" value="提交" class="btn"/></td>
  	              </tr>
  	          
  	          </table>
  	          </form>
  	       
  	       </div>
  	  </div>
  </body>
</html>
