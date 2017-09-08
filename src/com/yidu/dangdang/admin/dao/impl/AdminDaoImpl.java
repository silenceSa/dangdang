package com.yidu.dangdang.admin.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.admin.dao.AdminDao;
import com.yidu.dangdang.admin.domain.Admin;
import com.yidu.dangdang.admin.domain.AdminLog;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;

public class AdminDaoImpl implements AdminDao {

	@Override
	public Admin findAdmin(String adminName, String password) {
		Admin admin = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		String sql = "select * from administrant where adminName = ? and adminPass = ? ";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, adminName);
			sta.setString(2, password);
            res = sta.executeQuery();
			
            if(res.next()){
            	admin = new Admin();
            	admin.setAdminId(res.getString(1));
            	admin.setAdminName(res.getString(2));
            	admin.setAdminPass(res.getString(3));
            }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return admin;
		
	}

	@Override
	public int addAdmin(Admin admin) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "insert into administrant values(?,?,?)";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, admin.getAdminId());
			sta.setString(2, admin.getAdminName());
			sta.setString(3, admin.getAdminPass());
			count = sta.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	@Override
	public int addAdminLog(AdminLog log) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "insert into adminlog values(?,?,?,?,?,?,?)";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, log.getLogId());
			sta.setString(2, log.getOperType());
			sta.setString(3, log.getOperDetail());
			sta.setString(4, log.getOperResult());
			sta.setString(5, log.getAdminName());
			sta.setString(6, log.getLoginIp());
			sta.setString(7, log.getLoginTime());
			count = sta.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
		
	}

	@Override
	public List<AdminLog> findAllLog(int pageNum, int pageSize) {
		List<AdminLog> logs = new ArrayList<AdminLog>();
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		String sql = "select * from adminlog limit ?,? ";

		try {
			sta = con.prepareStatement(sql);
			int start = (pageNum-1)*pageSize;
			int end = start+pageSize;
			System.out.println(start+";"+end);
			sta.setInt(1, start);
			sta.setInt(2, end);
            res = sta.executeQuery();
			
            while(res.next()){
            	AdminLog log = new AdminLog();
            	log.setLogId(res.getString(1));
            	log.setOperType(res.getString(2));
            	log.setOperDetail(res.getString(3));
            	log.setOperResult(res.getString(4));
            	log.setAdminName(res.getString(5));
            	log.setLoginIp(res.getString(6));
            	log.setLoginTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getTimestamp(7)));
            	logs.add(log);
            	
            }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return logs;
		
	}

	@Override
	public List<AdminLog> findLog(DynamicSql dsql) {
		
		String sql = "select * from administrant " + dsql.createGeneralSql();
		System.out.println(sql);
		// 用户集合
		List<AdminLog> logs = new ArrayList<AdminLog>();
		// 获得连接
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		try {
			// 获得执行对象

			sta = con.prepareStatement(sql);

			// 调用动态sql语句对象的方法动态地为占位符赋值
			dsql.setParam(sta);
			// 执行语句
			res = sta.executeQuery();
			// 操作结果
			while (res.next()) {
				
				AdminLog log = new AdminLog();
            	log.setLogId(res.getString(1));
            	log.setOperType(res.getString(2));
            	log.setOperDetail(res.getString(3));
            	log.setOperResult(res.getString(4));
            	log.setAdminName(res.getString(5));
            	log.setLoginIp(res.getString(6));
            	log.setLoginTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getTimestamp(7)));
            	logs.add(log);
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 关闭流
			DBUtil.closeAll(res, sta, con);
		}

		// 返回集合
		return logs;
		
		
	}

	@Override
	public List<Admin> findAllAdmin() {

		List<Admin> admins = new ArrayList<Admin>();
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		String sql = "select * from administrant ";

		try {
			sta = con.prepareStatement(sql);
            res = sta.executeQuery();
			
            while(res.next()){
            	Admin admin = new Admin();
            	admin.setAdminId(res.getString(1));
            	admin.setAdminName(res.getString(2));
            	admin.setAdminPass(res.getString(3));
            	admins.add(admin);
            }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return admins;
		
	}

	@Override
	public int countLog() {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		String sql = "select count(*) from adminlog ";

		try {
			sta = con.prepareStatement(sql);
            res = sta.executeQuery();
			
            if(res.next()){
            	count=res.getInt(1);
            }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}
		
		
		
		
		return count;
	}

	
	
	
	
	


}
