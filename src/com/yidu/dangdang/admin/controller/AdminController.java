package com.yidu.dangdang.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.yidu.dangdang.admin.biz.AdminBiz;
import com.yidu.dangdang.admin.biz.impl.AdminBizImpl;
import com.yidu.dangdang.admin.domain.Admin;
import com.yidu.dangdang.admin.domain.AdminLog;
import com.yidu.dangdang.util.IDGenderatorUtil;


/**
 * 管理员登陆 添加 操作日志管理
 * @author youngboy
 * @since 2017/6/11
 */
public class AdminController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6384329629980279122L;

	private AdminBiz adminBiz = new AdminBizImpl(); 
	
	private Gson gson = new Gson();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String biz = request.getParameter("biz");
		
		if("login".equals(biz)){
			doLogin(request,response);
		} else if("add".equals(biz)){
			doAddAdmin(request,response);
		} else if("findAdmin".equals(biz)){
			doFindAdmin(request,response);
		} else if("findLogByPage".equals(biz)){
			doFindLog(request,response);
		} else if("quit".equals(biz)){
			request.getSession().invalidate();
			//重定向至登陆界面
			response.sendRedirect("../adminjsps/login.jsp");
		}
		
		
		
	}

	
	


	private void doFindLog(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得页数和页面大小
		int pageNum = Integer.parseInt(request.getParameter("page"));
		int pageSize = Integer.parseInt(request.getParameter("rows"));
		//获得部分的日志集合
		List<AdminLog> logs = adminBiz.findPartLog(pageNum, pageSize);
		//发送数据
		String json = "{\"total\":" + adminBiz.countLogs() + ",\"rows\":" + gson.toJson(logs) + "}";
		PrintWriter out = response.getWriter();
		out.write(json);
		
	}


	private void doFindAdmin(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得所有的管理员集合
		List<Admin> admins = adminBiz.findAllAdmin();
		//转换为json集合
		String json = gson.toJson(admins);
		//发送数据
		PrintWriter out = response.getWriter();
		out.write(json);
		
	}


	private void doAddAdmin(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得数据
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//校验数据
		PrintWriter out = response.getWriter();
		if (username==null||username.equals("")||password.equals("")||password==null) {
			//校验失败
			out.print("{\"status\":\"failed\",\"msg\":\"校验失败，请检查是否输入正确\"}");
		} else {
			//调用注册方法
			Admin admin = new Admin();
			admin.setAdminId(IDGenderatorUtil.generateId());
			admin.setAdminName(username);
			admin.setAdminPass(password);
			if(adminBiz.addAdmin(admin)>0){
				//添加成功
				out.print("{\"status\":\"success\"}");
			}else{
				//添加失败
				out.print("{\"status\":\"failed\",\"msg\":\"添加失败，请稍后重试\"}");
			}
			
		

		}
		
	}


	private void doLogin(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		//获得参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String code = request.getParameter("code");
		String rcode = (String) request.getSession().getAttribute("code");
		HttpSession session = request.getSession();
		//校验参数
		if(validLogin(username,password,code,rcode)){
			//通过校验
			Admin admin = adminBiz.login(username, password);
			if(admin==null){
				//登陆失败 写入日志
				addLog("登陆", "管理员登陆", "登陆失败", request);
				session.setAttribute("loginError", "用户名或密码错误");
				//转发
				request.getRequestDispatcher("../adminjsps/login.jsp").forward(request, response);
				
			}else{
				//登陆成功 写入日志 
				addLog("登陆", "管理员登陆", "登陆成功", request);
				//绑定管理员信息
				session.setAttribute("adminName", username);
				session.setAttribute("admin", admin);
				//重定向至管理首页
				response.sendRedirect("../adminjsps/admin/adminplus.jsp");
				
			}
			
		}else{
			//校验失败
			session.setAttribute("loginError", "<script>layer.msg('请输入合法的数据！',{icon:5})</script>");
			//转发
			request.getRequestDispatcher("../adminjsps/login.jsp").forward(request, response);
		}
		
	}
	
	
	private void addLog(String type,String detail,String result,HttpServletRequest request){
		AdminLog log = new AdminLog();
		log.setLogId(IDGenderatorUtil.generateId());
		log.setOperType(type);
		log.setOperDetail(detail);
		log.setOperResult(result);
		log.setAdminName(request.getParameter("username"));
		log.setLoginIp(request.getRemoteAddr());
		log.setLoginTime(getDate(new Date()));
		adminBiz.addAdminLog(log);
		
	}

	private String getDate(Date date){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
	}
	

	private boolean validLogin(String username, String password, String code,
			String rcode) {
		
	    if(username==null||username.equals("")){
	    	return false;
	    }
	    if(password==null||password.equals("")){
	    	return false;
	    }
	    if(code==null||code.equals("")){
	    	return false;
	    }
	    if(!code.equals(rcode)){
	    	return false;
	    }
	    
	    return true;
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
