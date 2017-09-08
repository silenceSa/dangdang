package com.yidu.dangdang.comment.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yidu.dangdang.comment.dao.CommentDao;
import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.comment.domain.Common;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DBUtil;
import com.yidu.dangdang.util.DynamicSql;
/**
 * 数据访问层实现类
 * @author 胡伟涛
 * @since 2017/7/3
 */
public class CommentDaoImpl implements CommentDao{

	/**
	 * 动态查询所有的评论
	 * @param sql
	 * @return 评论集合
	 */
	@Override
	public List<Comment> findCom(DynamicSql sql) {
		//评论集合
		List<Comment> comments=new ArrayList<Comment>();
		//创建结果集对象
		ResultSet res = null;
		//从数据库获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//sql语句
		String dsql = "select * from comment "+sql.createGeneralSql();
		try {
			//给获得连接的预处理对象执行sql语句
			sta = con.prepareStatement(dsql);
			//设置属性
			sql.setParam(sta);
			//执行预编译语句获得结果集对象
			res=sta.executeQuery();
			//操作结果集
			while(res.next()){
				//评论对象
				Comment comment = new Comment();
				comment.setCommentId(res.getString("commentId"));
				comment.setCommentText(res.getString("commentText"));
				comment.setCommentTime(res.getString("commentTime"));
				comment.setScore(res.getInt("score"));
				comment.setProductName(res.getString("productName"));
				comment.setCustomerName(res.getString("customerName"));
				comment.setReply(res.getString("reply"));
				//把评论对象放入评论集合
				comments.add(comment);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//关闭流
			DBUtil.closeAll(res, sta, con);
		}
		//返回评论集合
		return comments;
		
		
	}
    /**
     * 添加回复
     * @param reply 回复
     * @param commentId 评论Id
     * @return 受影响的行数
     */
	@Override
	public int addReply(String reply ,String commentId) {	
	int res = 0;
	//从数据库里获得连接
	Connection con = DBUtil.getConnection();
	//创建预处理对象
	PreparedStatement sta = null;	
	//sql语句
    String sql = "update comment set reply = ? where commentId = ?";
		
    try {
    	//给获得连接的预处理对象执行sql语句
		sta = con.prepareStatement(sql);
		//给占位符赋值
		sta.setString(1, reply);
		sta.setString(2, commentId);
		//执行预处理对象操作结果集
		res=sta.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		//关闭流
		DBUtil.closeAll(null, sta, con);
	}
        //返回受影响行数
		return res;
	}

	/**
	 * 根据商品Id分页
	 * @param productId 商品Id
	 * @param start 开始数
	 * @param end 结束数
	 * @return 评论集合
	 */
	@Override
	public List<Comment> findPagenationByProductId(String productId, int start,
			int end) {
		//从数据库里获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet res = null;
		//评论集合
		List<Comment> commentList = new ArrayList<Comment>();
		try {
			//sql语句
			String sql="select * from comment where productId =? limit ?,?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1,productId);
			sta.setInt(2,start);
			sta.setInt(3,end);
			//执行预处理对象操作结果集
			res = sta.executeQuery();
			
			while(res.next()) {
				//评论对象
				Comment comment = new Comment();
				comment.setCommentId(res.getString("commentId"));
				comment.setCommentText(res.getString("commentText"));
				comment.setCommentTime(res.getString("commentTime"));
				comment.setScore(res.getInt("score"));
				comment.setProductName(res.getString("productName"));
				comment.setCustomerName(res.getString("customerName"));
				comment.setReply(res.getString("reply"));
				commentList.add(comment);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		//返回商品集合
		return commentList;
	}

	/**
	 * 添加评论
	 * @common 评论对象
	 * @return 受影响的行数
	 */
	@Override
	public int addComment(Common common) {
		int count = 0;
		//从数据库获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//sql语句
		String sql = "insert into comment values(?,?,?,?,?,?,?,?,?,?,?)";

		try {
			//给获得连接的预处理对象执行sql语句
			sta=con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1, common.getCommentId());
			sta.setString(2, common.getCommentText());
			sta.setString(3, common.getCommentTime());
			sta.setInt(4, common.getScore());
			sta.setString(5, common.getCustomerId());
			sta.setString(6, common.getProductId());
			sta.setString(7, common.getProductName());
			sta.setString(8, common.getCustomerName());
			sta.setString(9, common.getReply());
			sta.setString(10," ");
			sta.setString(11," ");
			//执行预处理对象操作结果集
			count=sta.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, sta, con);
		}
		
		
        //返回受影响的行数		
		return count;
	}

	/**
	 * 根据商品Id找到商品图片
	 * @param productId 商品Id
	 * @return 商品对象
	 */
	@Override
	public Product findPicByProductId(String productId) {
		//从数据库获得连接
		Connection con = DBUtil.getConnection();
		//创建预处理对象
		PreparedStatement sta = null;
		//创建结果集对象
		ResultSet res = null;
		//商品对象
		Product product=null;
		try {
			//sql语句
			String sql="select image_s1,productName from product where productId =?";
			//给获得连接的预处理对象执行sql语句
			sta= con.prepareStatement(sql);
			//给占位符赋值
			sta.setString(1,productId);
			//执行预处理对象操作结果集
			res = sta.executeQuery();
			//操作结果集
			while(res.next()) {
				product = new Product();
				product.setImage_s1(res.getString("image_s1"));
				product.setProductName(res.getString("productName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(res, sta, con);
		}
		
		
		return product;
	}
		

}
	
