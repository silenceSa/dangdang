package com.yidu.dangdang.category.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.category.biz.CategoryBiz;
import com.yidu.dangdang.category.biz.impl.CategoryBizImpl;
import com.yidu.dangdang.category.domain.Category;
import com.yidu.dangdang.category.dto.CategoryNode;
import com.yidu.dangdang.util.DynamicSql;
import com.yidu.dangdang.util.IDGenderatorUtil;


public class CategoryController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3656625464506067615L;

	
    private CategoryBiz catBiz = new CategoryBizImpl();
	//gson工具
	private Gson gson = new Gson();
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String biz=request.getParameter("biz");
		
		if("findAll".equals(biz)){
			doFindAllCategory(request,response);
		}else if("remove".equals(biz)){
			doRemoveCategory(request,response);
		}else if("add".equals(biz)){
			doAddCategory(request,response);
		}else if("update".equals(biz)){
			doUpdateCategory(request,response);
		}else if("findByPid".equals(biz)){
			doFindByPid(request,response);
		}else if("findLevel".equals(biz)){
			doFindByLevel(request,response);
		}
		
		
		
	}

	private void doFindByLevel(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//获得分类名
		String cateName = request.getParameter("cateName");
		//获得分类
		String level = request.getParameter("level");
		
		//获得页数
		int row=1;
		int page=10;
		String spage=request.getParameter("page");
		if("".equals(spage)||spage==null){
			
		}else{
			page = Integer.parseInt(spage);
		}
		
		String srow = request.getParameter("rows");
		if ("".equals(srow)||srow==null) {
			
		} else {
			row = Integer.parseInt(srow);
		}
		//获得页面大小
		
		
		
		
		if (level.equals("level1")) {
			level="一级分类";
		} else if(level.equals("level2")) {
            level="二级分类";
		}else if(level.equals("level3")){
			level="三级分类";
		}else{
			level="";
		}
		//查询
		DynamicSql dsql = new DynamicSql();
		//添加参数
		dsql.addParam("categoryName");
		dsql.addParam("describe");
		//设置参数的值
		dsql.setValue(cateName);
		dsql.setValue(level);
		//校验参数
		dsql.addValidParamAndValue();
		//执行语句
		List<Category> cates = catBiz.findCateByLevel(dsql,page,row);//2,10
		//转换为json
		int total = catBiz.findCountByLevel(level);
		String list = gson.toJson(cates);
		String json = "{\"total\":" + total + ",\"rows\":" + list + "}";
	    //发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
	    
	}

	/**
	 * 通过父类ID查找所有子类
	 * @param request   请求对象
	 * @param response  响应对象
	 * @throws IOException IO异常
	 */
	private void doFindByPid(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
       String id = request.getParameter("id");
       List<CategoryNode> nodes = null;
       if(null==id||"".equals(id)){
    	   //第一次访问无id，访问总分类
    	   nodes = catBiz.findCategoryByPid("CF9E88DF89F9457AA5511A2BA2C46AB4");
       }else{
    	   nodes = catBiz.findCategoryByPid(id);
       }
       
       //转换为json字符串
       String json = gson.toJson(nodes);
       //发送字符串
       PrintWriter out = response.getWriter();
       out.write(json);



	}


	/**
	 * 修改分类
	 * @param request   请求对象
	 * @param response  响应对象
	 * @throws IOException 
	 */
	private void doUpdateCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String categoryId = request.getParameter("categoryId");
		String categoryName = request.getParameter("categoryName");
		String parentId = request.getParameter("parentId");
		String desc = request.getParameter("describe");
		Category category = new Category();
		category.setCategoryId(categoryId);
		category.setCategoryName(categoryName);
		category.setParentId(parentId);
		category.setDescribe(desc);
		//调用业务层的方法修改
		int result = catBiz.updateCategory(category);
		PrintWriter out = response.getWriter();
		if (result>0) {
			//修改成功
			out.write("{\"status\":\"success\"}");
		} else {
			//修改失败
			out.write("{\"status\":\"failed\"}");
		}
		
	}


	/**
	 * 添加分类
	 * @param request   请求对象
	 * @param response  响应对象
	 * @throws IOException 
	 */
	private void doAddCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String categoryName = request.getParameter("categoryName");
		String parentId = request.getParameter("parentId");
		String desc = request.getParameter("desc");
		Category category = new Category();
		category.setCategoryId(IDGenderatorUtil.generateId());
		category.setCategoryName(categoryName);
		category.setParentId(parentId);
		category.setDescribe(desc);
		//调用业务层的方法修改
		int result = catBiz.addCategory(category);
		PrintWriter out = response.getWriter();
		if (result>0) {
			//添加成功
			out.write("{\"status\":\"success\"}");
		} else {
			//添加失败
			out.write("{\"status\":\"failed\"}");
		}
		
	}


	/**
	 * 删除分类
	 * @param request   请求对象
	 * @param response  响应对象
	 * @throws IOException 
	 */
	private void doRemoveCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String categoryId = request.getParameter("categoryId");
		//调用biz层的方法输出
		int result = catBiz.removeCategory(categoryId);
		PrintWriter out = response.getWriter();
		if (result>0) {
			//删除成功
			out.write("{\"status\":\"success\"}");
		} else {
			//删除失败
			out.write("{\"status\":\"failed\"}");
		}
		
	}


	/**
	 * 找到所有的分类
	 * @param request
	 * @param response
	 * @throws IOException IO异常
	 */
	private void doFindAllCategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<CategoryNode> nodes = catBiz.findAllCategory();
		String json = gson.toJson(nodes);
	    //发送字符串
	    PrintWriter out = response.getWriter();
	    out.write(json);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
