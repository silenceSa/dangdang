package com.yidu.dangdang.order.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yidu.dangdang.cart.biz.CartBiz;
import com.yidu.dangdang.cart.biz.impl.CartBizImpl;
import com.yidu.dangdang.cart.domain.Cart;
import com.yidu.dangdang.customer.domain.Customer;
import com.yidu.dangdang.order.biz.OrderBiz;
import com.yidu.dangdang.order.biz.impl.OrderBizImpl;
import com.yidu.dangdang.order.domain.Order;
import com.yidu.dangdang.order.domain.OrderDetail;
import com.yidu.dangdang.order.domain.OrderItem;
import com.yidu.dangdang.pager.PageBean;
import com.yidu.dangdang.pager.PageConstant;
import com.yidu.dangdang.util.IDGenderatorUtil;
import com.yidu.dangdang.util.PaymentUtil;

public class OrderServlet extends HttpServlet {

	private static final long serialVersionUID = -1201403691373715691L;
	private OrderBiz ordBiz = new OrderBizImpl();
	private CartBiz cartBiz = new CartBizImpl();
	Gson gson = new Gson();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String biz = request.getParameter("biz");
		
		if("findDetatil".equals(biz)){
			doFindOrderDetail(request,response);
		}else if("findOrderByCustomerId".equals(biz)){
			doFindOrderByCustomerId(request,response);
		}else if("delete".equals(biz)){
			doDeleteOrder(request,response);
		}else if("addOrder".equals(biz)){
			doAddOrder(request,response);
		}else if("paymentPre".equals(biz)){
			doPaymentPre(request,response);
		}else if("payment".equals(biz)){
			doPayMent(request,response);
		}else if("back".equals(biz)){
			doBack(request,response);
		}else if("delivery".equals(biz)){
			doDelivery(request,response);
		}
		
		

	}

	private void doDelivery(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String orderId=request.getParameter("orderId");
		
		Order order=new Order();
		order.setOrderId(orderId);
		order.setOrderStatus(4);
		
		ordBiz.updateOrderStatus(orderId, 4);
		doFindOrderByCustomerId(request,response);
		
	}

	private void doBack(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1. 获取12个参数
		 */
		String p1_MerId = request.getParameter("p1_MerId");//商号
		String r0_Cmd = request.getParameter("r0_Cmd");//交易类型 Buy
		String r1_Code = request.getParameter("r1_Code"); //支付结果
		String r2_TrxId = request.getParameter("r2_TrxId"); //易宝支付交易流水号
		String r3_Amt = request.getParameter("r3_Amt"); //支付金额
		String r4_Cur = request.getParameter("r4_Cur"); //交易币种
		String r5_Pid = request.getParameter("r5_Pid");  // 商品名称
		String r6_Order = request.getParameter("r6_Order");//商户订单号
		String r7_Uid = request.getParameter("r7_Uid");//易宝支付会员ID
		String r8_MP = request.getParameter("r8_MP");//商户扩展信息
		String r9_BType = request.getParameter("r9_BType");//交易结果返回类型
		String hmac = request.getParameter("hmac");//hamc码
		
		/*
		 * 2. 获取keyValue
		 */
		Properties props = new Properties();
		props.load(this.getClass().getClassLoader().getResourceAsStream("merchantInfo.properties"));
		String keyValue = props.getProperty("keyValue");
		/*
		 * 3. 调用PaymentUtil的校验方法来校验调用者的身份
		 *   >如果校验失败：保存错误信息，转发到msg.jsp
		 *   >如果校验通过：
		 *    修改订单状态
		 *     * 判断访问的方法是重定向还是点对点，
		 *       如果要是重定向 ：保存成功信息，转发到msg.jsp
		 *     * 如果是点对点：返回success
		 */
		boolean bool = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId,
				r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP, r9_BType,
				keyValue);
		if(!bool) { //支付不成功
			request.setAttribute("code", "error");
			request.setAttribute("msg", "无效的签名，支付失败!");
     		//转发到 /jsps/msg.jsp";
			request.getRequestDispatcher("jsps/order/PaySuccess.jsp").forward(request, response);
		
		}else if(r1_Code.equals("1")) { //支付成功
			//调用orderService的修改订单状态的方法，修改订单状态为已支付（1）
			//支付成功的状态为2
			int result = ordBiz.updateOrderStatus(r6_Order, 2);
			if(r9_BType.equals("1")) {//交易结果返回类型为1: 浏览器重定向;
				request.setAttribute("code", "success");
				request.setAttribute("msg", "恭喜，支付成功！");
				//转发到 /jsps/msg.jsp";
				request.getRequestDispatcher("jsps/order/PaySuccess.jsp").forward(request, response);
						
			} else if(r9_BType.equals("2")) {//交易结果返回类型为2: 服务器点对点通讯;
				//反馈易宝，收到支付成功的消息
				response.getWriter().print("success");
			}
		}

		
	}

	private void doPayMent(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		//1.加载商号的配置文件
				Properties props = new Properties();
				props.load(this.getClass().getClassLoader().getResourceAsStream("merchantInfo.properties"));
				
				//2.准备13个支付请求参数
				String p0_Cmd = "Buy";//业务类型，固定值Buy
				String p1_MerId = props.getProperty("p1_MerId");//商号编码，在易宝的唯一标识
				String p2_Order = request.getParameter("oid");//订单编码
				String p3_Amt = "0.01";//支付金额
				String p4_Cur = "CNY";//交易币种，固定值CNY
				String p5_Pid = "";//商品名称
				String p6_Pcat = "";//商品种类
				String p7_Pdesc = "";//商品描述
				String p8_Url = props.getProperty("p8_Url");//在支付成功后，易宝会访问这个地址。
				String p9_SAF = "";//送货地址
				String pa_MP = "";//扩展信息
				String pd_FrpId = request.getParameter("yh");//支付通道
				String pr_NeedResponse = "1";//应答机制，固定值1
			
				//3.准备第14个参数hmac
				String keyValue = props.getProperty("keyValue");
				String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, keyValue);
				
				//4.准备重定向地址及请求参数字符串
				StringBuilder url = new StringBuilder("https://www.yeepay.com/app-merchant-proxy/node");
				url.append("?").append("p0_Cmd=").append(p0_Cmd);
				url.append("&").append("p1_MerId=").append(p1_MerId);
				url.append("&").append("p2_Order=").append(p2_Order);
				url.append("&").append("p3_Amt=").append(p3_Amt);
				url.append("&").append("p4_Cur=").append(p4_Cur);
				url.append("&").append("p5_Pid=").append(p5_Pid);
				url.append("&").append("p6_Pcat=").append(p6_Pcat);
				url.append("&").append("p7_Pdesc=").append(p7_Pdesc);
				url.append("&").append("p8_Url=").append(p8_Url);
				url.append("&").append("p9_SAF=").append(p9_SAF);
				url.append("&").append("pa_MP=").append(pa_MP);
				url.append("&").append("pd_FrpId=").append(pd_FrpId);
				url.append("&").append("pr_NeedResponse=").append(pr_NeedResponse);
				url.append("&").append("hmac=").append(hmac);
			
			    //5.重定向到yeepay页面
				response.sendRedirect(url.toString());
		
	}

	private void doPaymentPre(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//1.获取订单ID号
		String orderId = request.getParameter("oid");
				
		//2.调用service中的loadOrder方法加载订单对象
		Order order = ordBiz.findOrderByOrderId(orderId);
				
		//3.将订单对象绑定到请求域中
		request.setAttribute("order", order);
				
		//4.转发到 jsps/order/pay.jsp
		request.getRequestDispatcher("jsps/order/Pay.jsp").forward(request, response);
		
	}

	private void doAddOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//1.创建订单对象，并封装
		Order order = new Order();
		order.setOrderId(IDGenderatorUtil.generateId());
		order.setOrderTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date().getTime()));
		order.setAddress(request.getParameter("address"));
		order.setOrderStatus(1);
		order.setTotalPrice(Double.parseDouble(request.getParameter("totalPrice")));
		order.setConsignee(request.getParameter("consignee"));
        order.setRecPhone(request.getParameter("recPhone"));		
		//创建用户对象
		Customer customer = new Customer();
		Customer cus = (Customer) request.getSession().getAttribute("customer");
		customer.setCustomerId(cus.getCustomerId());
		order.setCustomer(customer);
		
		//2.调用CartItemService中的方法获得购物车条目集合并转化为订单条目集合
		loadCartItems(request, order);
		ordBiz.addOrder(order);
		
		//4.删除购物车条目
		String[] cartItemIds = request.getParameterValues("cartId");
		cartBiz.batchDelete(cartItemIds);
		
		//5.将order保存在请求域中
		request.setAttribute("order", order);
		
		//6.转发到
		request.getRequestDispatcher("jsps/order/Pay.jsp").forward(request, response);
	}

	private void loadCartItems(HttpServletRequest request, Order order) {
		String[] cartItemIds = request.getParameterValues("cartId");
		
		
		List<Cart> cartList = cartBiz.loadCartItemss(cartItemIds);
		
		
		List<OrderItem> orderDetailList = new ArrayList<OrderItem>();
		
		for(Cart cart : cartList){
			OrderItem orderItem = new OrderItem();
			
			orderItem.setImage(cart.getPicture());
			orderItem.setProductName(cart.getProductName());
			orderItem.setPrice(cart.getPrice());
			orderItem.setNum(cart.getProductNum());
			orderItem.setSubtotal(cart.getSubtotal());
			orderItem.setProductId(cart.getProductId());
			orderItem.setOrderId(order.getOrderId());
			orderItem.setOrderitemId(IDGenderatorUtil.generateId());
			
			orderDetailList.add(orderItem);
			
		}
		order.setOrderI(orderDetailList);
	}

	private void doDeleteOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String orderId = request.getParameter("orderId");
		ordBiz.removeOrder(orderId);
		doFindOrderByCustomerId(request,response);
		
	}

	private void doFindOrderByCustomerId(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		int pageIndex = getPageIndex(request);
		
		//2.获取URL 
		String url = getURL(request);
		//3.获取条件 二级分类号
		String cid = request.getParameter("customerId");
		
		//4.调用goodService的findPagenationByCategory方法,并封装url属性
		PageBean<Order> pageBean = ordBiz.findPagenationByCustomerId(cid, pageIndex, PageConstant.ORDER_PAGESIZE);
		pageBean.setUrl(url);
		request.setAttribute("pageBean",pageBean);
		request.getRequestDispatcher("jsps/order/order.jsp").forward(request, response);
		
	}

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

	
	
	private void doFindOrderDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
        String orderId = request.getParameter("orderId");
        Order order = ordBiz.findOrderByOrderId(orderId);
		List<OrderDetail> orderd = ordBiz.findOrderDetail(orderId);
		request.setAttribute("order",order);
		request.setAttribute("orderDetailList",orderd);
		request.getRequestDispatcher("jsps/order/OrderDetail.jsp").forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

        doGet(request, response);
	}

}
