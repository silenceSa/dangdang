<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/customer/login.css">
	<link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico" />
    <script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/customer/login.js"></script>
  </head>
  
  <body>
    <div class="g-wrap">
        <div class="g-header" passport_mars_sead_hover="">
            <a href="index.jsp" class="u-logo"></a>
            <span class="u-promise"></span>
            <div class="u-ad-header J-ads" data-adsid="ADSBAZW9" data-tpl="#J-ADSBAZW9-tpl"></div>
        </div>
        <div class="g-content J-ads" data-adsid="ADSJ867S" data-bg="true" style="background-image: url('images/customer/login/14972774670574.jpg');">
            <div class="m-single-function" id="J_single_function">
                <div class="u-form-top-tip" id="J_head_tip">如有账号，请登录</div>
                <div id="J_single_login" class="m-login-panel clearfix">
                <form action="CustomerServlet" method="post" id="myform">
                    <div class="u-form-item">
                        <input id="J_login_name" onfocus="cancel(this)" onblur="checkLoginName(this)" class="ui-input" name="loginName" placeholder="手机号/用户名/邮箱" passport_mars_sead_hover="" passport_mars_sead_input="loginName" type="text">
                    </div>
                    <p class="u-form-tip"></p>
                    <div class="u-form-item">
                        <input id="J_login_pwd"  onfocus="cancel(this)" onblur="checkPwd(this)" class="ui-input" name="password" maxlength="20" placeholder="密码" passport_mars_sead_hover="" passport_mars_sead_input="password" type="password">
                        <div class="ui-tooltips ui-tooltips-info ui-tooltips-left-arrow u-capslock-tip" id="J_capslock_tip">
                            <div class="ui-tooltips-arrow">
                                <i class="arrow arrow-out">◆</i>
                                <i class="arrow">◆</i>
                            </div>
                            <div class="ui-tooltips-content f-nowrap">
                                <p>请注意，键盘大写已开启</p>
                            </div>
                        </div>
                    </div>
                    <p class="u-form-tip"></p>          
                    <div class="u-form-item J_verify_code">
                        <input id="J_login_code" onfocus="cancelCode(this)" onblur="checkCode(this)" class="ui-input u-captcha" name="captcha" placeholder="验证码" autocomplete="off" type="text">
                        <span id="J_verify_img_wrap" class="u-code-img">
                           <img width="100%" height="100%" src="VerifyCodeServlet"/>
                        </span>
                        <a href="javascript:;" role="button" id="J_change_code" class="u-change-code">换一张</a>
                    </div>
                    <p class="u-form-tip J_verify_code"></p>
                    <div class="u-form-submit">
                        <button type="button" class="ui-btn-large ui-btn-primary ui-btn-loading u-submit-function" id="J_login_submit" passport_mars_sead_hover="">
                            <span class="ui-btn-loading-before">登录</span>
                            <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i><span class="ui-btn-txt">处理中...</span></span>
                        </button>
                    </div>
                    <div class="m-other-function">
                        <span class="f-left"><span class="ui-checkbox"><input id="J_remember_username" name="remUser" class="ui-checkbox-normal" checked="" type="checkbox"><label for="J_remember_username" class="ui-checkbox-simulation"></label></span><label for="J_remember_username" class="u-checkbox-label">记住用户名</label></span>
                        <span class="u-cannot-login">
                            <a href="jsps/customer/updatePwd.jsp" class="forget" target="_blank">忘记密码?</a>
                            |
                            <a href="jsps/customer/regist.jsp" class="reg">免费注册</a>
                        </span>
                    </div>
                    </form>
                </div>
                <div class="m-phone-panel" id="J_phone_main">
                    <div class="u-form-item">
                        <input id="J_login_phone" class="ui-input" name="loginPhone" placeholder="输入手机号" mars_sead="125|2|9|3" type="text">
                    </div>
                    <p class="u-form-tip"></p>   
                    <form action="/mobileLogin" class="m-phoneLogin-panel" method="post">       
                        <div class="u-form-item J_phoneverify_code">
                            <input id="J_phone_code" class="ui-input u-captcha" name="captcha" maxlength="8" placeholder="验证码" autocomplete="off" mars_sead="125|2|9|6" type="text">
                            <span id="J_phoneverify_img_wrap" class="u-code-img"><img src="https://passport.vip.com/captcha/getCaptcha?type=0&amp;vipc=J1E1rVT0Q16lwDqU%2FF8ExZwa4eQP5j4fyULTIEvjDkSbA%2F6x6PRtFB64E3j3CjO%2BR7lnt4KXfU45OLqzA1kQfZiS9hTMJKjQtREPdt%2Bc4tOHXWwpgQi0PA%3D%3D&amp;v=1497359552438" height="34" width="49"></span>
                            <a href="javascript:;" role="button" id="J_phonechange_code" class="u-change-code" mars_sead="125|2|9|7">换一张</a>
                        </div>
                        <p class="u-form-tip"></p>
                        <div class="u-form-item">
                            <input id="J_phone_msg" class="ui-input u-captcha" name="captcha" maxlength="8" placeholder="短信验证码" autocomplete="off" mars_sead="125|2|9|4" type="text">
                            <a href="javascript:;" role="button" class="ui-btn-medium ui-btn-secondary u-btn ui-btn-disable" mars_sead="125|2|9|5" id="J_phone_msg_get">获取验证码</a>
                        </div>
                        <p class="u-form-tip"></p>
                        <div class="u-form-submit">
                            <button type="submit" class="ui-btn-large ui-btn-primary ui-btn-loading u-submit-function" mars_sead="125|2|9|8" id="J_phone_submit">
                                <span class="ui-btn-loading-before">登录</span>
                                <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i><span class="ui-btn-txt">处理中...</span></span>
                            </button>
                        </div>
                    </form>
                    
                    <form action="CustomerServlet" method="post" class="m-passport-panel">
                        <div class="m-vf-item u-form-item">
                            <!--
                                下拦框变红：  z-ui-form-item-warning
                                提示方案出现：z-ui-tooltips-in
                            -->
                            <div class="ui-form-item-group">
                                <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                    <div class="ui-tooltips-arrow">
                                        <i class="arrow arrow-out">◆</i>
                                        <i class="arrow">◆</i>
                                    </div>
                                    <div class="ui-tooltips-content"></div>
                                </div>
                                <input autocomplete="off" placeholder="请为您的账户设置登录密码" class="ui-input" id="J_newPwd" name="newPwd" mars_sead="125|2|10|9" maxlength="20" type="password">
                            </div>
                        </div>
                        <div id="J_degree" class="m-pwd-strength">
                            <!-- 三个等级弱中强对应 .z-pwd-weak .z-pwd-medium .z-pwd-strong -->
                            <div class="z-pwd-weak"><i class="u-pwd-lv lv1"></i><i class="u-pwd-lv lv2"></i><i class="u-pwd-lv lv3"></i><span class="lv-name">弱</span></div>
                        </div>
                        <div class="m-vf-item u-form-item">
                            <!--
                                下拦框变红：  z-ui-form-item-warning
                                提示方案出现：z-ui-tooltips-in
                            -->
                            <div class="ui-form-item-group">
                                <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                    <div class="ui-tooltips-arrow">
                                        <i class="arrow arrow-out">◆</i>
                                        <i class="arrow">◆</i>
                                    </div>
                                    <div class="ui-tooltips-content"></div>
                                </div>
                                <input autocomplete="off" placeholder="请再次输入密码" class="ui-input" id="J_againPwd" name="againPwd" mars_sead="125|2|10|10" maxlength="20" type="password">
                            </div>
                        </div>
                        
                        <div class="u-form-submit">
                            <button type="submit" mars_sead="125|2|9|8" class="ui-btn-large ui-btn-primary ui-btn-loading u-submit-function" id="J_password-submit">
                                <span class="ui-btn-loading-before">登录</span>
                                <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i><span class="ui-btn-txt">处理中...</span></span>
                            </button>
                        </div>
                        
                    </form>
                    <div class="m-other-function">
                        <span class="f-left"><span class="ui-checkbox"><input id="J_remember_phone" name="remUser" class="ui-checkbox-normal" checked="" type="checkbox"><label for="J_remember_phone" class="ui-checkbox-simulation"></label></span><label for="J_remember_phone" class="u-checkbox-label">记住用户名</label></span>
                        <span class="u-cannot-login">
                            <a href="https://safe.vip.com/login/findPW/page" class="forget" target="_blank">忘记密码?</a>
                            |
                            <a href="/register" class="reg">免费注册</a>
                        </span>
                    </div>
                </div>
                <div class="m-third-login" passport_mars_sead_hover="">
                    <p class="title">合作网站账号登录：</p>
                    <p class="clearfix">
                    
                        	<a href="//passport.vip.com/login/weibo" target="_blank" title="新浪微博" class="u-third-sina" mars_sead="passport_bottom_weibo_button"></a> 
                        	<a href="//passport.vip.com/login/qq" target="_blank" title="QQ" class="u-third-qq" mars_sead="passport_bottom_qq_button"></a> 
                        	<a href="//passport.vip.com/login/alipay" target="_blank" title="支付宝" class="u-third-alipay" mars_sead="passport_bottom_alipay_button"></a> 
                        	<a href="//passport.vip.com/login/weixin" target="_blank" title="微信" class="u-third-wechat" mars_sead="passport_bottom_weixin_button"></a> 
                        <a href="javascript:void(0);" role="button" class="u-third-more" mars_sead="passport_bottom_more_button" id="J_more_third_control">更多<i class="arrow"></i></a>
                    </p>
                    <div class="m-more-third-way" id="J_more_third_wrap">
                    
                        	<a href="//passport.vip.com/login/netease" target="_blank" title="网  易" mars_sead="passport_bottom_netease_button">网  易</a>|
                        	<a href="//passport.vip.com/login/renren" target="_blank" title=" 人人网 " mars_sead="passport_bottom_renren_button"> 人人网 </a>|
                        	<a href="//passport.vip.com/login/ccb" target="_blank" title="建行登录" mars_sead="passport_bottom_ccb_button">建行登录</a>|
                        	<a href="//passport.vip.com/login/tenpay" target="_blank" title="财付通" mars_sead="passport_bottom_tenpay_button">财付通</a>
                        	<a href="//passport.vip.com/login/kaixin001" target="_blank" title="开心网" mars_sead="passport_bottom_happy_button">开心网</a>|
                        	<a href="//passport.vip.com/login/mobile139" target="_blank" title="中国移动" mars_sead="passport_bottom_139_button">中国移动</a>|
                        	<a href="//passport.vip.com/login/bestpay" target="_blank" title="翼支付" mars_sead="bottom_yizhifu_button">翼支付</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="g-footer">
            <p class="u-copyright">Copyright 2008-2017 vip.com，All Rights Reserved ICP证：粤 B2-20080329</p>
        </div>
    </div>
  </body>
</html>
