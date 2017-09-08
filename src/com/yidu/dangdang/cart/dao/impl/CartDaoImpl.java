package com.yidu.dangdang.cart.dao.impl;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.cart.dao.CartDao;
import com.yidu.dangdang.cart.domain.Cart;
import com.yidu.dangdang.util.DBUtil;

/**
 * 数据访问层
 * @author 鲁静芝
 *	 @since 2017/06/07
 */
public class CartDaoImpl implements CartDao {

	/**
	 * 通过用户id查找购物车
	 */
	@Override
	public List<Cart> findCartByCus(String customerId) {
		List<Cart> cartList = new ArrayList<Cart>();
		Connection conn = com.yidu.dangdang.util.DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Cart cart = null;
		
		//写SQL语句
		String sql = "select * from cart where customerId = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, customerId);
			
			res = pstmt.executeQuery();
			
			while(res.next()){
				cart = new Cart();
				cart.setCartId(res.getString("cartId"));
				cart.setProductId(res.getString("productId"));
				cart.setProductNum(res.getInt("productNum"));
				cart.setCustomerId(res.getString("customerId"));
				cart.setProductName(res.getString("productName"));
				cart.setPrice(res.getBigDecimal("price"));
				cart.setSubtotal(res.getBigDecimal("subtotal"));
				cart.setSize(res.getString("size"));
				cart.setPicture(res.getString("picture"));
				
				cartList.add(cart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cartList;
	}

	@Override
	public boolean delectProduct(String cartId,String productId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		boolean result = false;
		
		String sql = "delete from cart where cartId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cartId);
			
			result = pstmt.executeUpdate()>=1? true:false;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(null, pstmt, conn);
		}
		return result;
	}

	@Override
	public boolean updateProductNum(String cartId, int productNum,BigDecimal subtotal) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		boolean flag = false;
		int result = 0;
		
		String sql = "update cart set productNum = ? , subtotal = ? where cartId = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNum);
			pstmt.setObject(2, subtotal);
			pstmt.setString(3, cartId);
			
			result = pstmt.executeUpdate();
			
			if(result > 1){
				flag = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(null, pstmt, conn);
		}
		return flag;
	}

	/**
	 * 通过购物车Id查找购物车
	 */
	@Override
	public Cart findByCartId(String cartId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Cart cart = new Cart();
		
		String sql = "select * from cart where cartId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartId);
			
			res = pstmt.executeQuery();
			
			if(res.next()){
				cart.setCartId(res.getString("cartId"));
				cart.setProductId(res.getString("productId"));
				cart.setProductNum(res.getInt("productNum"));
				cart.setCustomerId(res.getString("customerId"));
				cart.setProductName(res.getString("productName"));
				cart.setPrice(res.getBigDecimal("price"));
				cart.setSubtotal(res.getBigDecimal("subtotal"));
				cart.setSize(res.getString("size"));
				cart.setPicture(res.getString("picture"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cart;
	}

	@Override
	public boolean addCart(Cart cart) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		boolean result = false;
		
		String sql="insert into cart(cartId,productId,productNum,customerId,productName,price,"
				+ "subtotal,size,picture) values(?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cart.getCartId());
			pstmt.setString(2, cart.getProductId());
			pstmt.setInt(3, cart.getProductNum());
			pstmt.setString(4, cart.getCustomerId());
			pstmt.setString(5,cart.getProductName());
			pstmt.setBigDecimal(6, cart.getPrice());
			pstmt.setBigDecimal(7, cart.getSubtotal());
			pstmt.setString(8, cart.getSize());
			pstmt.setString(9, cart.getPicture());
			
			
			result =pstmt.executeUpdate()>0?true:false;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(null, pstmt, conn);
		}
		return result;
	}

	@Override
	public Cart findProductById(String productId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Cart cart = new Cart();
		
		String sql = "select currPrice,productName,image_b from product where productId=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			
			res = pstmt.executeQuery();
			
			while(res.next()){
				cart.setPrice(res.getBigDecimal("currPrice"));
				cart.setProductName(res.getString("productName"));
				cart.setPicture(res.getString("image_b"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cart;
	}

	@Override
	public Cart findCartByProductId(String productId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Cart cart = null;
		
		String sql = "select * from cart where productId=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			
			res = pstmt.executeQuery();
			
			if(res.next()){
				cart = new Cart();
				cart.setCartId(res.getString("cartId"));
				cart.setProductId(res.getString("productId"));
				cart.setProductNum(res.getInt("productNum"));
				cart.setCustomerId(res.getString("customerId"));
				cart.setProductName(res.getString("productName"));
				cart.setPrice(res.getBigDecimal("price"));
				cart.setSubtotal(res.getBigDecimal("subtotal"));
				cart.setPicture(res.getString("picture"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cart;
	}

	@Override
	public boolean updataNumByProductId(BigDecimal subtotal,int productNum,String productId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		boolean flag = false;
		int result = 0;
		
		String sql = "update cart set productNum = ? , subtotal = ? where productId = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNum);
			pstmt.setObject(2, subtotal);
			pstmt.setString(3, productId);
			
			result = pstmt.executeUpdate();
			
			if(result > 1){
				flag = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(null, pstmt, conn);
		}
		return flag;
	}

	public List<String> findCityByProvince(String province) {
		// 创建集合对象
		List<String> citys = new ArrayList<String>();
		// 获得链接
		Connection con = DBUtil.getConnection();
		// 创建执行对象
		PreparedStatement sta = null;
		// 创建结果集对象
		ResultSet res = null;

		try {
			// 初始化sql语句对象
			sta = con
					.prepareStatement("select CityName from S_City where ProvinceID=(select ProvinceID from S_Province where ProvinceName= ? )");
			// 为sql语句赋值
			sta.setString(1, province);
			// 执行查询
			res = sta.executeQuery();
			// 遍历结果集为集合添加数据
			while (res.next()) {
				citys.add(res.getString("CityName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(res, sta, con);
		}

		return citys;
	}

	public List<String> findAllProvince() {
		// 创建集合对象
		List<String> provinces = new ArrayList<String>();
		// 获得链接
		Connection con = DBUtil.getConnection();
		// 创建执行对象
		PreparedStatement sta = null;
		// 创建结果集对象
		ResultSet res = null;

		try {
			// 初始化sql语句对象
			sta = con.prepareStatement("select ProvinceName from S_Province ");
			// 执行查询
			res = sta.executeQuery();
			// 遍历结果集为集合添加数据
			while (res.next()) {
				provinces.add(res.getString("ProvinceName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(res, sta, con);
		}

		return provinces;

	}

	public List<String> findAreaByCity(String cityName) {
		// 创建集合对象
		List<String> areas = new ArrayList<String>();
		// 获得链接
		Connection con = DBUtil.getConnection();
		// 创建执行对象
		PreparedStatement sta = null;
		// 创建结果集对象
		ResultSet res = null;

		try {
			// 初始化sql语句对象
			sta = con.prepareStatement("select DistrictName from S_District where CityID = (select CityID from S_City where CityName= ? )");
			// 为sql语句赋值
			sta.setString(1, cityName);
			// 执行查询
			res = sta.executeQuery();
			// 遍历结果集为集合添加数据
			while (res.next()) {
				areas.add(res.getString("DistrictName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(res, sta, con);
		}

		return areas;

	}

	@Override
	public Cart findCartByCustomerIdAndProduct(String customerId, String productId) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Cart cart = null;
		
		String sql = "select * from cart where customerId=? and productId=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, customerId);
			pstmt.setString(2, productId);
			
			res = pstmt.executeQuery();
			
			while(res.next()){
				cart = new Cart();
				cart.setCartId(res.getString("cartId"));
				cart.setProductId(res.getString("productId"));
				cart.setProductNum(res.getInt("productNum"));
				cart.setCustomerId(res.getString("customerId"));
				cart.setProductName(res.getString("productName"));
				cart.setPrice(res.getBigDecimal("price"));
				cart.setSubtotal(res.getBigDecimal("subtotal"));
				cart.setPicture(res.getString("picture"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cart;
	}
	
	
	

	
	
	
	
	
	
	
	

}
