package com.yidu.dangdang.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * 数据库工具类
 * @author Iversen
 * @since 2017/3/9
 */
public class DBUtil {

	private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/vip?characterEncoding=utf8&useSSL=true";
	private static String user = "root";
	private static String pass = "zan1313";
	
	
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public static Connection getConnection(){
		
		Connection con= null;
		
		try {
			con = DriverManager.getConnection(url,user,pass);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return con;
	}
	
	

	public static void closeAll(ResultSet res,Statement sta,Connection con){
		
		try {
			if (res!=null) {
				res.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if (sta!=null) {
					sta.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				try {
					if (con!=null) {
						con.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
	
}
