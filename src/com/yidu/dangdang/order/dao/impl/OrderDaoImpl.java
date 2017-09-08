package com.yidu.dangdang.order.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.order.dao.OrderDao;
import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.order.domain.OrderItem;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;
import com.yidu.dangdang.util.IDGenderatorUtil;

public class OrderDaoImpl implements OrderDao {

	@Override
	public int removeOrder(String orderId) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
	
		//删除订单表的sql语句
		String sql=" delete from `order` where orderId = ? ";
		
		try {
			//删除订单详情表中操作
			sta = con.prepareStatement(sql);
			sta.setString(1, orderId);
			count = sta.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	public int removeOrderItem(String orderId) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
	
		//删除订单表的sql语句
		String sql=" delete from `orderitem` where orderId = ? ";
		
		try {
			//删除订单详情表中操作
			sta = con.prepareStatement(sql);
			sta.setString(1, orderId);
			count = sta.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	@Override
	public int updateOrder(Order order) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "update order set orderTime = ?,orderStatus = ?,address = ?,totalPrice = ?,customerId = ?,consignee = ?,rechPhone = ?where orderId=?";
		try {
			sta = con.prepareStatement(sql);
			sta.setObject(1, order.getOrderTime());
			sta.setInt(2, order.getOrderStatus());
			sta.setString(3, order.getAddress());
			sta.setDouble(4, order.getTotalPrice());
			sta.setString(5, order.getCustomerId());
			sta.setString(6, order.getConsignee());
			sta.setString(7, order.getRecPhone());
			sta.setString(8, order.getOrderId());
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	@Override
	public int addOrder(Order order) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "insert into `order`(orderId,orderTime,orderStatus,address,totalPrice,customerId,consignee,recPhone) values(?,?,?,?,?,?,?,?)";
		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, order.getOrderId());
			sta.setObject(2, order.getOrderTime());
			sta.setInt(3, order.getOrderStatus());
			sta.setString(4, order.getAddress());
			sta.setDouble(5, order.getTotalPrice());
			sta.setString(6, order.getCustomer().getCustomerId());
			sta.setString(7, order.getConsignee());
			sta.setString(8, order.getRecPhone());

			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}
    
	@Override
	public int addOrderItem(OrderItem orderItem) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "insert into `orderitem`(orderitemId,productId,num,orderId,productName,price,subtotal,image_s) values(?,?,?,?,?,?,?,?)";
		try {
			sta = con.prepareStatement(sql);
			sta.setString(1,IDGenderatorUtil.generateId());
			sta.setString(2,orderItem.getProductId());
			sta.setInt(3,orderItem.getNum());
			sta.setString(4,orderItem.getOrderId());
			sta.setString(5,orderItem.getProductName());
			sta.setBigDecimal(6,orderItem.getPrice());
			sta.setBigDecimal(7,orderItem.getSubtotal());
			sta.setString(8,orderItem.getImage());

			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}
	@Override
	public List<Order> findAll() {
		List<Order> orders = new ArrayList<Order>();
		ResultSet res = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "select o.orderId,o.orderTime,o.orderStatus,o.address,o.totalPrice,o.consignee,o.recPhone,"
				+ "c.customerName from `order` o join customer c on o.customerId = c.customerId";

		try {
			sta = con.prepareStatement(sql);

			res = sta.executeQuery();

			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(8));
				order.setConsignee(res.getString(6));
				order.setRecPhone(res.getString(7));
				orders.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return orders;
	}

	@Override
	public List<OrderDetail> findOrderDetail(String orderId) {
		List<OrderDetail> orderd = new ArrayList<OrderDetail>();
		ResultSet res = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;

		String sql = "select * from orderitem where orderId=?";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, orderId);
			res = sta.executeQuery();
			while (res.next()) {
				OrderDetail orderDetail = new OrderDetail();
				orderDetail.setImage(res.getString("image_s"));
				orderDetail.setProductName(res.getString("productName"));
				orderDetail.setPrice(res.getBigDecimal("price"));
				orderDetail.setNum(res.getInt("num"));
				orderDetail.setSubtotal(res.getBigDecimal("subtotal"));
				orderDetail.setProductId(res.getString("productId"));
				orderd.add(orderDetail);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return orderd;
	}

	@Override
	public List<Order> findOrderByOrderStatus(int orderStatus) {
		List<Order> orders = new ArrayList<Order>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet res = null;

		String sql = "select o.orderId,o.orderTime,o.orderStatus,o.address,o.totalPrice,o.consignee,o.recPhone,"
				+ "c.customerName from `order` o join customer c on o.customerId = c.customerId where o.orderStatus = ?";
		try {
			// 得到连接对象
			connection = DBUtil.getConnection();
			// 得到预编译执行对象
			preparedStatement = connection.prepareStatement(sql);
			// 为SQL语句的占位符设置值
			preparedStatement.setInt(1, orderStatus);
			// 执行SQL语句, 得到结果集
			res = preparedStatement.executeQuery();

			/*
			 * 遍历结果集, 封装成订单对象, 并添加到订单集合中
			 */
			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(8));
				order.setConsignee(res.getString(6));
				order.setRecPhone(res.getString(7));
				orders.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放资源
			DBUtil.closeAll(res, preparedStatement, connection);
		}

		return orders;
	}

	@Override
	public List<Order> findOrderByOrderTime(String start, String end,
			String customerId) {
		List<Order> orders = new ArrayList<Order>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet res = null;

		String sql = "select * from `order` where orderTime > ? and orderTime < ? and customerId=?";
		try {
			// 得到连接对象
			connection = DBUtil.getConnection();
			// 得到预编译执行对象
			preparedStatement = connection.prepareStatement(sql);
			// 为SQL语句占位符设置值
			preparedStatement.setString(1, start);
			preparedStatement.setString(2, end);
			preparedStatement.setString(3, customerId);
			// 执行SQL语句, 得到结果集
			res = preparedStatement.executeQuery();

			// 遍历结果集, 封装成订单对象, 并添加到订单集合中
			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(6));
				order.setConsignee(res.getString(7));
				order.setRecPhone(res.getString(8));
				orders.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放资源
			DBUtil.closeAll(res, preparedStatement, connection);
		}
		return orders;
	}

	@Override
	public List<Order> findOrderByDySql(DynamicSql dySql) {
		// 自动匹配参数
		String sql = "select o.orderId,o.orderTime,o.orderStatus,o.address,o.totalPrice,o.consignee,o.recPhone,"
				+ "c.customerName from `order` o join customer c on o.customerId = c.customerId " + dySql.createGeneralSql();
		// 用户集合
		List<Order> orderList = new ArrayList<Order>();
		// 获得连接
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		try {
			// 获得执行对象

			sta = con.prepareStatement(sql);

			// 调用动态sql语句对象的方法动态地为占位符赋值
			dySql.setParam(sta);
			// 执行语句
			res = sta.executeQuery();
			// 操作结果
			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(8));
				order.setConsignee(res.getString(6));
				order.setRecPhone(res.getString(7));
				orderList.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 关闭流
			DBUtil.closeAll(res, sta, con);
		}

		// 返回集合
		return orderList;
	}

	@Override
	public int updateOrderStatus(String orderId,int orderStatus) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		int res = 0;
		
		String sql = "update `order` set orderStatus = ? where orderId = ?";
		try {
			// 得到连接对象
			connection = DBUtil.getConnection();
			// 得到预编译执行对象
			preparedStatement = connection.prepareStatement(sql);
			// 为SQL语句的占位符设置值
			preparedStatement.setInt(1, orderStatus);
			preparedStatement.setString(2, orderId);
			// 执行SQL语句, 得到结果集
			res = preparedStatement.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放资源
			DBUtil.closeAll(null, preparedStatement, connection);
		}

		return res;
	}

	@Override
	public List<Order> findOrderByOrderId(String orderId) {
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		List<Order> orderList = new ArrayList<Order>();
		
		String sql="select * from `order` where orderId = ?";
		
		try {
			// 得到连接对象
			con = DBUtil.getConnection();
			// 得到预编译执行对象
			sta = con.prepareStatement(sql);
			// 为SQL语句占位符设置值
			sta.setString(1, orderId);
			// 执行SQL语句, 得到结果集
			res = sta.executeQuery();

			// 遍历结果集, 封装成订单对象, 并添加到订单集合中
			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(6));
				order.setConsignee(res.getString(7));
				order.setRecPhone(res.getString(8));
			    order.setOrderD(findOrderDetail(order.getOrderId()));
				orderList.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放资源
			DBUtil.closeAll(res, sta, con);
		}
		return orderList;
	}

	@Override
	public List<Order> findOrderByCustomerId(String customerId) {
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		List<Order> orderList = new ArrayList<Order>();
		
		String sql="select *from `order` where customerId = ?";
		
		try {
			// 得到连接对象
			con = DBUtil.getConnection();
			// 得到预编译执行对象
			sta = con.prepareStatement(sql);
			// 为SQL语句占位符设置值
			sta.setString(1, customerId);
			// 执行SQL语句, 得到结果集
			res = sta.executeQuery();

			// 遍历结果集, 封装成订单对象, 并添加到订单集合中
			while (res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(6));
				order.setConsignee(res.getString(7));
				order.setRecPhone(res.getString(8));
			    order.setOrderD(findOrderDetail(order.getOrderId()));
				orderList.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放资源
			DBUtil.closeAll(res, sta, con);
		}
		return orderList;
	}

	@Override
	public List<Order> findPagenationByCustomerId(String customerId, int start,
			int end) {
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		List<Order> orderList = new ArrayList<Order>();
		try {
			String sql="select * from `order` where customerId =? limit ?,?";
			sta= con.prepareStatement(sql);
			sta.setString(1,customerId);
			sta.setInt(2,start);
			sta.setInt(3,end);
			res = sta.executeQuery();
			
			while(res.next()) {
				Order order = new Order();
				order.setOrderId(res.getString(1));
				order.setOrderTime(res.getString(2));
				order.setOrderStatus(res.getInt(3));
				order.setAddress(res.getString(4));
				order.setTotalPrice(res.getDouble(5));
				order.setCustomerId(res.getString(6));
				order.setConsignee(res.getString(7));
				order.setRecPhone(res.getString(8));
			    order.setOrderD(findOrderDetail(order.getOrderId()));
				orderList.add(order);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return orderList;
	}
	

}
