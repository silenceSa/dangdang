package com.yidu.dangdang.comment.biz;

import java.util.List;

import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.comment.domain.Common;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.DynamicSql;

public interface CommentBiz {

	public abstract List<Comment> findCommentByPage(int pageSize,int pageNum,DynamicSql sql);
	
	public abstract List<Comment> findComment(DynamicSql sql);
	
	public abstract int addReply (String reply ,String commentId); 
	
	public List<Comment> findPagenationByProductId(String productId,int start,int end);

    public abstract int addComment(Common common);
    
    public abstract Product findPicByProductId(String productId);
}
