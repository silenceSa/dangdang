<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cateoper.jsp' starting page</title>
    
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
	    #cateName{
	        width:250px;
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
	    
	    .btn{
			width:80px;
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
	        var level = $('body').parent('iframe').context.URL.split('=')[1];
	        $('#dg').datagrid({    
		    url:'admin/CategoryController?biz=findLevel&level='+level,
		    pagination:true,
		    singleSelect:true,
		    fitColumns:true,    
		    pageList: [10,15,20,50,100],
		    striped : true,
		    fit:true,
		    columns : [ [ {
				field : 'categoryId',
				title : '编号',
				width : 200,
			}, {
				field : 'categoryName',
				title : '名称',
				width : 200,
				editor:'text'
			}, {
				field : 'parentId',
				title : '父分类编号',
				width : 200,
				editor:'text'
			} ,{
				field : 'describe',
				title : '父类描述',
				width : 200,
				editor:'text'
			},{field:'action',title:'操作',width:180,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<button class="btn" onclick="saverow(this)">保存</button> ';
							var c = '<button class="btn" onclick="cancelrow(this)">取消</button>';
							return s+c;
						} else {
							var e = '<button class="btn" onclick="editrow(this)">编辑</button> ';
							var d = '<button class="btn" onclick="deleterow(this)">删除</button>';
							return e+d;
						}
					}
				}
			    
			] ],
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
		    
		    
		    $("#sbtn").click(function(){
		         //获取分类名
		         var cateName = $("#cateName").val();
		         if(cateName==null||cateName==""){
		             $.getJSON("admin/CategoryController",{biz:"findLevel",level:$(".category").val()},function(data){
		                //更新表格
		                $('#dg').datagrid("loadData",data);
		             });
		         }else{
		             $.getJSON("admin/CategoryController",{biz:"findLevel",level:$(".category").val(),cateName:cateName},function(data){
		                //更新表格
		                $('#dg').datagrid("loadData",data);
						
		             });
		             
		             
		         }
		    
		    
		    
		    });
		    
			       
			    
	    
	    });
	    
	  function updateActions(index){
		$('#dg').datagrid('updateRow',{
			index: index,
			row:{}
		});
	  }
	  
	  //获得行的序列号
	  function getRowIndex(target){
		var tr = $(target).closest('tr.datagrid-row');
		return parseInt(tr.attr('datagrid-row-index'));
	  }
	  
	//编辑行
	function editrow(target){
		$('#dg').datagrid('beginEdit', getRowIndex(target));
	}
	
	//删除行
	function deleterow(target){
		layer.confirm('是否确认删除！',{
			btn:['确认','取消'],
			yes:function(index){
				$('#dg').datagrid('deleteRow', getRowIndex(target));
				layer.close(index);
			} 
		}); 
		
	}
	
	
	//保存行
	function saverow(target){
	    //同步数据库
	    //获得修改的行数
	    var rowNum = getRowIndex(target);
		$('#dg').datagrid('endEdit', rowNum);
	    //获得行的内容
	    var oRows = $('#dg').datagrid("getRows");
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
	    //发送异步请求同步数据
	    $.getJSON("admin/CategoryController?biz=update&"+sdata,function(data){
	         if (data.status=="success") {
				//添加成功提示修改成功
				layer.msg("修改成功",{icon:6});
			 } else {
			    //添加失败 回滚数据
                cancelrow(target);
                layer.msg("修改失败",{icon:5});               
			 }
	    });
	    
	    
		
	}
	
	//取消修改
	function cancelrow(target){
		$('#dg').datagrid('cancelEdit', getRowIndex(target));
	}
	
	
	  
	    
	    
	
	</script>
	
	
	
  </head>
  
  <body class="easyui-layout">
  <div  data-options="region:'north'" style="height:60px;overflow:hidden;background:#fff">
     <table cellpadding="0" cellspacing="15px" style="margin-left:280px">
        <tr>
           <td>分类名</td>
           <td>
              <input type="text" id="cateName" placeholder="请输入分类名"/>
           </td>
           <td>
              <select class="category" style="display:none">
				<option value="level0" selected>全部分类</option>
				<option value="level1">一级分类</option>
				<option value="level2">二级分类</option>
				<option value="level3">三级分类</option>
			  </select>
           </td>
           <td>
              <button id="sbtn">搜索</button>
           </td>
           
        </tr>
     </table>
     </div>
     
     <div data-options="region:'center'">
         <table id="dg"></table> 
     
     </div>
     
     <div id="dialog"></div>
     
  </body>
</html>
