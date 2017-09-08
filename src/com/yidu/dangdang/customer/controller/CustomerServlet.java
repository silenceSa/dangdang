package com.yidu.dangdang.customer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import com.yidu.dangdang.category.domain.PhoneResult;
import com.yidu.dangdang.customer.biz.CustomerServerBiz;
import com.yidu.dangdang.customer.biz.impl.CustomerServerBizImpl;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.IDGenderatorUtil;
import com.yidu.dangdang.util.SendMailTool;

public class CustomerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5295477518023720034L;
    private CustomerServerBiz csBiz = new CustomerServerBizImpl();
    private Gson gson = new Gson();
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

        String biz = request.getParameter("biz");
		
		if ("login".equals(biz)) {
		    doLogin(request,response);	
		} else if("regist".equals(biz)) {
            doRegist(request,response);
		} else if("updatePwdPre".equals(biz)){
			doUpdataPre(request,response);
		} else if("updatePwd".equals(biz)){
			doUpdatePwd(request,response);
		} else if("checkEmail".equals(biz)){
			doCheckEmail(request,response);
		} else if("pvcode".equals(biz)){
			doSendCode(request,response);
		} else if("active".equals(biz)){
			doActive(request,response);
		} else if("exit".equals(biz)){
			request.getSession().invalidate();
			response.sendRedirect("jsps/customer/login.jsp");
		}
		
		
	}
	

	
	private void doActive(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取激活码
		String code = request.getParameter("code");
		//调用biz层的方法激活
		int res = csBiz.activeCustomer(code);
		if(res>0){
			//激活成功
			request.getSession().setAttribute("status", "success");
			request.getRequestDispatcher("jsps/customer/active.jsp").forward(request, response);
		}else{
			//激活失败
			request.getSession().setAttribute("status", "failed");
			request.getRequestDispatcher("jsps/customer/active.jsp").forward(request, response);
		}
		
	}



	private void doSendCode(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		//获取参数
		String phone = request.getParameter("phone");
		//校验参数
		if(phone.equals("")||phone==null||!(phone.matches("^[1][3,4,5,8][0-9]{9}$"))){
			//校验失败
			out.write("{\"status\":\"failed\",\"errorno\":\"0\"}");
		}else{
			//校验成功发送验证码
			if(sendCode(phone,request)){
				out.write("{\"status\":\"success\"}");
			}else{
				out.write("{\"status\":\"failed\",\"errorno\":\"1\"}");
			}
			
		}
		
	}


	private boolean sendCode(String phone,HttpServletRequest request) {

		String url = "https://eco.taobao.com/router/rest";
		String appkey = "24394230";
		String secret = "632d617478f5be8d6e423076ccf648a7";
		String code = createRandCode();
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setSmsType("normal");
		req.setSmsFreeSignName("腾云科技");
		req.setSmsParamString("{\"code\":\""+code+"\"}");
		req.setRecNum(phone);
		req.setSmsTemplateCode("SMS_71245731");
		AlibabaAliqinFcSmsNumSendResponse rsp=null;
		try {
			rsp = client.execute(req);
		} catch (ApiException e) {
			e.printStackTrace();
		}
		//判断是否发送成功
		PhoneResult res = gson.fromJson(rsp.getBody(), PhoneResult.class);
		
		if (res.getAlibaba_aliqin_fc_sms_num_send_response().getResult().getSuccess()=="true") {
			//发送成功
			//保存在session域中
			request.getSession().setAttribute("pvcode", code);
			return true;
		} else {
			//发送失败
			return false;
		}
		
	}
	
	private String createRandCode(){
		Random random = new Random();
		String code = "";
		for(int i=0;i<6;i++){
			code+=random.nextInt(10);
		}
		return code;
	}


	private void doCheckEmail(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得要检测的邮箱
		String email = request.getParameter("email");
		//检测是否存在
		PrintWriter out = response.getWriter();
		if(csBiz.findCustomerByName(email)==null){
			//没有占用
			out.write("{\"status\":\"rid\"}");
		}else{
            //被占用
			out.write("{\"status\":\"occup\"}");
		}
		
		
		
	}


	private void doUpdatePwd(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//修改密码
		String password = request.getParameter("password");
		String pvcode = request.getParameter("pvcode");
		String code = (String) request.getSession().getAttribute("pvcode");
		String loginName = (String) request.getSession().getAttribute("loginName");
		boolean res = validPassParam(password,pvcode,code);
		PrintWriter out = response.getWriter();
		 
		if(res){
            //校验成功修改密码
			int result = csBiz.upDatePwdByName(loginName,password);
			if(result>0){
				out.write("{\"status\":\"success\"}"); 
			}else{
				out.write("{\"status\":\"failed\"}"); 
			}
		}else{
			out.write("{\"status\":\"failed\"}"); 
		}
		
	}


	


	private boolean validPassParam(String password, String pvcode, String code) {
		
		if(password==null||password.equals("")){
			return false;
		}
		
		if(pvcode==null||pvcode.equals("")){
			return false;
		}
		
		if(code==null||code.equals("")){
			return false;
		}
		
		if(!pvcode.equals(code)){
			return false;
		}
		
		return true;
	}



	private void doUpdataPre(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得验证码和账号
		String code = (String) request.getSession().getAttribute("code"); 
		String loginName = request.getParameter("loginName");
		String ucode = request.getParameter("code");
		request.getSession().setAttribute("loginName", loginName);	
		int res = validParam(code,loginName,ucode);
			
		PrintWriter out = response.getWriter();
		if(res==0){
			//校验失败
			out.write("{\"errno\":\"0\"}");
		}else if(res==1){
			//验证码不匹配
			out.write("{\"errno\":\"1\"}");
		}else{
			//成功  判断是否存在此用户名
			Customer customer = csBiz.findCustomerByName(loginName);
			if(customer==null){
				//不存在
				out.write("{\"errno\":\"2\"}");
			}else{
				//存在 找到手机号
				out.write("{\"errno\":\"3\",\"phone\":\""+customer.getPhoneNum()+"\"}");
			}
            			
		}
		
	}


	private int validParam(String code, String loginName, String ucode) {

		if(code==null||code.equals("")){
			return 0;
		}
		
		if(loginName==null||loginName.equals("")){
			return 0;
		}
		
		if(ucode==null||ucode.equals("")){
			return 0;
		}
		
		if(!ucode.equals(code)){
			return 1;
		}
		
		
		return 2;
	}



	private void doRegist(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		//获得参数 
		String loginName = request.getParameter("loginName"); 
		String pass = request.getParameter("password");
		String phone = request.getParameter("verified");
		String code = request.getParameter("pvcode");
		String mcode = (String) request.getSession().getAttribute("pvcode");
		
		//校验参数
		boolean result = validRegistParam(loginName,pass,phone,code,mcode);
		
		if (result) {
			//调用biz层进行注册
			String randCode = createRandCode();
			Customer customer = new Customer();
			customer.setCustomerId(IDGenderatorUtil.generateId());
			customer.setCustomerName(loginName);
			customer.setPwd(pass);
			customer.setPhoneNum(phone);
			customer.setCustomerStatus(0);
			customer.setActivationStatus(randCode);
			if(csBiz.regist(customer)==2){
				//注册成功 发送激活邮件
				out.write("{\"status\":\"success\"}");
				sendEmail(randCode,loginName);
			}else{
				//注册失败
				out.write("{\"status\":\"falied\"}");
			}
			
		} else {
			//校验失败
			out.write("{\"status\":\"falied\"}");
		}
		
		
	}


	private void sendEmail(String randCode, String loginName) {
		//要发送的连接
		String link="http://yidu.vip.com/dangdang/CustomerServlet?biz=active&code="+randCode;
		//发送邮件
		boolean flag = SendMailTool.sendEmail(link, loginName);
		System.out.println(flag?"发送成功":"发送失败");
	}



	private boolean validRegistParam(String loginName, String pass,
			String phone, String code,String mcode) {
		
		if(loginName==null||loginName.equals("")){
			return false;
		}
		
		if(pass==null||pass.equals("")){
			return false;
		}
		
		if(phone==null||phone.equals("")){
			return false;
		}
		
		if(code==null||code.equals("")){
			return false;
		}
		
		if(mcode==null||mcode.equals("")){
			return false;
		}
		
		if(!loginName.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*")){
			return false;
		}
		
		if(!phone.matches("^[1][3,4,5,8][0-9]{9}$")){
			return false;
		}
		
		if(!mcode.equals(code)){
			return false;
		}
		
		
		return true;
	}



	private void doLogin(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
        String customerName = null;
        String password = null;
		Cookie[] cookies = request.getCookies();
		//遍历cookie数组从cookie中获取用户名和密码
		
		for (Cookie cookie : cookies) {
			if ("customerName".equals(cookie.getName())) {
				customerName=cookie.getValue();
			}
			
			if ("password".equals(cookie.getName())) {
				password=cookie.getValue();
			}
			
		}
		
		if (customerName==null||customerName.equals("")||password==null||password.equals("")) {
			//无cookie
			loginByPwd(request,response);
		} else {
			basicLogin(request, response, customerName, password, "off", response.getWriter());
		}
		
		
		
	}
	
	
	private void loginByPwd(HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		//获得参数
		String customerName = request.getParameter("loginName");
		String pwd = request.getParameter("password");
		String captcha = request.getParameter("captcha");
		String remUser = request.getParameter("remUser");
		String code = (String) request.getSession().getAttribute("code");
		//校验参数
		boolean result = validLoginParam(customerName,pwd,captcha,remUser,code);
		PrintWriter out = response.getWriter();
		if (result) {
			//校验成功
			basicLogin(request, response, customerName, pwd, remUser, out);
		} else {
			//校验失败
			out.write("{\"status\":\"falied\",\"msg\":\"校验失败\"}");
		}
	}


	private void basicLogin(HttpServletRequest request,
			HttpServletResponse response, String customerName, String pwd,
			String remUser, PrintWriter out) {
		Customer customer = csBiz.login(customerName, pwd);
		if(customer==null){
			//登陆不成功
			out.write("{\"status\":\"falied\",\"msg\":\"登陆失败\"}");
		}else{
			//登陆成功
			//判断是否写入cookie
			if(remUser=="on"){
				//写入cookie
				Cookie name = new Cookie("customerName", customerName);
				Cookie pass = new Cookie("password",pwd);
				Cookie time = new Cookie("last-time",new Date(request.getSession().getCreationTime()).toString());
				name.setMaxAge(200);
				pass.setMaxAge(200);
				
				response.addCookie(name);
				response.addCookie(pass);
				response.addCookie(time);
				
			}
			
			request.getSession().setAttribute("customerName", customerName);
			request.getSession().setAttribute("customer", customer);
			//发送成功信息
			out.write("{\"status\":\"success\"}");
		}
	}


	private boolean validLoginParam(String customerName, String pwd,
			String captcha, String remUser,String code) {
		
		if(customerName==null||customerName.equals("")){
			return false;
		}
		if(pwd==null||pwd.equals("")){
			return false;
		}
		if(captcha==null||captcha.equals("")){
			return false;
		}
		if(remUser==null||remUser.equals("")){
			return false;
		}
		if(!captcha.equals(code)){
			return false;
		}
		
		return true;
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
