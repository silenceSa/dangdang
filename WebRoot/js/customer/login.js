$(function(){
	var i=0;
	$("#J_change_code").click(function(){
		i++;
		$("#J_verify_img_wrap").empty().append("<img width='100%' height='100%' src='VerifyCodeServlet?i="+i+"'/>");
	});
	
	$("#myform").form({    
	    url:'CustomerServlet',    
	    onSubmit: function(param){    
	        param.biz="login";   
	    },    
	    success:function(data){    
	        var result = JSON.parse(data);
	        if(result.status=="success"){
	        	//登陆成功跳转首页
	        	window.location="index.jsp";
	        }else{
	            //回复按钮状态
	        	$("#J_login_submit").attr("class","ui-btn-large ui-btn-primary ui-btn-loading u-submit-function");
	            //提示错误信息
	        	warn("用户名或密码错误",$("#J_login_pwd"));
	        }
	    }    
	});    
	
	
	$("#J_login_submit").click(function(){
		//校验表单
        if (checkAll()) {
        	//修改按钮状态
        	$(this).attr("class","ui-btn-large ui-btn-primary ui-btn-loading u-submit-function z-ui-btn-loading");
        	//校验成功提交表单
        	$("#myform").submit();
		} else {
			$(this).attr("class","ui-btn-large ui-btn-primary ui-btn-loading u-submit-function");
		}

	});	
	
	
});


function checkLoginName(obj){
	var $value = $("#J_login_name").val();
	if ($value==null||$value==""||$value.trim()=="") {
		//提示错误
		warn('用户名不能为空',obj);
		return false;
	}
	
	if(!/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/.test($value)){
		warn("请输入正确格式的邮箱！",obj);
        return false;		
	}
	
	cancel(obj);
	return true;
	
	
}


function warn(msg,obj){
	$(obj).attr("class","ui-input z-input-error");
	$(obj).parent().next().text(msg);
}

function cancel(obj){
	$(obj).attr("class","ui-input");
	$(obj).parent().next().text("");
}


function checkPwd(obj){
	var $value = $("#J_login_pwd").val();
	if ($value==null||$value==""||$value.trim()=="") {
		//提示错误
		warn('密码不能为空',obj);
		return false;
	}
	cancel(obj);
	return true;
}


function checkCode(obj){
	var $value = $("#J_login_code").val();
	if ($value==null||$value==""||$value.trim()=="") {
		//提示错误
		$(obj).attr("class","ui-input u-captcha z-input-error");
		$(obj).parent().next().text("请输入验证码！");
		return false;
	}
	cancelCode(obj);
	return true;
}


function cancelCode(obj){
	$(obj).attr("class","ui-input u-captcha");
	$(obj).parent().next().text("");
}


function checkAll(){
	
	if(!checkLoginName($("#J_login_name"))){
		return false;
	}
	
	if(!checkPwd($("#J_login_pwd"))){
		return false;
	}
	
	if(!checkCode($("#J_login_code"))){
		return false;
	}
	
	return true;
	
	
}





