<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatePwd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/customer/update.css">
    <script type="text/javascript" src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript" src="adminjsps/admin/js/layer/layer.js"></script>
    <script type="text/javascript" src="js/customer/update.js"></script>
  </head>
  
  <body>
    
    <jsp:include page="../../jsps/head.jsp" flush="true" />
    
    <div class="g-wrap">
            <p class="u-page-breadcrumb">
                <a href="index.jsp">首页</a> &gt; 找回密码
            </p>
            <div id="J_main" class="m-content">
                
                <div class="m-content-bd">
                    <div id="J_progress" class="m-progress z-step4-done z-step1">
                        <div class="m-progress-list">
                            <span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">填写帐号</p>
                            </span>
                            <span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">验证身份</p>
                            </span>
                            <span class="step-3 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                <p class="stage-name">重置密码</p>
                            </span>
                            <span class="step-4 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">4<em class="bg"></em></i>
                                <p class="stage-name">成功</p>
                            </span>
                            <span class="u-progress-placeholder"></span>
                        </div>
                        <div class="u-progress-bar total-steps-4">
                            <div class="u-progress-bar-inner"></div>
                        </div>
                    </div>
                    <!-- 手机验证——步骤一 -->
                    <div class="m-verification-form J_step">
                        <div class="m-vf-item">
                            <label class="ui-label u-label" for="">登录名：</label>
                            <!--
                                下拦框变红：  z-ui-form-item-warning
                                提示方案出现：z-ui-tooltips-in
                            -->
                            <div class="ui-form-item-group" style="">
                                <div class="ui-tooltips ui-tooltips-bottom-left-arrow ui-tooltips-warning">
                                    <div class="ui-tooltips-arrow">
                                        <i class="arrow arrow-out">◆</i>
                                        <i class="arrow">◆</i>
                                    </div>
                                    <div class="ui-tooltips-content"><p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>请正确输入您的登录名</p></div>
                                </div>
                                <input autocomplete="off" placeholder="用户名/绑定手机/绑定邮箱" onblur="checkLoginName(this)" class="ui-input u-login-input" id="J_loginNameInput" name="loginName" mars_sead="241|2|1|3" type="text">
                            </div>
                        </div>
                        <div class="m-vf-item" id="J_pic_captcha">
                            <label class="ui-label u-label" for="J_png_codeInput">验证码：</label>
                            <!-- z-ui-form-item-success 表示输入框输入正确 -->
                            <div id="J_CodePngBox" class="ui-form-item-group">
                                <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                    <div class="ui-tooltips-arrow">
                                        <i class="arrow arrow-out">◆</i>
                                        <i class="arrow">◆</i>
                                    </div>
                                    <div class="ui-tooltips-content">
                                        <p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>验证码有误</p>
                                    </div>
                                </div>
                                <i class="ui-input-success vipFont if-success"></i>
                                <input autocomplete="off" class="ui-input u-img-code" id="J_png_codeInput" name="verification-code" mars_sead="241|2|1|4" type="text">
                            </div>
                            <img id="J_codePng" src="VerifyCodeServlet" alt="" class="u-verification-img" mars_sead="241|2|1|5" width="57" height="30">
                            <a id="J_changeCodePng" href="javascript:;" role="button" class="u-code-change" mars_sead="241|2|1|6">换一张</a>
                        </div>
                        <div class="m-vf-item f-hidden" id="J_slide_captcha">
                            <label class="ui-label u-label" for="J_png_codeInput">验证码：</label>
                            <div class="ui-form-item-group f-hidden" id="J_slide_group">
                                <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                    <div class="ui-tooltips-arrow">
                                        <i class="arrow arrow-out">◆</i>
                                        <i class="arrow">◆</i>
                                    </div>
                                    <div class="ui-tooltips-content"></div>
                                </div>
                                <div id="J_slide_block" class="u-slide-block">
                                    
                                </div>
                            </div>
                            <div id="J_slide_error" class="u_slide_error ui-form-item-group  f-hidden"><i class="tip_ico vipFont if-sigh"></i><span>系统异常，请<a href="javascript:;" id="J_reInit">点击刷新</a></span></div>
                            <div id="J_slide_waiting" class="u_slide_waiting ui-form-item-group  f-hidden"><i class="tip_ico i-waiting"></i><span>加载中...</span></div>
                        </div>
                        <div class="m-vf-item">
                            <a href="javascript:;" id="J_next" role="button" class="ui-btn-medium ui-btn-primary ui-btn-loading" mars_sead="241|2|1|7">
                                <span class="ui-btn-loading-before">下一步</span>
                                <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i></span>
                            </a>
                        </div>
                    </div>
                    <!-- 手机验证——步骤二 -->
                    <div class="m-verification-form J_step f-hidden">
                        <div class="J_before f-hidden">
                            <p class="u-page-feedback u-item-tip">您正在找回登录名为 “<b></b>” 的登录密码。帐号不对？<a href="javascript:void(0)" onclick="back()">返回重填</a></p>
                            <p class="verification-tips">根据您的账号情况，可选择通过以下验证方式找回密码：</p>
                            <div class="m-safety-item J_before_phone f-hidden">
                                <i class="z-phone-find"></i>
                                <div class="m-msg-box">
                                    <p class="u-msg-content">通过验证绑定手机找回</p>
                                    <p class="J_usePhoneTxt u-msg-value"></p>
                                </div>
                                <a href="javascript:" onclick="sendCode(this)" id="J_usePhone" class="ui-btn-small ui-btn-secondary u-safety-btn" mars_sead="624|2|1|2">立即验证</a>
                            </div>
                            <div class="m-safety-item J_before_name f-hidden">
                                <i class="z-idcard-find"></i>
                                <div class="m-msg-box">
                                    <p class="u-msg-content">通过验证登录名找回</p>
                                    <p class="J_useLoginNameTxt u-msg-value"></p>
                                </div>
                                <a href="javascript:" id="J_useLoginName" class="ui-btn-small ui-btn-secondary u-safety-btn" mars_sead="624|2|1|3">立即验证</a>
                            </div>
                            <div class="m-safety-item J_before_security f-hidden">
                                <i class="z-security-find"></i>
                                <div class="m-msg-box">
                                    <p class="u-msg-content">通过校验安全问题找回</p>
                                </div>
                                <a href="javascript:" id="J_useSecurity" class="ui-btn-small ui-btn-secondary u-safety-btn" mars_sead="624|2|1|4">立即验证</a>
                            </div>
                            <div class="m-safety-item J_before_email f-hidden">
                                <i class="z-email-find"></i>
                                <div class="m-msg-box">
                                    <p class="u-msg-content">通过验证绑定邮箱找回</p>
                                    <p class="J_useEmailTxt u-msg-value"></p>
                                </div>
                                <a href="javascript:" id="J_useEmail" class="ui-btn-small ui-btn-secondary u-safety-btn" mars_sead="624|2|1|2">立即验证</a>
                            </div>
                        </div>
                        <!-- 手机验证 -->
                        <div class="J_after J_after_phone m-phone-after f-hidden">
                            <p class="u-page-p u-page-feedback">正发送到&nbsp;&nbsp;<b class="J_phone_name">***</b>&nbsp;&nbsp; ，请注意查收。并在下方输入短信中的6位验证码：</p>
                            <div class="m-vf-item">
                                <label class="ui-label u-label" for="J_codeInput">短信验证码：</label>
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
                                        <div class="ui-tooltips-content J_codeTip_tpl"></div>
                                    </div>
                                    <input autocomplete="off" maxlength="6" placeholder="短信验证码" class="ui-input u-verification-code" id="J_codeInput" name="verification-code" mars_sead="624|2|2|1" type="text">
                                    <a href="javascript:;" role="button" onclick="sendPvCode(this)" id="J_getCodeBtn" class="ui-btn-medium u-btn-get-code ui-btn-secondary" mars_sead="624|2|2|2">获取验证码</a>
                                </div>
                            </div>
                            <div class="m-vf-item">
                                <a href="javascript:;" onclick="preUpdate(this)" id="J_phone_sure" role="button" class="ui-btn-medium ui-btn-primary ui-btn-disable ui-btn-loading" mars_sead="624|2|2|3">
                                    <span class="ui-btn-loading-before">确定</span>
                                    <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i></span>
                                </a>
                            </div>
                        </div>
                        <!-- 邮箱验证 -->
                        <div class="J_after J_after_email m-email-after f-hidden">
                            <p class="u-page-p u-page-feedback-big"><b>邮件已发送！</b></p>
                            <p class="u-page-p u-page-feedback">验证邮件已发送至您的邮箱 <b class="J_email_name">***</b> ，请点击邮件中的链接重置您的密码。</p>
                            <p class="u-page-p u-page-feedback">请在24小时内通过邮件中的链接重设密码。</p>
                            <div class="m-vf-item f-pl180">
                                <a href="javascript:;" id="J_email_sure" role="button" class="ui-btn-medium ui-btn-primary" mars_sead="624|2|3|1" target="_brank">去邮箱查看</a>
                                <a href="javascript:;" role="button" class="ui-btn-medium ui-btn-default" id="J_resend_email" mars_sead="624|2|3|2">重新发送</a>
                                <span class="u-dialog-coutdown f-hidden" id="J_resend_countdown"><span class="second">120</span>秒后可选择重新发送</span>
                            </div>
                        </div>
                        <!-- 安全问题校验 -->
                        <div class="J_after J_after_security f-hidden">
                            <div class="m-vf-item question-note-item">
                                <p class="u-question-note"><i class="vipFont if-sigh"></i>您正在通过安全问题找回登录密码，请填写您之前设置的安全问题答案</p>
                            </div>
                            <div class="m-vf-item">
                                <label class="ui-label u-label" for="">问题一：</label>
                                <div class="ui-form-item-group">
                                    <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                        <div class="ui-tooltips-arrow">
                                            <i class="arrow arrow-out">◆</i>
                                            <i class="arrow">◆</i>
                                        </div>
                                        <div class="ui-tooltips-content">
                                            <p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>请选择安全问题</p>
                                        </div>
                                    </div>
                                    <select id="J_original_question_select_1" mars_sead="624|2|4|1"></select>
                                </div>
                            </div>
                            <div class="m-vf-item">
                                <label class="ui-label u-label" for="J_answer_1">答案：</label>
                                <div class="ui-form-item-group">
                                    <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                        <div class="ui-tooltips-arrow">
                                            <i class="arrow arrow-out">◆</i>
                                            <i class="arrow">◆</i>
                                        </div>
                                        <div class="ui-tooltips-content">
                                            <p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>请填写安全问题答案</p>
                                        </div>
                                    </div>
                                    <input name="security-answer-1" mars_sead="624|2|4|2" class="ui-input u-verification-input J_answer" id="J_original_answer_1" maxlength="20" placeholder="请输入安全问题答案" type="text">
                                </div>
                            </div>
                            <p class="u-question-tip" id="J_original_answer_tip_1"></p>
                            <div class="m-vf-item">
                                <label class="ui-label u-label" for="">问题二：</label>
                                <div class="ui-form-item-group">
                                    <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                        <div class="ui-tooltips-arrow">
                                            <i class="arrow arrow-out">◆</i>
                                            <i class="arrow">◆</i>
                                        </div>
                                        <div class="ui-tooltips-content">
                                            <p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>请选择安全问题</p>
                                        </div>
                                    </div>
                                    <select id="J_original_question_select_2" mars_sead="624|2|4|3"></select>
                                </div>
                            </div>
                            <div class="m-vf-item">
                                <label class="ui-label u-label" for="J_answer_1">答案：</label>
                                <div class="ui-form-item-group">
                                    <div class="ui-tooltips ui-tooltips-warning ui-tooltips-bottom-left-arrow">
                                        <div class="ui-tooltips-arrow">
                                            <i class="arrow arrow-out">◆</i>
                                            <i class="arrow">◆</i>
                                        </div>
                                        <div class="ui-tooltips-content">
                                            <p class="ui-tooltips-msg"><i class="vipFont if-sigh"></i>请填写安全问题答案</p>
                                        </div>
                                    </div>
                                    <input name="security-answer-1" mars_sead="624|2|4|4" class="ui-input u-verification-input J_answer" id="J_original_answer_2" maxlength="20" placeholder="请输入安全问题答案" type="text">
                                </div>
                            </div>
                            <p class="u-question-tip" id="J_original_answer_tip_2"></p>
                            <div class="m-vf-item">
                                <a href="javascript:;" role="button" mars_sead="837|2|1|7" class="ui-btn-medium ui-btn-primary ui-btn-loading" id="J_question_step1_next">
                                    <span class="ui-btn-loading-before" mars_sead="624|2|4|5">下一步</span>
                                    <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 手机验证——步骤三 -->
                    <div id="newPwd" class="m-verification-form J_step f-hidden m-pwd-box">
                        <div class="m-vf-item">
                            <label class="ui-label u-label" for="">新密码：</label>
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
                                <input onkeyup="checkPass(this)" autocomplete="off" placeholder="由6-20位字母，数字和符号组合" class="ui-input" id="J_newPwd" name="newPwd" mars_sead="625|2|1|1" maxlength="20" type="password">
                            </div>
                        </div>
                        <div id="J_degree" class="m-pwd-strength">
                            <!-- 三个等级弱中强对应 .z-pwd-weak .z-pwd-medium .z-pwd-strong -->
                            <div class="z-pwd-weak"><i class="u-pwd-lv lv1"></i><i class="u-pwd-lv lv2"></i><i class="u-pwd-lv lv3"></i><span class="lv-name">弱</span></div>
                        </div>
                        <div class="m-vf-item">
                            <label class="ui-label u-label" for="">确认密码：</label>
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
                                <input autocomplete="off" placeholder="请再次输入上面的密码" class="ui-input" id="J_againPwd" name="againPwd" mars_sead="625|2|1|2" maxlength="20" type="password">
                            </div>
                        </div>
                        <div class="m-vf-item">
                            <a href="javascript:;" onclick="updatePass()" id="J_PasswordNext" role="button" class="ui-btn-medium ui-btn-primary ui-btn-loading" mars_sead="625|2|1|3">
                                <span class="ui-btn-loading-before">确定</span>
                                <span class="ui-btn-loading-after"><i class="ii-loading-gray-16x16"></i></span>
                            </a>
                        </div>
                    </div>
                    <!-- 手机验证——步骤四 -->
                    <div class="J_step f-hidden" id="success">
                        <p class="u-page-feedback">恭喜您，您的新密码已设置成功，为保证您购物安全，<br>建议您定期更改密码以保护账户安全。</p>
                        <div class="m-vf-item f-pl180">
                            <a href="index.jsp" id="J_goVIP" role="button" class="ui-btn-medium ui-btn-primary" mars_sead="626|2|1|1">去逛逛</a>
                        </div>
                    </div>
                    <!-- 验证失败 -->
                    <div class="f-hidden J_verifyFail" id="failed">
                        <div class="J_after J_after_email m-email-after ">
                            <p class="u-page-feedback-big"><i class="vipFont if-sigh if-size-32"></i>验证失败！</p>
                            <p class="u-page-feedback">抱歉，您的账户无法完成验证，为了您的账户安全，建议您直接联系客服，</p>
                            <p class="u-page-feedback">提供相应注册信息申诉找回密码。</p>
                            <div class="m-vf-item f-pl180">
                                <a href="jsps/customer/regist.jsp" id="J_error_sure" role="button" class="ui-btn-medium ui-btn-primary" mars_sead="241|2|4|1">确定</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
    
    
    <jsp:include page="../../jsps/footer.jsp" flush="true" />
    
    
  </body>
</html>
