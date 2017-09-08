<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会网站注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="css/customer/regist.css">
    <script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
    <script type="text/javascript" src="js/customer/regist.js"></script>
    
  </head>
  
  <body class="regSingle">
    <div class="layout">
	<div class="header" passport_mars_sead_hover="">
        <a href="index.jsp" class="logo sprite" id="for-cascade-login-link"></a>
        <div class="bannerHeader sprite"></div>
        <div class="u-ad-header J-ads" data-adsid="ADSBAZW9" data-tpl="#J-ADSBAZW9-tpl"></div>
        <script id="J-ADSBAZW9-tpl" type="text/html"><img src="{{ img }}" width="445" height="30" alt="{{ name }}"></script>
    </div>
	<div class="content J-ads clear" data-adsid="ADS9757C" data-bg="true" style="background-image: url('images/customer/login/14972774670574.jpg');">
		<div class="regForm">
			<input name="vipc" value="f6ae179ec1e341c9a0d7904b4681d3e4" type="hidden">
			<div class="regHeaderTip">
				<span class="fl">
				欢迎注册
				</span>
				<span class="fr f12" passport_mars_sead_hover="">已注册可<a href="jsps/customer/login.jsp">直接登录</a></span>
			</div>
<div id="reg-form-wrapper">
	<div class="ui-tips-big ui-tips1 hidden">
		<i class="vipFont if-sigh"></i>
		<a href="javascript:;" role="button" class="close">×</a>
		<p class="info"><i class="vipFont if-sigh"></i><span class="info-msg"></span></p>
	</div>
	<form id="reg_mobile_form" action="CustomerServlet" method="post" autocomplete="off" class="register-form hidden">
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input ipt-phone" id="J_mobile_name" name="loginName" placeholder="请输入用户名" passport_mars_sead_hover="" passport_mars_sead_input="mobileRegMobile" mars_sead="125|2|1|2" type="text">
	        </div>
	    </div>
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input ipt-phone" id="J_mobile_name" name="phone" placeholder="请输入手机号码" passport_mars_sead_hover="" passport_mars_sead_input="mobileRegMobile" mars_sead="125|2|1|2" type="text">
	        </div>
	    </div>
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input" id="J_mobile_pwd" name="password" maxlength="20" placeholder="密码由6-20位字母，数字和符号组合" passport_mars_sead_hover="" passport_mars_sead_input="mobileRegPw" mars_sead="125|2|1|5" type="password">
	        </div>
	    </div>
	    	<div class="pure-control-group">
		        <div class="strength-indicator">
		            <span class="indicator-item section-weak"></span>
		            <span class="indicator-item section-medium"></span>
		            <span class="indicator-item section-strong"></span>
		            <span class="indicator-text text-weak">弱</span>
		            <span class="indicator-text text-medium">中</span>
		            <span class="indicator-text text-strong">强</span>
		        </div>
		    </div>
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
	        	<div class="ui-tooltips ui-tooltips-info ui-tooltips-bottom-left-arrow custom-tooltips-info">
                    <div class="ui-tooltips-arrow">
                        <i class="arrow arrow-out">◆</i>
                        <i class="arrow">◆</i>
                    </div>
                    <div class="ui-tooltips-content">
                        <p class="validator-msg"></p>
                    </div>
                </div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input confirm-pwd" id="J_mobile_confirm_pwd" name="confirmPassword" maxlength="20" placeholder="请再次输入上面的密码" passport_mars_sead_hover="" passport_mars_sead_input="mobileRegCPw" mars_sead="125|2|1|6" type="password">
	        </div>
	    </div>

	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group adjust-success z-ui-form-item-warning"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
	        	<div class="ui-tooltips ui-tooltips-info ui-tooltips-bottom-left-arrow custom-tooltips-info">
                    <div class="ui-tooltips-arrow">
                        <i class="arrow arrow-out">◆</i>
                        <i class="arrow">◆</i>
                    </div>
                    <div class="ui-tooltips-content">
                        <p class="validator-msg"></p>
                    </div>
                </div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input id="J_mobile_code" class="ui-input ipt-verify-code" name="pvcode" placeholder="短信验证码" passport_mars_sead_hover="" passport_mars_sead_input="mobileRegMobileCode" mars_sead="125|2|1|8" type="text"><a href="javascript:;" role="button" id="J_mobile_verifycode_btn" class="ui-btn-medium ui-btn-disable btn-verify-code" passport_mars_sead_hover="" mars_sead="125|2|1|7">获取验证码</a>
	        </div>
	    </div>
		    <div class="control-group mb30 clearfix">
		        <a href="javascript:;" role="button" id="J_mobile_reg_button" class="ui-btn-large ui-btn-primary ui-btn-loading reg-form-btn form-submit" passport_mars_sead_hover="" mars_sead="125|2|1|9">
		            <span class="ui-btn-loading-before">立即注册</span>
		            <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i><span class="ui-btn-txt">处理中...</span></span>
		        </a>
		        	<a href="javascript:;" class="entrance-link reg-form-link" id="J_mobile_to_email" passport_mars_sead_hover="" mars_sead="125|2|1|10">通过邮箱注册</a>
		    </div>
		    <div class="control-group clearfix">
		    	<div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
			        <span class="ui-checkbox mr0">
			            <input id="J_mobile_agree" name="agree" class="ui-checkbox-normal" checked="checked" value="1" mars_sead="125|2|1|11" type="checkbox"><label for="J_mobile_agree" class="ui-checkbox-simulation"></label>
			        </span>
			        <label for="J_mobile_agree" class="ui-label f-12">我已阅读并接受<a href="http://support.vip.com/clause/?ff=125|2|1|12" class="red" target="_blank" id="J_mobile_provision">唯品会服务条款</a>。</label>
		        </div>
		    </div>
	</form>
	<form id="reg_email_form" action="CustomerServlet" method="post" autocomplete="off" class="register-form">
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input" onfocus="cancel(this)" onblur="checkEmail(this)" id="J_email_name" name="loginName" placeholder="请输入邮箱账号" passport_mars_sead_hover="" passport_mars_sead_input="emailRegEmail" mars_sead="125|2|2|2" type="text">
	        </div>
	    </div>
	    
	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input  onfocus="cancel(this)" onkeyup="checkPass(this)" class="ui-input" id="J_email_pwd" name="password" maxlength="20" placeholder="密码由6-20位字母，数字和符号组合" passport_mars_sead_hover="" passport_mars_sead_input="emailRegPw" mars_sead="125|2|2|5" type="password">
	        </div>
	    </div>
	    	<div class="pure-control-group ml85">
		        <div class="strength-indicator" id="strong">
		            <span class="indicator-item section-weak"></span>
		            <span class="indicator-item section-medium"></span>
		            <span class="indicator-item section-strong"></span>
		            <span class="indicator-text text-weak">弱</span>
		            <span class="indicator-text text-medium">中</span>
		            <span class="indicator-text text-strong">强</span>
		        </div>
		    </div>

	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
	        	<div class="ui-tooltips ui-tooltips-info ui-tooltips-bottom-left-arrow custom-tooltips-info">
                    <div class="ui-tooltips-arrow">
                        <i class="arrow arrow-out">◆</i>
                        <i class="arrow">◆</i>
                    </div>
                    <div class="ui-tooltips-content">
                        <p class="validator-msg"></p>
                    </div>
                </div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input confirm-pwd" onfocus="cancel(this)" onblur="checkRePwd(this)" id="J_email_confirm_pwd" name="confirmPassword" maxlength="20" placeholder="请再次输入上面的密码" passport_mars_sead_hover="" passport_mars_sead_input="emailRegCPw" mars_sead="125|2|2|6" type="password">
	        </div>
	    </div>

	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div><div class="ui-tooltips ui-tooltips-info validator-tooltips-info ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="validator-msg"></p></div></div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input class="ui-input ipt-phone" id="J_email_mobile" onfocus="cancel(this)" onblur="checkPhone(this)" name="verified" placeholder="请输入手机号码" passport_mars_sead_hover="" passport_mars_sead_input="emailRegMobile" mars_sead="125|2|2|7" type="text">
	        </div>
	    </div>

	    
	    <div class="control-group clearfix">
	        <div class="ui-form-item-group adjust-success"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
	        	<div class="ui-tooltips ui-tooltips-info ui-tooltips-bottom-left-arrow custom-tooltips-info">
                    <div class="ui-tooltips-arrow">
                        <i class="arrow arrow-out">◆</i>
                        <i class="arrow">◆</i>
                    </div>
                    <div class="ui-tooltips-content">
                        <p class="validator-msg"></p>
                    </div>
                </div>
	            <i class="ui-input-success vipFont if-success" style="display: none;"></i><input id="J_email_code" onfocus="cancel(this)" onblur="checkCode(this)" class="ui-input ipt-verify-code" name="pvcode" placeholder="短信验证码" passport_mars_sead_hover="" passport_mars_sead_input="emailRegMobileCode" mars_sead="125|2|2|9" type="text"><a href="javascript:;" role="button" id="J_email_verifycode_btn" onclick="sendCode()" class="ui-btn-medium ui-btn-disable btn-verify-code" passport_mars_sead_hover="" mars_sead="125|2|2|8">获取验证码</a>
	        </div>
	    </div>
		    <div class="control-group mb30 clearfix">
		        <a href="javascript:;" role="button" id="J_email_reg_button" class="ui-btn-large ui-btn-primary ui-btn-loading reg-form-btn form-submit" mars_sead="125|2|2|10">
		            <span class="ui-btn-loading-before" passport_mars_sead_hover="">立即注册</span>
		            <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i><span class="ui-btn-txt">处理中...</span></span>
		        </a>
		        <a href="javascript:;" class="entrance-link reg-form-link" id="J_email_to_mobile" passport_mars_sead_hover="" mars_sead="125|2|2|11">手机快速注册</a>
		    </div>
		    <div class="control-group clearfix">
		    	<div class="ui-form-item-group"><div class="ui-tooltips ui-tooltips-warning validator-tooltips-warning ui-tooltips-bottom-left-arrow"><div class="ui-tooltips-arrow"><i class="arrow arrow-out">◆</i><i class="arrow">◆</i></div><div class="ui-tooltips-content"><p class="ui-tooltips-msg validator-msg"><i class="vipFont if-sigh"></i></p></div></div>
			        <span class="ui-checkbox mr0">
			            <input id="J_email_agree" name="agree" class="ui-checkbox-normal" checked="checked" value="1" mars_sead="125|2|2|12" type="checkbox"><label for="J_email_agree" class="ui-checkbox-simulation"></label>
			        </span>
			        <label for="J_email_agree" class="ui-label f-12">我已阅读并接受<a href="#">唯品会服务条款</a>。</label>
		        </div>
		    </div>
	</form> 
</div>
<script type="text/javascript">
		var isThirdLogin = false;
</script>
		</div>
	</div>
<div class="footer">
		<div class="copyright">Copyright 2008-2017 vip.com，All Rights Reserved ICP证：粤 B2-20080329</div>
</div></div>
<div id="j-dialog-medium" style="display:none"> 
        <div class="ui-dialog-content"> 
                <div class="main_title f-cb">
                    <i class="vipFont if-sigh if-size-32 fl"></i>
                    <label>&nbsp;&nbsp;&nbsp;还差一步就注册成功啦，完成验证，购物更安心</label>
                </div>
                <div class="main_p" style="margin-top:20px">
                    验证邮件已发送到您的&nbsp;<span id="sendEmail" class="bolder mail_account" style="color:#f10180"></span>&nbsp;邮箱，请在24小时内登录邮箱，点击邮件中的链接完成注册。
                </div>
            </div> 
            <div class="ui-dialog-command">
                <div class="main_button f-cb">
                    <a href="https://mail.qq.com/" role="button" class="ui-btn-medium ui-btn-primary fl login_mailbox" id="J_login_mainbox" mars_sead="125|2|2|14">立即登录邮箱</a>
                    <label class="fl">没收到？<a href="javascript:;" class="c_blue repeat_send" id="J_repeat_send" mars_sead="125|2|2|15">重新发送</a></label>
                </div>
                <div class="main_tip">
                    <p class="none success_tip">已发送<span class="c_vip tip_time">120</span><span class="c_vip">s</span>，请注意查收</p>
                    <p class="none ml-10 failure_tip">系统异常，重新发送试试</p>
                </div>
            </div> 
 </div>

  </body>
</html>
