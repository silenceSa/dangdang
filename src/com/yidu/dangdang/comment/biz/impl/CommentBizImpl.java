package com.yidu.dangdang.comment.biz.impl;

import java.util.List;

import com.yidu.dangdang.comment.biz.CommentBiz;
import com.yidu.dangdang.comment.dao.CommentDao;
import com.yidu.dangdang.comment.dao.impl.CommentDaoImpl;
import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.comment.domain.Common;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;

public class CommentBizImpl implements CommentBiz {

	private CommentDao cdao = new CommentDaoImpl();
	
	
	@Override
	public List<Comment> findCommentByPage(int pageSize, int pageNum,DynamicSql sql) {
		List<Comment> comments = cdao.findCom(sql);
		int start = (pageNum-1)*pageSize;
		int end = pageSize+start>comments.size() ? comments.size() : pageSize+start;
		return comments.subList(start, end);
	}

	@Override
	public List<Comment> findComment(DynamicSql sql) {
		return cdao.findCom(sql);
	}

	@Override
	public int addReply(String reply, String commentId) {
	
		return cdao.addReply(reply, commentId);
	}

	@Override
	public List<Comment> findPagenationByProductId(String productId, int start,
			int end) {
		return cdao.findPagenationByProductId(productId, start, end);
	}

	@Override
	public int addComment(Common common) {
		return cdao.addComment(common);
	}

	@Override
	public Product findPicByProductId(String productId) {
		return cdao.findPicByProductId(productId);
	}

}
