package com.yidu.dangdang.comment.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yidu.dangdang.comment.biz.CommentBiz;
import com.yidu.dangdang.comment.biz.impl.CommentBizImpl;
import com.yidu.dangdang.comment.domain.Comment;
import com.yidu.dangdang.comment.domain.Common;
import com.yidu.dangdang.comment.service.CommentService;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.order.biz.OrderBiz;
import com.yidu.dangdang.order.biz.impl.OrderBizImpl;
import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.pager.PageConstant;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.util.IDGenderatorUtil;
public class CommentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6118687229766035864L;
	private CommentService commentService = new CommentService();
	private CommentBiz cbiz=new CommentBizImpl();
	private OrderBiz obiz = new OrderBizImpl();
	/**
	 * 获取当前页码
	 * @param request
	 * @return
	 */
	private int getPageIndex(HttpServletRequest request){
		int pageIndex = 1;
		//得到字符串型的页码
		String page = request.getParameter("page");
		if(page!=null && !page.trim().isEmpty()){
			try{
				pageIndex = Integer.parseInt(page);
			}catch(RuntimeException e){
				
			}
		}
		return pageIndex;
	}
	
	/**
	 * 截取URL，用于分页导航，作为超链接的href属性
	 * @param request
	 * @return
	 */
	private String getURL(HttpServletRequest request) {
		
		
		// goods13/GoodServlet?method=findByCategory&cid=XXX&page=2
		//goods13/GoodServlet        //method=findByCategory&cid=XXX&page=2
		String url = request.getRequestURI() +"?" +request.getQueryString();
		int index = url.lastIndexOf("&page");
		if(index>0){//当有&page=2
			url = url.substring(0,index);
		}
		return url;
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String biz=request.getParameter("biz");
		if("addComment".equals(biz)){
			doAddComment(request,response);
		}else if("add".equals(biz)){
            addComment(request, response);			
		}else{
			
		//1.获取字符串类型的当前页页码，并转化为整型
		int pageIndex = getPageIndex(request);
		
		//2.获取URL http://localhost:8080/goods13/GoodServlet?method=findByCategory&cid=XXX&page=2
		String url = getURL(request);
		
		//3.获取条件 二级分类号
		String pid = request.getParameter("productId");
		
		//4.调用goodService的findPagenationByCategory方法,并封装url属性
		PageBean<Comment> pageBean = commentService.findPagenationByProductId(pid, pageIndex, PageConstant.COMMENT_PAGESIZE);
		pageBean.setUrl(url);
		
		request.getSession().setAttribute("pageBean", pageBean);
		response.sendRedirect("jsps/comment/commentDiv.jsp");
		}
		
	}

	
	private void doAddComment(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
        
        String productId=request.getParameter("productId");
        String orderId = request.getParameter("orderId");
        Product products = cbiz.findPicByProductId(productId);
		products.setProductId(productId);
        request.setAttribute("product", products);
        request.setAttribute("orderId", orderId);
		
		request.getRequestDispatcher("jsps/comment/addComment.jsp").forward(request, response);
        
        
	}
	
	
	public void addComment(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException{
		String commentText=request.getParameter("commentText");
        String commentTime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date().getTime());
        int score=Integer.parseInt(request.getParameter("score"));
        Customer customer=(Customer)request.getSession().getAttribute("customer");
        String customerId=customer.getCustomerId();
        String productId=request.getParameter("productId");
        String productName=request.getParameter("productname");
        String customerName=customer.getCustomerName();
        String reply=request.getParameter("reply");
        String orderId=request.getParameter("orderId");
        
        Common common=new Common();
        common.setCommentId(IDGenderatorUtil.generateId());
        common.setCommentText(commentText);
        common.setCommentTime(commentTime);
        common.setScore(score);
        common.setCustomerId(customerId);
        common.setProductId(productId);
        common.setProductName(productName);
        common.setCustomerName(customerName);
        common.setReply(reply);
        cbiz.addComment(common);
        //修改订单状态
        obiz.updateOrderStatus(orderId, 5);
	    response.sendRedirect("ProductServlet?biz=findProductByProductId&productId="+productId);
		
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		     doGet(request, response);
	}

	

}
