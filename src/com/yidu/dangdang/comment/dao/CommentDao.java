package com.yidu.dangdang.comment.dao;

import java.util.List;

import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.comment.domain.Common;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;
/**
 * 数据访问层接口
 * @author 胡伟涛
 * @since 2017/7/3
 */
public interface CommentDao {

	/**
	 * 动态查询评论
	 * @param sql
	 * @return 评论集合
	 */
	public abstract List<Comment> findCom(DynamicSql sql);
	/**
	 * 添加回复
	 * @param reply 回复
	 * @param commentId 评论Id
	 * @return 受影响的行数
	 */
	public abstract int addReply (String reply ,String commentId);
	/**
	 * 根据商品Id分页查询评论
	 * @param productId 商品Id
	 * @param start 开始数
	 * @param end 结束数
	 * @return 评论集合
	 */
	public abstract List<Comment> findPagenationByProductId(String productId,int start,int end);
	/**
	 * 添加评论
	 * @param common 评论对象
	 * @return 受影响的行数
	 */
	public abstract int addComment(Common common);
	/**
	 * 根据商品Id查询商品图片
	 * @param productId 商品Id
	 * @return 商品对象
	 */
	public abstract Product findPicByProductId(String productId);
}
