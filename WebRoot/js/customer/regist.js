$(function(){
	$("#J_email_to_mobile").click(function(){
		$("#reg_email_form").attr("class","register-form hidden");
		$("#reg_mobile_form").attr("class","register-form");
	});
	
	$("#J_mobile_to_email").click(function(){
		$("#reg_email_form").attr("class","register-form");
		$("#reg_mobile_form").attr("class","register-form hidden");
	});
	
	$("#reg_email_form").form({    
	    url:'CustomerServlet',    
	    onSubmit: function(param){    
	        param.biz="regist";   
	    },    
	    success:function(data){    
	        var result = JSON.parse(data);
	        if(result.status=="success"){
                //注册成功弹框提示激活账号
	        	//$("#j-dialog-medium").attr("class","ui-dialog ui-dialog-task ui-dialog-large z-ui-dialog-in");
	        	$("#sendEmail").text($("#J_email_name").val());
	        	layer.open({
	        		title:'温馨提示',
	        		area: ['450px', '250px'],
	        		resize:true,
	        		scrollbar: false,
	        		offset: (window.innerHeight-250)/2+"px",
	        		content:$("#j-dialog-medium").html(),
	        		btn:false,
	        		cancel:function(){
	        			window.location="index.jsp";
	        		}
	        	});
	        	
	        }else{
	            //回复按钮状态
	        	$("#J_email_reg_button").attr("class","ui-btn-large ui-btn-primary ui-btn-loading reg-form-btn form-submit");
	        	layer.msg('注册失败', {icon: 5,offset: (window.innerHeight-150)/2+"px"}); 
	        }
	    }    
	});
	
	
	$("#J_email_reg_button").click(function(){
		//校验表单
		if(checkAll()){
        	$(this).attr("class","ui-btn-large ui-btn-primary ui-btn-loading reg-form-btn form-submit z-ui-btn-loading");
			$("#reg_email_form").submit();
		} else {
			$(this).attr("class","ui-btn-large ui-btn-primary ui-btn-loading reg-form-btn form-submit");
		}
		
	});
	
	/*$("#mailbox_close").click(function(){
		$("#j-dialog-medium").attr("class","ui-dialog ui-dialog-task ui-dialog-large");
	});*/
	
	
	
	
	
});


function sendCode(){
	//获得参数
	var phoneNum = $("#J_email_mobile").val();
	if(checkPhone($("#J_email_mobile"))){
		$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-disable");
		//禁用按钮
		$("#J_email_verifycode_btn").removeAttr('onclick');		
		//发送异步请求
		$.getJSON("CustomerServlet",{biz:"pvcode",phone:phoneNum},function(data){
			if(data.status=="success"){
				//发送成功 开启倒计时
				settime();
			}else{
				//发送失败
				if (data.status=="over") {
					layer.msg("今天用的注册的次数太多了",{icon:5});
				} else {
					layer.msg("哦哦，验证码发送失败了。。。");
				}
				
				$("#J_email_verifycode_btn").attr("onclick","sendCode()");
				
			}
		});
	}
}

var time = 59;

function settime() {
	if (time == 0) {
		$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-secondary");
		$("#J_email_verifycode_btn").html("获取验证码");
		time = 59;
		//启用按钮
		$("#J_email_verifycode_btn").attr("onclick","sendCode()");
		return;
	} else {
		$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-disable");
	    var html='<span class="countdown-time f-pink">'+time+'</span>秒后重新获取';
		$("#J_email_verifycode_btn").html(html);
		time--;
	}
	setTimeout(function() {
		settime();
	}, 1000);
}



function checkEmail(obj){
	
    var $value = $(obj).val();
	
	if($value==null||$value.length==0||$value.trim()==""){
		warn(obj,"邮箱账号不能为空！");
		return false;
	}
	
	//格式是否合法
	if(!/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/.test($value)){
		warn(obj,"请输入正确格式的邮箱！");
        return false;		
	}
	
	//校验是否被占用
	checkEmailExist();
	
	cancel(obj);
	
	showSuccess(obj);
	return true;
	
}

function warn(obj,msg){
	$(obj).parent().attr("class","ui-form-item-group z-ui-form-item-warning");
	$(obj).parent().children(":eq(0)").find("[class='ui-tooltips-msg validator-msg']").html("<i class='vipFont if-sigh'></i>"+msg);
	$(obj).parent().children(":eq(0)").attr("class","ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow z-ui-tooltips-in");
}

function showSuccess(obj){
	$(obj).parent().attr("class","ui-form-item-group z-ui-form-item-success");
	$(obj).prev().css("display","block");
}

function cancel(obj){
	$(obj).parent().attr("class","ui-form-item-group");
	$(obj).parent().children(":eq(0)").attr("class","ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow");
};


function checkEmailExist(){
	var result=false;
	$.getJSON("CustomerServlet",{biz:"checkEmail",email:$("#J_email_name").val()},function(data){
		if (data.status=="rid") {
			cancel($("#J_email_name"));
			showSuccess($("#J_email_name"));
			result = true;
  	    } else {
  	    	$("#J_email_name").parent().attr("class","ui-form-item-group z-ui-form-item-warning");
  	    	$("#J_email_name").parent().children(":eq(0)").find("[class='ui-tooltips-msg validator-msg']").html("<i class='vipFont if-sigh'></i>该邮箱已注册！");
  	    	$("#J_email_name").parent().children(":eq(0)").attr("class","ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow z-ui-tooltips-in");
  	    	result = false;
	    }
		
	});
	
	return result;
	
}

function checkPass(obj){
	var $value = $(obj).val();
	//判断密码是否为空
	if ($value==null||$value.length==0||$value.trim()=="") {
		warn(obj,"密码不能为空！");
		return false;
	} 
	
	if($value.length<6){
		warn(obj,"请输入6~16位的密码");
		showStrong("strength-indicator login-pwd-w");
		return false;
	}
	
	cancel(obj);
	
	//显示密码强度
	var nStrong = checkStrong($value);
	switch(nStrong){
	case 0: 
		showStrong("strength-indicator login-pwd-w");
	break;
	case 1: 
		showStrong("strength-indicator login-pwd-m");
	break; 
	case 2: 
		showStrong("strength-indicator login-pwd-s");
	break; 
	default: 
		showStrong("strength-indicator login-pwd-w");
	}
	
	
	showSuccess(obj);
	
	return true;
	
	
	
}

function showStrong(style){
	$("#strong").attr("class",style).css("display","block").parent().prev().css("margin-bottom","8");
}

function CharMode(iN){ 
	if (iN>=48 && iN <=57) //数字 
	return 1; 
	if (iN>=65 && iN <=90) //大写字母 
	return 2; 
	if (iN>=97 && iN <=122) //小写 
	return 4; 
	else 
	return 8; //特殊字符 
} 


function bitTotal(num){ 
	modes=0; 
	for (var i=0;i<4;i++){ 
	if (num & 1) modes++; 
	num>>>=1; 
	} 
	return modes; 
} 

function checkStrong(sPW){ 
	if (sPW.length<=5) 
	return 0; //密码太短 
	Modes=0; 
	for (var i=0;i<sPW.length;i++){ 
	//测试每一个字符的类别并统计一共有多少种模式. 
	Modes|=CharMode(sPW.charCodeAt(i)); 
	} 
	return bitTotal(Modes); 
} 


function checkRePwd(obj){
	var $value = $(obj).val();
	var $pass = $("#J_email_pwd").val();
	//判断密码是否为空
	if ($value==null||$value.length==0||$value.trim()=="") {
		warn(obj,"重复密码不能为空！");
		return false;
	} 
	
	//判断密码是与先前输入的否一致
	if($value!==$pass){
		warn(obj,"两次密码不一致！");
		return false;
	}
	
	showSuccess(obj);
	return true;
	
}

function checkPhone(obj){
	var $value = $(obj).val();
	//判断密码是否为空
	if ($value==null||$value.length==0||$value.trim()=="") {
		warn(obj,"手机号码不能为空！");
		$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-disable");
		return false;
	}
	
	//校验手机格式是否正确
	if(!(/^1[3|5|8|4]\d{9}$/.test($value))){
		warn(obj,"请输入正确的手机号码");
		$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-disable");
		return false;
	}
	
	showSuccess(obj);
	$("#J_email_verifycode_btn").attr("class","ui-btn-medium btn-verify-code ui-btn-secondary");
	return true;
	
	
}


function checkCode(obj){
	var $value = $(obj).val();
	//判断密码是否为空
	if ($value==null||$value.length==0||$value.trim()=="") {
		return false;
	}
	
	cancel(obj);
	showSuccess(obj);
	
	return true;
	
}


function checkAll(){
	if(!checkEmail($("#J_email_name"))){
		return false;
	}
	
	if(!checkPass($("#J_email_pwd"))){
	    return false;	
	}
	
	if(!checkRePwd($("#J_email_confirm_pwd"))){
		return false;	
	}
	
	if(!checkPhone($("#J_email_mobile"))){
		return false;	
	}
	
	if(!checkCode($("#J_email_code"))){
		warn($("#J_email_code"),"验证码不能为空！");
		return false;	
	}
	
	if($("#J_email_agree")[0].checked==false){
		layer.msg("请同意协议条款！",{icon:4});
		return false;
	}
	
	
	return true;
}








