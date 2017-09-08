package com.yidu.dangdang.category.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yidu.dangdang.category.biz.CategoryBiz;
import com.yidu.dangdang.category.biz.impl.CategoryBizImpl;
import com.yidu.dangdang.category.domain.Category;

public class CategoryServlet extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -461108990487553152L;
    private CategoryBiz cbiz = new CategoryBizImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        
    	String categoryId=request.getParameter("cid");
		List<Category> cates = cbiz.findChildCate(categoryId);
		//绑定值session域
		request.getSession().setAttribute("cates", cates);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
