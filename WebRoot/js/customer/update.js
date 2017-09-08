var phone=null;

$(function(){
    $("#J_next").click(function(){
        $.getJSON("CustomerServlet",{biz:"updatePwdPre",loginName:$("#J_loginNameInput").val(),code:$("#J_png_codeInput").val()},function(data){
        	if(data.errno==0){
        		//校验失败
        		msg("校验失败，请重新填写");
        	}else if(data.errno==1){
        		msg("验证码不正确");
        		changeCode();
        	}else if(data.errno==2){
        		msg("用户名不存在");
        	}else{
        		//成功进入下一步
        		phone=data.phone;
        		validPhone($("#J_next"),data.phone);
        	}
        	
        });
    
    });	
    
    
    
	
	
	
});


var i=0;
function changeCode(){
	$("#J_codePng").attr("src","VerifyCodeServlet?i="+i);
}

function msg(message){
	layer.msg(message, {icon: 5,offset: (window.innerHeight-150)/2+"px"});
}

function back(){
	$("#J_next").parent().parent().attr("class","m-verification-form J_step");
	$("#J_next").parent().parent().next().attr("class","m-verification-form J_step f-hidden");
}


function sendCode(obj){
	
	//发送异步请求
	
	//打开输入面板
	$(obj).parent().parent().attr("class","J_before f-hidden");
	$(obj).parent().parent().next().attr("class","J_after J_after_phone m-phone-after");
	
	
}


function sendPvCode(obj){
	$.getJSON("CustomerServlet",{biz:"pvcode",phone:phone},function(data){
		if(data.status=="success"){
			//发送成功 开启倒计时
			settime();
			//启用按钮
			$("#J_phone_sure").attr("class","ui-btn-medium ui-btn-primary ui-btn-secondary");
		}else{
			//发送失败
			if (data.status=="over") {
				layer.msg("今天用的注册的次数太多了",{icon:5});
			} else {
				layer.msg("哦哦，验证码发送失败了。。。");
			}
			
			
			$("#J_getCodeBtn").attr("onclick","sendPvCode(this)");
			$("#J_phone_sure").attr("class","ui-btn-medium ui-btn-primary ui-btn-disable");
		    
		
		}
	});
	
	
	
	
}


function preUpdate(obj){
	
	if($("#J_codeInput").val()==""||$("#J_codeInput").val()==null){
		$(obj).parent().prev().eq(1).attr("class","ui-form-item-group z-ui-form-item-warning");
	}else{
		$(obj).parent().prev().eq(1).attr("class","ui-form-item-group");
		//验证手机验证码
		$("#J_progress").attr("class","m-progress z-step4-done z-step3");
		//打开修改密码界面
		$("#J_next").parent().parent().next().attr("class","m-verification-form J_step f-hidden");
		$("#newPwd").attr("class","m-verification-form J_step m-pwd-box");
		
	}
	
	
	
}


function updatePass(){
	
	//获得验证码
	var code = $("#J_codeInput").val();
	
	//获得密码
    var pass = $("#J_newPwd").val();	
	var repass = $("#J_againPwd").val();
	//校验参数
	var res = validPass(code,pass,repass);
	//发送请求
    if(res){
    	$.getJSON("CustomerServlet",{biz:"updatePwd",password:pass,pvcode:code},function(data){
    		$("#newPwd").attr("class","m-verification-form J_step f-hidden m-pwd-box");
    		if(data.status=="success"){
    			$("#success").attr("class","J_step");
    			$("#J_progress").attr("class","m-progress z-step4-done z-step4");
    		}else{
    			$("#failed").attr("class","J_verifyFail");
    		}
    	});
    	
    	
    }	
	
	
}


function validPass(code,pass,repass){
	
	if(code==null||code==""){
		msg("请输入验证码");
		return false;
	}
	
	if(pass==null||pass==""){
		msg("密码不能为空");
		return false;
	}
	
	if(repass==null||repass==""){
		msg("重复密码不能为空");
		return false;
	}
	
	if(repass!==pass){
		msg("两次密码不一致");
		return false;
	}
	
	return true;
	
}



function checkPass(obj){
	var $value = $(obj).val();
	//判断密码是否为空
	if ($value==null||$value.length==0||$value.trim()=="") {
		return false;
	} 
	
	if($value.length<6){
		return false;
	}
	
	//显示密码强度
	var nStrong = checkStrong($value);
	switch(nStrong){
	case 0: 
		showStrong(1);
	break;
	case 1: 
		showStrong(2);
	break; 
	case 2: 
		showStrong(3);
	break; 
	default: 
		showStrong(3);
	}
	
	return true;
	
	
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


function showStrong(strong){
	var fontMsg = $("#J_degree").children().find("span");
	if(strong==1){
		$("#J_degree").children().attr("class","z-pwd-weak");
		fontMsg.text("弱");
	}else if(strong==2){
		$("#J_degree").children().attr("class","z-pwd-medium");
		fontMsg.text("中");
	}else if(strong==3){
		$("#J_degree").children().attr("class","z-pwd-strong");
		fontMsg.text("强");
	}
	
}


var time = 59;

function settime() {
	if (time == 0) {
		$("#J_getCodeBtn").attr("class","ui-btn-medium btn-verify-code ui-btn-secondary");
		$("#J_getCodeBtn").html("获取验证码");
		time = 59;
		//启用按钮
		$("#J_getCodeBtn").attr("onclick","sendPvCode(this)");
		return;
	} else {
		$("#J_getCodeBtn").attr("class","ui-btn-medium btn-verify-code ui-btn-disable");
	    var html='<span class="countdown-time f-pink">'+time+'</span>秒后重新获取';
		$("#J_getCodeBtn").html(html);
		time--;
	}
	setTimeout(function() {
		settime();
	}, 1000);
}






function validPhone(obj,phone){
	$("#J_progress").attr("class","m-progress z-step4-done z-step2");
	//$("span[class='step-2 step']").find("em").attr("class","bg_now");
	//$("span[class='step-1 step']").find("em").attr("class","bg_success");
	$(obj).parent().parent().attr("class","m-verification-form J_step f-hidden");
	$(obj).parent().parent().next().attr("class","m-verification-form J_step");
    var phoneNum=phone.substring(0,3)+"*****"+phone.substring(8,12);
	//设置提示框的数据
	$(obj).parent().parent().next().children(":eq(0)").find("b").text(phoneNum);
	//展开提示框
	$(obj).parent().parent().next().children(":eq(0)").attr("class","J_before");
	//添加数据
	$(".J_phone_name").text(phoneNum);
	$(obj).parent().parent().next().children(":eq(0)").children(":eq(2)").find("p").eq(0).text(phoneNum);
	//展开手机验证
	$(obj).parent().parent().next().children(":eq(0)").children(":eq(2)").attr("class","m-safety-item J_before_phone");
}


function checkLoginName(obj){
	
	if($(obj).val()==null||$(obj).val()==''){
		$(obj).parent().attr("class","ui-form-item-group z-ui-tooltips-in");
	}else{
		$(obj).parent().attr("class","ui-form-item-group z-ui-form-item-success");
	}
	
	
}