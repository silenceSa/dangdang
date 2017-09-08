package com.yidu.dangdang.order.biz;

import java.util.List;

import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.util.DynamicSql;


public interface OrderBiz {
    /**
     * 移除订单
     * @param orderId 订单ID
     * @return 影响的行数
     */
	public abstract int removeOrder(String orderId);
	/**
	 * 添加订单
	 * @param order 要添加的订单
	 * @return 影响的行数
	 */
	public abstract int addOrder(Order order);
	/**
	 * 修改订单
	 * @param order 要修改的订单
	 * @return 影响的行数
	 */
	public abstract int updateOrder(Order order);
	/**
	 * 查询所有订单
	 * @return 影响的行数
	 */
	public abstract List<Order> findAllOrder();
	/**
	 * 查询订单的详细信息
	 * @return 影响的行数
	 */
	public abstract List<OrderDetail> findOrderDetail(String orderId);
	/**
	 * 根据订单状态查询订单
	 * @param orderStatus
	 * @return
	 */
	public abstract List<Order> findOrderByOrderStatus(int orderStatus);
	
	/**
	 * 根据指定时间段查询订单
	 * @param start 开始时间
	 * @param end 结束时间
	 * @param customerId 用户ID
	 * @return
	 */
	public abstract List<Order> findOrderByOrderTime(String start,String end,String customerId);
	public abstract List<Order> findOrder(DynamicSql sql);
	
	public List<Order> findOrderByPage1(int pageSize,int pageNumber);
	
	public List<Order> findOrderByPage(int pageSize,int pageNumber,List<Order> orders);
	
	public int updateOrderStatus(String orderId, int status);
	
	public List<Order> findOrderByCustomerId(String customerId);
	
	public Order findOrderByOrderId(String orderId);
	
	public PageBean<Order> findPagenationByCustomerId(String customerId,int pageIndex, int pageSize);
}
