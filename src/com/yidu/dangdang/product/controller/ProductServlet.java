package com.yidu.dangdang.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.pager.PageConstant;
import com.yidu.dangdang.product.domain.Product;
import com.yidu.dangdang.product.service.ProductService;
/**
 * 前台控制器
 * @author chentao 
 * @since  2017.7.3
 */
public class ProductServlet extends HttpServlet {

	/**
	 * 序列号
	 */
	private static final long serialVersionUID = -4936830978907235864L;
	//调用service类
	private ProductService productService = new ProductService();

	/**
	 * get请求
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        //设置编码类型
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//获得请求参数
		String biz=request.getParameter("biz");
	    if("findProductByBrandName".equals(biz)){
	    	//调用根据品牌名查询商品的方法
			doFindProductByBrandName(request,response);
		}else if("findProductByProductId".equals(biz)){
			//根据商品Id查询商品的方法
			doFindProductByProductId(request,response);
		}else if("findProductByCategoryId".equals(biz)){
			//调用根据商品Id查询商品的方法
			doFindProductByCategoryId(request,response);
		}else if("findProductByProductName".equals(biz)){
			//调用根据商品名查询商品的方法
			doFindProductByProductName(request,response);
		}		
		
		
	}

    /**
     * 根据商品名找商品
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
	private void doFindProductByProductName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//1.获取字符串类型的当前页页码，并转化为整型
		int pageIndex = getPageIndex(request);
		
		//2.获取URL 
		String url = getURL(request);
		
		//3.获取条件 商品名
		String productName = request.getParameter("productName");
		
		//4.PageBean调用根据商品名分页方法,并封装url属性
		PageBean<Product> pageBean = productService.findProductByProductName(productName, pageIndex, PageConstant.PRODUCT_PRODUCTNAME);
		pageBean.setUrl(url);
		
		//5.在请求域中绑定pageBean对象
		request.setAttribute("pageBean", pageBean);
		
		
		//6.转发		商品列表页
		request.getRequestDispatcher("jsps/product/ProductList.jsp").forward(request, response);
	}


	/**
     * 根据分类Id查询商品
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
	private void doFindProductByCategoryId(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		     //1.获取字符串类型的当前页页码，并转化为整型
				int pageIndex = getPageIndex(request);
				
				//2.获取URL
				String url = getURL(request);
				
				//3.获取条件 二级分类号
				String cid = request.getParameter("categoryId");
				
				//4.pageBean调用根据分类Id分页方法,并封装url属性
				PageBean<Product> pageBean = productService.findPagenationByCategory(cid, pageIndex, PageConstant.PRODUCT_PAGESIZE);
				pageBean.setUrl(url);
				
				//5.在请求域中绑定pageBean对象
				request.setAttribute("pageBean", pageBean);
				
				
				//6.转发		商品列表页
				request.getRequestDispatcher("jsps/product/ProductList.jsp").forward(request, response);
				
		
	}

    /**
     * 根据商品Id查询商品
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
	private void doFindProductByProductId(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		//传进参数商品Id
		String productId = request.getParameter("productId");
		//Product调用service里的根据商品Id查询商品的方法
        Product product = productService.findProductByProductId(productId);
		//在请求域中绑定product对象
		request.setAttribute("product", product);
		//转发
		request.getRequestDispatcher("jsps/product/ProductDetail.jsp").forward(request, response);
		
	}

    /**
     * 根据品牌名查询商品
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
	private void doFindProductByBrandName(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		//1.获取字符串类型的当前页页码，并转化为整型
		int pageIndex = getPageIndex(request);
		
		//2.获取URL 
		String url = getURL(request);
		
		//3.获取条件 品牌名
		String bName = request.getParameter("brandName");
		
		//4.PageBean调用根据品牌名分页方法,并封装url属性
		PageBean<Product> pageBean = productService.findProductByBrandName(bName, pageIndex, PageConstant.PRODUCT_BRANDNAME);
		pageBean.setUrl(url);
		
		//5.在请求域中绑定pageBean对象
		request.setAttribute("pageBean", pageBean);
		
		
		//6.转发	
		request.getRequestDispatcher("jsps/product/ProductList.jsp").forward(request, response);
		
				
		
	}
	/**
	 * 获取当前页码
	 * @param request
	 * @return
	 */
	private int getPageIndex(HttpServletRequest request){
		//初始化页码
		int pageIndex = 1;
		//得到字符串型的页码
		String page = request.getParameter("page");
		//页码不为空与上页码去除空字符
		if(page!=null && !page.trim().isEmpty()){
			try{
				//吧页码转化为整形赋值给pageIndex
				pageIndex = Integer.parseInt(page);
			}catch(RuntimeException e){
				
			}
		}
		//返回pageIndex
		return pageIndex;
	}
	
	/**
	 * 截取URL，用于分页导航，作为超链接的href属性
	 * @param request
	 * @return
	 */
	private String getURL(HttpServletRequest request) {
		//获得url地址 
		String url = request.getRequestURI() +"?" +request.getQueryString();
		//给页码赋值
		int index = url.lastIndexOf("&page");
		if(index>0){//当有&page=2
			url = url.substring(0,index);
		}
		return url;
	}
    /**
     * post请求
     */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}


}
