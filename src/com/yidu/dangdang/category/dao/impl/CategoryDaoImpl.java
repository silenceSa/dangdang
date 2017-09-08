package com.yidu.dangdang.category.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.category.dao.CategoryDao;
import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;

/**
 * 数据访问层
 * @author youngboy
 * @since  2017/7/3
 */
public class CategoryDaoImpl implements CategoryDao {

	
	/**
	 * 删除分类
	 * @param categoryId 分类编号
	 * @return 受影响行数
	 */
	public int removeCategory(String categoryId) {
		int count = 0;
		//获得连接
		Connection con = DBUtil.getConnection();
		//获得预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "delete category where categoryId = ?";

		try {
			//获得执行对象
			sta = con.prepareStatement(sql);
			//操作结果
			sta.setString(1, categoryId);
			//执行语句
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}
        //返回
		return count;
	}

	/**
	 * 修改分类
	 * @param category 分类对象
	 * @return 受影响行数
	 */
	public int updateCategory(Category category) {
		int count = 0;
		//获得连接
		Connection con = DBUtil.getConnection();
		//获得预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "update category set categoryName = ?, parentId = ?, `describe` = ? where categoryId = ? ";

		try {
			//获得执行对象
			sta = con.prepareStatement(sql);
			//操作结果
			sta.setString(1, category.getCategoryName());
			sta.setString(2, category.getParentId());
			sta.setString(3, category.getDescribe());
			sta.setString(4, category.getCategoryId());
			//执行语句
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//关闭流
			DBUtil.closeAll(null, sta, con);
		}
        //返回
		return count;
	}
    /**
     * 
     */
	@Override
	public int addCategory(Category category) {
		int count = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "insert into category values(?,?,?,?)";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, category.getCategoryId());
			sta.setString(2, category.getCategoryName());
			sta.setString(3, category.getParentId());
			sta.setString(4, category.getDescribe());
			
			count = sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return count;
	}

	@Override
	public List<Category> findAll() {
		List<Category> categorys=new ArrayList<Category>();
		ResultSet res = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "select * from category";

		try {
			sta = con.prepareStatement(sql);
			
			res=sta.executeQuery();
			
			while(res.next()){
				Category category = new Category();
				category.setCategoryId(res.getString(1));
				category.setCategoryName(res.getString(2));
				category.setParentId(res.getString(3));
				category.setDescribe(res.getString(4));
				categorys.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return categorys;
	}

	@Override
	public List<Category> findCategories(String parentId) {
		List<Category> categorys=new ArrayList<Category>();
		ResultSet res = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		String sql = "select * from category where parentId = ? ";

		try {
			sta = con.prepareStatement(sql);
			sta.setString(1, parentId);
			res=sta.executeQuery();
			
			while(res.next()){
				Category category = new Category();
				category.setCategoryId(res.getString(1));
				category.setCategoryName(res.getString(2));
				category.setParentId(res.getString(3));
				category.setDescribe(res.getString(4));
				categorys.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, sta, con);
		}

		return categorys;
	}

	@Override
	public boolean hasChildren(String categoryId) {
		
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		try {
			String sql = "select categoryId from category where parentId= ?";
			sta= con.prepareStatement(sql);
			sta.setString(1, categoryId);
			res = sta.executeQuery();
			while(res.next()){
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		return false;
		
		
	}

	@Override
	public List<Category> findCateByLevel(DynamicSql sql) {
		List<Category> categorys=new ArrayList<Category>();
		ResultSet res = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		
		String dsql = "select * from category "+sql.createGeneralSql();
		try {
			sta = con.prepareStatement(dsql);
			sql.setParam(sta);
			res=sta.executeQuery();
			while(res.next()){
				Category category = new Category();
				category.setCategoryId(res.getString(1));
				category.setCategoryName(res.getString(2));
				category.setParentId(res.getString(3));
				category.setDescribe(res.getString(4));
				categorys.add(category);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		return categorys;
	}

	@Override
	public String findCategoryIdByName(String parentName) {
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		String parentId = null;
		try {
			String sql = "select categoryId from category where categoryName= ?";
			sta= con.prepareStatement(sql);
			sta.setString(1,parentName);
			res = sta.executeQuery();
			if(res.next()){
				parentId=res.getString("categoryId");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		return parentId;
	}

	@Override
	public int findCountByLevel(String level) {
		
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		int result=0;
		String sql = "select count(categoryId) from category where `describe` like ? ";
		
		try {
			sta=con.prepareCall(sql);
		    sta.setString(1, level);
			res=sta.executeQuery();
			if(res.next()){
				result=res.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		return result;
	}

	@Override
	public List<Category> findCateById(String categoryId) {
		
		List<Category> cates = new ArrayList<Category>();
		Connection con = DBUtil.getConnection();
		PreparedStatement sta = null;
		ResultSet res = null;
		
		String sql = "select * from category where parentId = ? ";
		
		try {
			sta=con.prepareStatement(sql);
			sta.setString(1, categoryId);
			res = sta.executeQuery();
			
			while(res.next()){
				Category category = new Category();
				category.setCategoryId(res.getString(1));
				category.setCategoryName(res.getString(2));
				category.setParentId(res.getString(3));
				category.setDescribe(res.getString(4));
				category.setChildrens(findCateById(category.getCategoryId()));
				cates.add(category);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		
		return cates;
	}

	
	
	
}
