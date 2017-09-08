package com.yidu.dangdang.order.biz.impl;

import java.util.List;

import com.yidu.dangdang.order.biz.OrderBiz;
import com.yidu.dangdang.order.dao.OrderDao;
import com.yidu.dangdang.order.dao.impl.OrderDaoImpl;
import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.order.domain.OrderItem;
import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.util.DynamicSql;




public class OrderBizImpl implements OrderBiz{
    
	OrderDao ordDao = new OrderDaoImpl();
	
	public List<Order> findOrder(DynamicSql sql) {
		List<Order> orders = ordDao.findOrderByDySql(sql);
			
		return orders;
	}
	@Override
	public int removeOrder(String orderId) {
		int result =0;
		
			//1 先删除与改订单关联的订单详情
			ordDao.removeOrderItem(orderId);
			//2 再删除该订单
			result = ordDao.removeOrder(orderId);

		return result;
	}

	@Override
	public int addOrder(Order order) {
		int result =0;
		//2.添加订单
		ordDao.addOrder(order);
		
		//3.添加订单详情
		List<OrderItem> orderItemList = order.getOrderI();
		for(OrderItem orderItem : orderItemList){
			ordDao.addOrderItem(orderItem);
		}
		//4.调用JdbcUtils的commitTransaction()方法提交事务
		//JdbcUtils.commitTransaction();
		return result;
	}
    
	@Override
	public int updateOrder(Order order) {
		return ordDao.updateOrder(order);
	}

	@Override
	public List<Order> findAllOrder() {	
		return ordDao.findAll();
	}

	@Override
	public List<OrderDetail> findOrderDetail(String orderId) {
		return ordDao.findOrderDetail(orderId);
	}

	@Override
	public List<Order> findOrderByOrderTime(String start, String end,
			String customerId) {
		return ordDao.findOrderByOrderTime(start, end, customerId);
	}

	@Override
	public List<Order> findOrderByOrderStatus(int orderStatus) {
		return ordDao.findOrderByOrderStatus(orderStatus);
	}
	@Override
	public List<Order> findOrderByPage1(int pageSize, int pageNumber) {
		//获得所有订单集合
		List<Order> order = findAllOrder();
		//获得总记录数
		int start = (pageNumber-1)*pageSize;
		int end = pageSize+start>order.size() ? order.size() : pageSize+start;
				
		return order.subList(start, end);
	}
	@Override
	public List<Order> findOrderByPage(int pageSize, int pageNumber,
			List<Order> orders) {
		//获得总记录数
		int start = (pageNumber-1)*pageSize;
		int end = pageSize+start>orders.size() ? orders.size() : pageSize+start;
				
		return orders.subList(start, end);
	}
	@Override
	public int updateOrderStatus(String orderId,int status) {
		return ordDao.updateOrderStatus(orderId,status);
	}
	@Override
	public List<Order> findOrderByCustomerId(String customerId) {
		
		List<Order> order = ordDao.findOrderByCustomerId(customerId);
		for(Order orders : order){
			List<OrderDetail> orderD = ordDao.findOrderDetail(orders.getOrderId());
			orders.setOrderD(orderD);
		}
		return order;
	}
	@Override
	public Order findOrderByOrderId(String orderId) {
		List<Order> order = ordDao.findOrderByOrderId(orderId);
		if(order.isEmpty()){
			return null;
		}else{
			return order.get(0);
		}
		
	}
	@Override
	public PageBean<Order> findPagenationByCustomerId(String customerId,
			int pageIndex, int pageSize) {
		
		List<Order> allProductList=ordDao.findOrderByCustomerId(customerId);
		
		int totalRecords=allProductList.size();
		int start = (pageIndex-1)*pageSize;
		int end=pageSize;
		
		//2.调用GoodDao中的方法findPagenationByCategory(cid, recordCount, start)获取分类分页查询集合
		List<Order> orderList = ordDao.findPagenationByCustomerId(customerId,start,end);
		//3.创建PageBean对象
		PageBean<Order> pageBean = new PageBean<Order>();
		//4.为pageBean设置属性数据
		pageBean.setBeanList(orderList);
		pageBean.setPageIndex(pageIndex);
		pageBean.setPageSize(pageSize);
        pageBean.setTotalRecords(totalRecords);
        
		return pageBean;
	}
}
