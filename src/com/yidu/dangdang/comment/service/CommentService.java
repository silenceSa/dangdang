package com.yidu.dangdang.comment.service;

import java.util.List;

import com.yidu.dangdang.comment.biz.CommentBiz;
import com.yidu.dangdang.comment.biz.impl.CommentBizImpl;
import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.util.DynamicSql;

public class CommentService {
	private CommentBiz commentBiz = new CommentBizImpl();
	
	
	
	/**
	 * 分类分页查询
	 * @param cid 二级分类ID号
	 * @param pageIndex 当前页的页码
	 * @param pageSize 页面大小
	 * @return 分页分类查询的pageBean对象
	 */
	public PageBean<Comment> findPagenationByProductId(String productId, int pageIndex, int pageSize){
		
		//1.对pageIndex和pageSize进行处理
		/*int recordCount = pageSize;
		int start = (pageIndex-1)*pageSize;*/
		DynamicSql dsql = new DynamicSql();
		dsql.addParam("productId;normal");
		dsql.setValue(productId);
		dsql.addValidParamAndValue();
		List<Comment> allProductList=commentBiz.findComment(dsql);
		int totalRecords=allProductList.size();
		int start = (pageIndex-1)*pageSize;
		int end=pageSize;
		
		//2.调用GoodDao中的方法findPagenationByCategory(cid, recordCount, start)获取分类分页查询集合
		List<Comment> commentList = commentBiz.findPagenationByProductId(productId,start,end);
	    System.out.println(commentList);
		//3.创建PageBean对象
		PageBean<Comment> pageBean = new PageBean<Comment>();
		//4.为pageBean设置属性数据
		pageBean.setBeanList(commentList);
		pageBean.setPageIndex(pageIndex);
		pageBean.setPageSize(pageSize);
        pageBean.setTotalRecords(totalRecords);
        
		return pageBean;
	}
}
