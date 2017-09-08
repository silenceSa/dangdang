package com.yidu.dangdang.customer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.customer.biz.CustomerBiz;
import com.yidu.dangdang.customer.biz.impl.CustomerBizImpl;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DynamicSql;
import com.yidu.dangdang.util.IDGenderatorUtil;

public class CustomerController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	CustomerBiz cusBiz = new CustomerBizImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		String biz = request.getParameter("biz");
		
		if("findAllCus".equals(biz)){
			doFindAllCus(request,response);
		} else if("findUser".equals(biz)){
			doFindUser(request,response);
		} else if("findActive".equals(biz)){
			doFindActive(request,response);
		} else if("findUnActive".equals(biz)){
			doFindUnActive(request,response);
		} else if("remove".equals(biz)){
			doRemove(request,response);
		} else if("addCus".equals(biz)){
			doAddCustomer(request,response);
		}
	}

	

	private void doAddCustomer(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得参数
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String status = request.getParameter("status");
		String code = request.getParameter("code");
		
		//校验参数
		boolean result = validCustomer(name,password,phone,status,code);
		PrintWriter out= response.getWriter();
		if (result) {
			//校验成功
			Customer cus = new Customer();
			cus.setCustomerId(IDGenderatorUtil.generateId());
			cus.setCustomerName(name);
			cus.setPwd(password);
			cus.setPhoneNum(phone);
			cus.setCustomerStatus(Integer.parseInt(status));
			cus.setActivationStatus(code);
			if (cusBiz.addCustomer(cus)>0) {
				//添加成功
				out.write("{\"status\":\"success\"}");
			}else{
				//添加失败
				out.write("{\"status\":\"falied\",\"msg\":\"添加失败\"}");
			}
			
		} else {
			//校验失败
			out.write("{\"status\":\"falied\",\"msg\":\"非法字符\"}");

		}
		
	}



	private boolean validCustomer(String name, String password, String phone,
			String status, String code) {
		
		if (name==null||name.equals("")) {
			return false;
		}
		
		if(password==null||password.equals("")){
			return false;
		}
		
		if(phone==null||phone.equals("")){
			return false;
		}
		
		if(status==null||status.equals("")){
			return false;
		}
		
		
		if(code==null||code.equals("")){
		    return false;
		}
		
		return true;
	}



	private void doRemove(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		//获得用户ID
		String cId = request.getParameter("customerId");
		//验证ID
		PrintWriter out = response.getWriter();
		if (cId==null||cId.equals("")) {
			//移除失败
			out.print("{\"status\":\"failed\",\"msg\":\"无有效ID\"}");
		}else{
			//调用biz层的方法移除用户
			out.print("{\"status\":\"success\"");
			
		}
		
		
		
		
	}



	private void doFindUnActive(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		
		DynamicSql dyn = new DynamicSql();
		dyn.addParam("customerStatus;normal");
		dyn.setValue(0);
		dyn.addValidParamAndValue();
		List<Customer> cusList = cusBiz.findUser(dyn);
		List<Customer> subList = cusBiz.findUserByPage(page, rows, cusList);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String sJson = "{\"total\":"+cusList.size()+",\"rows\":"+gson.toJson(subList)+"}";
		out.write(sJson);
		out.close();
		
		
	}



	private void doFindActive(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		DynamicSql dyn = new DynamicSql();
		dyn.addParam("customerStatus;normal");
		dyn.setValue(1);
		dyn.addValidParamAndValue();
		List<Customer> cusList = cusBiz.findUser(dyn);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String sJson = "{\"total\":"+cusList.size()+",\"rows\":"+gson.toJson(cusList)+"}";
		out.write(sJson);
		out.close();
	}



	private void doFindUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String cusName = request.getParameter("name");
		String phoneNum = request.getParameter("phoneNum");
		String status = request.getParameter("status");
		
		DynamicSql dyn = new DynamicSql();
		dyn.addParam("customerName;like");
		dyn.addParam("phoneNum;normal");
		dyn.addParam("customerStatus;normal");
		
		dyn.setValue(cusName);
		dyn.setValue(phoneNum);
		dyn.setValue(status);
		
		dyn.addValidParamAndValue();
		
		List<Customer> cusList = cusBiz.findUser(dyn);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String sJson = "{\"total\":"+cusList.size()+",\"rows\":"+gson.toJson(cusList)+"}";
		out.write(sJson);
		out.close();
		
		
	}



	private void doFindAllCus(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		    int page = Integer.parseInt(request.getParameter("page"));
		    int rows = Integer.parseInt(request.getParameter("rows"));
			Gson gson = new Gson();
			List<Customer> cusList = cusBiz.findAllCustomer();
			List<Customer> subList = cusBiz.findUserByPage(page, rows, cusList);
			PrintWriter out = response.getWriter();
			String sJson = "{\"total\":"+cusList.size()+",\"rows\":"+gson.toJson(subList)+"}";
			out.write(sJson);
			out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
