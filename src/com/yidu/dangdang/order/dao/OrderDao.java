package com.yidu.dangdang.order.dao;
import java.util.List;

import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.order.domain.OrderItem;
import com.yidu.dangdang.util.DynamicSql;


public interface OrderDao {
    /**
     * 移除订单的方法
     * @param orderId 订单ID
     * @return 影响的行数
     */
	public abstract int removeOrder(String orderId);
	/**
	 * 移除订单详情的放放
	 * @param orderId 订单ID
	 * @return 影响的行数
	 */
	public int removeOrderItem(String orderId); 	
	/**
	 * 修改订单的方法
	 * @param order 订单对象
	 * @return 影响的行数
	 */
	public abstract int updateOrder(Order order);
	/**
	 * 添加订单的方法
	 * @param order 订单对象
 	 * @return 影响的行数
	 */
	public abstract int addOrder(Order order);
	/**
	 * 添加订单详情的方法
	 * @param orderDetail 订单详情对象
	 * @return 影响的行数
	 */
	public abstract int addOrderItem(OrderItem orderItem);
	/**
	 * 查询所有的订单
	 * @return 订单集合
	 */
	public abstract List<Order> findAll();
	/**
	 * 查询订单的详细信息
	 * @return 影响的行数
	 */
	public abstract List<OrderDetail> findOrderDetail(String orderId);
	/**
	 * 根据订单时间段查询订单
	 * @param start 开始时间
	 * @param end 结束时间
	 * @param customerId 用户ID
	 * @return
	 */
	public abstract List<Order> findOrderByOrderTime(String start,String end,String customerId);
	/**
	 * 根据订单状态查询订单
	 * @param orderStatus 订单状态
	 * @return
	 */
	public abstract List<Order> findOrderByOrderStatus(int orderStatus);
	public List<Order> findOrderByDySql(DynamicSql sql);
	/**
	 * 修改订单状态
	 * @param orderId 订单ID
	 * @return
	 */
	public abstract int updateOrderStatus(String orderId, int orderStatus);
	
	public abstract List<Order> findOrderByOrderId(String orderId);
	
	public abstract List<Order> findOrderByCustomerId(String customerId);
	
	public abstract List<Order> findPagenationByCustomerId(String customerId,int start,int end);

}
