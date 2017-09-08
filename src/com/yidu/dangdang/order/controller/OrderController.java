package com.yidu.dangdang.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.order.biz.OrderBiz;
import com.yidu.dangdang.order.biz.impl.OrderBizImpl;
import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.util.DynamicSql;


public class OrderController extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8142803397962697805L;
	private OrderBiz ordBiz = new OrderBizImpl();
	Gson gson = new Gson();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String biz = request.getParameter("biz");
	
		if("findAll".equals(biz)){
			doFindAllOrder(request,response);
		}else if("remove".equals(biz)){
			doRemoveOrder(request,response);
		}else if("add".equals(biz)){
			doAddOrder(request,response);
		}else if("update".equals(biz)){
			doUpdateOrder(request,response);
		}else if("findDetail".equals(biz)){
			doFindOrderDetail(request,response);
		}else if("findNoPay".equals(biz)){
			doFindNoPay(request,response);
		}else if("findPay".equals(biz)){
			doFindPay(request,response);
		}else if("findDeliver".equals(biz)){
			doFindDeliver(request,response);
		}else if("findSucceed".equals(biz)){
			doFindSucceed(request,response);
		}else if("searchOrder".equals(biz)){
			doFindSearch(request,response);
		}else if("findOrderByPage".equals(biz)){
			doFindOrderByPage(request,response);
		}else if("updateOrderStatus".equals(biz)){
			doUpdateOrderStatus(request,response);
		}else if("findOrderBycustomerId".equals(biz)){
			doFindOrderBycustomerId(request, response);
		}
		
	}




	private void doFindOrderBycustomerId(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String customerId = request.getParameter("customerId");
		List<Order> orders = ordBiz.findOrderByCustomerId(customerId);
		request.getSession().setAttribute("orders", orders);
		
		response.sendRedirect("../jsps/order/Order.jsp");
	}




	private void doUpdateOrderStatus(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 从请求域中得到参数:　订单编号
		String orderId = request.getParameter("orderId");
		int status = Integer.parseInt(request.getParameter("status"));
		int res = ordBiz.updateOrderStatus(orderId,status);
		//发送字符串
	    PrintWriter out = response.getWriter();
	    if(res>0){
			//添加成功
			out.write("{\"status\":\"success\"}");
		}else{
			//添加失败
			out.write("{\"status\":\"failed\"}");
		}
		
	}




	private void doFindOrderByPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int pageNumber = Integer.parseInt(request.getParameter("page"));
		            List<Order> orderList = ordBiz.findOrderByPage1(10, pageNumber);
		int total = ordBiz.findAllOrder().size(); 
		String list = gson.toJson(orderList);
		String json = "{\"total\":" + total + ",\"rows\":" + list + "}";
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
	}




	private void doFindSearch(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得要搜索的数据
		String orderId = request.getParameter("conginee");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		if (start.equals("")) {
			start=end;
		}
		if (end.equals("")){
			end=start;
		}
		//生成动态的SQL语句
		DynamicSql sql = new DynamicSql();
		//添加参数
	    sql.addParam("orderId;normal");
		sql.addParam("orderTime;scope1");
		sql.addParam("orderTime;scope2");
		//设置属性
		sql.setValue(orderId);
		sql.setValue(start);
		sql.setValue(end);
		//生成特定的map集合
		sql.addValidParamAndValue();
		//返回查询结果
		List<Order> order = ordBiz.findOrder(sql);
		String json = gson.toJson(order);
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
		
	}




	private void doFindSucceed(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int orderStatus = 4;
		List<Order> order = ordBiz.findOrderByOrderStatus(orderStatus);
		String srow = request.getParameter("rows");
		String spage = request.getParameter("page");
		int page = Integer.parseInt(spage);
		int row = Integer.parseInt(srow);
		List<Order> orders = ordBiz.findOrderByPage(row, page, order);
		int total = order.size();
		String list = gson.toJson(orders);
		String json = "{\"total\":" + total + ",\"rows\":" + list + "}";
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
		
	}




	private void doFindDeliver(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int orderStatus = 3;
		List<Order> order = ordBiz.findOrderByOrderStatus(orderStatus);
		String json = gson.toJson(order);
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
		
	}




	private void doFindPay(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int orderStatus = 2;
		List<Order> order = ordBiz.findOrderByOrderStatus(orderStatus);
		String json = gson.toJson(order);
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
		
	}




	private void doFindNoPay(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int orderStatus = 1;
		List<Order> orders = ordBiz.findOrderByOrderStatus(orderStatus);
		
		String json = gson.toJson(orders);
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
	}


	private void doFindOrderDetail(HttpServletRequest request,
			HttpServletResponse response) {
		String orderId = request.getParameter("id");
		
		List<OrderDetail> orderd = ordBiz.findOrderDetail(orderId);
		
		//List<OrderDetail> orders = ordBiz.findOrderDetail("241986D52CAB489FB7286FDE54E2AE19");
		request.getSession().setAttribute("orderDetailList",orderd);
		
	}
	


	private void doUpdateOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		String orderId = request.getParameter("orderId");
		String orderTime = request.getParameter("orderTime");
		int orderStatus = Integer.parseInt(request.getParameter("orderStatus"));
		String address = request.getParameter("address");
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		String customerId = request.getParameter("customerId");
		String consignee = request.getParameter("consignee");
		String recPhone = request.getParameter("recPhone");
		Order order = new Order();
		order.setOrderId(orderId);
		order.setOrderTime(orderTime);
		order.setOrderStatus(orderStatus);
		order.setAddress(address);
		order.setTotalPrice(totalPrice);
		order.setCustomerId(customerId);
		order.setConsignee(consignee);
		order.setRecPhone(recPhone);
		//调用业务层的方法修改
		int result = ordBiz.updateOrder(order);
		PrintWriter out = response.getWriter();
		if(result>0){
			//添加成功
			out.write("{\"status\":\"success\"}");
		}else{
			//添加失败
			out.write("{\"status\":\"failed\"}");
		}
	}


	private void doAddOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String orderId = request.getParameter("orderId");
		String orderTime = request.getParameter("orderTime");
		int orderStatus = Integer.parseInt(request.getParameter("orderStatus"));
		String address = request.getParameter("address");
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		String customerId = request.getParameter("customerId");
		String consignee = request.getParameter("consignee");
		String recPhone = request.getParameter("recPhone");
		Order order = new Order();
		order.setOrderId(orderId);
		order.setOrderTime(orderTime);
		order.setOrderStatus(orderStatus);
		order.setAddress(address);
		order.setTotalPrice(totalPrice);
		order.setCustomerId(customerId);
		order.setConsignee(consignee);
		order.setRecPhone(recPhone);
		//调用业务层的方法修改
		int result = ordBiz.updateOrder(order);
		PrintWriter out = response.getWriter();
		if(result>0){
			//添加成功
			out.write("{\"status\":\"success\"}");
		}else{
			//添加失败
			out.write("{\"status\":\"failed\"}");
		}
	}


	private void doRemoveOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String orderId = request.getParameter("orderId");
		//调用biz层的方法输出
		int result = ordBiz.removeOrder(orderId);
		PrintWriter out = response.getWriter();
		if(result>0){
			//删除成功
			out.write("{\"status\":\"success\"}");
		}else{
			//删除失败
			out.write("{\"status\":\"failed\"}");
		}
		
	}


	private void doFindAllOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		int pageSize=Integer.parseInt(request.getParameter("page"));
		int pageNum=Integer.parseInt(request.getParameter("rows"));
		List<Order> orders = ordBiz.findOrderByPage1(pageNum, pageSize);
		int total = ordBiz.findAllOrder().size();
		String list = gson.toJson(orders);
		String json = "{\"total\":" + total + ",\"rows\":" + list + "}";
		//发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
	
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	        doGet(request, response);
	}

}
