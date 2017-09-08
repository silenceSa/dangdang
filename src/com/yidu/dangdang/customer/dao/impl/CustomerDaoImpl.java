package com.yidu.dangdang.customer.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.customer.dao.CustomerDao;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;


public class CustomerDaoImpl implements CustomerDao {

	/**
	 * 查找所有用户
	 */
	@Override
	public List<Customer> findAllCustomer() {
		List<Customer> cusList = new ArrayList<Customer>();

		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		String sql = "select * from customer";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			res = pstmt.executeQuery();
			
			while(res.next()){
				Customer cus = new Customer();
				cus.setCustomerId(res.getString("customerId"));
				cus.setCustomerName(res.getString("customerName"));
				cus.setPwd(res.getString("pwd"));
				cus.setPhoneNum(res.getString("phoneNum"));
				cus.setCustomerStatus(res.getInt("customerStatus"));
				cus.setActivationStatus(res.getString("activationStatus"));
				
				cusList.add(cus);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		
		return cusList;
	}

	/**
	 * 通过名字查找用户
	 */
	@Override
	public Customer findCusByName(String customerName) {
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Customer cus = null;
		
		String sql = "select * from customer where customerName = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,customerName );
			res = pstmt.executeQuery();
			
			if(res.next()){
				cus = new Customer();
				cus.setCustomerId(res.getString("customerId"));
				cus.setCustomerName(res.getString("customerName"));
				cus.setPwd(res.getString("pwd"));
				cus.setPhoneNum(res.getString("phoneNum"));
				cus.setCustomerStatus(res.getInt("customerStatus"));
				cus.setActivationStatus(res.getString("activationStatus"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cus;
	}

	@Override
	public List<Customer> findCusByPhonenum(String phoneNum) {
		List<Customer> cusList = new ArrayList<Customer>();
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Customer cus = null;
		
		String sql = "select * from customer where phoneNum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,phoneNum );
			res = pstmt.executeQuery();
			
			while(res.next()){
				cus = new Customer();
				cus.setCustomerId(res.getString("customerId"));
				cus.setCustomerName(res.getString("customerName"));
				cus.setPwd(res.getString("pwd"));
				cus.setPhoneNum(res.getString("phoneNum"));
				cus.setCustomerStatus(res.getInt("customerStatus"));
				cus.setActivationStatus(res.getString("activationStatus"));
				
				cusList.add(cus);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cusList;
	}

	@Override
	public List<Customer> findUser(DynamicSql dyn) {
		List<Customer> cusList = new ArrayList<Customer>();
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet res = null;
		Customer cus = null;
		
		String sql = "select * from customer "+dyn.createGeneralSql();
		
		try {
			pstmt = conn.prepareStatement(sql);
			dyn.setParam(pstmt);
			
			res = pstmt.executeQuery();
			
			while(res.next()){
				cus = new Customer();
				cus.setCustomerId(res.getString("customerId"));
				cus.setCustomerName(res.getString("customerName"));
				cus.setPwd(res.getString("pwd"));
				cus.setPhoneNum(res.getString("phoneNum"));
				cus.setCustomerStatus(res.getInt("customerStatus"));
				cus.setActivationStatus(res.getString("activationStatus"));
				
				cusList.add(cus);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeAll(res, pstmt, conn);
		}
		return cusList;
	}

	@Override
	public int addCustomer(Customer customer) {
		
		int result=0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		
		String sql = "insert into customer value(?,?,?,?,?,?,?,?,?)";
		
	    try {
			sta = con.prepareStatement(sql);
			sta.setString(1, customer.getCustomerId());
			sta.setString(2, customer.getCustomerName());
			sta.setString(3, customer.getPwd());
			sta.setString(4, customer.getPhoneNum());
			sta.setInt(5, customer.getCustomerStatus());
			sta.setString(6, customer.getActivationStatus());
			sta.setString(7, null);
			sta.setString(8, null);
			sta.setString(9, null);
			result = sta.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, sta, con);
		}
		
		return result;
	}

	@Override
	public int updatePwdByName(String loginName,String pwd) {
		
		int result=0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		
		String sql = "update customer set pwd = ? where customerName = ? ";
		
		try {
			sta = con.prepareStatement(sql);
			sta.setString(1,pwd);
			sta.setString(2, loginName);
			result = sta.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, sta, con);
		}
		
		return result;
	}

	@Override
	public int updateStatus(String code) {
		int result=0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		
		String sql = "update customer set customerStatus = 1 where activationStatus = ? ";
		
		try {
			sta = con.prepareStatement(sql);
			sta.setString(1,code);
			result = sta.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, sta, con);
		}
		
		return result;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
