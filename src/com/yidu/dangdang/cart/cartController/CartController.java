package com.yidu.dangdang.cart.cartController;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.cart.biz.CartBiz;
import com.yidu.dangdang.cart.biz.impl.CartBizImpl;
import com.yidu.dangdang.cart.domain.Cart;
import com.yidu.dangdang.cart.domain.Product;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.util.IDGenderatorUtil;

public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CartBiz cartBiz = new CartBizImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String biz = request.getParameter("biz");
		
		if(request.getSession().getAttribute("customer")!=null){
			
		
			if("findCartByCus".equals(biz)){
				doFindCartByCus(request,response);
			} else if("updateProductNum".equals(biz)){
				doUpdateProductNum(request,response);
			} else if("delectProduct".equals(biz)){
				doDelectProduct(request,response);
			} else if("addCartItem".equals(biz)){
				doAddCartItem(request,response);
			} else if("loadCartItem".equals(biz)){
				doLoadCartItem(request,response);
			} else if("city".equals(biz)){
				doGetCitys(request,response);
			}else if("area".equals(biz)){
				doGetAreas(request,response);
			}else if("province".equals(biz)){
				doGetProvinces(request,response);
			}
			
		}else{
			//重定向
			response.sendRedirect("jsps/customer/login.jsp");
			
		}
	}

	private void doGetProvinces(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 调用biz层的方法获取全部的省份
		List<String> allProvince = cartBiz.findAllProvince();
		Gson gson = new Gson();
		// 生成json字符串
		String jsonStr = gson.toJson(allProvince);
		// 发送字符串
		PrintWriter out = response.getWriter();
		out.write(jsonStr);
	}

	private void doGetAreas(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 获取被选中城市
		String cityName = request.getParameter("selected");
		// 调用biz层的方法查询该省份下的所有城市
		List<String> areas = cartBiz.findAreaByCity(cityName);
		Gson gson = new Gson();
		// 返回json字符串给游览器
		String jsonStr = gson.toJson(areas);
		// 发送字符串给游览器
		PrintWriter out = response.getWriter();
		out.write(jsonStr);
	}

	private void doGetCitys(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// 获取被选中的城市
		String province = request.getParameter("selected");
		// 调用biz层的方法查询该城市下的所有地区
		List<String> citys = cartBiz.findCityByProvince(province);
		Gson gson = new Gson();
		// 返回json字符串给游览器
		String jsonStr = gson.toJson(citys);
		// 发送字符串给游览器
		PrintWriter out = response.getWriter();
		out.write(jsonStr);

	}

	private void doLoadCartItem(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Customer cus = (Customer) request.getSession().getAttribute("customer");
		String customerId = cus.getCustomerId();
		List<Cart> cartList = cartBiz.loadCartItems(customerId);
		
		request.setAttribute("cartList", cartList);
		request.setAttribute("customer", customerId);
		
		request.getRequestDispatcher("jsps/order/addOrder.jsp").forward(request, response);
		
		
	}

	private void doAddCartItem(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		//获得请求参数
		//获得商品Id
		String productId = request.getParameter("productId");
		String size = request.getParameter("size");
		product.setProductId(productId);
		//获得商品数量
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		
		//获得用户
		Customer cus = (Customer) request.getSession().getAttribute("customer");
		String customerId = cus.getCustomerId();
		Cart cart = cartBiz.findByProductId(productId);
		cart.setCartId(IDGenderatorUtil.generateId());
		cart.setProductNum(productNum);
		cart.setCustomerId(customerId);
		cart.setProductId(productId);
		cart.setSize(size);
		cart.setSubtotal(cart.getPrice().multiply(BigDecimal.valueOf(cart.getProductNum())));
		cartBiz.addCartItem(cart);
		
		doFindCartByCus(request, response);

	}

	/**
	 * 修改商品数量
	 * @param request	请求
	 * @param response	响应
	 * @throws IOException   IO异常
	 * @throws ServletException 
	 */
	private void doUpdateProductNum(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		//从数据库中获得参数
		String cartId = request.getParameter("cartId");
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		BigDecimal price = cartBiz.findByCart(cartId).getPrice();

		BigDecimal subtotal = price.multiply(BigDecimal.valueOf(productNum));
		
		//从业务逻辑层中调用修改方法
		Cart cart = cartBiz.updateProductNum(cartId, productNum,subtotal);
		PrintWriter out = response.getWriter();
		String json = "{\"productNum\":"+cart.getProductNum()+",\"subtotal\":"+cart.getSubtotal()+"}";
		out.write(json);
		
	}

	/**
	 * 删除一条购物车条目
	 * @param request	请求
	 * @param response	响应
	 */
	private void doDelectProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取请求参数
		String cartId = request.getParameter("cartId");
		String productId = request.getParameter("productId");
		//调用业务逻辑层的删除方法
		cartBiz.delectProduct(cartId,productId);
		//当删除完成后跳转到我的购物车
		doFindCartByCus(request, response);
				
	}

	/**
	 * 通过用户Id查找购物车
	 * @param request	请求
	 * @param response	响应
	 */
	private void doFindCartByCus(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获得请求参数  用户id
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		String customerId = customer.getCustomerId();
		//调用购物车条目业务层对象
		List<Cart> cartList = cartBiz.findCartByCus(customerId);
		
		//保存该用户所购物品的购物车条目
		request.setAttribute("cartList", cartList);
		//转发到content/cart/cart.jsp
		request.getRequestDispatcher("jsps/cart/cart.jsp").forward(request, response);
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
