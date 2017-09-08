package com.yidu.dangdang.comment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.comment.biz.CommentBiz;
import com.yidu.dangdang.comment.biz.impl.CommentBizImpl;
import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.util.DynamicSql;

public class CommentController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1668570234267991684L;

	private CommentBiz cbiz = new CommentBizImpl();
	private Gson gson = new Gson();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String biz = request.getParameter("biz");
		if("findAll".equals(biz)){
			doFindAllComment(request,response);
		}else if("findComment".equals(biz)){
			doFindComment(request,response);
		}else if("addReply".equals(biz)){
			doAddReply(request,response);
		
		}
		
		
	}

	
	private void doAddReply(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
    String reply = request.getParameter("reply");
	String commentId = request.getParameter("commentId");	
	PrintWriter out = response.getWriter();
	if(reply == null || reply.equals("") || commentId == null || reply.equals("")){
		out.write("{\"status\":\"failed\",\"msg\":\"校验失败\"}");
	}else{
		int res = cbiz.addReply(reply, commentId);
		if(res>0){
			out.write("{\"status\":\"success\"}");
		}else{
		out.write("{\"status\":\"failed\",\"msg\":\"添加失败\"}");

		}
	}
	
	
	}


	private void doFindComment(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String customerName = request.getParameter("name");
		String start = request.getParameter("startTime");
		String end = request.getParameter("endTime");
		
		if("".equals(start)||start==null){
			start = end;
		}
		if("".equals(end)||end==null){
			end = start;
		}
		
		DynamicSql sql = new DynamicSql();
		sql.addParam("customerName;like");
		sql.addParam("commentTime;scope1");
		sql.addParam("commentTime;scope2");
		
		sql.setValue(customerName);
		sql.setValue(start);
		sql.setValue(end);
		
		sql.addValidParamAndValue();
		
		List<Comment> comments = cbiz.findComment(sql);
		
		
		
		String json = gson.toJson(comments);
		PrintWriter out = response.getWriter();
		out.write(json);
		
	}


	private void doFindAllComment(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		DynamicSql sql = new DynamicSql();
		List<Comment> comments = cbiz.findCommentByPage(rows, page, sql);
		
		int total = cbiz.findComment(sql).size();		
		String list = gson.toJson(comments);
		String json = "{\"total\":" + total + ",\"rows\":" + list + "}";
		PrintWriter out = response.getWriter();
		out.write(json);
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
